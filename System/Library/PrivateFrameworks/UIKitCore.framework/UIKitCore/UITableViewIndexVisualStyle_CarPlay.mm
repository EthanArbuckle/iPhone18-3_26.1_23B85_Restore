@interface UITableViewIndexVisualStyle_CarPlay
- (UITableViewIndex)tableViewIndex;
- (UITableViewIndexVisualStyle_CarPlay)initWithTableViewIndex:(id)index;
- (double)_lineSpacingForCurrentIdiom;
- (double)indexWidth;
- (double)minLineSpacing;
@end

@implementation UITableViewIndexVisualStyle_CarPlay

- (UITableViewIndexVisualStyle_CarPlay)initWithTableViewIndex:(id)index
{
  v7.receiver = self;
  v7.super_class = UITableViewIndexVisualStyle_CarPlay;
  indexCopy = index;
  v4 = [(UITableViewIndexVisualStyle_CarPlay *)&v7 init];
  [(UITableViewIndexVisualStyle_CarPlay *)v4 setTableViewIndex:indexCopy, v7.receiver, v7.super_class];

  v5 = [off_1E70ECC18 boldSystemFontOfSize:11.0];
  [(UITableViewIndexVisualStyle_CarPlay *)v4 setFont:v5];

  return v4;
}

- (double)indexWidth
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  result = 15.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30.0;
  }

  return result;
}

- (double)_lineSpacingForCurrentIdiom
{
  tableViewIndex = [(UITableViewIndexVisualStyle_CarPlay *)self tableViewIndex];
  traitCollection = [tableViewIndex traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v5 = 6.0;
  if (userInterfaceIdiom == 6)
  {
    v5 = 9.0;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (double)minLineSpacing
{
  [(UITableViewIndexVisualStyle_CarPlay *)self _lineSpacingForCurrentIdiom];
  tableViewIndex = [(UITableViewIndexVisualStyle_CarPlay *)self tableViewIndex];
  UIRoundToViewScale(tableViewIndex);
  v5 = v4;

  return v5;
}

- (UITableViewIndex)tableViewIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewIndex);

  return WeakRetained;
}

@end