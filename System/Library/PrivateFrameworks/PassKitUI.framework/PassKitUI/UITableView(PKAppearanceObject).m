@interface UITableView(PKAppearanceObject)
- (id)pk_childrenForAppearance;
- (uint64_t)pk_applyAppearance:()PKAppearanceObject;
@end

@implementation UITableView(PKAppearanceObject)

- (id)pk_childrenForAppearance
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 tableHeaderView];

  if (v3)
  {
    v4 = [a1 tableHeaderView];
    [v2 addObject:v4];
  }

  v5 = [a1 tableFooterView];

  if (v5)
  {
    v6 = [a1 tableFooterView];
    [v2 addObject:v6];
  }

  v7 = [a1 visibleCells];
  [v2 addObjectsFromArray:v7];

  return v2;
}

- (uint64_t)pk_applyAppearance:()PKAppearanceObject
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  [a1 setBackgroundColor:v5];

  v6 = [a1 backgroundView];
  v7 = [v4 backgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = [v4 tableViewSeparatorColor];
  [a1 setSeparatorColor:v8];

  v9 = [v4 tintColor];
  [a1 setSectionIndexColor:v9];

  v10 = [v4 foregroundColor];
  [a1 setSectionIndexBackgroundColor:v10];

  LODWORD(v10) = [v4 hasDarkAppearance];
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  return [a1 setIndicatorStyle:v11];
}

@end