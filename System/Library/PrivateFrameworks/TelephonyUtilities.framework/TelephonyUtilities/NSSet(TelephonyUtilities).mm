@interface NSSet(TelephonyUtilities)
- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilities;
- (id)tu_anyObjectPassingTest:()TelephonyUtilities;
@end

@implementation NSSet(TelephonyUtilities)

- (id)tu_anyObjectPassingTest:()TelephonyUtilities
{
  v1 = [self objectsPassingTest:?];
  anyObject = [v1 anyObject];

  return anyObject;
}

- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilities
{
  v1 = [self tu_anyObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

@end