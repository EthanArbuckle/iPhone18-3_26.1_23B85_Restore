@interface NSMutableArray(TRI)
- (BOOL)triMoveFirstItemToFrontPassingTest:()TRI;
- (BOOL)triRemoveFirstItemPassingTest:()TRI;
@end

@implementation NSMutableArray(TRI)

- (BOOL)triMoveFirstItemToFrontPassingTest:()TRI
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [self objectAtIndexedSubscript:v2];
    [self removeObjectAtIndex:v2];
    [self insertObject:v3 atIndex:0];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)triRemoveFirstItemPassingTest:()TRI
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeObjectAtIndex:v2];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

@end