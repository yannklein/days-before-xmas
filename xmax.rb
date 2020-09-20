require 'date'

def days_until_xmas(someday = Date.today)
  # today = Date.today
  xmas_date = Date.new(someday.year, 12, 25)
  # If someday is after Xmas
  # then we consider the Xmas of next year!
  xmas_date = xmas_date.next_year if someday > xmas_date
  (xmas_date - someday).to_i
end

# puts days_until_xmas

# TDD: Test Driven Development
puts 'Returns an integer?'
puts days_until_xmas.class == Integer

puts 'Returns 96 days before Xmas?'
puts days_until_xmas == 96

puts 'Return 0 days if we are on Xmas'
puts days_until_xmas(Date.new(2020, 12, 25)) == 0

puts 'Return 364 days if we are on Dec 26th'
puts days_until_xmas(Date.new(2020, 12, 26)) == 364
