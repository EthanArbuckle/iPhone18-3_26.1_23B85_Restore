@interface NSCoder(SUAdditions)
- (CGPatternRef)safeEncodeUIColor:()SUAdditions forKey:;
@end

@implementation NSCoder(SUAdditions)

- (CGPatternRef)safeEncodeUIColor:()SUAdditions forKey:
{
  v7 = [a3 CGColor];
  if (!v7 || (result = CGColorGetPattern(v7)) == 0)
  {

    return [a1 encodeObject:a3 forKey:a4];
  }

  return result;
}

@end