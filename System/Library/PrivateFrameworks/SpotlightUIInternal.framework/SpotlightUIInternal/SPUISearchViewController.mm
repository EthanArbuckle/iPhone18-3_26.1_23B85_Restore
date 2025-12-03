@interface SPUISearchViewController
+ (BOOL)shouldShowAsTypedSuggestion;
+ (id)spotlightUserDefaults;
+ (void)_updateHeaderView:(id)view fromText:(id)text fromToken:(id)token;
- (BOOL)allowInternet;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformCommand:(id)command;
- (BOOL)checkClearTimer;
- (BOOL)currentQueryIdMatchesResultInGeneralModel;
- (BOOL)hasContentInSearchField;
- (BOOL)isInStateRestoration;
- (BOOL)isQueryCommand:(id)command;
- (BOOL)optOutOfGoButton;
- (BOOL)queryIdSameAsInvokeQueryIdentifier;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)sectionShouldBeExpanded:(id)expanded;
- (BOOL)spotlightIsVisible;
- (NSString)currentQuery;
- (NSString)lastSearchString;
- (SPUISearchViewController)init;
- (SPUISearchViewControllerSizingDelegate)sizingDelegate;
- (UISearchToken)lastSearchToken;
- (UIView)topPocketView;
- (double)contentHeight;
- (double)distanceToTopOfAppIcons;
- (id)createAdditionalHeaderView;
- (id)currentModel;
- (id)currentQueryContext;
- (id)firstResultIgnoringSuggestionsIfNeeded;
- (id)searchTextField;
- (id)searchViewRestorationContext;
- (unint64_t)currentQueryId;
- (void)activateFirstTimeExperienceViewIfNecessary;
- (void)appIconDragged;
- (void)backButtonPressed;
- (void)cancelButtonPressed;
- (void)clearTimerExpired;
- (void)dealloc;
- (void)dictationButtonPressed;
- (void)didBeginEditing;
- (void)didBeginScrollingResults;
- (void)didEngageResult:(id)result;
- (void)didScrollPastBottomOfContent;
- (void)didUpdateActiveViewController;
- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section;
- (void)dragInitiated;
- (void)endBackgroundTaskIfNeeded;
- (void)escapeKeyCommand;
- (void)expandWindowIfNeeded;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)highlightResultAfterUnmarkingText;
- (void)invalidateWindowExpansionTimer;
- (void)performCommand:(id)command;
- (void)performReturnKeyPressAndExpandWidowIfNeeded;
- (void)performTestSearchWithQuery:(id)query event:(unint64_t)event queryKind:(unint64_t)kind;
- (void)performWebSearch;
- (void)presentSpotlightWithCompletionHandler:(id)handler;
- (void)purgeMemory;
- (void)queryContextDidChange:(id)change fromSearchHeader:(id)header allowZKW:(BOOL)w;
- (void)refreshTrial;
- (void)resultsDidBecomeVisible:(id)visible;
- (void)resultsViewController:(id)controller didChangeContentSize:(CGSize)size animated:(BOOL)animated;
- (void)returnKeyPressed;
- (void)scheduleWindowExpansionWithInterval:(double)interval;
- (void)searchViewDidDismissWithReason:(unint64_t)reason;
- (void)searchViewDidPresentFromSource:(unint64_t)source;
- (void)searchViewDidUpdatePresentationProgress:(double)progress;
- (void)searchViewWillDismissWithReason:(unint64_t)reason;
- (void)searchViewWillPresentFromSource:(unint64_t)source;
- (void)sendPresentationFeedback;
- (void)setAdditionalKeyboardHeight:(double)height;
- (void)setFooterViewsForProactive:(id)proactive forResults:(id)results;
- (void)setLegibilitySettings:(id)settings;
- (void)spotlightDidBackground;
- (void)spotlight_leftArrowPressed;
- (void)spotlight_rightArrowPressed;
- (void)updateHeaderViewsWithBlock:(id)block;
- (void)updatePlatterMode;
- (void)updateResponderChainIfNeeded;
- (void)willUpdateActiveViewController;
- (void)willUpdateFromResultsWithHighlightedResult:(id)result viewController:(id)controller;
@end

@implementation SPUISearchViewController

- (SPUISearchViewController)init
{
  v58[4] = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = SPUISearchViewController;
  v2 = [(SPUIViewController *)&v56 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, -1);

    v5 = dispatch_queue_create("factorFetchQueue", v4);
    [(SPUISearchViewController *)v2 setFactorsFetchingQueue:v5];

    [(SPUISearchViewController *)v2 refreshTrial];
    v6 = objc_opt_new();
    [(SPUISearchViewController *)v2 setView:v6];

    v7 = objc_opt_new();
    [(SPUISearchViewController *)v2 setAppIntentsQueryHelper:v7];

    v8 = MEMORY[0x277D65D60];
    appIntentsQueryHelper = [(SPUISearchViewController *)v2 appIntentsQueryHelper];
    queryHelperKey = [MEMORY[0x277D65D60] queryHelperKey];
    [v8 registerDependency:appIntentsQueryHelper forKey:queryHelperKey];

    v11 = MEMORY[0x277D65D60];
    presentationHelperKey = [MEMORY[0x277D65D60] presentationHelperKey];
    [v11 registerDependency:v2 forKey:presentationHelperKey];

    [(SPUISearchViewController *)v2 setTimeAtDismissal:0.0];
    view = [(SPUISearchViewController *)v2 view];
    layer = [view layer];
    [layer setAllowsGroupOpacity:0];

    v15 = objc_opt_new();
    [(SPUISearchViewController *)v2 setAllHeaderViews:v15];

    searchResultViewController = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController setCommandDelegate:v2];

    searchResultViewController2 = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController2 setAllowHighlightingWhenInactive:1];

    v18 = [SPUIProactiveResultsViewController alloc];
    v19 = +[SPUISearchModel sharedFullZWKInstance];
    v20 = [(SPUIProactiveResultsViewController *)v18 initWithSearchModel:v19 searchEntity:0];
    [(SPUIViewController *)v2 setProactiveResultViewController:v20];

    proactiveResultViewController = [(SPUIViewController *)v2 proactiveResultViewController];
    [proactiveResultViewController setDelegate:v2];

    proactiveResultViewController2 = [(SPUIViewController *)v2 proactiveResultViewController];
    [proactiveResultViewController2 setFeedbackListener:v2];

    proactiveResultViewController3 = [(SPUIViewController *)v2 proactiveResultViewController];
    [proactiveResultViewController3 setCommandDelegate:v2];

    proactiveResultViewController4 = [(SPUIViewController *)v2 proactiveResultViewController];
    [proactiveResultViewController4 setShouldMonitorScrollingPastBottomOfContent:1];

    createAdditionalHeaderView = [(SPUISearchViewController *)v2 createAdditionalHeaderView];
    [(SPUISearchViewController *)v2 setSearchHeader:createAdditionalHeaderView];

    searchHeader = [(SPUISearchViewController *)v2 searchHeader];
    searchField = [searchHeader searchField];
    proactiveResultViewController5 = [(SPUIViewController *)v2 proactiveResultViewController];
    [proactiveResultViewController5 setSearchField:searchField];

    searchHeader2 = [(SPUISearchViewController *)v2 searchHeader];
    searchField2 = [searchHeader2 searchField];
    searchResultViewController3 = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController3 setSearchField:searchField2];

    v32 = MEMORY[0x277D65D60];
    searchHeader3 = [(SPUISearchViewController *)v2 searchHeader];
    searchField3 = [searchHeader3 searchField];
    [v32 annotateSearchField:searchField3];

    proactiveResultViewController6 = [(SPUIViewController *)v2 proactiveResultViewController];
    [(SPUIViewController *)v2 activateViewController:proactiveResultViewController6 animate:0];

    v36 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_escapeKeyCommand];
    v37 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B48] modifierFlags:0 action:sel_spotlight_leftArrowPressed];
    [v37 setWantsPriorityOverSystemBehavior:1];
    v38 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel_spotlight_rightArrowPressed];
    [v38 setWantsPriorityOverSystemBehavior:1];
    v39 = [MEMORY[0x277D75650] keyCommandWithInput:@"b" modifierFlags:0x100000 action:sel_performWebSearch];
    v58[0] = v36;
    v58[1] = v37;
    v58[2] = v38;
    v58[3] = v39;
    [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = v55 = 0u;
    v41 = [v40 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v53;
      do
      {
        v44 = 0;
        do
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(SPUISearchViewController *)v2 addKeyCommand:*(*(&v52 + 1) + 8 * v44++), v52];
        }

        while (v42 != v44);
        v42 = [v40 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v42);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_checkClearTimer name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_spotlightDidBackground name:*MEMORY[0x277D76660] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_dragInitiated name:*MEMORY[0x277D4C8A8] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_appIconDragged name:*MEMORY[0x277D4C8A0] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, lockStateChanged_0, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
    [MEMORY[0x277D4C898] prewarmApplicationLibrary];
  }

  v50 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)spotlightIsVisible
{
  view = [(SPUISearchViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    if ([windowScene activationState])
    {
      v5 = [windowScene activationState] == 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)refreshTrial
{
  factorsFetchingQueue = [(SPUISearchViewController *)self factorsFetchingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SPUISearchViewController_refreshTrial__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_async(factorsFetchingQueue, block);
}

void __40__SPUISearchViewController_refreshTrial__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D6F1D0] sharedManager];
  [v2 refresh];

  v3 = [MEMORY[0x277D6F1D0] sharedManager];
  v4 = [v3 zkwOverrideValue];

  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = 1;
  }

  v6 = *(a1 + 32);

  [v6 setExpansionValueForZKW:v5];
}

