@interface NSMutableArray(SBHArrayUtilities)
- (id)sbh_removeObjectsPassingTest:()SBHArrayUtilities;
@end

@implementation NSMutableArray(SBHArrayUtilities)

- (id)sbh_removeObjectsPassingTest:()SBHArrayUtilities
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];
  [self removeObjectsAtIndexes:v2];

  return v3;
}

@end