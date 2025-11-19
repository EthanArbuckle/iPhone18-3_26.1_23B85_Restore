@interface SUMoreListController
- (SUMoreListController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tabBarItem;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_badgeDidChangeNotification:(id)a3;
- (void)_reloadPreviewOverlayVisibility;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUMoreListController

- (SUMoreListController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUMoreListController;
  v4 = [(SUMoreListController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__reloadPreviewOverlayVisibility name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
    [v5 addObserver:v4 selector:sel__badgeDidChangeNotification_ name:@"SUViewControllerBadgeDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"SUViewControllerBadgeDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUMoreListController;
  [(SUMoreListController *)&v4 dealloc];
}

- (void)didMoveToParentViewController:(id)a3
{
  [(SUMoreListController *)self _reloadPreviewOverlayVisibility];
  v5.receiver = self;
  v5.super_class = SUMoreListController;
  [(SUMoreListController *)&v5 didMoveToParentViewController:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUMoreListController;
  [(UIMoreListController *)&v4 viewWillAppear:a3];
  [(SUMoreListController *)self _reloadPreviewOverlayVisibility];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    return 30;
  }

  if (SUAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (id)tabBarItem
{
  result = self->_tabBarItem;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD008]) initWithTabBarSystemItem:0 tag:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD008]);
    self->_tabBarItem = v5;
    -[UITabBarItem setImage:](v5, "setImage:", [objc_msgSend(v4 "_internalTemplateImage")]);
    -[UITabBarItem setTitle:](self->_tabBarItem, "setTitle:", [v4 _internalTitle]);

    return self->_tabBarItem;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = SUMoreListController;
  v5 = [(UIMoreListController *)&v11 tableView:a3 cellForRowAtIndexPath:a4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v5;
  if (_UIApplicationUsesLegacyUI())
  {
    v7 = [a3 dequeueReusableCellWithIdentifier:@"SUMoreList"];
    if (!v7)
    {
      v7 = [[SUMoreListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUMoreList"];
    }
  }

  [(SUMoreListTableViewCell *)v7 setAccessoryType:1];
  [(SUMoreListTableViewCell *)v7 _setBadgeText:[(SUMoreListTableViewCell *)v6 _badgeText]];
  [-[SUMoreListTableViewCell textLabel](v7 "textLabel")];
  v8 = [(SUMoreListTableViewCell *)v6 imageView];
  v9 = [(SUMoreListTableViewCell *)v7 imageView];
  [v9 setImage:{objc_msgSend(v8, "image")}];
  [v9 setHighlightedImage:{objc_msgSend(v8, "highlightedImage")}];
  return v7;
}

- (void)_badgeDidChangeNotification:(id)a3
{
  v3 = [(UIMoreListController *)self table];

  [v3 reloadData];
}

- (void)_reloadPreviewOverlayVisibility
{
  v3 = [(UIMoreListController *)self table];

  [SUPreviewOverlayViewController offsetScrollView:v3 forViewController:self];
}

@end