- (id)createAdditionalHeaderView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  legibilitySettings = [searchHeader legibilitySettings];
  [v3 setLegibilitySettings:legibilitySettings];

  allHeaderViews = [(SPUISearchViewController *)self allHeaderViews];
  [allHeaderViews addObject:v3];

  searchHeader2 = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader2 searchField];
  text = [searchField text];

  searchHeader3 = [(SPUISearchViewController *)self searchHeader];
  searchField2 = [searchHeader3 searchField];
  tokens = [searchField2 tokens];
  v13 = [tokens count];

  if (v13 >= 2)
  {
    v14 = MEMORY[0x277D65D40];
    v15 = *(MEMORY[0x277D65D40] + 8);
    if (!v15)
    {
      SPUIInitLogging();
      v15 = *(v14 + 8);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SPUISearchViewController createAdditionalHeaderView];
    }
  }

  searchHeader4 = [(SPUISearchViewController *)self searchHeader];
  searchField3 = [searchHeader4 searchField];
  tokens2 = [searchField3 tokens];
  firstObject = [tokens2 firstObject];

  if (text | firstObject)
  {
    [objc_opt_class() _updateHeaderView:v3 fromText:text fromToken:firstObject];
  }

  return v3;
}

- (void)willUpdateActiveViewController
{
  v3.receiver = self;
  v3.super_class = SPUISearchViewController;
  [(SPUIViewController *)&v3 willUpdateActiveViewController];
  [(SPUISearchViewController *)self updatePlatterMode];
}

- (void)updateResponderChainIfNeeded
{
  navigationController = [(SPUISearchViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  activeViewController = [(SPUIViewController *)self activeViewController];
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  v6 = proactiveResultViewController;
  if (activeViewController == proactiveResultViewController)
  {
  }

  else
  {
    activeViewController2 = [(SPUIViewController *)self activeViewController];
    searchResultViewController = [(SPUIViewController *)self searchResultViewController];

    if (activeViewController2 != searchResultViewController)
    {
      goto LABEL_6;
    }
  }

  activeViewController3 = [(SPUIViewController *)self activeViewController];
  responderForKeyboardInput = [activeViewController3 responderForKeyboardInput];

  topViewController = responderForKeyboardInput;
LABEL_6:
  navigationController2 = [(SPUISearchViewController *)self navigationController];
  topViewController2 = [navigationController2 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController3 = [(SPUISearchViewController *)self navigationController];
    topViewController3 = [navigationController3 topViewController];
    responderForKeyboardInput2 = [topViewController3 responderForKeyboardInput];

    topViewController = responderForKeyboardInput2;
  }

  v17 = topViewController;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    navigationController4 = [(SPUISearchViewController *)self navigationController];
    navigationMode = [navigationController4 navigationMode];

    if (navigationMode)
    {
      v17 = topViewController;
    }

    else
    {
      v17 = 0;
    }
  }

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader setResponderForKeyboardInput:v17];
}

- (void)didUpdateActiveViewController
{
  v9.receiver = self;
  v9.super_class = SPUISearchViewController;
  [(SPUIViewController *)&v9 didUpdateActiveViewController];
  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
  v3 = MEMORY[0x277D75518];
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  v6 = [v3 focusSystemForEnvironment:searchField];
  searchHeader2 = [(SPUISearchViewController *)self searchHeader];
  searchField2 = [searchHeader2 searchField];
  [v6 requestFocusUpdateToEnvironment:searchField2];
}

- (void)updatePlatterMode
{
  navigationController = [(SPUISearchViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController != self)
  {
    goto LABEL_20;
  }

  navigationController2 = [(SPUISearchViewController *)self navigationController];
  navigationMode = [navigationController2 navigationMode];

  activeViewController = [(SPUIViewController *)self activeViewController];
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  v9 = proactiveResultViewController;
  if (activeViewController != proactiveResultViewController)
  {

    goto LABEL_9;
  }

  presentationMode = [(SPUISearchViewController *)self presentationMode];

  if (presentationMode != 6)
  {
LABEL_9:
    activeViewController2 = [(SPUIViewController *)self activeViewController];
    proactiveResultViewController2 = [(SPUIViewController *)self proactiveResultViewController];

    if (activeViewController2 == proactiveResultViewController2)
    {
      navigationMode = 5;
    }

    else
    {
      activeViewController3 = [(SPUIViewController *)self activeViewController];
      searchResultViewController = [(SPUIViewController *)self searchResultViewController];

      if (activeViewController3 == searchResultViewController)
      {
        navigationMode = 1;
      }

      else
      {
        activeViewController4 = [(SPUIViewController *)self activeViewController];
        firstTimeExperienceViewController = [(SPUISearchViewController *)self firstTimeExperienceViewController];

        if (activeViewController4 == firstTimeExperienceViewController)
        {
          navigationMode = 2;
        }
      }
    }

    goto LABEL_17;
  }

  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    if (+[SPUISearchFirstTimeViewController useZKWFTE])
    {
      navigationMode = 5;
    }

    else
    {
      navigationMode = 0;
    }
  }

  else
  {
    navigationMode = 0;
  }

LABEL_17:
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    navigationController3 = [(SPUISearchViewController *)self navigationController];
    navigationBar = [navigationController3 navigationBar];

    [navigationBar showSeparator:navigationMode != 0 animated:0];
  }

  navigationController4 = [(SPUISearchViewController *)self navigationController];
  [navigationController4 setNavigationMode:navigationMode];

LABEL_20:

  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
}

- (double)distanceToTopOfAppIcons
{
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController distanceToTopOfAppIcons];
  v4 = v3;

  return v4;
}

- (BOOL)checkClearTimer
{
  [(SPUISearchViewController *)self timeAtDismissal];
  if (v3 == 0.0)
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SPUISearchViewController *)self timeAtDismissal];
  if (Current - v5 <= 480.0)
  {
    return 0;
  }

  [(SPUISearchViewController *)self clearTimerExpired];
  return 1;
}

- (BOOL)isInStateRestoration
{
  spotlightUserDefaults = [objc_opt_class() spotlightUserDefaults];
  v3 = [spotlightUserDefaults BOOLForKey:@"RestorationCurrentState"];

  return v3;
}

+ (id)spotlightUserDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightui"];

  return v2;
}

- (void)clearTimerExpired
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v3, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B837000, v3, ((v4 & 1) == 0), "Clear timer expired", v5, 2u);
  }

  [(SPUISearchViewController *)self clearSearchResultsAndFetchZKW:0];
}

- (BOOL)hasContentInSearchField
{
  currentQuery = [(SPUISearchViewController *)self currentQuery];
  if ([currentQuery length])
  {
    v4 = 1;
  }

  else
  {
    searchHeader = [(SPUISearchViewController *)self searchHeader];
    searchEntity = [searchHeader searchEntity];
    v4 = searchEntity != 0;
  }

  return v4;
}

- (NSString)currentQuery
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  currentQuery = [searchHeader currentQuery];

  return currentQuery;
}

- (id)currentQueryContext
{
  currentModel = [(SPUISearchViewController *)self currentModel];
  queryTask = [currentModel queryTask];
  query = [queryTask query];
  queryContext = [query queryContext];

  return queryContext;
}

- (id)currentModel
{
  navigationController = [(SPUISearchViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(SPUISearchViewController *)self hasContentInSearchField])
    {
      [(SPUIViewController *)self searchResultViewController];
    }

    else
    {
      [(SPUIViewController *)self proactiveResultViewController];
    }
    v5 = ;

    topViewController = v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    topViewController = 0;
  }

  model = [topViewController model];

  return model;
}

- (BOOL)queryIdSameAsInvokeQueryIdentifier
{
  queryOnDismissal = [(SPUISearchViewController *)self queryOnDismissal];
  currentQuery = [(SPUISearchViewController *)self currentQuery];
  if ([queryOnDismissal isEqualToString:currentQuery])
  {
    v5 = 1;
  }

  else
  {
    navigationController = [(SPUISearchViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v5 = [viewControllers count] > 1;
  }

  return v5;
}

- (void)didBeginEditing
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader showCancelButton:1 animated:1];

  delegate = [(SPUIViewController *)self delegate];
  [delegate searchFieldDidFocus];
}

- (void)invalidateWindowExpansionTimer
{
  windowExpansionTimer = [(SPUISearchViewController *)self windowExpansionTimer];
  [windowExpansionTimer invalidate];

  [(SPUISearchViewController *)self setWindowExpansionTimer:0];
}

+ (BOOL)shouldShowAsTypedSuggestion
{
  if (shouldShowAsTypedSuggestion_onceToken != -1)
  {
    +[SPUISearchViewController shouldShowAsTypedSuggestion];
  }

  return [shouldShowAsTypedSuggestion_defaults BOOLForKey:@"disableAsTypedSuggestion"] ^ 1;
}

uint64_t __55__SPUISearchViewController_shouldShowAsTypedSuggestion__block_invoke()
{
  shouldShowAsTypedSuggestion_defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)currentQueryId
{
  currentModel = [(SPUISearchViewController *)self currentModel];
  currentQueryId = [currentModel currentQueryId];

  return currentQueryId;
}

- (SPUISearchViewControllerSizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (void)sendPresentationFeedback
{
  presentationMode = [(SPUISearchViewController *)self presentationMode];
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  queryId = [searchHeader queryId];
  currentQuery = [(SPUISearchViewController *)self currentQuery];
  v6 = MEMORY[0x277D4C898];
  view = [(SPUISearchViewController *)self view];
  +[SPUIFeedbackManager didAppearFromSource:withQueryId:queryString:deviceIsAuthenticated:](SPUIFeedbackManager, "didAppearFromSource:withQueryId:queryString:deviceIsAuthenticated:", presentationMode, queryId, currentQuery, [v6 deviceIsAuthenticatedForView:view]);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_spotlight_leftArrowPressed == action || sel_spotlight_rightArrowPressed == action)
  {
    v8 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
    focusedItem = [v8 focusedItem];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    _allowsHorizontalFocusMovement = [focusedItem _allowsHorizontalFocusMovement];
LABEL_13:
    v11 = _allowsHorizontalFocusMovement ^ 1;
    goto LABEL_18;
  }

  if (sel_escapeKeyCommand == action)
  {
    focusedItem = [(SPUISearchViewController *)self searchTextField];
    _allowsHorizontalFocusMovement = [focusedItem hasMarkedText];
    goto LABEL_13;
  }

  if (sel_performWebSearch == action)
  {
    focusedItem = [(SPUISearchViewController *)self searchTextField];
    searchText = [focusedItem searchText];
    if ([searchText length])
    {
      searchTextField = [(SPUISearchViewController *)self searchTextField];
      tokens = [searchTextField tokens];
      v11 = [tokens count] == 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_18;
  }

  v16.receiver = self;
  v16.super_class = SPUISearchViewController;
  v11 = [(SPUISearchViewController *)&v16 canPerformAction:action withSender:senderCopy];
LABEL_19:

  return v11;
}

- (id)searchTextField
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];

  return searchField;
}

- (void)escapeKeyCommand
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader focusSearchFieldAndSelectAll:1 withReason:3];
}

- (void)spotlight_leftArrowPressed
{
  searchTextField = [(SPUISearchViewController *)self searchTextField];
  [searchTextField promoteCompletionIfPossibleAndMoveForward:0];
}

- (void)spotlight_rightArrowPressed
{
  searchTextField = [(SPUISearchViewController *)self searchTextField];
  [searchTextField promoteCompletionIfPossibleAndMoveForward:1];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [defaultCenter removeObserver:searchResultViewController];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v6.receiver = self;
  v6.super_class = SPUISearchViewController;
  [(SPUISearchViewController *)&v6 dealloc];
}

- (BOOL)canPerformCommand:(id)command
{
  commandCopy = command;
  if ([(SPUISearchViewController *)self isQueryCommand:commandCopy])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setAdditionalKeyboardHeight:(double)height
{
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController setAdditionalKeyboardHeight:height];

  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController setAdditionalKeyboardHeight:height];
}

- (void)setFooterViewsForProactive:(id)proactive forResults:(id)results
{
  resultsCopy = results;
  proactiveCopy = proactive;
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController setFooterView:proactiveCopy];

  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController setFooterView:resultsCopy];
}

- (void)performCommand:(id)command
{
  v36[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  if ([(SPUISearchViewController *)self isQueryCommand:commandCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [commandCopy entityType] == 3)
    {
      v5 = commandCopy;
      navigationController3 = objc_opt_new();
      v7 = objc_alloc(MEMORY[0x277D65898]);
      tokenString = [v5 tokenString];
      v9 = [v7 initWithSearchString:tokenString];

      v10 = MEMORY[0x277D65D88];
      view = [(SPUISearchViewController *)self view];
      [v9 setDeviceAuthenticationState:{objc_msgSend(v10, "deviceAuthenticationStateForView:", view)}];

      [v9 setWhyQuery:8];
      searchHeader = [(SPUISearchViewController *)self searchHeader];
      [searchHeader addInputMethodInformationToQueryContext:v9];

      v13 = [MEMORY[0x277D65890] searchEntityWithCommand:v5 fromSuggestion:1];

      v36[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      [v9 setSearchEntities:v14];

      [v9 setAllowInternet:1];
      v15 = [[SPUIResultsViewController alloc] initWithSearchModel:navigationController3 searchEntity:v13];
      searchHeader2 = [(SPUISearchViewController *)self searchHeader];
      searchField = [searchHeader2 searchField];
      [(SearchUIResultsViewController *)v15 setSearchField:searchField];

      [(SearchUIResultsViewController *)v15 setFeedbackListener:self];
      [(SearchUIResultsViewController *)v15 setCommandDelegate:self];
      displayedText = [v9 displayedText];
      [(SearchUIResultsViewController *)v15 setQueryString:displayedText];

      navigationController = [(SPUISearchViewController *)self navigationController];
      [(SPUIResultsViewController *)v15 setBackgroundColorDelegate:navigationController];

      [(SPUIResultsViewController *)v15 setUseLoadingView:1];
      queryIdent = [v9 queryIdent];
      searchHeader3 = [(SPUISearchViewController *)self searchHeader];
      [searchHeader3 setPreviousQueryID:queryIdent];

      [navigationController3 updateWithQueryContext:v9];
      [(SPUISearchViewController *)self showViewController:v15 sender:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchString = [commandCopy searchString];
        v26 = [searchString length];

        if (!v26)
        {
          [(SPUISearchViewController *)self clearSearchResultsAndFetchZKW:1];
          goto LABEL_11;
        }
      }

      searchHeader4 = [(SPUISearchViewController *)self searchHeader];
      [searchHeader4 updateWithCommand:commandCopy];

      searchHeader5 = [(SPUISearchViewController *)self searchHeader];
      searchEntity = [searchHeader5 searchEntity];
      searchResultViewController = [(SPUIViewController *)self searchResultViewController];
      [searchResultViewController setSearchEntity:searchEntity];

      navigationController2 = [(SPUISearchViewController *)self navigationController];
      v32 = [navigationController2 popToRootViewControllerAnimated:1];

      searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:searchResultViewController2 animate:1];

      navigationController3 = [(SPUISearchViewController *)self navigationController];
      searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
      [navigationController3 updateBackgroundColorWithViewControllerToBeShown:searchResultViewController3];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = objc_opt_new();
      [v22 setSource:0];
      utteranceText = [commandCopy utteranceText];
      [v22 setUtteranceText:utteranceText];

      v24 = objc_opt_new();
      [v24 activateWithContext:v22];
    }
  }

LABEL_11:

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isQueryCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NSString)lastSearchString
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  lastSearchText = [searchHeader lastSearchText];

  return lastSearchText;
}

- (UISearchToken)lastSearchToken
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  lastSearchToken = [searchHeader lastSearchToken];

  return lastSearchToken;
}

- (void)updateHeaderViewsWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allHeaderViews = [(SPUISearchViewController *)self allHeaderViews];
  v6 = [allHeaderViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allHeaderViews);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allHeaderViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section
{
  sectionCopy = section;
  resultCopy = result;
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchHeader updateFocusResult:resultCopy cardSection:sectionCopy focusIsOnFirstResult:{objc_msgSend(searchResultViewController, "isHighlighting")}];
}

- (void)dragInitiated
{
  if ([(SPUISearchViewController *)self presentationMode]== 6)
  {

    [(SPUISearchViewController *)self cancelButtonPressed];
  }
}

- (void)appIconDragged
{
  if ([(SPUISearchViewController *)self presentationMode]== 2 || [(SPUISearchViewController *)self presentationMode]== 1 || [(SPUISearchViewController *)self presentationMode]== 8)
  {

    [(SPUISearchViewController *)self cancelButtonPressed];
  }
}

- (void)resultsDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  goTakeoverResult = [searchResultViewController goTakeoverResult];
  [visibleCopy setGoTakeoverResult:goTakeoverResult];

  v7 = +[SPUIFeedbackManager feedbackListener];
  [v7 resultsDidBecomeVisible:visibleCopy];
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  result = [resultCopy result];
  if ([result isLocalApplicationResult])
  {
    windowExpansionTimer = [(SPUISearchViewController *)self windowExpansionTimer];
    -[SPUISearchViewController setClearQueryOnDismissal:](self, "setClearQueryOnDismissal:", [windowExpansionTimer isValid]);
  }

  else
  {
    [(SPUISearchViewController *)self setClearQueryOnDismissal:0];
  }

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  isReturnKeyPressedInGoMode = [searchHeader isReturnKeyPressedInGoMode];

  if (isReturnKeyPressedInGoMode)
  {
    [resultCopy setTriggerEvent:1];
  }

  v8 = +[SPUIFeedbackManager feedbackListener];
  [v8 didEngageResult:resultCopy];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader setLegibilitySettings:settingsCopy];
}

- (void)performTestSearchWithQuery:(id)query event:(unint64_t)event queryKind:(unint64_t)kind
{
  queryCopy = query;
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader performTestSearchWithQuery:queryCopy event:event queryKind:kind];
}

