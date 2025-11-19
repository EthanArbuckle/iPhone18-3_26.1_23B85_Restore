@interface SBMinimumViableSwitcherTableViewController
- (BOOL)isWindowVisible;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (CGRect)effectiveLeadingStatusBarPartFrame;
- (CGRect)effectiveTrailingStatusBarPartFrame;
- (SBSwitcherContentViewControllerDataSource)dataSource;
- (SBSwitcherContentViewControllerDelegate)delegate;
- (double)contentAspectRatio;
- (id)_appLayouts;
- (id)_statusBarStyleRequestForDefaultStyle;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)noteAppLayoutsDidChange;
- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)a3 atIndexes:(id)a4 willAnimate:(BOOL)a5;
- (void)performAnimatedInsertionOfAppLayouts:(id)a3 atIndexes:(id)a4 completion:(id)a5;
- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removeLayoutRole:(int64_t)a3 inSpace:(id)a4 mutationBlock:(id)a5 reason:(int64_t)a6;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SBMinimumViableSwitcherTableViewController

- (BOOL)isWindowVisible
{
  v2 = [(UIViewController *)self _sbWindowScene];
  v3 = [v2 switcherController];

  if (!v3)
  {
    v4 = SBLogCommon();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      NSLog(&cfstr_ExpectedASwitc.isa);
    }
  }

  v6 = [v3 unlockedEnvironmentMode] == 2;

  return v6;
}

- (id)_appLayouts
{
  v3 = [(SBMinimumViableSwitcherTableViewController *)self dataSource];
  v4 = [v3 appLayoutsForSwitcherContentController:self];

  return v4;
}

- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 layoutState];
  v10 = [v9 unlockedEnvironmentMode];

  if (v10 == 2)
  {
    v11 = [(SBMinimumViableSwitcherTableViewController *)self tableView];
    [v11 reloadData];
  }

  v12 = 0.4;
  v13[1] = 3221225472;
  v13[0] = MEMORY[0x277D85DD0];
  v13[2] = __95__SBMinimumViableSwitcherTableViewController_performTransitionWithContext_animated_completion___block_invoke;
  v13[3] = &unk_2783A9F58;
  if (!v5)
  {
    v12 = 0.0;
  }

  v14 = v10 == 2;
  v13[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v13 animations:v8 completion:v12];
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
  v2 = [(SBMinimumViableSwitcherTableViewController *)self viewIfLoaded];
  [v2 bounds];
  if (v2)
  {
    v5 = v3 / v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)noteModelDidMutateForInsertionOfAppLayouts:(id)a3 atIndexes:(id)a4 willAnimate:(BOOL)a5
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__SBMinimumViableSwitcherTableViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke;
  v11[3] = &unk_2783B1568;
  v12 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v11];

  v10 = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  [v10 insertRowsAtIndexPaths:v9 withRowAnimation:100];
}

void __111__SBMinimumViableSwitcherTableViewController_noteModelDidMutateForInsertionOfAppLayouts_atIndexes_willAnimate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  [v3 addObject:v4];
}

- (void)performAnimatedInsertionOfAppLayouts:(id)a3 atIndexes:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 1, 0);
  }
}

- (void)removeLayoutRole:(int64_t)a3 inSpace:(id)a4 mutationBlock:(id)a5 reason:(int64_t)a6
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
  v9 = [v8 indexOfObject:v7];

  v10 = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
  v13[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v10 deleteRowsAtIndexPaths:v12 withRowAnimation:100];
}

- (void)noteAppLayoutsDidChange
{
  v2 = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  [v2 reloadData];
}

- (CGRect)effectiveLeadingStatusBarPartFrame
{
  v2 = [(UIViewController *)self _sbWindowScene];
  v3 = [v2 statusBarManager];
  v4 = [v3 statusBar];
  [v4 frameForPartWithIdentifier:*MEMORY[0x277D775C0]];
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
  v2 = [(UIViewController *)self _sbWindowScene];
  v3 = [v2 statusBarManager];
  v4 = [v3 statusBar];
  [v4 frameForPartWithIdentifier:*MEMORY[0x277D775C8]];
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
  v3 = [(SBMinimumViableSwitcherTableViewController *)self view];
  [v3 setAlpha:0.0];

  v4 = [(SBMinimumViableSwitcherTableViewController *)self tableView];
  v5 = objc_opt_self();
  [v4 registerClass:v5 forCellReuseIdentifier:@"Identifier"];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
  v7 = [v6 count];

  if (self->_bestAppSuggestion)
  {
    v8 = a4 == 0;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:v6];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  if (self->_bestAppSuggestion && ![v6 section])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [(SBBestAppSuggestion *)self->_bestAppSuggestion bundleIdentifier];
    v10 = [v15 stringWithFormat:@"%@ - %@", v17, v18];

    v13 = [v7 textLabel];
    [v13 setText:v10];
  }

  else
  {
    v9 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v11 = [v10 allItems];
    v12 = [v11 bs_map:&__block_literal_global_96];
    v13 = [v12 componentsJoinedByString:{@", "}];

    v14 = [v7 textLabel];
    [v14 setText:v13];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBMinimumViableSwitcherTableViewController *)self delegate];
  if (self->_bestAppSuggestion && ![v7 section])
  {
    if (objc_opt_respondsToSelector())
    {
      [v8 switcherContentController:self activatedBestAppSuggestion:self->_bestAppSuggestion];
    }
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
      v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Tapped: %@", &v15, 0xCu);
    }

    v12 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v14 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v13];
    [v8 switcherContentController:self performTransitionWithRequest:v14 gestureInitiated:0];

    [v6 deselectRowAtIndexPath:v7 animated:1];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_bestAppSuggestion && ![v7 section])
  {
    v11 = 0;
  }

  else
  {
    v9 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v10 = [v9 objectAtIndex:{objc_msgSend(v8, "row")}];

    v11 = [v10 type] == 0;
  }

  return v11;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = a5;
    v8 = [(SBMinimumViableSwitcherTableViewController *)self _appLayouts];
    v9 = [v7 row];

    v13 = [v8 objectAtIndex:v9];

    v10 = [(SBMinimumViableSwitcherTableViewController *)self delegate];
    v11 = [v13 allItems];
    v12 = [v11 firstObject];
    [v10 switcherContentController:self deletedDisplayItem:v12 inAppLayout:v13 forReason:1];
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