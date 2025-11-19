@interface NSMutableIndexSet(PLAdditions)
- (void)pl_adjustIndexesForDeletions:()PLAdditions;
- (void)pl_adjustIndexesForInsertions:()PLAdditions;
@end

@implementation NSMutableIndexSet(PLAdditions)

- (void)pl_adjustIndexesForInsertions:()PLAdditions
{
  v2 = [a1 pl_indexSetAdjustedForInsertions:?];
  [a1 removeAllIndexes];
  [a1 addIndexes:v2];
}

- (void)pl_adjustIndexesForDeletions:()PLAdditions
{
  v2 = [a1 pl_indexSetAdjustedForDeletions:?];
  [a1 removeAllIndexes];
  [a1 addIndexes:v2];
}

@end