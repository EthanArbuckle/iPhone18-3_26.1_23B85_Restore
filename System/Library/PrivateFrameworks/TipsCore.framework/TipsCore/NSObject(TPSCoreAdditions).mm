@interface NSObject(TPSCoreAdditions)
- (id)tps_safeValueForKey:()TPSCoreAdditions;
- (id)tps_safeValueForKeyPath:()TPSCoreAdditions;
@end

@implementation NSObject(TPSCoreAdditions)

- (id)tps_safeValueForKey:()TPSCoreAdditions
{
  v4 = a3;
  v5 = [a1 valueForKey:v4];

  return v5;
}

- (id)tps_safeValueForKeyPath:()TPSCoreAdditions
{
  v4 = a3;
  v5 = [a1 valueForKeyPath:v4];

  return v5;
}

@end