@interface SPUISearchViewController
+ (BOOL)shouldShowAsTypedSuggestion;
+ (id)spotlightUserDefaults;
+ (void)_updateHeaderView:(id)a3 fromText:(id)a4 fromToken:(id)a5;
- (BOOL)allowInternet;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPerformCommand:(id)a3;
- (BOOL)checkClearTimer;
- (BOOL)currentQueryIdMatchesResultInGeneralModel;
- (BOOL)hasContentInSearchField;
- (BOOL)isInStateRestoration;
- (BOOL)isQueryCommand:(id)a3;
- (BOOL)optOutOfGoButton;
- (BOOL)queryIdSameAsInvokeQueryIdentifier;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)sectionShouldBeExpanded:(id)a3;
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
- (void)didEngageResult:(id)a3;
- (void)didScrollPastBottomOfContent;
- (void)didUpdateActiveViewController;
- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4;
- (void)dragInitiated;
- (void)endBackgroundTaskIfNeeded;
- (void)escapeKeyCommand;
- (void)expandWindowIfNeeded;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)highlightResultAfterUnmarkingText;
- (void)invalidateWindowExpansionTimer;
- (void)performCommand:(id)a3;
- (void)performReturnKeyPressAndExpandWidowIfNeeded;
- (void)performTestSearchWithQuery:(id)a3 event:(unint64_t)a4 queryKind:(unint64_t)a5;
- (void)performWebSearch;
- (void)presentSpotlightWithCompletionHandler:(id)a3;
- (void)purgeMemory;
- (void)queryContextDidChange:(id)a3 fromSearchHeader:(id)a4 allowZKW:(BOOL)a5;
- (void)refreshTrial;
- (void)resultsDidBecomeVisible:(id)a3;
- (void)resultsViewController:(id)a3 didChangeContentSize:(CGSize)a4 animated:(BOOL)a5;
- (void)returnKeyPressed;
- (void)scheduleWindowExpansionWithInterval:(double)a3;
- (void)searchViewDidDismissWithReason:(unint64_t)a3;
- (void)searchViewDidPresentFromSource:(unint64_t)a3;
- (void)searchViewDidUpdatePresentationProgress:(double)a3;
- (void)searchViewWillDismissWithReason:(unint64_t)a3;
- (void)searchViewWillPresentFromSource:(unint64_t)a3;
- (void)sendPresentationFeedback;
- (void)setAdditionalKeyboardHeight:(double)a3;
- (void)setFooterViewsForProactive:(id)a3 forResults:(id)a4;
- (void)setLegibilitySettings:(id)a3;
- (void)spotlightDidBackground;
- (void)spotlight_leftArrowPressed;
- (void)spotlight_rightArrowPressed;
- (void)updateHeaderViewsWithBlock:(id)a3;
- (void)updatePlatterMode;
- (void)updateResponderChainIfNeeded;
- (void)willUpdateActiveViewController;
- (void)willUpdateFromResultsWithHighlightedResult:(id)a3 viewController:(id)a4;
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
    v9 = [(SPUISearchViewController *)v2 appIntentsQueryHelper];
    v10 = [MEMORY[0x277D65D60] queryHelperKey];
    [v8 registerDependency:v9 forKey:v10];

    v11 = MEMORY[0x277D65D60];
    v12 = [MEMORY[0x277D65D60] presentationHelperKey];
    [v11 registerDependency:v2 forKey:v12];

    [(SPUISearchViewController *)v2 setTimeAtDismissal:0.0];
    v13 = [(SPUISearchViewController *)v2 view];
    v14 = [v13 layer];
    [v14 setAllowsGroupOpacity:0];

    v15 = objc_opt_new();
    [(SPUISearchViewController *)v2 setAllHeaderViews:v15];

    v16 = [(SPUIViewController *)v2 searchResultViewController];
    [v16 setCommandDelegate:v2];

    v17 = [(SPUIViewController *)v2 searchResultViewController];
    [v17 setAllowHighlightingWhenInactive:1];

    v18 = [SPUIProactiveResultsViewController alloc];
    v19 = +[SPUISearchModel sharedFullZWKInstance];
    v20 = [(SPUIProactiveResultsViewController *)v18 initWithSearchModel:v19 searchEntity:0];
    [(SPUIViewController *)v2 setProactiveResultViewController:v20];

    v21 = [(SPUIViewController *)v2 proactiveResultViewController];
    [v21 setDelegate:v2];

    v22 = [(SPUIViewController *)v2 proactiveResultViewController];
    [v22 setFeedbackListener:v2];

    v23 = [(SPUIViewController *)v2 proactiveResultViewController];
    [v23 setCommandDelegate:v2];

    v24 = [(SPUIViewController *)v2 proactiveResultViewController];
    [v24 setShouldMonitorScrollingPastBottomOfContent:1];

    v25 = [(SPUISearchViewController *)v2 createAdditionalHeaderView];
    [(SPUISearchViewController *)v2 setSearchHeader:v25];

    v26 = [(SPUISearchViewController *)v2 searchHeader];
    v27 = [v26 searchField];
    v28 = [(SPUIViewController *)v2 proactiveResultViewController];
    [v28 setSearchField:v27];

    v29 = [(SPUISearchViewController *)v2 searchHeader];
    v30 = [v29 searchField];
    v31 = [(SPUIViewController *)v2 searchResultViewController];
    [v31 setSearchField:v30];

    v32 = MEMORY[0x277D65D60];
    v33 = [(SPUISearchViewController *)v2 searchHeader];
    v34 = [v33 searchField];
    [v32 annotateSearchField:v34];

    v35 = [(SPUIViewController *)v2 proactiveResultViewController];
    [(SPUIViewController *)v2 activateViewController:v35 animate:0];

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

    v45 = [MEMORY[0x277CCAB98] defaultCenter];
    [v45 addObserver:v2 selector:sel_checkClearTimer name:*MEMORY[0x277D76758] object:0];

    v46 = [MEMORY[0x277CCAB98] defaultCenter];
    [v46 addObserver:v2 selector:sel_spotlightDidBackground name:*MEMORY[0x277D76660] object:0];

    v47 = [MEMORY[0x277CCAB98] defaultCenter];
    [v47 addObserver:v2 selector:sel_dragInitiated name:*MEMORY[0x277D4C8A8] object:0];

    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    [v48 addObserver:v2 selector:sel_appIconDragged name:*MEMORY[0x277D4C8A0] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, lockStateChanged_0, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
    [MEMORY[0x277D4C898] prewarmApplicationLibrary];
  }

  v50 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)spotlightIsVisible
{
  v2 = [(SPUISearchViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4)
  {
    if ([v4 activationState])
    {
      v5 = [v4 activationState] == 1;
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
  v3 = [(SPUISearchViewController *)self factorsFetchingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SPUISearchViewController_refreshTrial__block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  dispatch_async(v3, block);
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
  v4 = [(SPUISearchViewController *)self searchHeader];
  v5 = [v4 legibilitySettings];
  [v3 setLegibilitySettings:v5];

  v6 = [(SPUISearchViewController *)self allHeaderViews];
  [v6 addObject:v3];

  v7 = [(SPUISearchViewController *)self searchHeader];
  v8 = [v7 searchField];
  v9 = [v8 text];

  v10 = [(SPUISearchViewController *)self searchHeader];
  v11 = [v10 searchField];
  v12 = [v11 tokens];
  v13 = [v12 count];

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

  v16 = [(SPUISearchViewController *)self searchHeader];
  v17 = [v16 searchField];
  v18 = [v17 tokens];
  v19 = [v18 firstObject];

  if (v9 | v19)
  {
    [objc_opt_class() _updateHeaderView:v3 fromText:v9 fromToken:v19];
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
  v3 = [(SPUISearchViewController *)self navigationController];
  v21 = [v3 topViewController];

  v4 = [(SPUIViewController *)self activeViewController];
  v5 = [(SPUIViewController *)self proactiveResultViewController];
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [(SPUIViewController *)self activeViewController];
    v8 = [(SPUIViewController *)self searchResultViewController];

    if (v7 != v8)
    {
      goto LABEL_6;
    }
  }

  v9 = [(SPUIViewController *)self activeViewController];
  v10 = [v9 responderForKeyboardInput];

  v21 = v10;
LABEL_6:
  v11 = [(SPUISearchViewController *)self navigationController];
  v12 = [v11 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(SPUISearchViewController *)self navigationController];
    v15 = [v14 topViewController];
    v16 = [v15 responderForKeyboardInput];

    v21 = v16;
  }

  v17 = v21;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v18 = [(SPUISearchViewController *)self navigationController];
    v19 = [v18 navigationMode];

    if (v19)
    {
      v17 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  v20 = [(SPUISearchViewController *)self searchHeader];
  [v20 setResponderForKeyboardInput:v17];
}

- (void)didUpdateActiveViewController
{
  v9.receiver = self;
  v9.super_class = SPUISearchViewController;
  [(SPUIViewController *)&v9 didUpdateActiveViewController];
  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
  v3 = MEMORY[0x277D75518];
  v4 = [(SPUISearchViewController *)self searchHeader];
  v5 = [v4 searchField];
  v6 = [v3 focusSystemForEnvironment:v5];
  v7 = [(SPUISearchViewController *)self searchHeader];
  v8 = [v7 searchField];
  [v6 requestFocusUpdateToEnvironment:v8];
}

- (void)updatePlatterMode
{
  v3 = [(SPUISearchViewController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 != self)
  {
    goto LABEL_20;
  }

  v5 = [(SPUISearchViewController *)self navigationController];
  v6 = [v5 navigationMode];

  v7 = [(SPUIViewController *)self activeViewController];
  v8 = [(SPUIViewController *)self proactiveResultViewController];
  v9 = v8;
  if (v7 != v8)
  {

    goto LABEL_9;
  }

  v10 = [(SPUISearchViewController *)self presentationMode];

  if (v10 != 6)
  {
LABEL_9:
    v11 = [(SPUIViewController *)self activeViewController];
    v12 = [(SPUIViewController *)self proactiveResultViewController];

    if (v11 == v12)
    {
      v6 = 5;
    }

    else
    {
      v13 = [(SPUIViewController *)self activeViewController];
      v14 = [(SPUIViewController *)self searchResultViewController];

      if (v13 == v14)
      {
        v6 = 1;
      }

      else
      {
        v15 = [(SPUIViewController *)self activeViewController];
        v16 = [(SPUISearchViewController *)self firstTimeExperienceViewController];

        if (v15 == v16)
        {
          v6 = 2;
        }
      }
    }

    goto LABEL_17;
  }

  if (+[SPUISearchFirstTimeViewController needsDisplay])
  {
    if (+[SPUISearchFirstTimeViewController useZKWFTE])
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_17:
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v17 = [(SPUISearchViewController *)self navigationController];
    v18 = [v17 navigationBar];

    [v18 showSeparator:v6 != 0 animated:0];
  }

  v19 = [(SPUISearchViewController *)self navigationController];
  [v19 setNavigationMode:v6];

LABEL_20:

  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
}

- (double)distanceToTopOfAppIcons
{
  v2 = [(SPUIViewController *)self proactiveResultViewController];
  [v2 distanceToTopOfAppIcons];
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
  v2 = [objc_opt_class() spotlightUserDefaults];
  v3 = [v2 BOOLForKey:@"RestorationCurrentState"];

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
  v3 = [(SPUISearchViewController *)self currentQuery];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SPUISearchViewController *)self searchHeader];
    v6 = [v5 searchEntity];
    v4 = v6 != 0;
  }

  return v4;
}

- (NSString)currentQuery
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 currentQuery];

  return v3;
}

