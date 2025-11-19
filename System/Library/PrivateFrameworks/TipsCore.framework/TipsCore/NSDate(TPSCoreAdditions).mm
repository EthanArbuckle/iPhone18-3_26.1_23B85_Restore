@interface NSDate(TPSCoreAdditions)
+ (BOOL)isDateExpired:()TPSCoreAdditions maxTimeInterval:;
- (BOOL)isTimeToDate:()TPSCoreAdditions withinTimeInterval:;
@end

@implementation NSDate(TPSCoreAdditions)

+ (BOOL)isDateExpired:()TPSCoreAdditions maxTimeInterval:
{
  if (!a4)
  {
    return 0;
  }

  [a4 timeIntervalSinceNow];
  return v5 < a1;
}

- (BOOL)isTimeToDate:()TPSCoreAdditions withinTimeInterval:
{
  if (!a4)
  {
    return 0;
  }

  [a1 timeIntervalSinceDate:?];
  return v5 > a2;
}

@end