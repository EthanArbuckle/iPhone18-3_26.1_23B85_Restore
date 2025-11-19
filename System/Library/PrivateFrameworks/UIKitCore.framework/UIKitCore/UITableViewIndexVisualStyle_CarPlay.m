@interface UITableViewIndexVisualStyle_CarPlay
- (UITableViewIndex)tableViewIndex;
- (UITableViewIndexVisualStyle_CarPlay)initWithTableViewIndex:(id)a3;
- (double)_lineSpacingForCurrentIdiom;
- (double)indexWidth;
- (double)minLineSpacing;
@end

@implementation UITableViewIndexVisualStyle_CarPlay

- (UITableViewIndexVisualStyle_CarPlay)initWithTableViewIndex:(id)a3
{
  v7.receiver = self;
  v7.super_class = UITableViewIndexVisualStyle_CarPlay;
  v3 = a3;
  v4 = [(UITableViewIndexVisualStyle_CarPlay *)&v7 init];
  [(UITableViewIndexVisualStyle_CarPlay *)v4 setTableViewIndex:v3, v7.receiver, v7.super_class];

  v5 = [off_1E70ECC18 boldSystemFontOfSize:11.0];
  [(UITableViewIndexVisualStyle_CarPlay *)v4 setFont:v5];

  return v4;
}

- (double)indexWidth
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 15.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30.0;
  }

  return result;
}

- (double)_lineSpacingForCurrentIdiom
{
  v2 = [(UITableViewIndexVisualStyle_CarPlay *)self tableViewIndex];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = 6.0;
  if (v4 == 6)
  {
    v5 = 9.0;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v3 = [(UITableViewIndexVisualStyle_CarPlay *)self tableViewIndex];
  UIRoundToViewScale(v3);
  v5 = v4;

  return v5;
}

- (UITableViewIndex)tableViewIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewIndex);

  return WeakRetained;
}

@end