- (void)searchViewWillPresentFromSource:(unint64_t)source
{
  v117 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v5 = MEMORY[0x277D65D40];
  v6 = *(MEMORY[0x277D65D40] + 32);
  if (!v6)
  {
    SPUIInitLogging();
    v6 = *(v5 + 32);
  }

  v7 = v6;
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "bringUp", "", buf, 2u);
  }

  v8 = *(v5 + 40);
  if (!v8)
  {
    SPUIInitLogging();
    v8 = *(v5 + 40);
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v9, OS_LOG_TYPE_DEFAULT, "bringUp start", buf, 2u);
  }

  appIntentsDidLaunchCompletion = [(SPUISearchViewController *)self appIntentsDidLaunchCompletion];

  if (appIntentsDidLaunchCompletion)
  {
    appIntentsDidLaunchCompletion2 = [(SPUISearchViewController *)self appIntentsDidLaunchCompletion];
    appIntentsDidLaunchCompletion2[2]();

    [(SPUISearchViewController *)self setAppIntentsDidLaunchCompletion:0];
  }

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField setSelectionGrabbersHiddenSafe:source != 5];

  LOBYTE(searchHeader) = [(SPUISearchViewController *)self isInStateRestoration];
  [(SPUISearchViewController *)self setIsInStateRestoration:1];
  if ((searchHeader & 1) == 0)
  {
    v14 = MEMORY[0x277D4C898];
    searchField = [(SPUISearchViewController *)self view];
    LODWORD(v14) = [v14 deviceIsAuthenticatedForView:searchField];

    if (v14)
    {
      restorationData = [(SPUISearchViewController *)self restorationData];
      v114 = 0;
      searchField = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:restorationData error:&v114];
      v16 = v114;
      if (v16 && [restorationData length])
      {
        v17 = *(v5 + 40);
        if (!v17)
        {
          SPUIInitLogging();
          v17 = *(v5 + 40);
        }

        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(SPUISearchViewController *)v16 searchViewWillPresentFromSource:v18];
        }
      }

      [(SPUISearchViewController *)self timeAtDismissal];
      if (v19 == 0.0)
      {
        [searchField timeAtDismissal];
      }

      [(SPUISearchViewController *)self setTimeAtDismissal:?];
      checkClearTimer = [(SPUISearchViewController *)self checkClearTimer];
      if (v16 || checkClearTimer)
      {
LABEL_51:

        goto LABEL_52;
      }

      v102 = restorationData;
      searchViewContext = [searchField searchViewContext];
      searchString = [searchViewContext searchString];
      sourceCopy = source;
      if ([searchString length])
      {
      }

      else
      {
        searchViewContext2 = [searchField searchViewContext];
        searchEntity = [searchViewContext2 searchEntity];

        if (!searchEntity)
        {
          viewControllerContexts = [searchField viewControllerContexts];
          v44 = [viewControllerContexts count];

          if (!v44)
          {
LABEL_34:
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            viewControllerContexts2 = [searchField viewControllerContexts];
            v49 = [viewControllerContexts2 countByEnumeratingWithState:&v110 objects:v116 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v111;
              do
              {
                for (i = 0; i != v50; ++i)
                {
                  if (*v111 != v51)
                  {
                    objc_enumerationMutation(viewControllerContexts2);
                  }

                  v53 = *(*(&v110 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v54 = v53;
                    v55 = [SPUIResultsViewController alloc];
                    searchEntity2 = [v54 searchEntity];
                    v57 = [(SPUIResultsViewController *)v55 initWithSearchModel:0 searchEntity:searchEntity2];

                    [(SPUIResultsViewController *)v57 setRestorationContext:v54];
                    searchHeader2 = [(SPUISearchViewController *)self searchHeader];
                    searchField2 = [searchHeader2 searchField];
                    [(SearchUIResultsViewController *)v57 setSearchField:searchField2];

                    v60 = MEMORY[0x277D75D18];
                    v108[0] = MEMORY[0x277D85DD0];
                    v108[1] = 3221225472;
                    v108[2] = __60__SPUISearchViewController_searchViewWillPresentFromSource___block_invoke;
                    v108[3] = &unk_279D070B8;
                    v108[4] = self;
                    v109 = v57;
                    v61 = v57;
                    [v60 performWithoutAnimation:v108];
                    [(SearchUIResultsViewController *)v61 setFeedbackListener:self];
                    [(SearchUIResultsViewController *)v61 setCommandDelegate:self];
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      continue;
                    }

                    v62 = [objc_alloc(MEMORY[0x277D4C840]) initWithCard:0 feedbackListener:self];
                    [v62 setCommandDelegate:self];
                    if ([MEMORY[0x277D65D28] enableFloatingWindow])
                    {
                      [v62 setTextField:0];
                    }

                    else
                    {
                      searchHeader3 = [(SPUISearchViewController *)self searchHeader];
                      searchField3 = [searchHeader3 searchField];
                      [v62 setTextField:searchField3];
                    }

                    proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
                    [v62 setShouldUseInsetRoundedSections:{objc_msgSend(proactiveResultViewController, "shouldUseInsetRoundedSections")}];

                    [v62 setRestorationContext:v53];
                    v66 = MEMORY[0x277D75D18];
                    v106[0] = MEMORY[0x277D85DD0];
                    v106[1] = 3221225472;
                    v106[2] = __60__SPUISearchViewController_searchViewWillPresentFromSource___block_invoke_2;
                    v106[3] = &unk_279D070B8;
                    v106[4] = self;
                    v54 = v62;
                    v107 = v54;
                    [v66 performWithoutAnimation:v106];
                  }
                }

                v50 = [viewControllerContexts2 countByEnumeratingWithState:&v110 objects:v116 count:16];
              }

              while (v50);
            }

            navigationController = [(SPUISearchViewController *)self navigationController];
            view = [navigationController view];
            [view layoutIfNeeded];

            searchHeader4 = [(SPUISearchViewController *)self searchHeader];
            searchField4 = [searchHeader4 searchField];
            [searchField4 detokenizeIfNeededAndSearch:0];

            wantsGo = [searchField wantsGo];
            v5 = MEMORY[0x277D65D40];
            restorationData = v102;
            source = sourceCopy;
            v16 = 0;
            if (wantsGo)
            {
              searchHeader5 = [(SPUISearchViewController *)self searchHeader];
              searchField5 = [searchHeader5 searchField];
              [searchField5 setReturnKeyType:1];

              +[SPUITextField updateBlueButton];
            }

            goto LABEL_51;
          }

          searchResultViewController5 = +[SPUISearchModel sharedFullZWKInstance];
          [searchResultViewController5 updateWithQueryContext:0];
          queryTask = [searchResultViewController5 queryTask];
          query = [queryTask query];
          queryIdent = [query queryIdent];
          searchHeader6 = [(SPUISearchViewController *)self searchHeader];
          [searchHeader6 setQueryId:queryIdent];

LABEL_33:
          goto LABEL_34;
        }
      }

      activeViewController = [(SPUIViewController *)self activeViewController];
      searchResultViewController = [(SPUIViewController *)self searchResultViewController];

      if (activeViewController != searchResultViewController)
      {
        searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
        [(SPUIViewController *)self activateViewController:searchResultViewController2 animate:0];

        searchViewContext3 = [searchField searchViewContext];
        searchString2 = [searchViewContext3 searchString];
        searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
        [searchResultViewController3 setQueryString:searchString2];

        searchHeader7 = [(SPUISearchViewController *)self searchHeader];
        searchViewContext4 = [searchField searchViewContext];
        searchString3 = [searchViewContext4 searchString];
        searchViewContext5 = [searchField searchViewContext];
        searchEntity3 = [searchViewContext5 searchEntity];
        [searchHeader7 restoreSearchText:searchString3 searchEntity:searchEntity3];

        searchViewContext6 = [searchField searchViewContext];
        searchString4 = [searchViewContext6 searchString];
        [(SPUISearchViewController *)self setQueryOnDismissal:searchString4];
      }

      searchResultViewController4 = [(SPUIViewController *)self searchResultViewController];
      sections = [searchResultViewController4 sections];
      v40 = [sections count];

      if (v40)
      {
        goto LABEL_34;
      }

      searchResultViewController5 = [(SPUIViewController *)self searchResultViewController];
      queryTask = [searchField searchViewContext];
      [searchResultViewController5 setRestorationContext:queryTask];
      goto LABEL_33;
    }
  }

