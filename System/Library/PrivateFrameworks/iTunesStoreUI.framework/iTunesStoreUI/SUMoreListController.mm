@interface SUMoreListController
- (SUMoreListController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tabBarItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)supportedInterfaceOrientations;
- (void)_badgeDidChangeNotification:(id)notification;
- (void)_reloadPreviewOverlayVisibility;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUMoreListController

- (SUMoreListController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SUMoreListController;
  v4 = [(SUMoreListController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__reloadPreviewOverlayVisibility name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__badgeDidChangeNotification_ name:@"SUViewControllerBadgeDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUViewControllerBadgeDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUMoreListController;
  [(SUMoreListController *)&v4 dealloc];
}

- (void)didMoveToParentViewController:(id)controller
{
  [(SUMoreListController *)self _reloadPreviewOverlayVisibility];
  v5.receiver = self;
  v5.super_class = SUMoreListController;
  [(SUMoreListController *)&v5 didMoveToParentViewController:controller];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SUMoreListController;
  [(UIMoreListController *)&v4 viewWillAppear:appear];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = SUMoreListController;
  v5 = [(UIMoreListController *)&v11 tableView:view cellForRowAtIndexPath:path];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v5;
  if (_UIApplicationUsesLegacyUI())
  {
    v7 = [view dequeueReusableCellWithIdentifier:@"SUMoreList"];
    if (!v7)
    {
      v7 = [[SUMoreListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SUMoreList"];
    }
  }

  [(SUMoreListTableViewCell *)v7 setAccessoryType:1];
  [(SUMoreListTableViewCell *)v7 _setBadgeText:[(SUMoreListTableViewCell *)v6 _badgeText]];
  [-[SUMoreListTableViewCell textLabel](v7 "textLabel")];
  imageView = [(SUMoreListTableViewCell *)v6 imageView];
  imageView2 = [(SUMoreListTableViewCell *)v7 imageView];
  [imageView2 setImage:{objc_msgSend(imageView, "image")}];
  [imageView2 setHighlightedImage:{objc_msgSend(imageView, "highlightedImage")}];
  return v7;
}

- (void)_badgeDidChangeNotification:(id)notification
{
  table = [(UIMoreListController *)self table];

  [table reloadData];
}

- (void)_reloadPreviewOverlayVisibility
{
  table = [(UIMoreListController *)self table];

  [SUPreviewOverlayViewController offsetScrollView:table forViewController:self];
}

@end