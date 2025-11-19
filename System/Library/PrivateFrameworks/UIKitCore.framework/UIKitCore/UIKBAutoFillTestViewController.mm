@interface UIKBAutoFillTestViewController
+ (void)enumerateSubviewsOfRootView:(id)a3 usingBlock:(id)a4;
- (UIKBAutoFillTestViewController)initWithAutoFillTestArchive:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_applyNavigationItemPropertiesFromTestArchive;
- (void)viewDidLoad;
@end

@implementation UIKBAutoFillTestViewController

- (UIKBAutoFillTestViewController)initWithAutoFillTestArchive:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UIKBAutoFillTestViewController;
  v6 = [(UIViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_testArchive, a3);
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestViewController;
  [(UIViewController *)&v7 viewDidLoad];
  v3 = [(UIKBAutoFillTestArchive *)self->_testArchive snapshotView];
  [v3 setAutoresizingMask:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__UIKBAutoFillTestViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E710D920;
  v6[4] = self;
  [UIKBAutoFillTestViewController enumerateSubviewsOfRootView:v3 usingBlock:v6];
  v4 = [(UIViewController *)self view];
  [v4 addSubview:v3];

  v5 = [(UIKBAutoFillTestArchive *)self->_testArchive viewControllerTitle];
  [(UIViewController *)self setTitle:v5];

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
  v13 = [(UIKBAutoFillTestArchive *)self->_testArchive viewControllerNavigationItem];
  v3 = [(UIViewController *)self navigationItem];
  v4 = [v13 title];
  [v3 setTitle:v4];

  v5 = [v13 prompt];
  [v3 setPrompt:v5];

  v6 = [v13 backButtonTitle];
  [v3 setBackButtonTitle:v6];

  v7 = [v13 backBarButtonItem];
  [v3 setBackBarButtonItem:v7];

  v8 = [v13 leftBarButtonItems];
  if ([v8 count])
  {
    [v3 setLeftBarButtonItems:v8];
  }

  else
  {
    v9 = [v13 leftBarButtonItem];
    [v3 setLeftBarButtonItem:v9];
  }

  v10 = [v13 titleView];
  if (v10)
  {
    [v3 setTitleView:v10];
  }

  v11 = [v13 rightBarButtonItems];
  if ([v11 count])
  {
    [v3 setRightBarButtonItems:v11];
  }

  else
  {
    v12 = [v13 rightBarButtonItem];
    [v3 setRightBarButtonItem:v12];
  }

  if (dyld_program_sdk_at_least())
  {
    [v3 setLargeTitleDisplayMode:{objc_msgSend(v13, "largeTitleDisplayMode")}];
  }
}

+ (void)enumerateSubviewsOfRootView:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  [v7 addObject:v5];
  if ([v7 count])
  {
    while (1)
    {
      v9 = [v7 firstObject];
      [v7 removeObjectAtIndex:0];
      v11 = 0;
      v6[2](v6, v9, &v11 + 1, &v11);
      if (v11 == 1)
      {
        break;
      }

      if ((v11 & 0x100) == 0)
      {
        v10 = [v9 subviews];
        [v7 addObjectsFromArray:v10];
      }

      if (![v7 count])
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v4 = [v3 numberOfSections];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v6 = [v5 numberOfRowsInSection:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  testArchive = self->_testArchive;
  v6 = a4;
  v7 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v8 = [v7 cellForRowAtIndexPath:v6];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v6 = [v5 titleForHeaderInSection:a4];

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v6 = [v5 titleForFooterInSection:a4];

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  testArchive = self->_testArchive;
  v6 = a4;
  v7 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  [v7 heightForRowAtIndexPath:v6];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  [v5 heightForHeaderInSection:a4];
  v7 = v6;

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  [v5 heightForHeaderInSection:a4];
  v7 = v6;

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v6 = [v5 viewForHeaderInSection:a4];

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = -[UIKBAutoFillTestArchive tableViewDataSourceWithTag:](self->_testArchive, "tableViewDataSourceWithTag:", [a3 tag]);
  v6 = [v5 viewForHeaderInSection:a4];

  return v6;
}

@end