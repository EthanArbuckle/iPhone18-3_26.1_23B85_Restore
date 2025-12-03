@interface NSMutableIndexSet(PLAdditions)
- (void)pl_adjustIndexesForDeletions:()PLAdditions;
- (void)pl_adjustIndexesForInsertions:()PLAdditions;
@end

@implementation NSMutableIndexSet(PLAdditions)

- (void)pl_adjustIndexesForInsertions:()PLAdditions
{
  v2 = [self pl_indexSetAdjustedForInsertions:?];
  [self removeAllIndexes];
  [self addIndexes:v2];
}

- (void)pl_adjustIndexesForDeletions:()PLAdditions
{
  v2 = [self pl_indexSetAdjustedForDeletions:?];
  [self removeAllIndexes];
  [self addIndexes:v2];
}

@end