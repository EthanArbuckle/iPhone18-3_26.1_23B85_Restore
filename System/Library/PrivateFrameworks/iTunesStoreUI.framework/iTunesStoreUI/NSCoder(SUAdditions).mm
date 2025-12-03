@interface NSCoder(SUAdditions)
- (CGPatternRef)safeEncodeUIColor:()SUAdditions forKey:;
@end

@implementation NSCoder(SUAdditions)

- (CGPatternRef)safeEncodeUIColor:()SUAdditions forKey:
{
  cGColor = [a3 CGColor];
  if (!cGColor || (result = CGColorGetPattern(cGColor)) == 0)
  {

    return [self encodeObject:a3 forKey:a4];
  }

  return result;
}

@end