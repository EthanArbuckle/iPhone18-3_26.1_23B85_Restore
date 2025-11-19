@interface NSMutableArray(TRI)
- (BOOL)triMoveFirstItemToFrontPassingTest:()TRI;
- (BOOL)triRemoveFirstItemPassingTest:()TRI;
@end

@implementation NSMutableArray(TRI)

- (BOOL)triMoveFirstItemToFrontPassingTest:()TRI
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [a1 objectAtIndexedSubscript:v2];
    [a1 removeObjectAtIndex:v2];
    [a1 insertObject:v3 atIndex:0];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)triRemoveFirstItemPassingTest:()TRI
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 removeObjectAtIndex:v2];
  }

  return v2 != 0x7FFFFFFFFFFFFFFFLL;
}

@end