- (id)currentQueryContext
{
  v2 = [(SPUISearchViewController *)self currentModel];
  v3 = [v2 queryTask];
  v4 = [v3 query];
  v5 = [v4 queryContext];

  return v5;
}

- (id)currentModel
{
  v3 = [(SPUISearchViewController *)self navigationController];
  v4 = [v3 topViewController];

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

    v4 = v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v6 = [v4 model];

  return v6;
}

- (BOOL)queryIdSameAsInvokeQueryIdentifier
{
  v3 = [(SPUISearchViewController *)self queryOnDismissal];
  v4 = [(SPUISearchViewController *)self currentQuery];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SPUISearchViewController *)self navigationController];
    v7 = [v6 viewControllers];
    v5 = [v7 count] > 1;
  }

  return v5;
}

- (void)didBeginEditing
{
  v3 = [(SPUISearchViewController *)self searchHeader];
  [v3 showCancelButton:1 animated:1];

  v4 = [(SPUIViewController *)self delegate];
  [v4 searchFieldDidFocus];
}

- (void)invalidateWindowExpansionTimer
{
  v3 = [(SPUISearchViewController *)self windowExpansionTimer];
  [v3 invalidate];

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
  v2 = [(SPUISearchViewController *)self currentModel];
  v3 = [v2 currentQueryId];

  return v3;
}

- (SPUISearchViewControllerSizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (void)sendPresentationFeedback
{
  v3 = [(SPUISearchViewController *)self presentationMode];
  v8 = [(SPUISearchViewController *)self searchHeader];
  v4 = [v8 queryId];
  v5 = [(SPUISearchViewController *)self currentQuery];
  v6 = MEMORY[0x277D4C898];
  v7 = [(SPUISearchViewController *)self view];
  +[SPUIFeedbackManager didAppearFromSource:withQueryId:queryString:deviceIsAuthenticated:](SPUIFeedbackManager, "didAppearFromSource:withQueryId:queryString:deviceIsAuthenticated:", v3, v4, v5, [v6 deviceIsAuthenticatedForView:v7]);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_spotlight_leftArrowPressed == a3 || sel_spotlight_rightArrowPressed == a3)
  {
    v8 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
    v9 = [v8 focusedItem];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v10 = [v9 _allowsHorizontalFocusMovement];
LABEL_13:
    v11 = v10 ^ 1;
    goto LABEL_18;
  }

  if (sel_escapeKeyCommand == a3)
  {
    v9 = [(SPUISearchViewController *)self searchTextField];
    v10 = [v9 hasMarkedText];
    goto LABEL_13;
  }

  if (sel_performWebSearch == a3)
  {
    v9 = [(SPUISearchViewController *)self searchTextField];
    v12 = [v9 searchText];
    if ([v12 length])
    {
      v13 = [(SPUISearchViewController *)self searchTextField];
      v14 = [v13 tokens];
      v11 = [v14 count] == 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_18;
  }

  v16.receiver = self;
  v16.super_class = SPUISearchViewController;
  v11 = [(SPUISearchViewController *)&v16 canPerformAction:a3 withSender:v6];
LABEL_19:

  return v11;
}

- (id)searchTextField
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 searchField];

  return v3;
}

- (void)escapeKeyCommand
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  [v2 focusSearchFieldAndSelectAll:1 withReason:3];
}

- (void)spotlight_leftArrowPressed
{
  v2 = [(SPUISearchViewController *)self searchTextField];
  [v2 promoteCompletionIfPossibleAndMoveForward:0];
}

- (void)spotlight_rightArrowPressed
{
  v2 = [(SPUISearchViewController *)self searchTextField];
  [v2 promoteCompletionIfPossibleAndMoveForward:1];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(SPUIViewController *)self searchResultViewController];
  [v3 removeObserver:v4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v6.receiver = self;
  v6.super_class = SPUISearchViewController;
  [(SPUISearchViewController *)&v6 dealloc];
}

- (BOOL)canPerformCommand:(id)a3
{
  v4 = a3;
  if ([(SPUISearchViewController *)self isQueryCommand:v4])
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

- (void)setAdditionalKeyboardHeight:(double)a3
{
  v5 = [(SPUIViewController *)self proactiveResultViewController];
  [v5 setAdditionalKeyboardHeight:a3];

  v6 = [(SPUIViewController *)self searchResultViewController];
  [v6 setAdditionalKeyboardHeight:a3];
}

- (void)setFooterViewsForProactive:(id)a3 forResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SPUIViewController *)self proactiveResultViewController];
  [v8 setFooterView:v7];

  v9 = [(SPUIViewController *)self searchResultViewController];
  [v9 setFooterView:v6];
}

- (void)performCommand:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SPUISearchViewController *)self isQueryCommand:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 entityType] == 3)
    {
      v5 = v4;
      v6 = objc_opt_new();
      v7 = objc_alloc(MEMORY[0x277D65898]);
      v8 = [v5 tokenString];
      v9 = [v7 initWithSearchString:v8];

      v10 = MEMORY[0x277D65D88];
      v11 = [(SPUISearchViewController *)self view];
      [v9 setDeviceAuthenticationState:{objc_msgSend(v10, "deviceAuthenticationStateForView:", v11)}];

      [v9 setWhyQuery:8];
      v12 = [(SPUISearchViewController *)self searchHeader];
      [v12 addInputMethodInformationToQueryContext:v9];

      v13 = [MEMORY[0x277D65890] searchEntityWithCommand:v5 fromSuggestion:1];

      v36[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      [v9 setSearchEntities:v14];

      [v9 setAllowInternet:1];
      v15 = [[SPUIResultsViewController alloc] initWithSearchModel:v6 searchEntity:v13];
      v16 = [(SPUISearchViewController *)self searchHeader];
      v17 = [v16 searchField];
      [(SearchUIResultsViewController *)v15 setSearchField:v17];

      [(SearchUIResultsViewController *)v15 setFeedbackListener:self];
      [(SearchUIResultsViewController *)v15 setCommandDelegate:self];
      v18 = [v9 displayedText];
      [(SearchUIResultsViewController *)v15 setQueryString:v18];

      v19 = [(SPUISearchViewController *)self navigationController];
      [(SPUIResultsViewController *)v15 setBackgroundColorDelegate:v19];

      [(SPUIResultsViewController *)v15 setUseLoadingView:1];
      v20 = [v9 queryIdent];
      v21 = [(SPUISearchViewController *)self searchHeader];
      [v21 setPreviousQueryID:v20];

      [v6 updateWithQueryContext:v9];
      [(SPUISearchViewController *)self showViewController:v15 sender:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v4 searchString];
        v26 = [v25 length];

        if (!v26)
        {
          [(SPUISearchViewController *)self clearSearchResultsAndFetchZKW:1];
          goto LABEL_11;
        }
      }

      v27 = [(SPUISearchViewController *)self searchHeader];
      [v27 updateWithCommand:v4];

      v28 = [(SPUISearchViewController *)self searchHeader];
      v29 = [v28 searchEntity];
      v30 = [(SPUIViewController *)self searchResultViewController];
      [v30 setSearchEntity:v29];

      v31 = [(SPUISearchViewController *)self navigationController];
      v32 = [v31 popToRootViewControllerAnimated:1];

      v33 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:v33 animate:1];

      v6 = [(SPUISearchViewController *)self navigationController];
      v34 = [(SPUIViewController *)self searchResultViewController];
      [v6 updateBackgroundColorWithViewControllerToBeShown:v34];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = objc_opt_new();
      [v22 setSource:0];
      v23 = [v4 utteranceText];
      [v22 setUtteranceText:v23];

      v24 = objc_opt_new();
      [v24 activateWithContext:v22];
    }
  }

LABEL_11:

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isQueryCommand:(id)a3
{
  v3 = a3;
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
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 lastSearchText];

  return v3;
}

- (UISearchToken)lastSearchToken
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 lastSearchToken];

  return v3;
}

