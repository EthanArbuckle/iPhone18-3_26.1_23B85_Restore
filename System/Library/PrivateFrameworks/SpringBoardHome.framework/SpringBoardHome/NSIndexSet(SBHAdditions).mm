@interface NSIndexSet(SBHAdditions)
- (id)sbh_indexSetByAddingIndexes:()SBHAdditions;
@end

@implementation NSIndexSet(SBHAdditions)

- (id)sbh_indexSetByAddingIndexes:()SBHAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addIndexes:v4];

  return v5;
}

@end