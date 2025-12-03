@interface UITableConstants_Pad
+ (id)sharedConstants;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style;
- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style;
@end

@implementation UITableConstants_Pad

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_0;
  if (!sharedConstants___sharedConstants_0)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_0;
    sharedConstants___sharedConstants_0 = v4;

    v3 = sharedConstants___sharedConstants_0;
  }

  return v3;
}

- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v9 defaultRowHeightForTableView:view cellStyle:style];
  v6 = v5;
  ShouldUseExtraPaddingForCells = TableShouldUseExtraPaddingForCells(view);
  result = v6 + 8.0;
  if (!ShouldUseExtraPaddingForCells)
  {
    return v6;
  }

  return result;
}

- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style
{
  v6.receiver = self;
  v6.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v6 minimumContentViewHeightForFont:font traitCollection:collection isSidebarStyle:style];
  return result;
}

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view
{
  v18.receiver = self;
  v18.super_class = UITableConstants_Pad;
  [(UITableConstants_IOS *)&v18 defaultLayoutMarginsForCell:cell inTableView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ShouldUseExtraPaddingForCells = TableShouldUseExtraPaddingForCells(view);
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

- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection
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
  return [(_UITableConstantsBackgroundProperties *)&v7 defaultCellBackgroundPropertiesForTableViewStyle:state state:collection traitCollection:a6];
}

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection
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
  return [(_UITableConstantsBackgroundProperties *)&v7 defaultSidebarCellBackgroundPropertiesForStyle:state state:collection traitCollection:a6];
}

@end