- (void)updateHeaderViewsWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SPUISearchViewController *)self allHeaderViews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SPUISearchViewController *)self searchHeader];
  v8 = [(SPUIViewController *)self searchResultViewController];
  [v9 updateFocusResult:v7 cardSection:v6 focusIsOnFirstResult:{objc_msgSend(v8, "isHighlighting")}];
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

- (void)resultsDidBecomeVisible:(id)a3
{
  v4 = a3;
  v5 = [(SPUIViewController *)self searchResultViewController];
  v6 = [v5 goTakeoverResult];
  [v4 setGoTakeoverResult:v6];

  v7 = +[SPUIFeedbackManager feedbackListener];
  [v7 resultsDidBecomeVisible:v4];
}

- (void)didEngageResult:(id)a3
{
  v9 = a3;
  v4 = [v9 result];
  if ([v4 isLocalApplicationResult])
  {
    v5 = [(SPUISearchViewController *)self windowExpansionTimer];
    -[SPUISearchViewController setClearQueryOnDismissal:](self, "setClearQueryOnDismissal:", [v5 isValid]);
  }

  else
  {
    [(SPUISearchViewController *)self setClearQueryOnDismissal:0];
  }

  v6 = [(SPUISearchViewController *)self searchHeader];
  v7 = [v6 isReturnKeyPressedInGoMode];

  if (v7)
  {
    [v9 setTriggerEvent:1];
  }

  v8 = +[SPUIFeedbackManager feedbackListener];
  [v8 didEngageResult:v9];
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  v5 = [(SPUISearchViewController *)self searchHeader];
  [v5 setLegibilitySettings:v4];
}

- (void)performTestSearchWithQuery:(id)a3 event:(unint64_t)a4 queryKind:(unint64_t)a5
{
  v8 = a3;
  v9 = [(SPUISearchViewController *)self searchHeader];
  [v9 performTestSearchWithQuery:v8 event:a4 queryKind:a5];
}

- (void)searchViewWillPresentFromSource:(unint64_t)a3
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

  v10 = [(SPUISearchViewController *)self appIntentsDidLaunchCompletion];

  if (v10)
  {
    v11 = [(SPUISearchViewController *)self appIntentsDidLaunchCompletion];
    v11[2]();

    [(SPUISearchViewController *)self setAppIntentsDidLaunchCompletion:0];
  }

  v12 = [(SPUISearchViewController *)self searchHeader];
  v13 = [v12 searchField];
  [v13 setSelectionGrabbersHiddenSafe:a3 != 5];

  LOBYTE(v12) = [(SPUISearchViewController *)self isInStateRestoration];
  [(SPUISearchViewController *)self setIsInStateRestoration:1];
  if ((v12 & 1) == 0)
  {
    v14 = MEMORY[0x277D4C898];
    v13 = [(SPUISearchViewController *)self view];
    LODWORD(v14) = [v14 deviceIsAuthenticatedForView:v13];

    if (v14)
    {
      v15 = [(SPUISearchViewController *)self restorationData];
      v114 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v114];
      v16 = v114;
      if (v16 && [v15 length])
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
        [v13 timeAtDismissal];
      }

      [(SPUISearchViewController *)self setTimeAtDismissal:?];
      v20 = [(SPUISearchViewController *)self checkClearTimer];
      if (v16 || v20)
      {
LABEL_51:

        goto LABEL_52;
      }

      v102 = v15;
      v21 = [v13 searchViewContext];
      v22 = [v21 searchString];
      v103 = a3;
      if ([v22 length])
      {
      }

      else
      {
        v23 = [v13 searchViewContext];
        v24 = [v23 searchEntity];

        if (!v24)
        {
          v43 = [v13 viewControllerContexts];
          v44 = [v43 count];

          if (!v44)
          {
LABEL_34:
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v48 = [v13 viewControllerContexts];
            v49 = [v48 countByEnumeratingWithState:&v110 objects:v116 count:16];
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
                    objc_enumerationMutation(v48);
                  }

                  v53 = *(*(&v110 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v54 = v53;
                    v55 = [SPUIResultsViewController alloc];
                    v56 = [v54 searchEntity];
                    v57 = [(SPUIResultsViewController *)v55 initWithSearchModel:0 searchEntity:v56];

                    [(SPUIResultsViewController *)v57 setRestorationContext:v54];
                    v58 = [(SPUISearchViewController *)self searchHeader];
                    v59 = [v58 searchField];
                    [(SearchUIResultsViewController *)v57 setSearchField:v59];

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
                      v63 = [(SPUISearchViewController *)self searchHeader];
                      v64 = [v63 searchField];
                      [v62 setTextField:v64];
                    }

                    v65 = [(SPUIViewController *)self proactiveResultViewController];
                    [v62 setShouldUseInsetRoundedSections:{objc_msgSend(v65, "shouldUseInsetRoundedSections")}];

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

                v50 = [v48 countByEnumeratingWithState:&v110 objects:v116 count:16];
              }

              while (v50);
            }

            v67 = [(SPUISearchViewController *)self navigationController];
            v68 = [v67 view];
            [v68 layoutIfNeeded];

            v69 = [(SPUISearchViewController *)self searchHeader];
            v70 = [v69 searchField];
            [v70 detokenizeIfNeededAndSearch:0];

            v71 = [v13 wantsGo];
            v5 = MEMORY[0x277D65D40];
            v15 = v102;
            a3 = v103;
            v16 = 0;
            if (v71)
            {
              v72 = [(SPUISearchViewController *)self searchHeader];
              v73 = [v72 searchField];
              [v73 setReturnKeyType:1];

              +[SPUITextField updateBlueButton];
            }

            goto LABEL_51;
          }

          v41 = +[SPUISearchModel sharedFullZWKInstance];
          [v41 updateWithQueryContext:0];
          v42 = [v41 queryTask];
          v45 = [v42 query];
          v46 = [v45 queryIdent];
          v47 = [(SPUISearchViewController *)self searchHeader];
          [v47 setQueryId:v46];

