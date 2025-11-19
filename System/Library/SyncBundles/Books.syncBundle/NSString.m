@interface NSString
- (id)numberFromHexDigits;
@end

@implementation NSString

- (id)numberFromHexDigits
{
  result = [(NSString *)self length];
  if (result)
  {
    v5 = 0;
    v4 = [[NSScanner scannerWithString:?], "scanHexLongLong:", &v5];
    result = 0;
    if (v4)
    {
      return [NSNumber numberWithUnsignedLongLong:v5];
    }
  }

  return result;
}

@end