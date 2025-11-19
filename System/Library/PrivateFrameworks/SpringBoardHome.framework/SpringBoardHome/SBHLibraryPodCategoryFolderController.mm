@interface SBHLibraryPodCategoryFolderController
- (id)contentScrollView;
- (id)currentIconListView;
- (void)_logCategoryVisibilityChangedTo:(BOOL)a3;
- (void)handleTapGesture:(id)a3;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBHLibraryPodCategoryFolderController

- (id)contentScrollView
{
  v2 = [(SBHLibraryPodFolderController *)self podFolderView];
  v3 = [v2 podScrollView];

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v9 viewDidLoad];
  v3 = [(SBFolderController *)self folder];
  v4 = [(SBHLibraryPodCategoryFolderController *)self navigationItem];
  v5 = [v3 displayName];
  [v4 setTitle:v5];

  [v4 _setLargeTitleTwoLineMode:1];
  v6 = [(SBHLibraryPodFolderController *)self podFolderView];
  v7 = [v6 navigationBar];
  [v7 pushNavigationItem:v4 animated:0];

  [v6 setCentersContentIfPossible:1];
  v8 = [(SBHLibraryPodCategoryFolderController *)self view];
  [v8 setAutoresizingMask:18];
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v8 iconListView:a3 didRemoveIconView:a4];
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 icons];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(SBHLibraryPodCategoryFolderController *)self bs_isAppearingOrAppeared];

    if (!v7)
    {
      return;
    }

    v5 = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
    [v5 libraryPodFolderControllerRequestsDismissal:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v5 viewWillAppear:a3];
  v3 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_EXPAND_POD", " enableTelemetry=YES ", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewDidAppear:a3];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_EXPAND_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodCategoryFolderController *)self _logCategoryVisibilityChangedTo:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewWillDisappear:a3];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_COLLAPSE_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodFolderController *)self dismissDisplayedContextMenu];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewDidDisappear:a3];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_COLLAPSE_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodCategoryFolderController *)self _logCategoryVisibilityChangedTo:0];
}

- (void)_logCategoryVisibilityChangedTo:(BOOL)a3
{
  v3 = a3;
  v10 = [(SBFolderController *)self folder];
  if ([v10 isLibraryCategoryFolder])
  {
    v5 = [(SBHLibraryPodFolderController *)self loggingClient];
    v6 = [v10 libraryCategoryIdentifier];
    v7 = [v6 predictionCategoryID];
    v8 = [v6 predictionCategoryIndex];
    v9 = [MEMORY[0x1E695DF00] date];
    if (v3)
    {
      [v5 logCategoryExpansionWithDate:v9 categoryID:v7 categoryIndex:v8];
    }

    else
    {
      [v5 logCategoryExitWithDate:v9 categoryID:v7 categoryIndex:v8];
    }
  }
}

- (void)handleTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  if (v5 == v4)
  {
    if ([v4 state] == 3)
    {
      v6 = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
      [v6 popNestedViewControllerAnimated:1 withCompletion:0];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = SBHLibraryPodCategoryFolderController;
      [(SBHLibraryPodFolderController *)&v7 handleTapGesture:v4];
    }
  }
}

- (id)currentIconListView
{
  v2 = [(SBFolderController *)self folderView];
  v3 = [v2 currentIconListView];

  return v3;
}

@end