LABEL_52:
  [(SPUISearchViewController *)self setIsInStateRestoration:0];
  v74 = +[SPUIFeedbackManager feedbackListener];
  [v74 updateParsecEnabled];

  [(SPUISearchViewController *)self setTimeAtDismissal:0.0];
  [(SPUISearchViewController *)self setClearQueryOnDismissal:0];
  [(SPUISearchViewController *)self showVerticalScrollIndicators:0];
  searchHeader8 = [(SPUISearchViewController *)self searchHeader];
  if (source <= 7 && ((1 << source) & 0xE2) != 0)
  {
    isFirstResponder = 1;
  }

  else
  {
    searchField = [(SPUISearchViewController *)self searchHeader];
    isFirstResponder = [searchField isFirstResponder];
  }

  [searchHeader8 showCancelButton:isFirstResponder animated:0];
  if (source > 7 || ((1 << source) & 0xE2) == 0)
  {
  }

  [(SPUISearchViewController *)self setPresentationMode:source];
  searchHeader9 = [(SPUISearchViewController *)self searchHeader];
  [searchHeader9 setHidden:0];

  [(SPUISearchViewController *)self updatePlatterMode];
  navigationController2 = [(SPUISearchViewController *)self navigationController];
  [navigationController2 updateFooterViewsIfNecessary];

  if (![(SPUISearchViewController *)self hasContentInSearchField])
  {
    v79 = *(v5 + 40);
    if (!v79)
    {
      SPUIInitLogging();
      v79 = *(v5 + 40);
    }

    v80 = v79;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v80, OS_LOG_TYPE_DEFAULT, "field is empty", buf, 2u);
    }

    proactiveResultViewController2 = [(SPUIViewController *)self proactiveResultViewController];
    sections2 = [proactiveResultViewController2 sections];
    v83 = [sections2 count];

    if ([MEMORY[0x277D65D28] enableFloatingWindow] && (-[SPUISearchViewController navigationController](self, "navigationController"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "navigationMode"), v84, !v85) || v83)
    {
      searchHeader10 = [(SPUISearchViewController *)self searchHeader];
      [searchHeader10 updateFocusResult:0 cardSection:0 focusIsOnFirstResult:1];
    }

    else
    {
      proactiveResultViewController3 = [(SPUIViewController *)self proactiveResultViewController];
      v88 = [proactiveResultViewController3 refreshResultsWithContext:0 allowPartialUpdates:1];

      searchHeader10 = [(SPUISearchViewController *)self searchHeader];
      [searchHeader10 setQueryId:v88];
    }

    v89 = *(v5 + 40);
    if (!v89)
    {
      SPUIInitLogging();
      v89 = *(v5 + 40);
    }

    v90 = v89;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v90, OS_LOG_TYPE_DEFAULT, "activating zkw", buf, 2u);
    }

    proactiveResultViewController4 = [(SPUIViewController *)self proactiveResultViewController];
    [(SPUIViewController *)self activateViewController:proactiveResultViewController4 animate:0];

    if (+[SPUISearchFirstTimeViewController needsDisplay])
    {
      v92 = *(v5 + 40);
      if (!v92)
      {
        SPUIInitLogging();
        v92 = *(v5 + 40);
      }

      v93 = v92;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B837000, v93, OS_LOG_TYPE_DEFAULT, "trying to activate FTE", buf, 2u);
      }

      [(SPUISearchViewController *)self activateFirstTimeExperienceViewIfNecessary];
    }
  }

  if ([(SPUISearchViewController *)self expandPlatterOnAppear])
  {
    [(SPUISearchViewController *)self expandWindowIfNeeded];
  }

  if ([(SPUISearchViewController *)self presentationMode]== 5)
  {
    navigationController3 = [(SPUISearchViewController *)self navigationController];
    topViewController = [navigationController3 topViewController];

    if (topViewController == self)
    {
      activeViewController2 = [(SPUIViewController *)self activeViewController];
      searchResultViewController6 = [(SPUIViewController *)self searchResultViewController];
      if (activeViewController2 == searchResultViewController6)
      {
        searchResultViewController7 = [(SPUIViewController *)self searchResultViewController];
      }

      else
      {
        searchResultViewController7 = 0;
      }
    }

    else
    {
      activeViewController2 = [(SPUISearchViewController *)self navigationController];
      searchResultViewController7 = [activeViewController2 topViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      view2 = [searchResultViewController7 view];
      [view2 setAlpha:0.0];

      [searchResultViewController7 scrollAndSelectLastSelectedIndexPath];
      v100 = MEMORY[0x277D4C898];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __60__SPUISearchViewController_searchViewWillPresentFromSource___block_invoke_355;
      v104[3] = &unk_279D06C78;
      v105 = searchResultViewController7;
      [v100 performAnimatableChanges:v104];
    }
  }

  v101 = *MEMORY[0x277D85DE8];
}

void __60__SPUISearchViewController_searchViewWillPresentFromSource___block_invoke_355(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)searchViewDidUpdatePresentationProgress:(double)progress
{
  if (progress >= 1.0)
  {
    searchHeader = [(SPUISearchViewController *)self searchHeader];
    [searchHeader focusSearchFieldAndSelectAll:-[SPUISearchViewController queryIdSameAsInvokeQueryIdentifier](self withReason:{"queryIdSameAsInvokeQueryIdentifier"), 0}];
  }

  else
  {
    if (progress >= 0.5)
    {
      return;
    }

    searchHeader = [(SPUISearchViewController *)self searchHeader];
    if ([searchHeader isFirstResponder])
    {
      enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];

      if (!enableFloatingWindow)
      {
        return;
      }

      searchHeader = [(SPUISearchViewController *)self searchHeader];
      [searchHeader unfocusSearchFieldWithReason:0];
    }
  }
}

- (void)purgeMemory
{
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController purgeMemory];

  searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
  v5 = MEMORY[0x277CBEBF8];
  [searchResultViewController2 updateWithResultSections:MEMORY[0x277CBEBF8]];

  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController purgeMemory];

  proactiveResultViewController2 = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController2 updateWithResultSections:v5];

  v8 = +[SPUISearchModel sharedGeneralInstance];
  [v8 purgeMemory];

  v9 = +[SPUISearchModel sharedFullZWKInstance];
  [v9 purgeMemory];

  LocalCache = CGFontCacheGetLocalCache();

  MEMORY[0x282110E20](LocalCache);
}

- (void)searchViewDidPresentFromSource:(unint64_t)source
{
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController didPresentToResumeSearch:1];

  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController didPresentToResumeSearch:0];

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField setSelectionGrabbersHiddenSafe:0];

  if ([(SPUISearchViewController *)self presentationMode]!= 5)
  {
    searchHeader2 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader2 focusSearchFieldAndSelectAll:-[SPUISearchViewController queryIdSameAsInvokeQueryIdentifier](self withReason:{"queryIdSameAsInvokeQueryIdentifier"), 1}];
  }

  view = [(SPUISearchViewController *)self view];
  [view setAlpha:1.0];

  [(SPUISearchViewController *)self showVerticalScrollIndicators:1];
  navigationController = [(SPUISearchViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = MEMORY[0x277D65D40];
  if (isKindOfClass)
  {
    v14 = *(MEMORY[0x277D65D40] + 40);
    if (!v14)
    {
      SPUIInitLogging();
      v14 = *(v13 + 40);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [SPUISearchViewController searchViewDidPresentFromSource:];
    }

    v15 = presentedViewController;
    if (objc_opt_respondsToSelector())
    {
      [v15 _didFinishDismissal];
    }
  }

  dispatch_after(0, MEMORY[0x277D85CD0], &__block_literal_global_3);
  v16 = *(v13 + 40);
  if (!v16)
  {
    SPUIInitLogging();
    v16 = *(v13 + 40);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v16, OS_LOG_TYPE_DEFAULT, "bringUp end", buf, 2u);
  }

  kdebug_trace();
  v17 = *(v13 + 32);
  if (!v17)
  {
    SPUIInitLogging();
    v17 = *(v13 + 32);
  }

  if (os_signpost_enabled(v17))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "bringUp", " enableTelemetry=YES ", v18, 2u);
  }
}

void __59__SPUISearchViewController_searchViewDidPresentFromSource___block_invoke()
{
  v0 = MEMORY[0x277D65D40];
  v1 = *(MEMORY[0x277D65D40] + 32);
  if (!v1)
  {
    SPUIInitLogging();
    v1 = *(v0 + 32);
  }

  if (os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "finalPrewarm", "", buf, 2u);
  }

  v2 = +[SPUISearchModel sharedGeneralInstance];
  [v2 activate];

  [MEMORY[0x277D65D88] prewarmVisionForImageDerivedColors];
  v3 = *(v0 + 32);
  if (!v3)
  {
    SPUIInitLogging();
    v3 = *(v0 + 32);
  }

  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "finalPrewarm", " enableTelemetry=YES ", v4, 2u);
  }
}

- (void)searchViewWillDismissWithReason:(unint64_t)reason
{
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController willDismiss];

  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController willDismiss];

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [searchField setSelectionGrabbersHiddenSafe:1];

  kdebug_trace();
  v8 = MEMORY[0x277D65D40];
  v9 = *(MEMORY[0x277D65D40] + 32);
  if (!v9)
  {
    SPUIInitLogging();
    v9 = *(v8 + 32);
  }

  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "dismiss", "", buf, 2u);
  }

  v10 = *(v8 + 40);
  if (!v10)
  {
    SPUIInitLogging();
    v10 = *(v8 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_26B837000, v10, OS_LOG_TYPE_DEFAULT, "dismiss start", v17, 2u);
  }

  if ([(SPUISearchViewController *)self presentationMode]!= 1 && [(SPUISearchViewController *)self presentationMode]!= 5 && [(SPUISearchViewController *)self presentationMode]!= 7)
  {
    searchHeader2 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader2 showCancelButton:0 animated:1];
  }

  activeViewController = [(SPUIViewController *)self activeViewController];
  presentedViewController = [activeViewController presentedViewController];

  if (presentedViewController)
  {
    activeViewController2 = [(SPUIViewController *)self activeViewController];
    [activeViewController2 dismissViewControllerAnimated:1 completion:0];

    searchHeader3 = [(SPUISearchViewController *)self searchHeader];
    +[SPUIFeedbackManager cardViewDidDisappearWithEvent:withQueryId:](SPUIFeedbackManager, "cardViewDidDisappearWithEvent:withQueryId:", 5, [searchHeader3 queryId]);
  }

  [(SPUISearchViewController *)self showVerticalScrollIndicators:0];
  if (([MEMORY[0x277D65D28] pageDotInvokeEnabled] & 1) == 0)
  {
    searchHeader4 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader4 unfocusSearchFieldWithReason:1];
  }

  [(SPUISearchViewController *)self setTimeAtDismissal:CFAbsoluteTimeGetCurrent()];
}

- (BOOL)currentQueryIdMatchesResultInGeneralModel
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  queryId = [searchHeader queryId];
  v4 = +[SPUISearchModelGeneral sharedGeneralInstance];
  sections = [v4 sections];
  firstObject = [sections firstObject];
  results = [firstObject results];
  firstObject2 = [results firstObject];
  LOBYTE(queryId) = queryId == [firstObject2 queryId];

  return queryId;
}

- (void)highlightResultAfterUnmarkingText
{
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController highlightResultAfterUnmarkingText];
}

