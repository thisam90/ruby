# Arrays :
# Linear list of objects where elements are stored in contiguous memory locations.
# Each element can be accessed by its index.
# Created using square bracket notation [] or Array.new
# Can hold different types of objects in the same array (integers, strings, floats, etc.)
# Automatically grow to accommodate new elements.


# Empty array
empty_array = []

if empty_array.empty?
  puts "Array is empty"
else
  puts "Array is not empty"
end

# Array with elements

number_array = [1, 2, 3, 4, 5]
mixed_array  = [1, "two", 3.0, [4, 5], {six: 6}, true, false ]

puts "Number array: #{number_array}"
puts "Mixed array: #{mixed_array}"

# %w() is a shortcut for creating an array of strings
# It is equivalent to ["one", "two", "three"]

words_array = %w(one two three)
puts "Words array: #{words_array}"

shopping_bag = %w[apple banana orange]
puts "Shopping bag: #{shopping_bag}"

# %i() is a shortcut for creating an array of symbols
# It is equivalent to [:one, :two, :three]
# Symbols are immutable and unique

languages_local = %i[en es fr]
puts "Languages local: #{languages_local}"

colors = %i[red green blue]
puts "Colors: #{colors}"


# Accessing Elements
# Elements in an array can be accessed using their index.
# Index starts from 0.
# Negative index can be used to access elements from the end of the array.
# Index out of bounds will return nil.

temp_arr = [30, 50, 23, 54, 23, 54, 80]
puts temp_arr[0]  # 30
puts temp_arr[1]  # 50
puts temp_arr[-1] # 80
puts temp_arr[-2] # 54
puts temp_arr[10] # nil

for temp in temp_arr
  puts "Temperature: #{temp}"
end

user_names = ["Alice", "Bob", "Charlie", "David", "Eve"]
puts "First user: #{user_names[0]}"
puts "Last user: #{user_names[-1]}"
puts "Second user: #{user_names[1]}"
puts "Third user: #{user_names[2]}"
puts "Fourth user: #{user_names[3]}"
puts "====================================="
puts "All users:"
user_names.each do |user|
  puts user
end

# Modifying Elements
# 
# Elements in an array can be modified using their index.

score_list = [10, 20, 30, 40, 50]
puts "Score list: #{score_list}"
puts "Increse each score by 2 points:"
score_list.each_with_index do |score, index|
  score_list[index] = score + 2
end
score_list.each do |score|
  puts score
end

# Adding Elements
#
# Elements can be added to an array using the following methods:
#
# push: Add an element to the end of the array.
# unshift: Add an element to the beginning of the array.
# insert: Add an element at a specific index in the array.    
# concat: Add elements from another array to the end of the array.
# <<: Shovel operator to add an element to the end of the array => lias of concat() which alters the receiver in-place.
# +=
# 
# Note: push, unshift, insert, and concat methods modify the original array.
#      << and += methods create a new array.
#      Use destructive methods (!) to modify the original array.
#      Use non-destructive methods to create a new array.
#      Use bang (!) to indicate destructive methods.
#      Use bang (!) to indicate non-destructive methods.
#      
#

list_level = [ 43, 54, 23, 54, 23, 54]
puts "List level: #{list_level}"
puts "#{list_level.object_id}"

# list_level.push(100)
# puts "Add 100 to the end of the list: #{list_level}"

# list_level.unshift(0)
# puts "Add 0 to the beginning of the list: #{list_level}"

# list_level.insert(3, 200)
# puts "Add 200 at index 3: #{list_level}"

list_level.concat([300, 400, 500])
puts "Add [300, 400, 500 ] to the end of the list: #{list_level}"
puts "#{list_level.object_id}"

list_level << 600
puts "Add 600 to the end of the list: #{list_level}"
puts "#{list_level.object_id}"

# Removing elements
#
# Elements can be removed from an array using the following methods:
#
# pop: Remove the last element from the array.
# shift: Remove the first element from the array.
# delete_at: Remove an element at a specific index in the array.
# delete: Remove all occurrences of a specific element from the array.
# clear: Remove all elements from the array.
#   
# 
# Note: pop, shift, delete_at, and delete methods modify the original array.
#     clear method modifies the original array.


list_websites = ["Google", "Facebook", "Twitter", "LinkedIn", "Instagram"]
puts "List websites: #{list_websites}"

# list_websites.pop
list_websites.pop()
puts "Remove the last website: #{list_websites}"

# list_websites.shift
list_websites.shift()
puts "Remove the first website: #{list_websites}"

# list_websites.delete_at(1)
list_websites.delete_at(2)
puts "Remove the website at index 2: #{list_websites}"