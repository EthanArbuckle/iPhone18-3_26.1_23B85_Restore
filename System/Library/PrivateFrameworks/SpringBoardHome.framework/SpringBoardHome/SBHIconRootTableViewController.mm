@interface SBHIconRootTableViewController
- (BOOL)isEditing;
- (BOOL)isScrollTracking;
- (BOOL)setCurrentPageIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)currentPageIndex;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelScrolling;
- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler;
- (void)setEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFolder:(id)folder;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SBHIconRootTableViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v5 viewDidLoad];
  tableView = [(SBHIconRootTableViewController *)self tableView];
  v4 = objc_opt_self();
  [tableView registerClass:v4 forCellReuseIdentifier:@"RootIcon"];
}

- (void)setFolder:(id)folder
{
  folderCopy = folder;
  if (self->_folder != folderCopy)
  {
    v7 = folderCopy;
    objc_storeStrong(&self->_folder, folder);
    tableView = [(SBHIconRootTableViewController *)self tableView];
    [tableView reloadData];

    folderCopy = v7;
  }
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = SBHIconRootTableViewController;
  return [(SBHIconRootTableViewController *)&v3 isEditing];
}

- (void)setEditing:(BOOL)editing
{
  v3.receiver = self;
  v3.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v3 setEditing:editing];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = SBHIconRootTableViewController;
  [(SBHIconRootTableViewController *)&v4 setEditing:editing animated:animated];
}

- (BOOL)isScrollTracking
{
  tableView = [(SBHIconRootTableViewController *)self tableView];
  isTracking = [tableView isTracking];

  return isTracking;
}

- (void)cancelScrolling
{
  tableView = [(SBHIconRootTableViewController *)self tableView];
  [tableView cancelTouchTracking];
}

- (int64_t)currentPageIndex
{
  tableView = [(SBHIconRootTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  firstObject = [indexPathsForVisibleRows firstObject];
  section = [firstObject section];

  return section;
}

- (BOOL)setCurrentPageIndex:(int64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  tableView = [(SBHIconRootTableViewController *)self tableView];
  v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:index];
  [tableView rectForRowAtIndexPath:v10];
  [tableView setContentOffset:animatedCopy animated:?];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  return 1;
}

- (void)revealIcon:(id)icon animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  iconCopy = icon;
  folder = [(SBHIconRootTableViewController *)self folder];
  v11 = [folder indexPathForIcon:iconCopy];

  if (v11)
  {
    v12 = SBFolderRelativeListIndex(v11);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SBHIconRootTableViewController_revealIcon_animated_completionHandler___block_invoke;
    v13[3] = &unk_1E8089600;
    v14 = handlerCopy;
    [(SBHIconRootTableViewController *)self setCurrentPageIndex:v12 animated:animatedCopy completion:v13];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  folder = [(SBHIconRootTableViewController *)self folder];
  listCount = [folder listCount];

  return listCount;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  folder = [(SBHIconRootTableViewController *)self folder];
  v6 = [folder listAtIndex:section];

  numberOfIcons = [v6 numberOfIcons];
  return numberOfIcons;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"RootIcon" forIndexPath:pathCopy];
  folder = [(SBHIconRootTableViewController *)self folder];
  v9 = [folder iconAtIndexPath:pathCopy];

  traitCollection = [(SBHIconRootTableViewController *)self traitCollection];
  textLabel = [v7 textLabel];
  v12 = [v9 displayNameForLocation:@"SBIconLocationRoot"];
  [textLabel setText:v12];

  imageView = [v7 imageView];
  iconImageCache = [(SBHIconRootTableViewController *)self iconImageCache];
  v15 = [iconImageCache imageForIcon:v9 compatibleWithTraitCollection:traitCollection options:0];
  [imageView setImage:v15];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  folder = [(SBHIconRootTableViewController *)self folder];
  v8 = [folder iconAtIndexPath:pathCopy];
  [v8 launchFromLocation:@"SBIconLocationRoot" context:0];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end