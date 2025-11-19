@interface NSString
@end

@implementation NSString

id __81__NSString_UIFontPrivate__stringByStrippingLeadingAndTrailingWhitespaceAndQuotes__block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  [v0 addCharactersInString:@""];
  result = [v0 invertedSet];
  stringByStrippingLeadingAndTrailingWhitespaceAndQuotes_nonWhitespaceCharacterSet = result;
  return result;
}

@end