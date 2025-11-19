@interface UITableConstants_Pad
+ (id)sharedConstants;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (double)defaultRowHeightForTableView:(id)a3 cellStyle:(int64_t)a4;
- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5;
@end

@implementation UITableConstants_Pad

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_0;
  if (!sharedConstants___sharedConstants_0)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedConstants___sharedConstants_0;
    sharedConstants___sharedConstants_0 = v4;

    v3 = sharedConstants___sharedConstants_0;
  }

  return v3;
}

- (double)defaultRowHeightForTableView:(id)a3 cellStyle:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v9 defaultRowHeightForTableView:a3 cellStyle:a4];
  v6 = v5;
  ShouldUseExtraPaddingForCells = TableShouldUseExtraPaddingForCells(a3);
  result = v6 + 8.0;
  if (!ShouldUseExtraPaddingForCells)
  {
    return v6;
  }

  return result;
}

- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v6 minimumContentViewHeightForFont:a3 traitCollection:a4 isSidebarStyle:a5];
  return result;
}

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4
{
  v18.receiver = self;
  v18.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v18 defaultLayoutMarginsForCell:a3 inTableView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ShouldUseExtraPaddingForCells = TableShouldUseExtraPaddingForCells(a4);
  if (ShouldUseExtraPaddingForCells)
  {
    v14 = v10 + 4.0;
  }

  else
  {
    v14 = v10;
  }

  if (ShouldUseExtraPaddingForCells)
  {
    v15 = v6 + 4.0;
  }

  else
  {
    v15 = v6;
  }

  v16 = v8;
  v17 = v12;
  result.right = v17;
  result.bottom = v14;
  result.left = v16;
  result.top = v15;
  return result;
}

- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
{
  retstr->var13.trailing = 0.0;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v7.receiver = self;
  v7.super_class = UITableConstants_Pad;
  return [(_UITableConstantsBackgroundProperties *)&v7 defaultCellBackgroundPropertiesForTableViewStyle:a4 state:a5 traitCollection:a6];
}

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
{
  retstr->var13.trailing = 0.0;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v7.receiver = self;
  v7.super_class = UITableConstants_Pad;
  return [(_UITableConstantsBackgroundProperties *)&v7 defaultSidebarCellBackgroundPropertiesForStyle:a4 state:a5 traitCollection:a6];
}

@end