@interface SBHLibraryPodCategoryFolderController
- (id)contentScrollView;
- (id)currentIconListView;
- (void)_logCategoryVisibilityChangedTo:(BOOL)to;
- (void)handleTapGesture:(id)gesture;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBHLibraryPodCategoryFolderController

- (id)contentScrollView
{
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  podScrollView = [podFolderView podScrollView];

  return podScrollView;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v9 viewDidLoad];
  folder = [(SBFolderController *)self folder];
  navigationItem = [(SBHLibraryPodCategoryFolderController *)self navigationItem];
  displayName = [folder displayName];
  [navigationItem setTitle:displayName];

  [navigationItem _setLargeTitleTwoLineMode:1];
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  navigationBar = [podFolderView navigationBar];
  [navigationBar pushNavigationItem:navigationItem animated:0];

  [podFolderView setCentersContentIfPossible:1];
  view = [(SBHLibraryPodCategoryFolderController *)self view];
  [view setAutoresizingMask:18];
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  v8.receiver = self;
  v8.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v8 iconListView:view didRemoveIconView:iconView];
  folder = [(SBFolderController *)self folder];
  icons = [folder icons];
  if ([icons count])
  {
  }

  else
  {
    bs_isAppearingOrAppeared = [(SBHLibraryPodCategoryFolderController *)self bs_isAppearingOrAppeared];

    if (!bs_isAppearingOrAppeared)
    {
      return;
    }

    folder = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
    [folder libraryPodFolderControllerRequestsDismissal:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBHLibraryPodCategoryFolderController;
  [(SBHLibraryPodFolderController *)&v5 viewWillAppear:appear];
  v3 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_EXPAND_POD", " enableTelemetry=YES ", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewDidAppear:appear];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_EXPAND_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodCategoryFolderController *)self _logCategoryVisibilityChangedTo:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewWillDisappear:disappear];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_COLLAPSE_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodFolderController *)self dismissDisplayedContextMenu];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SBHLibraryPodCategoryFolderController;
  [(SBFolderController *)&v6 viewDidDisappear:disappear];
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LIBRARY_COLLAPSE_POD", " enableTelemetry=YES ", v5, 2u);
  }

  [(SBHLibraryPodCategoryFolderController *)self _logCategoryVisibilityChangedTo:0];
}

- (void)_logCategoryVisibilityChangedTo:(BOOL)to
{
  toCopy = to;
  folder = [(SBFolderController *)self folder];
  if ([folder isLibraryCategoryFolder])
  {
    loggingClient = [(SBHLibraryPodFolderController *)self loggingClient];
    libraryCategoryIdentifier = [folder libraryCategoryIdentifier];
    predictionCategoryID = [libraryCategoryIdentifier predictionCategoryID];
    predictionCategoryIndex = [libraryCategoryIdentifier predictionCategoryIndex];
    date = [MEMORY[0x1E695DF00] date];
    if (toCopy)
    {
      [loggingClient logCategoryExpansionWithDate:date categoryID:predictionCategoryID categoryIndex:predictionCategoryIndex];
    }

    else
    {
      [loggingClient logCategoryExitWithDate:date categoryID:predictionCategoryID categoryIndex:predictionCategoryIndex];
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  tapToDismissRecognizer = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  if (tapToDismissRecognizer == gestureCopy)
  {
    if ([gestureCopy state] == 3)
    {
      _nestingViewControllerForPushing = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
      [_nestingViewControllerForPushing popNestedViewControllerAnimated:1 withCompletion:0];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = SBHLibraryPodCategoryFolderController;
      [(SBHLibraryPodFolderController *)&v7 handleTapGesture:gestureCopy];
    }
  }
}

- (id)currentIconListView
{
  folderView = [(SBFolderController *)self folderView];
  currentIconListView = [folderView currentIconListView];

  return currentIconListView;
}

@end