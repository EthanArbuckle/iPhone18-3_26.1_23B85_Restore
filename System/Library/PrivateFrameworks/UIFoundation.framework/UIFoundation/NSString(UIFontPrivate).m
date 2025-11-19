@interface NSString(UIFontPrivate)
- (uint64_t)stringByStrippingLeadingAndTrailingWhitespaceAndQuotes;
@end

@implementation NSString(UIFontPrivate)

- (uint64_t)stringByStrippingLeadingAndTrailingWhitespaceAndQuotes
{
  if (stringByStrippingLeadingAndTrailingWhitespaceAndQuotes_onceToken != -1)
  {
    [NSString(UIFontPrivate) stringByStrippingLeadingAndTrailingWhitespaceAndQuotes];
  }

  v2 = [a1 rangeOfCharacterFromSet:stringByStrippingLeadingAndTrailingWhitespaceAndQuotes_nonWhitespaceCharacterSet options:0];
  v3 = [a1 rangeOfCharacterFromSet:stringByStrippingLeadingAndTrailingWhitespaceAndQuotes_nonWhitespaceCharacterSet options:4];
  v5 = v3 + v4;
  result = a1;
  if (v5 >= v2)
  {

    return [a1 substringWithRange:{v2, v5 - v2}];
  }

  return result;
}

@end