- (void)returnKeyPressed
{
  currentQuery = [(SPUISearchViewController *)self currentQuery];
  v4 = [currentQuery length];

  if (v4)
  {
    v5 = +[SPUISearchModelGeneral sharedGeneralInstance];
    queryInProgress = [v5 queryInProgress];

    if (queryInProgress)
    {
      v7 = objc_initWeak(&location, self);
      currentQueryIdMatchesResultInGeneralModel = [(SPUISearchViewController *)self currentQueryIdMatchesResultInGeneralModel];

      v9 = objc_loadWeakRetained(&location);
      v10 = v9;
      if (currentQueryIdMatchesResultInGeneralModel)
      {
        [v9 performReturnKeyPressAndExpandWidowIfNeeded];
      }

      else
      {
        searchResultViewController = [v9 searchResultViewController];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __44__SPUISearchViewController_returnKeyPressed__block_invoke;
        v13[3] = &unk_279D06FA8;
        objc_copyWeak(&v14, &location);
        [searchResultViewController setViewDidUpdateHandler:v13];

        objc_destroyWeak(&v14);
      }

      objc_destroyWeak(&location);
    }

    else
    {

      [(SPUISearchViewController *)self performReturnKeyPressAndExpandWidowIfNeeded];
    }
  }

  else if (-[SPUISearchViewController presentationMode](self, "presentationMode") != 6 || ([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
    [proactiveResultViewController performReturnKeyPressAction];
  }
}

void __44__SPUISearchViewController_returnKeyPressed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained currentQueryIdMatchesResultInGeneralModel];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 searchResultViewController];
    [v5 setViewDidUpdateHandler:0];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 performReturnKeyPressAndExpandWidowIfNeeded];
  }
}

- (void)backButtonPressed
{
  navigationController = [(SPUISearchViewController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (void)performWebSearch
{
  v7 = objc_opt_new();
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  searchText = [searchField searchText];
  [v7 setSearchString:searchText];

  v6 = [MEMORY[0x277D4C850] handlerForCommand:v7 environment:0];
  [v6 executeWithTriggerEvent:1];
}

- (void)performReturnKeyPressAndExpandWidowIfNeeded
{
  windowExpansionTimer = [(SPUISearchViewController *)self windowExpansionTimer];
  if (windowExpansionTimer)
  {
    v4 = windowExpansionTimer;
    activeViewController = [(SPUIViewController *)self activeViewController];
    searchResultViewController = [(SPUIViewController *)self searchResultViewController];

    if (activeViewController != searchResultViewController)
    {
      [(SPUISearchViewController *)self invalidateWindowExpansionTimer];
      searchHeader = [(SPUISearchViewController *)self searchHeader];
      completionResultIsPotentiallyPunchout = [searchHeader completionResultIsPotentiallyPunchout];

      if (completionResultIsPotentiallyPunchout)
      {
        [(SPUISearchViewController *)self scheduleWindowExpansionWithInterval:0.5];
        [(SPUISearchViewController *)self setExpandPlatterOnAppear:1];
      }

      else
      {
        [(SPUISearchViewController *)self expandWindowIfNeeded];
      }
    }
  }

  searchHeader2 = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader2 searchField];
  returnKeyType = [searchField returnKeyType];

  if (returnKeyType == 6)
  {
    searchHeader3 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader3 commitSearch];
  }

  else
  {
    searchHeader3 = [(SPUIViewController *)self searchResultViewController];
    [searchHeader3 performReturnKeyPressAction];
  }
}

- (void)searchViewDidDismissWithReason:(unint64_t)reason
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  +[SPUIFeedbackManager didDisappearWithReason:withQueryId:](SPUIFeedbackManager, "didDisappearWithReason:withQueryId:", reason, [searchHeader queryId]);

  if ([(SPUISearchViewController *)self clearQueryOnDismissal])
  {
    searchHeader2 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader2 clearSearchFieldWhyQuery:0 allowZKW:0];
  }

  v7 = +[SPUISearchModel sharedGeneralInstance];
  [v7 deactivate];

  [(SPUISearchViewController *)self refreshTrial];
  navigationController = [(SPUISearchViewController *)self navigationController];
  [navigationController setNavigationMode:0];

  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    bottomSearchFieldEnabled = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
    searchHeader3 = [(SPUISearchViewController *)self searchHeader];
    [searchHeader3 setHidden:bottomSearchFieldEnabled ^ 1u];
  }

  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [(SPUIViewController *)self activateViewController:proactiveResultViewController animate:0];

  proactiveResultViewController2 = [(SPUIViewController *)self proactiveResultViewController];
  [proactiveResultViewController2 updateWithResultSections:MEMORY[0x277CBEBF8]];

  currentQuery = [(SPUISearchViewController *)self currentQuery];
  [(SPUISearchViewController *)self setQueryOnDismissal:currentQuery];

  v14 = MEMORY[0x277D65D40];
  v15 = *(MEMORY[0x277D65D40] + 40);
  if (!v15)
  {
    SPUIInitLogging();
    v15 = *(v14 + 40);
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v15, OS_LOG_TYPE_DEFAULT, "dismiss end", buf, 2u);
  }

  kdebug_trace();
  v16 = *(v14 + 32);
  if (!v16)
  {
    SPUIInitLogging();
    v16 = *(v14 + 32);
  }

  if (os_signpost_enabled(v16))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B837000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "dismiss", " enableTelemetry=YES ", v17, 2u);
  }
}

- (void)spotlightDidBackground
{
  feedbackBackgroundTaskIdentifier = [(SPUISearchViewController *)self feedbackBackgroundTaskIdentifier];
  if (feedbackBackgroundTaskIdentifier == *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__SPUISearchViewController_spotlightDidBackground__block_invoke;
    v6[3] = &unk_279D06C78;
    v6[4] = self;
    -[SPUISearchViewController setFeedbackBackgroundTaskIdentifier:](self, "setFeedbackBackgroundTaskIdentifier:", [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"Send Feedback" expirationHandler:v6]);

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__SPUISearchViewController_spotlightDidBackground__block_invoke_365;
    v5[3] = &unk_279D06C78;
    v5[4] = self;
    [SPUIFeedbackManager flushFeedbackWithCompletion:v5];
  }
}

uint64_t __50__SPUISearchViewController_spotlightDidBackground__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) feedbackBackgroundTaskIdentifier];
  if (v2 != *MEMORY[0x277D767B0])
  {
    v3 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__SPUISearchViewController_spotlightDidBackground__block_invoke_cold_1();
    }
  }

  return [*(a1 + 32) endBackgroundTaskIfNeeded];
}

- (void)endBackgroundTaskIfNeeded
{
  feedbackBackgroundTaskIdentifier = [(SPUISearchViewController *)self feedbackBackgroundTaskIdentifier];
  if (feedbackBackgroundTaskIdentifier != *MEMORY[0x277D767B0])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__SPUISearchViewController_endBackgroundTaskIfNeeded__block_invoke;
    v4[3] = &unk_279D06C78;
    v4[4] = self;
    [MEMORY[0x277D4C898] dispatchMainIfNecessary:v4];
  }
}

uint64_t __53__SPUISearchViewController_endBackgroundTaskIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:{objc_msgSend(*(a1 + 32), "feedbackBackgroundTaskIdentifier")}];

  v3 = *MEMORY[0x277D767B0];
  v4 = *(a1 + 32);

  return [v4 setFeedbackBackgroundTaskIdentifier:v3];
}

- (void)didScrollPastBottomOfContent
{
  delegate = [(SPUIViewController *)self delegate];
  [delegate dismissSearchViewWithReason:3];
}

- (BOOL)sectionShouldBeExpanded:(id)expanded
{
  expandedCopy = expanded;
  bundleIdentifier = [expandedCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:*MEMORY[0x277D65CE0]])
  {
    results = [expandedCopy results];
    firstObject = [results firstObject];
    renderHorizontallyWithOtherResultsInCategory = [firstObject renderHorizontallyWithOtherResultsInCategory];

    if (!renderHorizontallyWithOtherResultsInCategory)
    {
      v8 = 0;
      goto LABEL_7;
    }

    bundleIdentifier = [objc_opt_class() spotlightUserDefaults];
    v8 = [bundleIdentifier BOOLForKey:@"SpotlightZKWExpanded"];
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

- (void)resultsViewController:(id)controller didChangeContentSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  activeViewController = [(SPUIViewController *)self activeViewController];

  if (activeViewController == controllerCopy)
  {
    sizingDelegate = [(SPUISearchViewController *)self sizingDelegate];
    if (animatedCopy)
    {
      [sizingDelegate didInvalidateSizeAnimated:1];
    }

    else
    {
      navigationController = [(SPUISearchViewController *)self navigationController];
      [sizingDelegate didInvalidateSizeAnimated:{objc_msgSend(navigationController, "navigationMode") == 5}];
    }
  }
}

