@interface NSMutableArray(SBHArrayUtilities)
- (id)sbh_removeObjectsPassingTest:()SBHArrayUtilities;
@end

@implementation NSMutableArray(SBHArrayUtilities)

- (id)sbh_removeObjectsPassingTest:()SBHArrayUtilities
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];
  [a1 removeObjectsAtIndexes:v2];

  return v3;
}

@end