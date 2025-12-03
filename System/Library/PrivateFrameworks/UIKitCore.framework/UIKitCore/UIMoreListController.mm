@interface UIMoreListController
- (UIMoreListController)init;
- (id)_targetNavigationController;
- (id)tabBarItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_layoutCells;
- (void)_updateEditButton;
- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)loadView;
- (void)setAllowsCustomizing:(BOOL)customizing;
- (void)setMoreViewControllers:(id)controllers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIMoreListController

- (void)loadView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [_UIMoreListTableView alloc];
  v4 = [(UITableView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  table = self->_table;
  self->_table = v4;

  [(UITableView *)self->_table setDelegate:self];
  [(UITableView *)self->_table setDataSource:self];
  [(UITableView *)self->_table setSeparatorStyle:1];
  [(UITableView *)self->_table set_listController:self];
  [(UIViewController *)self setView:self->_table];
  [(UIMoreListController *)self _layoutCells];
  [(UIMoreListController *)self _updateEditButton];
  v8[0] = 0x1EFE32440;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [(UIViewController *)self _registerForTraitTokenChanges:v6 withTarget:self action:sel__layoutCells];
}

- (UIMoreListController)init
{
  v3.receiver = self;
  v3.super_class = UIMoreListController;
  result = [(UIViewController *)&v3 init];
  if (result)
  {
    result->_allowsCustomizing = 1;
  }

  return result;
}

- (void)_updateEditButton
{
  v19 = self->_moreEditButtonItem;
  if (![(UIMoreListController *)self allowsCustomizing]|| self->_disableCustomizing)
  {
    moreEditButtonItem = self->_moreEditButtonItem;
    self->_moreEditButtonItem = 0;
LABEL_4:

    goto LABEL_5;
  }

  if (!self->_moreEditButtonItem)
  {
    v15 = [UIBarButtonItem alloc];
    moreEditButtonItem = _UINSLocalizedStringWithDefaultValue(@"Edit", @"Edit");
    tabBarController = [(UIViewController *)self tabBarController];
    v17 = [(UIBarButtonItem *)v15 initWithTitle:moreEditButtonItem style:1 target:tabBarController action:sel_beginCustomizingTabBar_];
    v18 = self->_moreEditButtonItem;
    self->_moreEditButtonItem = v17;

    goto LABEL_4;
  }

LABEL_5:
  tabBarController2 = [(UIViewController *)self tabBarController];
  showsEditButtonOnLeft = [tabBarController2 showsEditButtonOnLeft];

  navigationItem = [(UIViewController *)self navigationItem];
  v7 = navigationItem;
  if (showsEditButtonOnLeft)
  {
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (rightBarButtonItem == v19)
    {
      navigationItem2 = [(UIViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }

    v10 = self->_moreEditButtonItem;
    navigationItem3 = [(UIViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:v10];
  }

  else
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (leftBarButtonItem == v19)
    {
      navigationItem4 = [(UIViewController *)self navigationItem];
      [navigationItem4 setLeftBarButtonItem:0];
    }

    v14 = self->_moreEditButtonItem;
    navigationItem3 = [(UIViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v14];
  }
}

- (void)_layoutCells
{
  if (!self->_layoutManager)
  {
    v3 = objc_alloc_init(UIMoreListCellLayoutManager);
    layoutManager = self->_layoutManager;
    self->_layoutManager = v3;
  }

  window = [(UIView *)self->_table window];

  if (window)
  {
    [(UIMoreListCellLayoutManager *)self->_layoutManager setWidestImageWidthFromViewControllers:self->_moreViewControllers];
    v7 = v6;
    traitCollection = [(UIViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v11 = -1.0;
    if (!IsAccessibilityCategory)
    {
      v11 = v7 + 15.0 + 15.0;
    }

    [(UITableView *)self->_table setSeparatorInset:-1.0, v11, -1.0, -1.0];
  }

  table = [(UIMoreListController *)self table];
  [table reloadData];

  self->_moreViewControllersChanged = 0;
}

- (id)tabBarItem
{
  tabBarItem = self->super._tabBarItem;
  if (!tabBarItem)
  {
    v4 = [[UITabBarItem alloc] initWithTabBarSystemItem:0 tag:0];
    v5 = self->super._tabBarItem;
    self->super._tabBarItem = v4;

    tabBarItem = self->super._tabBarItem;
  }

  return tabBarItem;
}

- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  v6.receiver = self;
  v6.super_class = UIMoreListController;
  [(UIViewController *)&v6 _willChangeToIdiom:idiom onScreen:screen];
  self->_disableCustomizing = idiom == 3;
  self->_hideNavigationBar = idiom == 3;
  [(UIMoreListController *)self _updateEditButton];
}

- (void)setMoreViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_moreViewControllers != controllersCopy)
  {
    objc_storeStrong(&self->_moreViewControllers, controllers);
    if ([(UIViewController *)self isViewLoaded])
    {
      [(UIMoreListController *)self _layoutCells];
    }
  }

  if (self->_moreViewControllersChanged)
  {
    [(UIMoreListController *)self _layoutCells];
  }
}

- (void)setAllowsCustomizing:(BOOL)customizing
{
  if (self->_allowsCustomizing != customizing)
  {
    self->_allowsCustomizing = customizing;
    [(UIMoreListController *)self _updateEditButton];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = UIMoreListController;
  [(UIViewController *)&v8 viewWillAppear:?];
  if (self->_hideNavigationBar)
  {
    _targetNavigationController = [(UIMoreListController *)self _targetNavigationController];
    [_targetNavigationController setNavigationBarHidden:1 animated:appearCopy];
  }

  table = self->_table;
  v7 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0];
  [(UITableView *)table selectRowAtIndexPath:v7 animated:appearCopy scrollPosition:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = -[NSArray objectAtIndex:](self->_moreViewControllers, "objectAtIndex:", [path row]);
  moreListTableCell = [v7 moreListTableCell];
  if (!moreListTableCell)
  {
    v9 = MEMORY[0x1E696AEC0];
    _screen = [(UIViewController *)self _screen];
    v11 = [v9 stringWithFormat:@"%@%d", @"MORE_CELL_IDENTIFIER", objc_msgSend(_screen, "_userInterfaceIdiom")];

    moreListTableCell = [viewCopy dequeueReusableCellWithIdentifier:v11];
    if (!moreListTableCell)
    {
      moreListTableCell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:v11];
      [(UIView *)moreListTableCell setAutoresizingMask:2];
      [(UITableViewCell *)moreListTableCell setLayoutManager:self->_layoutManager];
    }

    tabBarItem = [v7 tabBarItem];
    _moreListTitle = [v7 _moreListTitle];
    if (!_moreListTitle)
    {
      _moreListTitle = [tabBarItem _internalTitle];
      if (!_moreListTitle)
      {
        _moreListTitle = [v7 title];
      }
    }

    v14 = _moreListTitle;
    textLabel = [(UITableViewCell *)moreListTableCell textLabel];
    [textLabel setText:v14];

    if ([(UIView *)moreListTableCell _shouldReverseLayoutDirection])
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    textLabel2 = [(UITableViewCell *)moreListTableCell textLabel];
    [textLabel2 setTextAlignment:v16];

    v18 = __UIMoreListImageForViewController(self, v7, 0);
    imageView = [(UITableViewCell *)moreListTableCell imageView];
    [imageView setImage:v18];

    imageView2 = [(UITableViewCell *)moreListTableCell imageView];
    [imageView2 setAlpha:0.8];

    imageView3 = [(UITableViewCell *)moreListTableCell imageView];
    [imageView3 _setDefaultRenderingMode:2];

    [(UITableViewCell *)moreListTableCell setAccessoryType:1];
    badgeValue = [tabBarItem badgeValue];
    [(UITableViewCell *)moreListTableCell _setBadgeText:badgeValue];

    _screen2 = [(UIViewController *)self _screen];
    _userInterfaceIdiom = [_screen2 _userInterfaceIdiom];

    imageView4 = [(UITableViewCell *)moreListTableCell imageView];
    if (_userInterfaceIdiom == 3)
    {
      +[UIColor whiteColor];
    }

    else
    {
      [UITabBar _unselectedTabTintColorForView:viewCopy];
    }
    v26 = ;
    [imageView4 setTintColor:v26];
  }

  return moreListTableCell;
}

- (id)_targetNavigationController
{
  navigationController = [(UIViewController *)self navigationController];
  v4 = navigationController;
  if (self->_hideNavigationBar)
  {
    v3NavigationController = [navigationController navigationController];

    if (v3NavigationController)
    {
      navigationController2 = [v4 navigationController];

      v4 = navigationController2;
    }
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [path row];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    _targetNavigationController = [(UIMoreListController *)self _targetNavigationController];
    v7 = [(NSArray *)self->_moreViewControllers objectAtIndex:v6];
    [_targetNavigationController pushViewController:v7 animated:1];

    if (self->_hideNavigationBar)
    {
      [_targetNavigationController setNavigationBarHidden:0 animated:1];
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIMoreListController;
  [(UIViewController *)&v7 encodeRestorableStateWithCoder:coderCopy];
  indexPathForSelectedRow = [(UITableView *)self->_table indexPathForSelectedRow];
  v6 = indexPathForSelectedRow;
  if (indexPathForSelectedRow)
  {
    [coderCopy encodeInteger:objc_msgSend(indexPathForSelectedRow forKey:{"row"), @"kSelectedTableViewCellIndexKey"}];
  }
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UIMoreListController;
  [(UIResponder *)&v7 decodeRestorableStateWithCoder:coderCopy];
  if ([coderCopy containsValueForKey:@"kSelectedTableViewCellIndexKey"])
  {
    v5 = [coderCopy decodeIntegerForKey:@"kSelectedTableViewCellIndexKey"];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:0];
    [(UITableView *)self->_table selectRowAtIndexPath:v6 animated:0 scrollPosition:0];
  }
}

@end