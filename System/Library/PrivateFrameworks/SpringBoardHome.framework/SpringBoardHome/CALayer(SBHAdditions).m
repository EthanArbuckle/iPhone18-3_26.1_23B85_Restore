@interface CALayer(SBHAdditions)
- (BOOL)sbh_hasFilterWithName:()SBHAdditions;
- (void)sbh_addFilter:()SBHAdditions;
- (void)sbh_removeFilterWithName:()SBHAdditions;
@end

@implementation CALayer(SBHAdditions)

- (void)sbh_addFilter:()SBHAdditions
{
  v6 = a3;
  v4 = [a1 filters];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v5 addObject:v6];
  [a1 setFilters:v5];
}

- (void)sbh_removeFilterWithName:()SBHAdditions
{
  v4 = a3;
  v5 = [a1 filters];
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__CALayer_SBHAdditions__sbh_removeFilterWithName___block_invoke;
    v9[3] = &unk_1E808B910;
    v10 = v4;
    v6 = [v5 indexOfObjectPassingTest:v9];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = [v5 mutableCopy];
      [v8 removeObjectAtIndex:v7];
      [a1 setFilters:v8];
    }
  }
}

- (BOOL)sbh_hasFilterWithName:()SBHAdditions
{
  v4 = a3;
  v5 = [a1 filters];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__CALayer_SBHAdditions__sbh_hasFilterWithName___block_invoke;
    v8[3] = &unk_1E808B910;
    v9 = v4;
    v6 = [v5 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end