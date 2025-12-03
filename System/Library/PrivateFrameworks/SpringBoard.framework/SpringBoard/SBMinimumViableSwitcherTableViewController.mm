@interface SBMinimumViableSwitcherTableViewController
- (BOOL)isWindowVisible;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (CGRect)effectiveLeadingStatusBarPartFrame;
- (CGRect)effectiveTrailingStatusBarPartFrame;
- (SBSwitcherContentViewControllerDataSource)dataSource;
- (SBSwitcherContentViewControllerDelegate)delegate;
- (double)contentAspectRatio;
- (id)_appLayouts;
- (id)_statusBarStyleRequestForDefaultStyle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)noteAppLayoutsDidChange;
- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes willAnimate:(BOOL)animate;
- (void)performAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes completion:(id)completion;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)removeLayoutRole:(int64_t)role inSpace:(id)space mutationBlock:(id)block reason:(int64_t)reason;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SBMinimumViableSwitcherTableViewController

- (BOOL)isWindowVisible
{
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];

  if (!switcherController)
  {
    v4 = SBLogCommon();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_ExpectedASwitc.isa);
    }
  }

  v6 = [switcherController unlockedEnvironmentMode] == 2;

  return v6;
}

- (id)_appLayouts
{
  dataSource = [(SBMinimumViableSwitcherTableViewController *)self dataSource];
  v4 = [dataSource appLayoutsForSwitcherContentController:self];

  return v4;
}

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  layoutState = [context layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

  if (unlockedEnvironmentMode == 2)
  {
    tableView = [(SBMinimumViableSwitcherTableViewController *)self tableView];
    [tableView reloadData];
  }

  v12 = 0.4;
  v13[1] = 3221225472;
  v13[0] = MEMORY[0x277D85DD0];
  v13[2] = __95__SBMinimumViableSwitcherTableViewController_performTransitionWithContext_animated_completion___block_invoke;
  v13[3] = &unk_2783A9F58;
  if (!animatedCopy)
  {
    v12 = 0.0;
  }

  v14 = unlockedEnvironmentMode == 2;
  v13[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v13 animations:completionCopy completion:v12];
}

void __95__SBMinimumViableSwitcherTableViewController_performTransitionWithContext_animated_completion___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) view];
  [v3 setAlpha:v2];
}

- (double)contentAspectRatio
{
  viewIfLoaded = [(SBMinimumViableSwitcherTableViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
  if (viewIfLoaded)
  {
    v5 = v3 / v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes willAnimate:(BOOL)animate
{
  v6 = MEMORY[0x277CBEB18];
  indexesCopy = indexes;
  v8 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__SBMinimumViableSwitcherTableViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke;
  v11[3] = &unk_2783B1568;
  v12 = v8;
  v9 = v8;
  [indexesCopy enumerateObjectsUsingBlock:v11];

  tableView = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  [tableView insertRowsAtIndexPaths:v9 withRowAnimation:100];
}

void __111__SBMinimumViableSwitcherTableViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  [v3 addObject:v4];
}

- (void)performAnimatedInsertionOfAppLayouts:(id)layouts atIndexes:(id)indexes completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

- (void)removeLayoutRole:(int64_t)role inSpace:(id)space mutationBlock:(id)block reason:(int64_t)reason
{
  v13[1] = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
  v9 = [_appLayouts indexOfObject:spaceCopy];

  tableView = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [tableView deleteRowsAtIndexPaths:v12 withRowAnimation:100];
}

- (void)noteAppLayoutsDidChange
{
  tableView = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  [tableView reloadData];
}

- (CGRect)effectiveLeadingStatusBarPartFrame
{
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  statusBar = [statusBarManager statusBar];
  [statusBar frameForPartWithIdentifier:*MEMORY[0x277D775C0]];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)effectiveTrailingStatusBarPartFrame
{
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  statusBar = [statusBarManager statusBar];
  [statusBar frameForPartWithIdentifier:*MEMORY[0x277D775C8]];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SBMinimumViableSwitcherTableViewController;
  [(SBMinimumViableSwitcherTableViewController *)&v6 viewDidLoad];
  view = [(SBMinimumViableSwitcherTableViewController *)self view];
  [view setAlpha:0.0];

  tableView = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  v5 = objc_opt_self();
  [tableView registerClass:v5 forCellReuseIdentifier:@"Identifier"];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_bestAppSuggestion)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
  v7 = [_appLayouts count];

  if (self->_bestAppSuggestion)
  {
    v8 = section == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:pathCopy];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  if (self->_bestAppSuggestion && ![pathCopy section])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    bundleIdentifier = [(SBBestAppSuggestion *)self->_bestAppSuggestion bundleIdentifier];
    v10 = [v15 stringWithFormat:@"%@ - %@", v17, bundleIdentifier];

    textLabel = [v7 textLabel];
    [textLabel setText:v10];
  }

  else
  {
    _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v10 = [_appLayouts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    allItems = [v10 allItems];
    v12 = [allItems bs_map:&__block_literal_global_96];
    textLabel = [v12 componentsJoinedByString:{@", "}];

    textLabel2 = [v7 textLabel];
    [textLabel2 setText:textLabel];
  }

  return v7;
}

id __78__SBMinimumViableSwitcherTableViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLegacyDisplayItemTypeFromType([v2 type]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [v2 uniqueIdentifier];

  v6 = [v4 stringWithFormat:@"%@ - %@", v3, v5];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  delegate = [(SBMinimumViableSwitcherTableViewController *)self delegate];
  if (self->_bestAppSuggestion && ![pathCopy section])
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate switcherContentController:self activatedBestAppSuggestion:self->_bestAppSuggestion];
    }
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
      v11 = [_appLayouts objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Tapped: %@", &v15, 0xCu);
    }

    _appLayouts2 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v13 = [_appLayouts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v14 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v13];
    [delegate switcherContentController:self performTransitionWithRequest:v14 gestureInitiated:0];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_bestAppSuggestion && ![pathCopy section])
  {
    v11 = 0;
  }

  else
  {
    _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v10 = [_appLayouts objectAtIndex:{objc_msgSend(v8, "row")}];

    v11 = [v10 type] == 0;
  }

  return v11;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    _appLayouts = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v9 = [pathCopy row];

    v13 = [_appLayouts objectAtIndex:v9];

    delegate = [(SBMinimumViableSwitcherTableViewController *)self delegate];
    allItems = [v13 allItems];
    firstObject = [allItems firstObject];
    [delegate switcherContentController:self deletedDisplayItem:firstObject inAppLayout:v13 forReason:1];
  }
}

- (id)_statusBarStyleRequestForDefaultStyle
{
  v2 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:0 foregroundColor:0];

  return v2;
}

- (SBSwitcherContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBSwitcherContentViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end