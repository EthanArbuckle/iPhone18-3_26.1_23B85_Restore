@interface UITableView(PKAppearanceObject)
- (id)pk_childrenForAppearance;
- (uint64_t)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UITableView(PKAppearanceObject)

- (id)pk_childrenForAppearance
{
  array = [MEMORY[0x1E695DF70] array];
  tableHeaderView = [self tableHeaderView];

  if (tableHeaderView)
  {
    tableHeaderView2 = [self tableHeaderView];
    [array addObject:tableHeaderView2];
  }

  tableFooterView = [self tableFooterView];

  if (tableFooterView)
  {
    tableFooterView2 = [self tableFooterView];
    [array addObject:tableFooterView2];
  }

  visibleCells = [self visibleCells];
  [array addObjectsFromArray:visibleCells];

  return array;
}

- (uint64_t)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  backgroundColor = [v4 backgroundColor];
  [self setBackgroundColor:backgroundColor];

  backgroundView = [self backgroundView];
  backgroundColor2 = [v4 backgroundColor];
  [backgroundView setBackgroundColor:backgroundColor2];

  tableViewSeparatorColor = [v4 tableViewSeparatorColor];
  [self setSeparatorColor:tableViewSeparatorColor];

  tintColor = [v4 tintColor];
  [self setSectionIndexColor:tintColor];

  foregroundColor = [v4 foregroundColor];
  [self setSectionIndexBackgroundColor:foregroundColor];

  LODWORD(foregroundColor) = [v4 hasDarkAppearance];
  if (foregroundColor)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  return [self setIndicatorStyle:v11];
}

@end