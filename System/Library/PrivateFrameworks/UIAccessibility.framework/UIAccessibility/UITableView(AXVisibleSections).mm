@interface UITableView(AXVisibleSections)
- (id)_accessibilityIndicesOfVisibleHeadersAndFooters;
@end

@implementation UITableView(AXVisibleSections)

- (id)_accessibilityIndicesOfVisibleHeadersAndFooters
{
  numberOfSections = [self numberOfSections];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      if ([self style])
      {
        [self rectForHeaderInSection:i];
      }

      else
      {
        [self rectForSection:i];
      }

      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      [self contentOffset];
      v14 = v13;
      [self contentOffset];
      v16 = v15;
      [self bounds];
      v18 = v17;
      [self bounds];
      v22.origin.x = v14;
      v22.origin.y = v16;
      v22.size.width = v18;
      v23.origin.x = v9;
      v23.origin.y = v10;
      v23.size.width = v11;
      v23.size.height = v12;
      if (CGRectIntersectsRect(v22, v23))
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:i];
        [v3 addObject:v19];
      }
    }
  }

  return v3;
}

@end