- (void)activateFirstTimeExperienceViewIfNecessary
{
  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    if (+[SPUISearchFirstTimeViewController useZKWFTE])
    {
      if (![(SPUISearchViewController *)self hasContentInSearchField])
      {
        v3 = MEMORY[0x277D65D40];
        v4 = *(MEMORY[0x277D65D40] + 40);
        if (!v4)
        {
          SPUIInitLogging();
          v4 = *(v3 + 40);
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26B837000, v4, OS_LOG_TYPE_DEFAULT, "FTE incremented count", buf, 2u);
        }

        +[SPUISearchFirstTimeViewController incrementViewCount];
      }
    }

    else
    {
      v10 = MEMORY[0x277D65D40];
      v11 = *(MEMORY[0x277D65D40] + 40);
      if (!v11)
      {
        SPUIInitLogging();
        v11 = *(v10 + 40);
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B837000, v11, OS_LOG_TYPE_DEFAULT, "[FTE] FTE needs display", buf, 2u);
      }

      firstTimeExperienceViewController = [(SPUISearchViewController *)self firstTimeExperienceViewController];

      v13 = *(v10 + 40);
      if (firstTimeExperienceViewController)
      {
        if (!v13)
        {
          SPUIInitLogging();
          v13 = *(v10 + 40);
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26B837000, v13, OS_LOG_TYPE_DEFAULT, "[FTE] presenting cached FTE view controller", buf, 2u);
        }

        [(SPUISearchViewController *)self activateFirstTimeExperienceViewAnimate:0];
      }

      else
      {
        if (!v13)
        {
          SPUIInitLogging();
          v13 = *(v10 + 40);
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26B837000, v13, OS_LOG_TYPE_DEFAULT, "[FTE] retrieving FTE - call from UI", buf, 2u);
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __70__SPUISearchViewController_activateFirstTimeExperienceViewIfNecessary__block_invoke;
        v14[3] = &unk_279D07178;
        v14[4] = self;
        [SPUISearchModel retrieveFirstTimeExperienceTextWithReply:v14];
      }
    }
  }

  else
  {
    activeViewController = [(SPUIViewController *)self activeViewController];
    firstTimeExperienceViewController2 = [(SPUISearchViewController *)self firstTimeExperienceViewController];

    if (activeViewController == firstTimeExperienceViewController2)
    {
      v7 = MEMORY[0x277D65D40];
      v8 = *(MEMORY[0x277D65D40] + 40);
      if (!v8)
      {
        SPUIInitLogging();
        v8 = *(v7 + 40);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B837000, v8, OS_LOG_TYPE_DEFAULT, "Doesnt need FTE enabling search view", buf, 2u);
      }

      searchResultViewController = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:searchResultViewController animate:0];
    }
  }
}

void __70__SPUISearchViewController_activateFirstTimeExperienceViewIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"FTE_STRING"];
  v5 = [v3 objectForKey:@"FTE_LEARN_MORE_LINK"];
  v6 = [v3 objectForKey:@"FTE_CONTINUE_LINK"];
  v7 = [v3 objectForKey:@"FTE_DOMAINS"];

  v8 = [v4 length];
  v9 = MEMORY[0x277D65D40];
  v10 = *(MEMORY[0x277D65D40] + 40);
  if (v8)
  {
    if (!v10)
    {
      SPUIInitLogging();
      v10 = *(v9 + 40);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v10, OS_LOG_TYPE_DEFAULT, "[FTE] got parameter values in UI", buf, 2u);
    }

    v11 = MEMORY[0x277D4C898];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__SPUISearchViewController_activateFirstTimeExperienceViewIfNecessary__block_invoke_388;
    v12[3] = &unk_279D07150;
    v12[4] = *(a1 + 32);
    v13 = v7;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    [v11 dispatchMainIfNecessary:v12];
  }

  else
  {
    if (!v10)
    {
      SPUIInitLogging();
      v10 = *(v9 + 40);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __70__SPUISearchViewController_activateFirstTimeExperienceViewIfNecessary__block_invoke_cold_1();
    }
  }
}

uint64_t __70__SPUISearchViewController_activateFirstTimeExperienceViewIfNecessary__block_invoke_388(uint64_t a1)
{
  v2 = [*(a1 + 32) firstTimeExperienceViewController];

  if (!v2)
  {
    v3 = [[SPUISearchFirstTimeViewController alloc] initWithDomains:*(a1 + 40) explanationText:*(a1 + 48) learnMoreText:*(a1 + 56) continueButtonTitle:*(a1 + 64)];
    [*(a1 + 32) setFirstTimeExperienceViewController:v3];

    v4 = *(a1 + 32);
    v5 = [v4 firstTimeExperienceViewController];
    [v5 setDelegate:v4];
  }

  v6 = *(a1 + 32);

  return [v6 activateFirstTimeExperienceViewAnimate:1];
}

- (void)firstTimeExperienceContinueButtonPressed
{
  +[SPUISearchFirstTimeViewController dismissForever];
  proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
  [(SPUIViewController *)self activateViewController:proactiveResultViewController animate:1];

  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader focusSearchFieldAndSelectAll:1 withReason:4];
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  +[SPUISearchFirstTimeViewController dismissForever];
  v8 = [[SPUITestingHelper alloc] initWithSearchViewController:self];
  [(SPUISearchViewController *)self setTestingHelper:v8];

  testingHelper = [(SPUISearchViewController *)self testingHelper];
  v10 = [testingHelper canPerformTest:testCopy];

  if (v10)
  {
    testingHelper2 = [(SPUISearchViewController *)self testingHelper];
    [testingHelper2 performTest:testCopy options:optionsCopy completion:0];
  }

  return v10;
}

+ (void)_updateHeaderView:(id)view fromText:(id)text fromToken:(id)token
{
  if (token)
  {
    textCopy = text;
    viewCopy = view;
    representedObject = [token representedObject];
    searchField4 = [SPUISearchHeader tokenFromSearchEntity:representedObject];

    searchField = [viewCopy searchField];
    [searchField updateTextRange:textCopy];

    searchField2 = [viewCopy searchField];
    [searchField2 updateToken:searchField4];
  }

  else
  {
    textCopy2 = text;
    viewCopy2 = view;
    searchField3 = [viewCopy2 searchField];
    [searchField3 updateTextRange:textCopy2];

    searchField4 = [viewCopy2 searchField];
    [searchField4 updateToken:0];
  }

  [view clearLastSearchedText];
}

