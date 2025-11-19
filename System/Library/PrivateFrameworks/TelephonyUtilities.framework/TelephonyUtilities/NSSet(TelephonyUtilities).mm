@interface NSSet(TelephonyUtilities)
- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilities;
- (id)tu_anyObjectPassingTest:()TelephonyUtilities;
@end

@implementation NSSet(TelephonyUtilities)

- (id)tu_anyObjectPassingTest:()TelephonyUtilities
{
  v1 = [a1 objectsPassingTest:?];
  v2 = [v1 anyObject];

  return v2;
}

- (BOOL)tu_containsObjectPassingTest:()TelephonyUtilities
{
  v1 = [a1 tu_anyObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

@end