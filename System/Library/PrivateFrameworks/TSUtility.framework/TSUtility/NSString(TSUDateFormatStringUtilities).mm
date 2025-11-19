@interface NSString(TSUDateFormatStringUtilities)
- (id)stringByReplacing2DigitYearStringWith4DigitYearString;
- (id)stringByReplacing4DigitYearStringWith2DigitYearString;
@end

@implementation NSString(TSUDateFormatStringUtilities)

- (id)stringByReplacing4DigitYearStringWith2DigitYearString
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"yyyy" withString:@"yy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

- (id)stringByReplacing2DigitYearStringWith4DigitYearString
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"yy" withString:@"yyyy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

@end