- (void)queryContextDidChange:(id)change fromSearchHeader:(id)header allowZKW:(BOOL)w
{
  wCopy = w;
  changeCopy = change;
  headerCopy = header;
  [(SPUISearchViewController *)self invalidateWindowExpansionTimer];
  navigationController = [(SPUISearchViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v12 = [viewControllers count];

  if (v12 >= 2)
  {
    searchResultViewController = [(SPUIViewController *)self searchResultViewController];
    [searchResultViewController setSections:MEMORY[0x277CBEBF8]];

    navigationController2 = [(SPUISearchViewController *)self navigationController];
    v15 = [navigationController2 popToRootViewControllerAnimated:0];
  }

  searchEntities = [changeCopy searchEntities];
  v17 = [searchEntities count];

  if (!v17)
  {
    searchEntities2 = [changeCopy searchEntities];
    firstObject = [searchEntities2 firstObject];
    searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
    [searchResultViewController2 setSearchEntity:firstObject];

    navigationController3 = [(SPUISearchViewController *)self navigationController];
    searchString = [changeCopy searchString];
    if (searchString)
    {
      [(SPUIViewController *)self searchResultViewController];
    }

    else
    {
      [(SPUIViewController *)self proactiveResultViewController];
    }
    v23 = ;
    [navigationController3 updateBackgroundColorWithViewControllerToBeShown:v23];
  }

  searchString2 = [changeCopy searchString];
  searchEntities3 = [changeCopy searchEntities];
  v25 = [searchEntities3 count];

  searchField = [headerCopy searchField];
  text = [searchField text];

  searchField2 = [headerCopy searchField];
  tokens = [searchField2 tokens];
  v30 = [tokens count];

  if (v30 >= 2)
  {
    v31 = MEMORY[0x277D65D40];
    v32 = *(MEMORY[0x277D65D40] + 8);
    if (!v32)
    {
      SPUIInitLogging();
      v32 = *(v31 + 8);
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SPUISearchViewController createAdditionalHeaderView];
    }
  }

  appIntentsQueryHelper = [(SPUISearchViewController *)self appIntentsQueryHelper];
  [appIntentsQueryHelper updateSearchString:text completionHandler:&__block_literal_global_401];

  searchField3 = [headerCopy searchField];
  tokens2 = [searchField3 tokens];
  firstObject2 = [tokens2 firstObject];

  v37 = +[SPUISearchModel sharedGeneralInstance];
  -[SPUISearchViewController setLastQueryWasAuthenticated:](self, "setLastQueryWasAuthenticated:", [changeCopy deviceAuthenticationState] == 0);
  v38 = searchString2;
  if ([searchString2 length])
  {
    v39 = 1;
  }

  else
  {
    v39 = wCopy;
  }

  v67 = v39;
  if (v39)
  {
    if ([searchString2 length] | v25)
    {
      [changeCopy setAllowInternet:{-[SPUISearchViewController allowInternet](self, "allowInternet")}];
      [v37 updateWithQueryContext:changeCopy];
      goto LABEL_22;
    }

    proactiveResultViewController = [(SPUIViewController *)self proactiveResultViewController];
    [(SPUIViewController *)self activateViewController:proactiveResultViewController animate:0];

    proactiveResultViewController2 = [(SPUIViewController *)self proactiveResultViewController];
    v43 = [proactiveResultViewController2 refreshResultsWithContext:changeCopy allowPartialUpdates:0];
    [(SPUISearchViewController *)self searchHeader];
    v45 = v44 = v37;
    [v45 setQueryId:v43];

    v37 = v44;
  }

  else
  {
    v40 = +[SPUISearchModel sharedGeneralInstance];
    [v40 clear];

    proactiveResultViewController2 = +[SPUISearchModel sharedFullZWKInstance];
    [proactiveResultViewController2 clear];
  }

LABEL_22:
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __76__SPUISearchViewController_queryContextDidChange_fromSearchHeader_allowZKW___block_invoke_2;
  v69[3] = &unk_279D071A0;
  v46 = headerCopy;
  v70 = v46;
  selfCopy = self;
  v47 = text;
  v72 = v47;
  v48 = firstObject2;
  v73 = v48;
  [(SPUISearchViewController *)self updateHeaderViewsWithBlock:v69];
  displayedText = [changeCopy displayedText];
  searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
  [searchResultViewController3 setQueryString:displayedText];

  queryKind = [changeCopy queryKind];
  if (+[SPUISearchViewController shouldShowAsTypedSuggestion])
  {
    v63 = (queryKind - 1) < 2;
    [(SPUIViewController *)self searchResultViewController];
    v52 = v66 = self;
    searchString3 = [changeCopy searchString];
    searchEntities4 = [changeCopy searchEntities];
    firstObject3 = [searchEntities4 firstObject];
    [(SPUISearchViewController *)v66 searchHeader];
    v55 = v65 = v46;
    v56 = v47;
    queryId = [v55 queryId];
    [changeCopy keyboardLanguage];
    v58 = v48;
    v60 = v59 = v37;
    v61 = queryId;
    v47 = v56;
    [v52 searchUpdatedWithString:searchString3 tokenEntity:firstObject3 queryId:v61 wantsCompletions:v63 keyboardLanguage:v60];

    v37 = v59;
    v48 = v58;

    v46 = v65;
    v38 = searchString2;

    self = v66;
  }

  if (v67)
  {
    navigationController4 = [(SPUISearchViewController *)self navigationController];
    [navigationController4 updateFooterViewsIfNecessary];

    [(SPUISearchViewController *)self activateFirstTimeExperienceViewIfNecessary];
  }
}

void __76__SPUISearchViewController_queryContextDidChange_fromSearchHeader_allowZKW___block_invoke_2(void *a1, void *a2)
{
  if (a1[4] != a2)
  {
    v4 = a1[5];
    v5 = a2;
    [objc_opt_class() _updateHeaderView:v5 fromText:a1[6] fromToken:a1[7]];
  }
}

- (void)willUpdateFromResultsWithHighlightedResult:(id)result viewController:(id)controller
{
  controllerCopy = controller;
  resultCopy = result;
  if ([(SPUISearchViewController *)self hasContentInSearchField]&& ([(SPUIViewController *)self searchResultViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == controllerCopy))
  {
    searchResultViewController = [(SPUIViewController *)self searchResultViewController];
    view = [searchResultViewController view];
    [view frame];
    v15 = CGRectEqualToRect(v33, *MEMORY[0x277CBF3A0]);

    if (v15)
    {
      view2 = [(SPUISearchViewController *)self view];
      [view2 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;

      view3 = [(SPUISearchViewController *)self view];
      tlks_screen = [view3 tlks_screen];
      [tlks_screen bounds];
      Height = CGRectGetHeight(v34);

      searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
      view4 = [searchResultViewController2 view];
      [view4 setFrame:{v18, v20, v22, Height}];

      searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
      view5 = [searchResultViewController3 view];
      [view5 layoutBelowIfNeeded];
    }

    if ([MEMORY[0x277D65D28] enableFloatingWindow] && objc_msgSend(MEMORY[0x277D75658], "isInHardwareKeyboardMode"))
    {
      [(SPUISearchViewController *)self invalidateWindowExpansionTimer];
      if ([(SPUISearchViewController *)self currentQueryIdMatchesResultInGeneralModel])
      {
        [(SPUISearchViewController *)self scheduleWindowExpansionWithInterval:0.5];
      }
    }

    else
    {
      searchResultViewController4 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:searchResultViewController4 animate:0];
    }
  }

  else
  {
    windowExpansionTimer = [(SPUISearchViewController *)self windowExpansionTimer];
    [windowExpansionTimer invalidate];

    [(SPUISearchViewController *)self setWindowExpansionTimer:0];
  }

  v9 = [MEMORY[0x277D4C898] cardForRenderingResult:resultCopy];
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  cardSections = [v9 cardSections];
  firstObject = [cardSections firstObject];
  [searchHeader updateFocusResult:resultCopy cardSection:firstObject focusIsOnFirstResult:1];
}

- (BOOL)optOutOfGoButton
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  optOutOfGoButton = [searchHeader optOutOfGoButton];

  return optOutOfGoButton;
}

- (double)contentHeight
{
  activeViewController = [(SPUIViewController *)self activeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  activeViewController2 = [(SPUIViewController *)self activeViewController];
  firstTimeExperienceViewController2 = activeViewController2;
  if (isKindOfClass)
  {
    [activeViewController2 contentSize];
    v8 = v7;
LABEL_5:

    return v8;
  }

  firstTimeExperienceViewController = [(SPUISearchViewController *)self firstTimeExperienceViewController];

  v8 = 0.0;
  if (firstTimeExperienceViewController2 == firstTimeExperienceViewController)
  {
    firstTimeExperienceViewController2 = [(SPUISearchViewController *)self firstTimeExperienceViewController];
    [firstTimeExperienceViewController2 idealContentHeight];
    v8 = v10;
    goto LABEL_5;
  }

  return v8;
}

- (void)scheduleWindowExpansionWithInterval:(double)interval
{
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_expandWindowIfNeeded selector:0 userInfo:0 repeats:interval];
  [(SPUISearchViewController *)self setWindowExpansionTimer:v4];

  windowExpansionTimer = [(SPUISearchViewController *)self windowExpansionTimer];
  [windowExpansionTimer setTolerance:0.1];
}

- (void)expandWindowIfNeeded
{
  if ([(SPUISearchViewController *)self hasContentInSearchField])
  {
    activeViewController = [(SPUIViewController *)self activeViewController];
    searchResultViewController = [(SPUIViewController *)self searchResultViewController];

    if (activeViewController != searchResultViewController)
    {
      searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
      [searchResultViewController2 invalidateContentHeight];

      searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:searchResultViewController3 animate:0];

      [(SPUISearchViewController *)self setExpandPlatterOnAppear:0];
    }
  }
}

- (id)firstResultIgnoringSuggestionsIfNeeded
{
  v2 = +[SPUISearchModelGeneral sharedGeneralInstance];
  sections = [v2 sections];
  firstObject = [sections firstObject];
  results = [firstObject results];
  firstObject2 = [results firstObject];

  return firstObject2;
}

- (BOOL)allowInternet
{
  if (!+[SPUISearchFirstTimeViewController needsDisplay](SPUISearchFirstTimeViewController, "needsDisplay") || (v3 = +[SPUISearchFirstTimeViewController hasBeenDisplayed]))
  {
    LOBYTE(v3) = ![(SPUISearchViewController *)self internetOverrideForPPT];
  }

  return v3;
}

- (void)dictationButtonPressed
{
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  [searchHeader beginDictation];
}

- (void)cancelButtonPressed
{
  delegate = [(SPUIViewController *)self delegate];
  [delegate dismissSearchViewWithReason:1];
}

- (void)didBeginScrollingResults
{
  v2 = +[SPUISearchModel sharedGeneralInstance];
  [v2 setForceStableResults:1];
}

- (id)searchViewRestorationContext
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  activeViewController = [(SPUIViewController *)self activeViewController];
  searchResultViewController = [(SPUIViewController *)self searchResultViewController];
  if (activeViewController == searchResultViewController)
  {
    searchResultViewController2 = [(SPUIViewController *)self searchResultViewController];
    sections = [searchResultViewController2 sections];

    if (!sections)
    {
      v26 = 0;
      restorationContext = 0;
      goto LABEL_6;
    }

    searchResultViewController3 = [(SPUIViewController *)self searchResultViewController];
    restorationContext = [searchResultViewController3 restorationContext];

    lastSearchString = [(SPUISearchViewController *)self lastSearchString];
    [restorationContext setSearchString:lastSearchString];

    activeViewController = [(SPUISearchViewController *)self searchHeader];
    searchResultViewController = [activeViewController searchEntity];
    [restorationContext setSearchEntity:searchResultViewController];
  }

  else
  {
    sections = 0;
    restorationContext = 0;
  }

  v26 = sections;

LABEL_6:
  v27 = v3;
  [v3 setSearchViewContext:restorationContext];
  v11 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  navigationController = [(SPUISearchViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v14 = [viewControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = *v29;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v29 != v16)
      {
        objc_enumerationMutation(viewControllers);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      if (v18 != self)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          restorationContext2 = [(SPUISearchViewController *)v18 restorationContext];
          sections2 = [restorationContext2 sections];
          v21 = [sections2 count];

          if (!v21)
          {
            goto LABEL_18;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          restorationContext2 = [(SPUISearchViewController *)v18 restorationContext];
        }

        [v11 addObject:restorationContext2];
LABEL_18:

        continue;
      }
    }

    v15 = [viewControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v15);
LABEL_21:

  [v27 setViewControllerContexts:v11];
  [v27 setSearchViewContext:restorationContext];
  [(SPUISearchViewController *)self timeAtDismissal];
  [v27 setTimeAtDismissal:?];
  searchHeader = [(SPUISearchViewController *)self searchHeader];
  searchField = [searchHeader searchField];
  [v27 setWantsGo:{objc_msgSend(searchField, "returnKeyType") == 1}];

  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)presentSpotlightWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SPUISearchViewController *)self spotlightIsVisible])
  {
    handlerCopy[2]();
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D66C30]);
    [v4 requestSpotlightActivation];
    [(SPUISearchViewController *)self setAppIntentsDidLaunchCompletion:handlerCopy];
  }
}

- (UIView)topPocketView
{
  WeakRetained = objc_loadWeakRetained(&self->_topPocketView);

  return WeakRetained;
}

- (void)searchViewWillPresentFromSource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B837000, a2, OS_LOG_TYPE_ERROR, "Failed to unpack restoration with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end