LABEL_33:
          goto LABEL_34;
        }
      }

      v25 = [(SPUIViewController *)self activeViewController];
      v26 = [(SPUIViewController *)self searchResultViewController];

      if (v25 != v26)
      {
        v27 = [(SPUIViewController *)self searchResultViewController];
        [(SPUIViewController *)self activateViewController:v27 animate:0];

        v28 = [v13 searchViewContext];
        v29 = [v28 searchString];
        v30 = [(SPUIViewController *)self searchResultViewController];
        [v30 setQueryString:v29];

        v31 = [(SPUISearchViewController *)self searchHeader];
        v32 = [v13 searchViewContext];
        v33 = [v32 searchString];
        v34 = [v13 searchViewContext];
        v35 = [v34 searchEntity];
        [v31 restoreSearchText:v33 searchEntity:v35];

        v36 = [v13 searchViewContext];
        v37 = [v36 searchString];
        [(SPUISearchViewController *)self setQueryOnDismissal:v37];
      }

      v38 = [(SPUIViewController *)self searchResultViewController];
      v39 = [v38 sections];
      v40 = [v39 count];

      if (v40)
      {
        goto LABEL_34;
      }

      v41 = [(SPUIViewController *)self searchResultViewController];
      v42 = [v13 searchViewContext];
      [v41 setRestorationContext:v42];
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
  v75 = [(SPUISearchViewController *)self searchHeader];
  if (a3 <= 7 && ((1 << a3) & 0xE2) != 0)
  {
    v76 = 1;
  }

  else
  {
    v13 = [(SPUISearchViewController *)self searchHeader];
    v76 = [v13 isFirstResponder];
  }

  [v75 showCancelButton:v76 animated:0];
  if (a3 > 7 || ((1 << a3) & 0xE2) == 0)
  {
  }

  [(SPUISearchViewController *)self setPresentationMode:a3];
  v77 = [(SPUISearchViewController *)self searchHeader];
  [v77 setHidden:0];

  [(SPUISearchViewController *)self updatePlatterMode];
  v78 = [(SPUISearchViewController *)self navigationController];
  [v78 updateFooterViewsIfNecessary];

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

    v81 = [(SPUIViewController *)self proactiveResultViewController];
    v82 = [v81 sections];
    v83 = [v82 count];

    if ([MEMORY[0x277D65D28] enableFloatingWindow] && (-[SPUISearchViewController navigationController](self, "navigationController"), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "navigationMode"), v84, !v85) || v83)
    {
      v86 = [(SPUISearchViewController *)self searchHeader];
      [v86 updateFocusResult:0 cardSection:0 focusIsOnFirstResult:1];
    }

    else
    {
      v87 = [(SPUIViewController *)self proactiveResultViewController];
      v88 = [v87 refreshResultsWithContext:0 allowPartialUpdates:1];

      v86 = [(SPUISearchViewController *)self searchHeader];
      [v86 setQueryId:v88];
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

    v91 = [(SPUIViewController *)self proactiveResultViewController];
    [(SPUIViewController *)self activateViewController:v91 animate:0];

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
    v94 = [(SPUISearchViewController *)self navigationController];
    v95 = [v94 topViewController];

    if (v95 == self)
    {
      v96 = [(SPUIViewController *)self activeViewController];
      v98 = [(SPUIViewController *)self searchResultViewController];
      if (v96 == v98)
      {
        v97 = [(SPUIViewController *)self searchResultViewController];
      }

      else
      {
        v97 = 0;
      }
    }

    else
    {
      v96 = [(SPUISearchViewController *)self navigationController];
      v97 = [v96 topViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      v99 = [v97 view];
      [v99 setAlpha:0.0];

      [v97 scrollAndSelectLastSelectedIndexPath];
      v100 = MEMORY[0x277D4C898];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __60__SPUISearchViewController_searchViewWillPresentFromSource___block_invoke_355;
      v104[3] = &unk_279D06C78;
      v105 = v97;
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

- (void)searchViewDidUpdatePresentationProgress:(double)a3
{
  if (a3 >= 1.0)
  {
    v5 = [(SPUISearchViewController *)self searchHeader];
    [v5 focusSearchFieldAndSelectAll:-[SPUISearchViewController queryIdSameAsInvokeQueryIdentifier](self withReason:{"queryIdSameAsInvokeQueryIdentifier"), 0}];
  }

  else
  {
    if (a3 >= 0.5)
    {
      return;
    }

    v5 = [(SPUISearchViewController *)self searchHeader];
    if ([v5 isFirstResponder])
    {
      v4 = [MEMORY[0x277D65D28] enableFloatingWindow];

      if (!v4)
      {
        return;
      }

      v5 = [(SPUISearchViewController *)self searchHeader];
      [v5 unfocusSearchFieldWithReason:0];
    }
  }
}

- (void)purgeMemory
{
  v3 = [(SPUIViewController *)self searchResultViewController];
  [v3 purgeMemory];

  v4 = [(SPUIViewController *)self searchResultViewController];
  v5 = MEMORY[0x277CBEBF8];
  [v4 updateWithResultSections:MEMORY[0x277CBEBF8]];

  v6 = [(SPUIViewController *)self proactiveResultViewController];
  [v6 purgeMemory];

  v7 = [(SPUIViewController *)self proactiveResultViewController];
  [v7 updateWithResultSections:v5];

  v8 = +[SPUISearchModel sharedGeneralInstance];
  [v8 purgeMemory];

  v9 = +[SPUISearchModel sharedFullZWKInstance];
  [v9 purgeMemory];

  LocalCache = CGFontCacheGetLocalCache();

  MEMORY[0x282110E20](LocalCache);
}

- (void)searchViewDidPresentFromSource:(unint64_t)a3
{
  v4 = [(SPUIViewController *)self searchResultViewController];
  [v4 didPresentToResumeSearch:1];

  v5 = [(SPUIViewController *)self proactiveResultViewController];
  [v5 didPresentToResumeSearch:0];

  v6 = [(SPUISearchViewController *)self searchHeader];
  v7 = [v6 searchField];
  [v7 setSelectionGrabbersHiddenSafe:0];

  if ([(SPUISearchViewController *)self presentationMode]!= 5)
  {
    v8 = [(SPUISearchViewController *)self searchHeader];
    [v8 focusSearchFieldAndSelectAll:-[SPUISearchViewController queryIdSameAsInvokeQueryIdentifier](self withReason:{"queryIdSameAsInvokeQueryIdentifier"), 1}];
  }

  v9 = [(SPUISearchViewController *)self view];
  [v9 setAlpha:1.0];

  [(SPUISearchViewController *)self showVerticalScrollIndicators:1];
  v10 = [(SPUISearchViewController *)self navigationController];
  v11 = [v10 presentedViewController];

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

    v15 = v11;
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

- (void)searchViewWillDismissWithReason:(unint64_t)a3
{
  v4 = [(SPUIViewController *)self searchResultViewController];
  [v4 willDismiss];

  v5 = [(SPUIViewController *)self proactiveResultViewController];
  [v5 willDismiss];

  v6 = [(SPUISearchViewController *)self searchHeader];
  v7 = [v6 searchField];
  [v7 setSelectionGrabbersHiddenSafe:1];

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
    v11 = [(SPUISearchViewController *)self searchHeader];
    [v11 showCancelButton:0 animated:1];
  }

  v12 = [(SPUIViewController *)self activeViewController];
  v13 = [v12 presentedViewController];

  if (v13)
  {
    v14 = [(SPUIViewController *)self activeViewController];
    [v14 dismissViewControllerAnimated:1 completion:0];

    v15 = [(SPUISearchViewController *)self searchHeader];
    +[SPUIFeedbackManager cardViewDidDisappearWithEvent:withQueryId:](SPUIFeedbackManager, "cardViewDidDisappearWithEvent:withQueryId:", 5, [v15 queryId]);
  }

  [(SPUISearchViewController *)self showVerticalScrollIndicators:0];
  if (([MEMORY[0x277D65D28] pageDotInvokeEnabled] & 1) == 0)
  {
    v16 = [(SPUISearchViewController *)self searchHeader];
    [v16 unfocusSearchFieldWithReason:1];
  }

  [(SPUISearchViewController *)self setTimeAtDismissal:CFAbsoluteTimeGetCurrent()];
}

- (BOOL)currentQueryIdMatchesResultInGeneralModel
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 queryId];
  v4 = +[SPUISearchModelGeneral sharedGeneralInstance];
  v5 = [v4 sections];
  v6 = [v5 firstObject];
  v7 = [v6 results];
  v8 = [v7 firstObject];
  LOBYTE(v3) = v3 == [v8 queryId];

  return v3;
}

- (void)highlightResultAfterUnmarkingText
{
  v2 = [(SPUIViewController *)self searchResultViewController];
  [v2 highlightResultAfterUnmarkingText];
}

- (void)returnKeyPressed
{
  v3 = [(SPUISearchViewController *)self currentQuery];
  v4 = [v3 length];

  if (v4)
  {
    v5 = +[SPUISearchModelGeneral sharedGeneralInstance];
    v6 = [v5 queryInProgress];

    if (v6)
    {
      v7 = objc_initWeak(&location, self);
      v8 = [(SPUISearchViewController *)self currentQueryIdMatchesResultInGeneralModel];

      v9 = objc_loadWeakRetained(&location);
      v10 = v9;
      if (v8)
      {
        [v9 performReturnKeyPressAndExpandWidowIfNeeded];
      }

      else
      {
        v11 = [v9 searchResultViewController];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __44__SPUISearchViewController_returnKeyPressed__block_invoke;
        v13[3] = &unk_279D06FA8;
        objc_copyWeak(&v14, &location);
        [v11 setViewDidUpdateHandler:v13];

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
    v12 = [(SPUIViewController *)self proactiveResultViewController];
    [v12 performReturnKeyPressAction];
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
  v3 = [(SPUISearchViewController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)performWebSearch
{
  v7 = objc_opt_new();
  v3 = [(SPUISearchViewController *)self searchHeader];
  v4 = [v3 searchField];
  v5 = [v4 searchText];
  [v7 setSearchString:v5];

  v6 = [MEMORY[0x277D4C850] handlerForCommand:v7 environment:0];
  [v6 executeWithTriggerEvent:1];
}

- (void)performReturnKeyPressAndExpandWidowIfNeeded
{
  v3 = [(SPUISearchViewController *)self windowExpansionTimer];
  if (v3)
  {
    v4 = v3;
    v5 = [(SPUIViewController *)self activeViewController];
    v6 = [(SPUIViewController *)self searchResultViewController];

    if (v5 != v6)
    {
      [(SPUISearchViewController *)self invalidateWindowExpansionTimer];
      v7 = [(SPUISearchViewController *)self searchHeader];
      v8 = [v7 completionResultIsPotentiallyPunchout];

      if (v8)
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

  v9 = [(SPUISearchViewController *)self searchHeader];
  v10 = [v9 searchField];
  v11 = [v10 returnKeyType];

  if (v11 == 6)
  {
    v12 = [(SPUISearchViewController *)self searchHeader];
    [v12 commitSearch];
  }

  else
  {
    v12 = [(SPUIViewController *)self searchResultViewController];
    [v12 performReturnKeyPressAction];
  }
}

- (void)searchViewDidDismissWithReason:(unint64_t)a3
{
  v5 = [(SPUISearchViewController *)self searchHeader];
  +[SPUIFeedbackManager didDisappearWithReason:withQueryId:](SPUIFeedbackManager, "didDisappearWithReason:withQueryId:", a3, [v5 queryId]);

  if ([(SPUISearchViewController *)self clearQueryOnDismissal])
  {
    v6 = [(SPUISearchViewController *)self searchHeader];
    [v6 clearSearchFieldWhyQuery:0 allowZKW:0];
  }

  v7 = +[SPUISearchModel sharedGeneralInstance];
  [v7 deactivate];

  [(SPUISearchViewController *)self refreshTrial];
  v8 = [(SPUISearchViewController *)self navigationController];
  [v8 setNavigationMode:0];

  [(SPUISearchViewController *)self updateResponderChainIfNeeded];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    v9 = [MEMORY[0x277D65D28] bottomSearchFieldEnabled];
    v10 = [(SPUISearchViewController *)self searchHeader];
    [v10 setHidden:v9 ^ 1u];
  }

  v11 = [(SPUIViewController *)self proactiveResultViewController];
  [(SPUIViewController *)self activateViewController:v11 animate:0];

  v12 = [(SPUIViewController *)self proactiveResultViewController];
  [v12 updateWithResultSections:MEMORY[0x277CBEBF8]];

  v13 = [(SPUISearchViewController *)self currentQuery];
  [(SPUISearchViewController *)self setQueryOnDismissal:v13];

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
  v3 = [(SPUISearchViewController *)self feedbackBackgroundTaskIdentifier];
  if (v3 == *MEMORY[0x277D767B0])
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__SPUISearchViewController_spotlightDidBackground__block_invoke;
    v6[3] = &unk_279D06C78;
    v6[4] = self;
    -[SPUISearchViewController setFeedbackBackgroundTaskIdentifier:](self, "setFeedbackBackgroundTaskIdentifier:", [v4 beginBackgroundTaskWithName:@"Send Feedback" expirationHandler:v6]);

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
  v3 = [(SPUISearchViewController *)self feedbackBackgroundTaskIdentifier];
  if (v3 != *MEMORY[0x277D767B0])
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
  v2 = [(SPUIViewController *)self delegate];
  [v2 dismissSearchViewWithReason:3];
}

- (BOOL)sectionShouldBeExpanded:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:*MEMORY[0x277D65CE0]])
  {
    v5 = [v3 results];
    v6 = [v5 firstObject];
    v7 = [v6 renderHorizontallyWithOtherResultsInCategory];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v4 = [objc_opt_class() spotlightUserDefaults];
    v8 = [v4 BOOLForKey:@"SpotlightZKWExpanded"];
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

- (void)resultsViewController:(id)a3 didChangeContentSize:(CGSize)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [(SPUIViewController *)self activeViewController];

  if (v8 == v7)
  {
    v10 = [(SPUISearchViewController *)self sizingDelegate];
    if (v5)
    {
      [v10 didInvalidateSizeAnimated:1];
    }

    else
    {
      v9 = [(SPUISearchViewController *)self navigationController];
      [v10 didInvalidateSizeAnimated:{objc_msgSend(v9, "navigationMode") == 5}];
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

      v12 = [(SPUISearchViewController *)self firstTimeExperienceViewController];

      v13 = *(v10 + 40);
      if (v12)
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
    v5 = [(SPUIViewController *)self activeViewController];
    v6 = [(SPUISearchViewController *)self firstTimeExperienceViewController];

    if (v5 == v6)
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

      v9 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:v9 animate:0];
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
  v3 = [(SPUIViewController *)self proactiveResultViewController];
  [(SPUIViewController *)self activateViewController:v3 animate:1];

  v4 = [(SPUISearchViewController *)self searchHeader];
  [v4 focusSearchFieldAndSelectAll:1 withReason:4];
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[SPUISearchFirstTimeViewController dismissForever];
  v8 = [[SPUITestingHelper alloc] initWithSearchViewController:self];
  [(SPUISearchViewController *)self setTestingHelper:v8];

  v9 = [(SPUISearchViewController *)self testingHelper];
  v10 = [v9 canPerformTest:v6];

  if (v10)
  {
    v11 = [(SPUISearchViewController *)self testingHelper];
    [v11 performTest:v6 options:v7 completion:0];
  }

  return v10;
}

+ (void)_updateHeaderView:(id)a3 fromText:(id)a4 fromToken:(id)a5
{
  if (a5)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a5 representedObject];
    v9 = [SPUISearchHeader tokenFromSearchEntity:v8];

    v10 = [v7 searchField];
    [v10 updateTextRange:v6];

    v11 = [v7 searchField];
    [v11 updateToken:v9];
  }

  else
  {
    v12 = a4;
    v13 = a3;
    v14 = [v13 searchField];
    [v14 updateTextRange:v12];

    v9 = [v13 searchField];
    [v9 updateToken:0];
  }

  [a3 clearLastSearchedText];
}

- (void)queryContextDidChange:(id)a3 fromSearchHeader:(id)a4 allowZKW:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(SPUISearchViewController *)self invalidateWindowExpansionTimer];
  v10 = [(SPUISearchViewController *)self navigationController];
  v11 = [v10 viewControllers];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = [(SPUIViewController *)self searchResultViewController];
    [v13 setSections:MEMORY[0x277CBEBF8]];

    v14 = [(SPUISearchViewController *)self navigationController];
    v15 = [v14 popToRootViewControllerAnimated:0];
  }

  v16 = [v8 searchEntities];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = [v8 searchEntities];
    v19 = [v18 firstObject];
    v20 = [(SPUIViewController *)self searchResultViewController];
    [v20 setSearchEntity:v19];

    v21 = [(SPUISearchViewController *)self navigationController];
    v22 = [v8 searchString];
    if (v22)
    {
      [(SPUIViewController *)self searchResultViewController];
    }

    else
    {
      [(SPUIViewController *)self proactiveResultViewController];
    }
    v23 = ;
    [v21 updateBackgroundColorWithViewControllerToBeShown:v23];
  }

  v68 = [v8 searchString];
  v24 = [v8 searchEntities];
  v25 = [v24 count];

  v26 = [v9 searchField];
  v27 = [v26 text];

  v28 = [v9 searchField];
  v29 = [v28 tokens];
  v30 = [v29 count];

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

  v33 = [(SPUISearchViewController *)self appIntentsQueryHelper];
  [v33 updateSearchString:v27 completionHandler:&__block_literal_global_401];

  v34 = [v9 searchField];
  v35 = [v34 tokens];
  v36 = [v35 firstObject];

  v37 = +[SPUISearchModel sharedGeneralInstance];
  -[SPUISearchViewController setLastQueryWasAuthenticated:](self, "setLastQueryWasAuthenticated:", [v8 deviceAuthenticationState] == 0);
  v38 = v68;
  if ([v68 length])
  {
    v39 = 1;
  }

  else
  {
    v39 = v5;
  }

  v67 = v39;
  if (v39)
  {
    if ([v68 length] | v25)
    {
      [v8 setAllowInternet:{-[SPUISearchViewController allowInternet](self, "allowInternet")}];
      [v37 updateWithQueryContext:v8];
      goto LABEL_22;
    }

    v42 = [(SPUIViewController *)self proactiveResultViewController];
    [(SPUIViewController *)self activateViewController:v42 animate:0];

    v41 = [(SPUIViewController *)self proactiveResultViewController];
    v43 = [v41 refreshResultsWithContext:v8 allowPartialUpdates:0];
    [(SPUISearchViewController *)self searchHeader];
    v45 = v44 = v37;
    [v45 setQueryId:v43];

    v37 = v44;
  }

  else
  {
    v40 = +[SPUISearchModel sharedGeneralInstance];
    [v40 clear];

    v41 = +[SPUISearchModel sharedFullZWKInstance];
    [v41 clear];
  }

LABEL_22:
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __76__SPUISearchViewController_queryContextDidChange_fromSearchHeader_allowZKW___block_invoke_2;
  v69[3] = &unk_279D071A0;
  v46 = v9;
  v70 = v46;
  v71 = self;
  v47 = v27;
  v72 = v47;
  v48 = v36;
  v73 = v48;
  [(SPUISearchViewController *)self updateHeaderViewsWithBlock:v69];
  v49 = [v8 displayedText];
  v50 = [(SPUIViewController *)self searchResultViewController];
  [v50 setQueryString:v49];

  v51 = [v8 queryKind];
  if (+[SPUISearchViewController shouldShowAsTypedSuggestion])
  {
    v63 = (v51 - 1) < 2;
    [(SPUIViewController *)self searchResultViewController];
    v52 = v66 = self;
    v53 = [v8 searchString];
    v64 = [v8 searchEntities];
    v54 = [v64 firstObject];
    [(SPUISearchViewController *)v66 searchHeader];
    v55 = v65 = v46;
    v56 = v47;
    v57 = [v55 queryId];
    [v8 keyboardLanguage];
    v58 = v48;
    v60 = v59 = v37;
    v61 = v57;
    v47 = v56;
    [v52 searchUpdatedWithString:v53 tokenEntity:v54 queryId:v61 wantsCompletions:v63 keyboardLanguage:v60];

    v37 = v59;
    v48 = v58;

    v46 = v65;
    v38 = v68;

    self = v66;
  }

  if (v67)
  {
    v62 = [(SPUISearchViewController *)self navigationController];
    [v62 updateFooterViewsIfNecessary];

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

- (void)willUpdateFromResultsWithHighlightedResult:(id)a3 viewController:(id)a4
{
  v31 = a4;
  v6 = a3;
  if ([(SPUISearchViewController *)self hasContentInSearchField]&& ([(SPUIViewController *)self searchResultViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v31))
  {
    v13 = [(SPUIViewController *)self searchResultViewController];
    v14 = [v13 view];
    [v14 frame];
    v15 = CGRectEqualToRect(v33, *MEMORY[0x277CBF3A0]);

    if (v15)
    {
      v16 = [(SPUISearchViewController *)self view];
      [v16 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [(SPUISearchViewController *)self view];
      v24 = [v23 tlks_screen];
      [v24 bounds];
      Height = CGRectGetHeight(v34);

      v26 = [(SPUIViewController *)self searchResultViewController];
      v27 = [v26 view];
      [v27 setFrame:{v18, v20, v22, Height}];

      v28 = [(SPUIViewController *)self searchResultViewController];
      v29 = [v28 view];
      [v29 layoutBelowIfNeeded];
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
      v30 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:v30 animate:0];
    }
  }

  else
  {
    v8 = [(SPUISearchViewController *)self windowExpansionTimer];
    [v8 invalidate];

    [(SPUISearchViewController *)self setWindowExpansionTimer:0];
  }

  v9 = [MEMORY[0x277D4C898] cardForRenderingResult:v6];
  v10 = [(SPUISearchViewController *)self searchHeader];
  v11 = [v9 cardSections];
  v12 = [v11 firstObject];
  [v10 updateFocusResult:v6 cardSection:v12 focusIsOnFirstResult:1];
}

- (BOOL)optOutOfGoButton
{
  v2 = [(SPUISearchViewController *)self searchHeader];
  v3 = [v2 optOutOfGoButton];

  return v3;
}

- (double)contentHeight
{
  v3 = [(SPUIViewController *)self activeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(SPUIViewController *)self activeViewController];
  v6 = v5;
  if (isKindOfClass)
  {
    [v5 contentSize];
    v8 = v7;
LABEL_5:

    return v8;
  }

  v9 = [(SPUISearchViewController *)self firstTimeExperienceViewController];

  v8 = 0.0;
  if (v6 == v9)
  {
    v6 = [(SPUISearchViewController *)self firstTimeExperienceViewController];
    [v6 idealContentHeight];
    v8 = v10;
    goto LABEL_5;
  }

  return v8;
}

- (void)scheduleWindowExpansionWithInterval:(double)a3
{
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_expandWindowIfNeeded selector:0 userInfo:0 repeats:a3];
  [(SPUISearchViewController *)self setWindowExpansionTimer:v4];

  v5 = [(SPUISearchViewController *)self windowExpansionTimer];
  [v5 setTolerance:0.1];
}

- (void)expandWindowIfNeeded
{
  if ([(SPUISearchViewController *)self hasContentInSearchField])
  {
    v3 = [(SPUIViewController *)self activeViewController];
    v4 = [(SPUIViewController *)self searchResultViewController];

    if (v3 != v4)
    {
      v5 = [(SPUIViewController *)self searchResultViewController];
      [v5 invalidateContentHeight];

      v6 = [(SPUIViewController *)self searchResultViewController];
      [(SPUIViewController *)self activateViewController:v6 animate:0];

      [(SPUISearchViewController *)self setExpandPlatterOnAppear:0];
    }
  }
}

- (id)firstResultIgnoringSuggestionsIfNeeded
{
  v2 = +[SPUISearchModelGeneral sharedGeneralInstance];
  v3 = [v2 sections];
  v4 = [v3 firstObject];
  v5 = [v4 results];
  v6 = [v5 firstObject];

  return v6;
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
  v2 = [(SPUISearchViewController *)self searchHeader];
  [v2 beginDictation];
}

- (void)cancelButtonPressed
{
  v2 = [(SPUIViewController *)self delegate];
  [v2 dismissSearchViewWithReason:1];
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
  v4 = [(SPUIViewController *)self activeViewController];
  v5 = [(SPUIViewController *)self searchResultViewController];
  if (v4 == v5)
  {
    v8 = [(SPUIViewController *)self searchResultViewController];
    v6 = [v8 sections];

    if (!v6)
    {
      v26 = 0;
      v7 = 0;
      goto LABEL_6;
    }

    v9 = [(SPUIViewController *)self searchResultViewController];
    v7 = [v9 restorationContext];

    v10 = [(SPUISearchViewController *)self lastSearchString];
    [v7 setSearchString:v10];

    v4 = [(SPUISearchViewController *)self searchHeader];
    v5 = [v4 searchEntity];
    [v7 setSearchEntity:v5];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v26 = v6;

LABEL_6:
  v27 = v3;
  [v3 setSearchViewContext:v7];
  v11 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(SPUISearchViewController *)self navigationController];
  v13 = [v12 viewControllers];

  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v28 + 1) + 8 * i);
      if (v18 != self)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [(SPUISearchViewController *)v18 restorationContext];
          v20 = [v19 sections];
          v21 = [v20 count];

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

          v19 = [(SPUISearchViewController *)v18 restorationContext];
        }

        [v11 addObject:v19];
LABEL_18:

        continue;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v15);
LABEL_21:

  [v27 setViewControllerContexts:v11];
  [v27 setSearchViewContext:v7];
  [(SPUISearchViewController *)self timeAtDismissal];
  [v27 setTimeAtDismissal:?];
  v22 = [(SPUISearchViewController *)self searchHeader];
  v23 = [v22 searchField];
  [v27 setWantsGo:{objc_msgSend(v23, "returnKeyType") == 1}];

  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)presentSpotlightWithCompletionHandler:(id)a3
{
  v5 = a3;
  if ([(SPUISearchViewController *)self spotlightIsVisible])
  {
    v5[2]();
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D66C30]);
    [v4 requestSpotlightActivation];
    [(SPUISearchViewController *)self setAppIntentsDidLaunchCompletion:v5];
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