@interface UIKBAutoFillTestViewController
+ (void)enumerateSubviewsOfRootView:(id)view usingBlock:(id)block;
- (UIKBAutoFillTestViewController)initWithAutoFillTestArchive:(id)archive;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_applyNavigationItemPropertiesFromTestArchive;
- (void)viewDidLoad;
@end

@implementation UIKBAutoFillTestViewController

- (UIKBAutoFillTestViewController)initWithAutoFillTestArchive:(id)archive
{
  archiveCopy = archive;
  v10.receiver = self;
  v10.super_class = UIKBAutoFillTestViewController;
  v6 = [(UIViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testArchive, archive);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestViewController;
  [(UIViewController *)&v7 viewDidLoad];
  snapshotView = [(UIKBAutoFillTestArchive *)self->_testArchive snapshotView];
  [snapshotView setAutoresizingMask:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__UIKBAutoFillTestViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E710D920;
  v6[4] = self;
  [UIKBAutoFillTestViewController enumerateSubviewsOfRootView:snapshotView usingBlock:v6];
  view = [(UIViewController *)self view];
  [view addSubview:snapshotView];

  viewControllerTitle = [(UIKBAutoFillTestArchive *)self->_testArchive viewControllerTitle];
  [(UIViewController *)self setTitle:viewControllerTitle];

  [(UIKBAutoFillTestViewController *)self _applyNavigationItemPropertiesFromTestArchive];
}

void __45__UIKBAutoFillTestViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a3 = 1;
    v5 = *(a1 + 32);
    v6 = v7;
    [v6 setDelegate:v5];
    [v6 setDataSource:*(a1 + 32)];
  }
}

- (void)_applyNavigationItemPropertiesFromTestArchive
{
  viewControllerNavigationItem = [(UIKBAutoFillTestArchive *)self->_testArchive viewControllerNavigationItem];
  navigationItem = [(UIViewController *)self navigationItem];
  title = [viewControllerNavigationItem title];
  [navigationItem setTitle:title];

  prompt = [viewControllerNavigationItem prompt];
  [navigationItem setPrompt:prompt];

  backButtonTitle = [viewControllerNavigationItem backButtonTitle];
  [navigationItem setBackButtonTitle:backButtonTitle];

  backBarButtonItem = [viewControllerNavigationItem backBarButtonItem];
  [navigationItem setBackBarButtonItem:backBarButtonItem];

  leftBarButtonItems = [viewControllerNavigationItem leftBarButtonItems];
  if ([leftBarButtonItems count])
  {
    [navigationItem setLeftBarButtonItems:leftBarButtonItems];
  }

  else
  {
    leftBarButtonItem = [viewControllerNavigationItem leftBarButtonItem];
    [navigationItem setLeftBarButtonItem:leftBarButtonItem];
  }

  titleView = [viewControllerNavigationItem titleView];
  if (titleView)
  {
    [navigationItem setTitleView:titleView];
  }

  rightBarButtonItems = [viewControllerNavigationItem rightBarButtonItems];
  if ([rightBarButtonItems count])
  {
    [navigationItem setRightBarButtonItems:rightBarButtonItems];
  }

  else
  {
    rightBarButtonItem = [viewControllerNavigationItem rightBarButtonItem];
    [navigationItem setRightBarButtonItem:rightBarButtonItem];
  }

  if (dyld_program_sdk_at_least())
  {
    [navigationItem setLargeTitleDisplayMode:{objc_msgSend(viewControllerNavigationItem, "largeTitleDisplayMode")}];
  }
}

+ (void)enumerateSubviewsOfRootView:(id)view usingBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [array addObject:viewCopy];
  if ([array count])
  {
    while (1)
    {
      firstObject = [array firstObject];
      [array removeObjectAtIndex:0];
      v11 = 0;
      blockCopy[2](blockCopy, firstObject, &v11 + 1, &v11);
      if (v11 == 1)
      {
        break;
      }

      if ((v11 & 0x100) == 0)
      {
        subviews = [firstObject subviews];
        [array addObjectsFromArray:subviews];
      }

      if (![array count])
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  numberOfSections = [v3 numberOfSections];

  return numberOfSections;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v6 = [v5 numberOfRowsInSection:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  testArchive = self->_testArchive;
  pathCopy = path;
  v7 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v8 = [v7 cellForRowAtIndexPath:pathCopy];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v6 = [v5 titleForHeaderInSection:section];

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v6 = [v5 titleForFooterInSection:section];

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  testArchive = self->_testArchive;
  pathCopy = path;
  v7 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](testArchive, "tableViewDataSourceWithTag:", [view tag]);
  [v7 heightForRowAtIndexPath:pathCopy];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  [v5 heightForHeaderInSection:section];
  v7 = v6;

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  [v5 heightForHeaderInSection:section];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v6 = [v5 viewForHeaderInSection:section];

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [view tag]);
  v6 = [v5 viewForHeaderInSection:section];

  return v6;
}

@end