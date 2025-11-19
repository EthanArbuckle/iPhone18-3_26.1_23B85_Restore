@interface SBHIconRootTableViewController
- (BOOL)isEditing;
- (BOOL)isScrollTracking;
- (BOOL)setCurrentPageIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)currentPageIndex;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelScrolling;
- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)setEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFolder:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SBHIconRootTableViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v5 viewDidLoad];
  v3 = [(SBHIconRootTableViewController *)self tableView];
  v4 = objc_opt_self();
  [v3 registerClass:v4 forCellReuseIdentifier:@"RootIcon"];
}

- (void)setFolder:(id)a3
{
  v5 = a3;
  if (self->_folder != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_folder, a3);
    v6 = [(SBHIconRootTableViewController *)self tableView];
    [v6 reloadData];

    v5 = v7;
  }
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = SBHIconRootTableViewController;
  return [(SBHIconRootTableViewController *)&v3 isEditing];
}

- (void)setEditing:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v3 setEditing:a3];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v4 setEditing:a3 animated:a4];
}

- (BOOL)isScrollTracking
{
  v2 = [(SBHIconRootTableViewController *)self tableView];
  v3 = [v2 isTracking];

  return v3;
}

- (void)cancelScrolling
{
  v2 = [(SBHIconRootTableViewController *)self tableView];
  [v2 cancelTouchTracking];
}

- (int64_t)currentPageIndex
{
  v2 = [(SBHIconRootTableViewController *)self tableView];
  v3 = [v2 indexPathsForVisibleRows];

  v4 = [v3 firstObject];
  v5 = [v4 section];

  return v5;
}

- (BOOL)setCurrentPageIndex:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SBHIconRootTableViewController *)self tableView];
  v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:a3];
  [v9 rectForRowAtIndexPath:v10];
  [v9 setContentOffset:v5 animated:?];
  if (v8)
  {
    v8[2](v8);
  }

  return 1;
}

- (void)revealIcon:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SBHIconRootTableViewController *)self folder];
  v11 = [v10 indexPathForIcon:v9];

  if (v11)
  {
    v12 = SBFolderRelativeListIndex(v11);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SBHIconRootTableViewController_revealIcon_animated_completionHandler___block_invoke;
    v13[3] = &unk_1E8089600;
    v14 = v8;
    [(SBHIconRootTableViewController *)self setCurrentPageIndex:v12 animated:v5 completion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __72__SBHIconRootTableViewController_revealIcon_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(SBHIconRootTableViewController *)self folder];
  v4 = [v3 listCount];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SBHIconRootTableViewController *)self folder];
  v6 = [v5 listAtIndex:a4];

  v7 = [v6 numberOfIcons];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"RootIcon" forIndexPath:v6];
  v8 = [(SBHIconRootTableViewController *)self folder];
  v9 = [v8 iconAtIndexPath:v6];

  v10 = [(SBHIconRootTableViewController *)self traitCollection];
  v11 = [v7 textLabel];
  v12 = [v9 displayNameForLocation:@"SBIconLocationRoot"];
  [v11 setText:v12];

  v13 = [v7 imageView];
  v14 = [(SBHIconRootTableViewController *)self iconImageCache];
  v15 = [v14 imageForIcon:v9 compatibleWithTraitCollection:v10 options:0];
  [v13 setImage:v15];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBHIconRootTableViewController *)self folder];
  v8 = [v9 iconAtIndexPath:v6];
  [v8 launchFromLocation:@"SBIconLocationRoot" context:0];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

@end