@interface UISearchController
+ (BOOL)_forceSearchBarHostedInNavigationBar;
+ (void)_resignSearchBarAsFirstResponder:(id)responder;
- (BOOL)_allowsSuggestionsMenu;
- (BOOL)_dci_automaticScopeBarShowsOnPresentation;
- (BOOL)_hasVisibleSuggestionsMenu;
- (BOOL)_hidesNavigationBarDuringPresentationRespectingInlineSearch;
- (BOOL)_isSearchTextFieldBorrowed;
- (BOOL)_prefersSearchTextFieldAnchoredToKeyboard;
- (BOOL)_resultsControllerWillLayoutVisibleUnderContainerView;
- (BOOL)_searchBarHidesOtherNavigationBarContentWithTraitCollection:(id)collection;
- (BOOL)_searchBarShouldFinalizeBecomingFirstResponder;
- (BOOL)_shouldDisplayDefaultSuggestion;
- (BOOL)_showSearchSuggestionPreview;
- (BOOL)_tvShouldScrollWithObservedScrollViewIfPossible;
- (BOOL)hidesNavigationBarDuringPresentation;
- (BOOL)isActive;
- (BOOL)isBeingDismissed;
- (BOOL)showsSearchResultsController;
- (CGSize)preferredContentSize;
- (NSArray)_searchSuggestionGroups;
- (NSArray)searchSuggestions;
- (NSString)_suggestionRowTitle;
- (NSString)description;
- (UIBarButtonItem)_inlineToolbarSearchBarItem;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UINavigationItem)_navigationItemCurrentlyDisplayingSearchBar;
- (UINavigationItem)_navigationItemCurrentlyDisplayingSearchController;
- (UINavigationItemSearchBarPlacement)searchBarPlacement;
- (UISearchController)initWithCoder:(NSCoder *)coder;
- (UISearchController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UISearchController)initWithSearchResultsController:(UIViewController *)searchResultsController;
- (UISearchResultsUpdatingPrivate)searchResultsUpdaterPrivate;
- (UISearchSuggestion)selectedSuggestion;
- (UISearchTextField)_borrowedSearchTextField;
- (UISearchTextField)_borrowedSearchTextFieldClone;
- (UISystemInputViewController)_systemInputViewController;
- (UIViewController)_currentActiveChildViewController;
- (_UIBarButtonItemSearchBarGroup)_inlineSearchBarItemGroup;
- (_UISearchControllerGlobalSearchDelegate)_globalSearchDelegate;
- (_UISearchControllerTrackableState)_trackableState;
- (id)_animatorForBarPresentationStyle:(int)style dismissing:(BOOL)dismissing;
- (id)_borrowedSearchTabHostedFieldConfiguration;
- (id)_createAnimationCoordinator;
- (id)_defaultAnimationController;
- (id)_locatePresentingViewController;
- (id)_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_searchPresentationController;
- (id)_systemInputViewControllerAfterUpdate:(BOOL)update;
- (id)_viewToInsertSearchBarContainerViewUnder;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)delegate;
- (id)focusItemContainer;
- (id)preferredFocusEnvironments;
- (id)searchPlaceholderColor;
- (id)searchResultsUpdater;
- (id)searchTextColor;
- (id)searchTextField;
- (uint64_t)_isSearchResultsControllerViewUnhidden;
- (uint64_t)_isSuggestionsListViewControllerViewUnhidden;
- (void)__searchBar:(int)bar changedSearchTextFieldContentProgramatically:;
- (void)__searchTextFieldDidSetOrInsertTokens:(uint64_t)tokens;
- (void)_adjustSearchBarSizeForOrientation:(int64_t)orientation oldPaletteFrame:(CGRect)frame;
- (void)_adjustTVSearchContainerViewForContentScrollView:(id)view;
- (void)_beginWatchingPresentingController;
- (void)_clearSearchSuggestionsIfNecessary;
- (void)_commonInit;
- (void)_connectSearchBar:(id)bar;
- (void)_contentScrollViewDidFinishContentOffsetAnimation;
- (void)_createOrUpdateKeyboardToSearchResultsFocusGuide;
- (void)_createOrUpdateSearchResultsToHiddenKeyboardFocusGuide;
- (void)_createSystemInputViewControllerIfNeededForTraitEnvironment:(id)environment;
- (void)_dci_setAutomaticScopeBarShowsOnPresentation:(BOOL)presentation;
- (void)_didCreateSystemInputViewController;
- (void)_didDismissSearchController;
- (void)_didPresentFromViewController:(id)controller;
- (void)_dismissPresentation:(BOOL)presentation;
- (void)_endWatchingPresentingController;
- (void)_handleBackButtonGesture:(id)gesture;
- (void)_hideSearchSuggestionsList;
- (void)_installBackGestureRecognizer;
- (void)_installDoneGestureRecognizer;
- (void)_ios_searchBar:(id)bar textDidChange:(id)change programatically:(BOOL)programatically;
- (void)_limitedUIDidChangeAnimated:(BOOL)animated;
- (void)_navigationControllerWillShowViewController:(id)controller;
- (void)_notifyNavigationItemOfSearchTextFieldBorrowingStateChange;
- (void)_performAutomaticPresentationFromTextField:(BOOL)field;
- (void)_performDidBeginEditingForSearchBar:(id)bar;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)_prepareInlineSearchAccessoryVisible:(BOOL)visible shouldUpdatePosition:(BOOL)position;
- (void)_presentingViewControllerDidChange:(id)change;
- (void)_presentingViewControllerWillChange:(id)change;
- (void)_removeCarPlayLimitedUIObserver;
- (void)_requestNavigationControllerObservingUpdateForSearchBar:(int)bar visibilityChangedForSearchSuggestionsList:(int)list forSearchResultsController:;
- (void)_requestPendingSuggestionMenuRefresh;
- (void)_resizeResultsControllerWithDelta:(CGSize)delta;
- (void)_scopeBarWillShowOrHide;
- (void)_searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)_searchBarCancelButtonClicked:(id)clicked;
- (void)_searchBarSearchTextFieldRequirementDidChange:(id)change;
- (void)_searchBarSuperviewChanged;
- (void)_searchBarTextDidBeginEditing:(id)editing;
- (void)_searchBarTextFieldDidSelectSearchSuggestion:(id)suggestion;
- (void)_searchBarTokensDidChange:(id)change;
- (void)_sendDelegateInsertSearchFieldTextSuggestion:(id)suggestion;
- (void)_setClearAsCancelButtonVisibilityWhenEmpty:(int64_t)empty;
- (void)_setClearSuggestionsOnSelection:(BOOL)selection;
- (void)_setDisplaysSearchBarItemGroupInline:(BOOL)inline;
- (void)_setInlineSearchAccessoryEnabled:(BOOL)enabled;
- (void)_setNavigationItemCurrentlyDisplayingSearchBar:(id)bar withGlobalSearchDelegate:(id)delegate;
- (void)_setNavigationItemCurrentlyDisplayingSearchController:(id)controller;
- (void)_setRequestedInteractionModel:(unint64_t)model;
- (void)_setSearchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth:(BOOL)width;
- (void)_setSearchSuggestionGroups:(id)groups;
- (void)_setShouldDisplayDefaultSuggestion:(BOOL)suggestion;
- (void)_setShowSearchSuggestionPreview:(BOOL)preview;
- (void)_setSuggestionRowTitle:(id)title;
- (void)_setTransitioningOutWithoutDisappearing:(BOOL)disappearing;
- (void)_setUpdateSearchTextOnDidSelectSuggestion:(BOOL)suggestion;
- (void)_setUsesSearchSuggestionsMenuForStackedSearch:(BOOL)search;
- (void)_setupForCurrentTraitCollection;
- (void)_showSearchSuggestionsListIfApplicable;
- (void)_sizeSearchViewToPresentingViewController:(id)controller;
- (void)_startDeferringSettingSearchSuggestionsWithReason:(unint64_t)reason;
- (void)_startManagingPalette:(id)palette;
- (void)_stopDeferringSearchSuggestionsWithReason:(unint64_t)reason postDeferralAction:(int64_t)action;
- (void)_stopManagingPalette;
- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)animator;
- (void)_tvos_searchBar:(id)bar textDidChange:(id)change programatically:(BOOL)programatically;
- (void)_uninstallBackGestureRecognizer;
- (void)_uninstallDoneGestureRecognizer;
- (void)_updateBarPresentationStyleForPresentingViewController:(id)controller;
- (void)_updateFocusFromDoneButton:(id)button;
- (void)_updateHasPendingSuggestionMenuRefreshFlagForReason:(int64_t)reason;
- (void)_updateInlineSearchBarItemGroup;
- (void)_updateKeyboardFocusGuidesForAnimator:(id)animator;
- (void)_updateSearchBarHostingFromNavigationItem:(id)item;
- (void)_updateSearchBarMaskIfNecessary;
- (void)_updateSearchResultsContentScrollViewWithDelta:(CGSize)delta;
- (void)_updateSearchResultsControllerWithDelta:(CGSize)delta;
- (void)_updateSearchResultsPositionWithDelta:(CGSize)delta;
- (void)_updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:(BOOL)update;
- (void)_updateTableHeaderBackgroundViewInTableView:(id)view amountScrolledUnder:(double)under;
- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)bar;
- (void)_watchScrollView:(id)view forScrolling:(BOOL)scrolling;
- (void)_willDismissSearchController;
- (void)_willPresentFromViewController:(id)controller;
- (void)_willUpdateFocusInContext:(id)context;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)setActive:(BOOL)active;
- (void)setAutomaticallyShowsCancelButton:(BOOL)automaticallyShowsCancelButton;
- (void)setAutomaticallyShowsScopeBar:(BOOL)automaticallyShowsScopeBar;
- (void)setAutomaticallyShowsSearchResultsController:(BOOL)automaticallyShowsSearchResultsController;
- (void)setDelegate:(id)delegate;
- (void)setHidesNavigationBarDuringPresentation:(BOOL)hidesNavigationBarDuringPresentation;
- (void)setIgnoresSearchSuggestionsForSearchBarPlacementStacked:(BOOL)ignoresSearchSuggestionsForSearchBarPlacementStacked;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setScopeBarActivation:(UISearchControllerScopeBarActivation)scopeBarActivation;
- (void)setSearchSuggestions:(NSArray *)searchSuggestions;
- (void)setSelectedSuggestion:(id)suggestion;
- (void)setShowsSearchResultsController:(BOOL)showsSearchResultsController;
- (void)set_systemInputMarginView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UISearchController

- (void)_commonInit
{
  v26[1] = *MEMORY[0x1E69E9840];
  [(UISearchController *)self setModalPresentationStyle:4];
  [(UIViewController *)self setModalTransitionStyle:2];
  [(UIViewController *)self setTransitioningDelegate:self];
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    self->_obscuresBackgroundDuringPresentation = 1;
  }

  else
  {
    self->_obscuresBackgroundDuringPresentation = _UIBarsApplyChromelessEverywhere() ^ 1;
  }

  *&self->_controllerFlags |= 0xC00u;
  self->__previousSearchBarPosition = -1;
  self->__showResultsForEmptySearch = 0;
  *&self->_controllerFlags |= 0x80u;
  traitCollection2 = [(UIViewController *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  controllerFlags = self->_controllerFlags;
  if (userInterfaceIdiom2 != 6)
  {
    controllerFlags = (*&controllerFlags | 0x10);
    self->_controllerFlags = controllerFlags;
  }

  self->_controllerFlags = (*&controllerFlags | 0x16000000);
  searchBar = [(UISearchController *)self searchBar];
  if (!searchBar)
  {
    v9 = [UISearchBar alloc];
    searchBar = [(UISearchBar *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v10 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
    [(UISearchBar *)searchBar setPlaceholder:v10];
  }

  [(UISearchController *)self _connectSearchBar:searchBar];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __33__UISearchController__commonInit__block_invoke;
  v23 = &unk_1E70F3D28;
  objc_copyWeak(&v24, &location);
  v12 = [defaultCenter addObserverForName:@"UIWindowWillAnimateRotationNotification" object:0 queue:0 usingBlock:&v20];
  windowWillAnimateToken = self->_windowWillAnimateToken;
  self->_windowWillAnimateToken = v12;

  v26[0] = 0x1EFE32398;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{1, v20, v21, v22, v23}];
  v15 = [(UIViewController *)self _registerForTraitTokenChanges:v14 withTarget:self action:sel__setupForCurrentTraitCollection];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (UINavigationItem)_navigationItemCurrentlyDisplayingSearchBar
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);

  return WeakRetained;
}

- (BOOL)hidesNavigationBarDuringPresentation
{
  if (!_UISolariumEnabled())
  {
    return (*&self->_controllerFlags & 0xC00) != 0;
  }

  v3 = (*&self->_controllerFlags >> 10) & 3;
  if (!v3)
  {
    return 0;
  }

  if (v3 != 1)
  {
    traitCollection = [(UIViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (userInterfaceIdiom == 1)
    {
      if (([traitCollection _hasSplitViewControllerContextSidebarColumn] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
        _navigationBar = [WeakRetained _navigationBar];
        _viewControllerForAncestor = [_navigationBar _viewControllerForAncestor];

        v4 = [_viewControllerForAncestor modalPresentationStyle] != 16 && objc_msgSend(_viewControllerForAncestor, "modalPresentationStyle") != 2;
        goto LABEL_16;
      }
    }

    else if (userInterfaceIdiom != 5)
    {
      v4 = 1;
LABEL_16:

      return v4;
    }

    v4 = 0;
    goto LABEL_16;
  }

  return 1;
}

- (BOOL)isActive
{
  if (self)
  {
    if (self->super._parentModalViewController)
    {
      LOBYTE(self) = ![(UISearchController *)self isBeingDismissed];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (UINavigationItemSearchBarPlacement)searchBarPlacement
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

  if (!WeakRetained)
  {
    return 2;
  }

  v4 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
  searchBarPlacement = [v4 searchBarPlacement];

  return searchBarPlacement;
}

- (BOOL)_isSearchTextFieldBorrowed
{
  if (self->_borrowedSearchTextFieldHandle)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeBorrowedSearchTabHostedFieldConfiguration);
  v2 = WeakRetained != 0;

  return v2;
}

- (id)searchResultsUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_searchResultsUpdater);

  return WeakRetained;
}

- (UIViewController)_currentActiveChildViewController
{
  if (![(UISearchController *)self isActive])
  {
    v5 = 0;
    goto LABEL_19;
  }

  searchResultsController = [(UISearchController *)self searchResultsController];
  if (!searchResultsController || ![(UISearchController *)self showsSearchResultsController])
  {
    goto LABEL_14;
  }

  if ((searchResultsController[94] & 3u) - 1 <= 1)
  {
    v4 = searchResultsController;
LABEL_16:
    v5 = v4;
    goto LABEL_18;
  }

  if ([searchResultsController _appearState] != 3)
  {
LABEL_14:
    if (![(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden])
    {
      v5 = 0;
      goto LABEL_18;
    }

    v4 = self->_suggestionsListViewController;
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
  _navigationBar = [WeakRetained _navigationBar];
  delegate = [_navigationBar delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    delegate = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (!delegate || [delegate _appearState] != 3)
  {
    goto LABEL_13;
  }

  v5 = searchResultsController;

LABEL_18:
LABEL_19:

  return v5;
}

- (BOOL)isBeingDismissed
{
  if (dyld_program_sdk_at_least() && (*(&self->_controllerFlags + 2) & 0x80) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UISearchController;
  return [(UIViewController *)&v4 isBeingDismissed];
}

- (uint64_t)_isSearchResultsControllerViewUnhidden
{
  selfCopy = self;
  if (self)
  {
    _existingView = [*(self + 1272) _existingView];
    if (_existingView)
    {
      _existingView2 = [*(selfCopy + 1272) _existingView];
      selfCopy = [_existingView2 isHidden] ^ 1;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (BOOL)showsSearchResultsController
{
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x80) != 0)
  {
    text = [(UISearchBar *)self->_searchBar text];
    if ([text length])
    {
    }

    else
    {
      showResultsForEmptySearch = self->__showResultsForEmptySearch;

      if (!showResultsForEmptySearch)
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    _dci_searchSuggestions = [(UISearchController *)self _dci_searchSuggestions];
    if ([_dci_searchSuggestions count])
    {
      v3 = *(&self->_controllerFlags + 1) >> 7;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    return (*&controllerFlags >> 8) & 1;
  }

  return v3;
}

- (uint64_t)_isSuggestionsListViewControllerViewUnhidden
{
  selfCopy = self;
  if (self)
  {
    _existingView = [*(self + 1224) _existingView];
    if (_existingView)
    {
      _existingView2 = [*(selfCopy + 1224) _existingView];
      selfCopy = [_existingView2 isHidden] ^ 1;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)_hideSearchSuggestionsList
{
  _existingView = [*(self + 1224) _existingView];
  [_existingView setHidden:1];
}

- (UISearchTextField)_borrowedSearchTextField
{
  borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
  if (!borrowedSearchTextFieldHandle)
  {
    _borrowSearchTextField = [(UISearchBar *)self->_searchBar _borrowSearchTextField];
    v5 = self->_borrowedSearchTextFieldHandle;
    self->_borrowedSearchTextFieldHandle = _borrowSearchTextField;

    [(UISearchController *)self _notifyNavigationItemOfSearchTextFieldBorrowingStateChange];
    borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
  }

  return [(_UIBorrowedViewHandle *)borrowedSearchTextFieldHandle view];
}

- (UIBarButtonItem)_inlineToolbarSearchBarItem
{
  inlineToolbarSearchBarItem = self->_inlineToolbarSearchBarItem;
  if (!inlineToolbarSearchBarItem)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

    if (WeakRetained)
    {
      p_isa = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      _confirmedSearchBarPlacementBarButtonItem = [(UINavigationItem *)p_isa _confirmedSearchBarPlacementBarButtonItem];
      v7 = self->_inlineToolbarSearchBarItem;
      self->_inlineToolbarSearchBarItem = _confirmedSearchBarPlacementBarButtonItem;
    }

    else
    {
      v8 = [UIBarButtonItem _inlineToolbarSearchItemAssociatedWithSearchController:self];
      p_isa = &self->_inlineToolbarSearchBarItem->super.super.isa;
      self->_inlineToolbarSearchBarItem = v8;
    }

    inlineToolbarSearchBarItem = self->_inlineToolbarSearchBarItem;
  }

  return inlineToolbarSearchBarItem;
}

- (_UIBarButtonItemSearchBarGroup)_inlineSearchBarItemGroup
{
  inlineSearchBarItemGroup = self->_inlineSearchBarItemGroup;
  if (!inlineSearchBarItemGroup)
  {
    v4 = objc_alloc_init(_UIBarButtonItemSearchBarGroup);
    v5 = self->_inlineSearchBarItemGroup;
    self->_inlineSearchBarItemGroup = v4;

    [(UISearchController *)self _setDisplaysSearchBarItemGroupInline:self->_displaysSearchBarItemGroupInline];
    inlineSearchBarItemGroup = self->_inlineSearchBarItemGroup;
  }

  return inlineSearchBarItemGroup;
}

- (void)_searchBarSuperviewChanged
{
  searchBar = [(UISearchController *)self searchBar];
  superview = [searchBar superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    searchBar2 = [(UISearchController *)self searchBar];
    superview2 = [searchBar2 superview];

    tableHeaderView = [superview2 tableHeaderView];
    searchBar3 = [(UISearchController *)self searchBar];

    if (tableHeaderView == searchBar3)
    {
      *&self->_controllerFlags |= 1u;
      searchBar4 = [(UISearchController *)self searchBar];
      [searchBar4 _setShowsSeparator:0];

      searchBar5 = [(UISearchController *)self searchBar];
      [searchBar5 _updateInsetsForTableView:superview2];

      if (([superview2 _usingCustomBackgroundView] & 1) == 0)
      {
        v12 = [UIColor colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
        [superview2 setTableHeaderBackgroundColor:v12];
      }

      [(UISearchController *)self _updateTableHeaderBackgroundViewInTableView:superview2 amountScrolledUnder:0.0];
      [(UISearchController *)self _watchScrollView:superview2 forScrolling:1];
    }
  }

  else if (*&self->_controllerFlags)
  {
    if (![(UIViewController *)self isBeingPresented])
    {
      searchBar6 = [(UISearchController *)self searchBar];
      [searchBar6 _setShowsSeparator:0];

      searchBar7 = [(UISearchController *)self searchBar];
      [searchBar7 _updateInsetsForTableView:0];
    }

    [(UISearchController *)self _watchScrollView:0 forScrolling:0];
  }

  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    searchBar8 = [(UISearchController *)self searchBar];
    searchField = [searchBar8 searchField];

    window = [searchField window];
    if (window)
    {
      v19 = window;
      persistentDelegate = [(UISystemInputViewController *)self->_systemInputViewController persistentDelegate];

      if (searchField == persistentDelegate)
      {
        [(UISystemInputViewController *)self->_systemInputViewController reloadInputViewsForPersistentDelegate];
      }
    }
  }
}

- (_UISearchControllerTrackableState)_trackableState
{
  trackableState = self->_trackableState;
  if (!trackableState)
  {
    v4 = objc_alloc_init(_UISearchControllerTrackableState);
    v5 = self->_trackableState;
    self->_trackableState = v4;

    trackableState = self->_trackableState;
  }

  return trackableState;
}

- (BOOL)_hidesNavigationBarDuringPresentationRespectingInlineSearch
{
  searchBar = [(UISearchController *)self searchBar];
  _isHostedInlineByNavigationBar = [searchBar _isHostedInlineByNavigationBar];

  if (_isHostedInlineByNavigationBar)
  {
    return 0;
  }

  return [(UISearchController *)self hidesNavigationBarDuringPresentation];
}

- (void)_updateInlineSearchBarItemGroup
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    -[UIBarButtonItemGroup _setShouldAlwaysCollapse:](self->_inlineSearchBarItemGroup, "_setShouldAlwaysCollapse:", [v4 searchBarPlacement] == 4);
  }
}

- (void)_requestPendingSuggestionMenuRefresh
{
  if ((*(&self->_controllerFlags + 2) & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    _hasIntegratedSearchBarInNavigationBar = [WeakRetained _hasIntegratedSearchBarInNavigationBar];

    if (_hasIntegratedSearchBarInNavigationBar)
    {
      _suggestionController = [(UISearchController *)self _suggestionController];
      _searchSuggestionGroups = [(UISearchController *)self _searchSuggestionGroups];
      [_suggestionController updateSuggestionGroups:_searchSuggestionGroups userInitiated:0];
    }
  }

  *&self->_controllerFlags &= ~0x80000u;
}

- (UISearchSuggestion)selectedSuggestion
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UIKit issue: selectedSuggestion property not supported on this platform", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &selectedSuggestion___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "UIKit issue: selectedSuggestion property not supported on this platform", v5, 2u);
    }
  }

  return 0;
}

- (void)setSelectedSuggestion:(id)suggestion
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "UIKit issue: selectedSuggestion property not supported on this platform", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &setSelectedSuggestion____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "UIKit issue: selectedSuggestion property not supported on this platform", v5, 2u);
    }
  }
}

- (void)setHidesNavigationBarDuringPresentation:(BOOL)hidesNavigationBarDuringPresentation
{
  if (hidesNavigationBarDuringPresentation)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFF3FF | v3);
}

- (BOOL)_searchBarHidesOtherNavigationBarContentWithTraitCollection:(id)collection
{
  v7 = _UISolariumEnabled() && (-[UISearchController searchBar](self, "searchBar"), v5 = v4 = collection;

  return v7;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFF7 | v5);
    objc_storeWeak(&self->_delegate, obj);
  }
}

- (void)_sendDelegateInsertSearchFieldTextSuggestion:(id)suggestion
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    suggestionCopy = suggestion;
    delegate = [(UISearchController *)self delegate];
    [delegate _searchController:self insertSearchFieldTextSuggestion:suggestionCopy];
  }
}

- (void)_setTransitioningOutWithoutDisappearing:(BOOL)disappearing
{
  if (disappearing)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFFB | v3);
}

- (void)_updateSearchBarHostingFromNavigationItem:(id)item
{
  itemCopy = item;
  _hasIntegratedSearchBarInNavigationBar = [itemCopy _hasIntegratedSearchBarInNavigationBar];
  [(UISearchBar *)self->_searchBar _setHostedInlineByNavigationBar:_hasIntegratedSearchBarInNavigationBar];
  if ((_hasIntegratedSearchBarInNavigationBar & 1) == 0)
  {
    -[UISearchBar _setHostedInlineByToolbar:](self->_searchBar, "_setHostedInlineByToolbar:", [itemCopy _hasIntegratedSearchBarInToolbar]);
  }
}

- (void)_setNavigationItemCurrentlyDisplayingSearchController:(id)controller
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (os_variant_has_internal_diagnostics())
  {
    _forceSearchBarHostedInNavigationBar = [objc_opt_class() _forceSearchBarHostedInNavigationBar];
    if (!controllerCopy)
    {
      if (_forceSearchBarHostedInNavigationBar)
      {
        WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

        if (WeakRetained)
        {
          v17 = *(__UILogGetCategoryCachedImpl("UISearchController", &_setNavigationItemCurrentlyDisplayingSearchController____s_category) + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = MEMORY[0x1E696AF00];
            v19 = v17;
            callStackSymbols = [v18 callStackSymbols];
            v21 = 138412546;
            selfCopy = self;
            v23 = 2112;
            v24 = callStackSymbols;
            _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "UISearchController that requires hosting in navigation bar is losing its navigation item\n\t%@\n%@", &v21, 0x16u);
          }
        }
      }
    }
  }

  p_navigationItemCurrentlyDisplayingSearchController = &self->__navigationItemCurrentlyDisplayingSearchController;
  v6 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

  if (!controllerCopy)
  {
    v7 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    _stackEntry = [v7 _stackEntry];
    [_stackEntry setSearchActive:0];

    v9 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    v10 = objc_loadWeakRetained(p_navigationItemCurrentlyDisplayingSearchController);

    if (v9 != v10)
    {
      v11 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
      _stackEntry2 = [v11 _stackEntry];
      [_stackEntry2 setSearchActive:0];
    }
  }

  objc_storeWeak(p_navigationItemCurrentlyDisplayingSearchController, controllerCopy);
  v13 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);

  if (!controllerCopy || !v13)
  {
    objc_storeWeak(&self->__navigationItemCurrentlyDisplayingSearchBar, controllerCopy);
    if (v6 != controllerCopy)
    {
      [(UISearchController *)self _updateSearchBarHostingFromNavigationItem:controllerCopy];
    }
  }

  inlineToolbarSearchBarItem = self->_inlineToolbarSearchBarItem;
  if (inlineToolbarSearchBarItem)
  {
    [(UIBarButtonItem *)inlineToolbarSearchBarItem _setVendingNavigationItem:controllerCopy];
  }
}

- (void)_setNavigationItemCurrentlyDisplayingSearchBar:(id)bar withGlobalSearchDelegate:(id)delegate
{
  obj = bar;
  delegateCopy = delegate;
  if ((obj != 0) != (delegateCopy != 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:396 description:@"UIKit error: globalSearchDelegate and navigationItem must both be set to non-nil or both to nil"];
  }

  objc_storeWeak(&self->_globalSearchDelegate, delegateCopy);
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
  if (obj)
  {
    objc_storeWeak(&self->__navigationItemCurrentlyDisplayingSearchBar, obj);
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    objc_storeWeak(&self->__navigationItemCurrentlyDisplayingSearchBar, v9);
  }

  v10 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);

  if (WeakRetained != v10)
  {
    v11 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    [(UISearchController *)self _updateSearchBarHostingFromNavigationItem:v11];
  }
}

+ (BOOL)_forceSearchBarHostedInNavigationBar
{
  if (qword_1ED49B008 != -1)
  {
    dispatch_once(&qword_1ED49B008, &__block_literal_global_493);
  }

  v3 = _MergedGlobals_23_4;
  if (_MergedGlobals_23_4)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

void __58__UISearchController__forceSearchBarHostedInNavigationBar__block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 objectForKey:@"UIForceSearchHostedInNavigationBar"];
  v1 = _MergedGlobals_23_4;
  _MergedGlobals_23_4 = v0;
}

void __33__UISearchController__commonInit__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 object];
  v4 = [v3 window];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained searchBar];
  v7 = [v6 window];
  v8 = v7;
  if (v4 != v7)
  {

LABEL_3:
    goto LABEL_6;
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = v9[14];

  if (!v10)
  {
LABEL_10:
    v11 = [v14 userInfo];
    v12 = [v11 objectForKey:@"UIWindowNewOrientationUserInfoKey"];
    v13 = [v12 integerValue];

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _adjustSearchBarSizeForOrientation:v13];
    goto LABEL_3;
  }

LABEL_6:
}

- (UISearchController)initWithSearchResultsController:(UIViewController *)searchResultsController
{
  v5 = searchResultsController;
  if (dyld_program_sdk_at_least())
  {
    v10.receiver = self;
    v10.super_class = UISearchController;
    v6 = [(UIViewController *)&v10 initWithNibName:0 bundle:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UISearchController;
    v6 = [(UIViewController *)&v9 init];
  }

  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchResultsController, searchResultsController);
    [(UISearchController *)v7 _commonInit];
  }

  return v7;
}

- (UISearchController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v7.receiver = self;
  v7.super_class = UISearchController;
  v4 = [(UIViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(UISearchController *)v4 _commonInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UISearchController;
  [(UIViewController *)&v11 encodeWithCoder:coderCopy];
  searchResultsController = self->_searchResultsController;
  if (searchResultsController)
  {
    [coderCopy encodeObject:searchResultsController forKey:@"UISearchControllerResultsController"];
  }

  [coderCopy encodeBool:self->_obscuresBackgroundDuringPresentation forKey:@"UISearchControllerDimsBackgroundDuringPresentation"];
  [coderCopy encodeBool:self->_obscuresBackgroundDuringPresentation forKey:@"UISearchControllerObscuresBackgroundDuringPresentation"];
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x800) != 0)
  {
    v8 = @"UISearchControllerWantsDefaultNavigationBarHidingBehavior";
    v9 = coderCopy;
    v7 = 1;
  }

  else
  {
    v7 = (*&controllerFlags >> 10) & 1;
    v8 = @"UISearchControllerHidesNavigationBarDuringPresentation";
    v9 = coderCopy;
  }

  [v9 encodeBool:v7 forKey:v8];
  [coderCopy encodeBool:(*&self->_controllerFlags >> 7) & 1 forKey:@"UISearchControllerAutomaticallyShowsSearchResultsController"];
  v10 = self->_controllerFlags;
  if ((*&v10 & 0x80) == 0)
  {
    [coderCopy encodeBool:(*&v10 >> 8) & 1 forKey:@"UISearchControllerShowsSearchResultsController"];
    v10 = self->_controllerFlags;
  }

  [coderCopy encodeBool:(*&v10 >> 4) & 1 forKey:@"UISearchControllerAutomaticallyShowsCancelButton"];
  [coderCopy encodeInteger:(self->_controllerFlags >> 5) & 3 forKey:@"UISearchControllerScopeBarActivation"];
  [coderCopy encodeBool:(*&self->_controllerFlags >> 17) & 1 forKey:@"UISearchControllerIgnoresSearchSuggestionsForStackedSearch"];
  [coderCopy encodeInteger:-[UIViewController modalPresentationStyle](self forKey:{"modalPresentationStyle"), @"UISearchControllerModalPresentationStyle"}];
  [coderCopy encodeObject:self->_searchBar forKey:@"UISearchControllerSearchBar"];
}

- (UISearchController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v18.receiver = self;
  v18.super_class = UISearchController;
  v5 = [(UIViewController *)&v18 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [(NSCoder *)v4 decodeObjectForKey:@"UISearchControllerSearchBar"];
  searchBar = v5->_searchBar;
  v5->_searchBar = v6;

  [(UISearchController *)v5 _commonInit];
  [(UISearchController *)v5 setModalPresentationStyle:[(NSCoder *)v4 decodeIntegerForKey:@"UISearchControllerModalPresentationStyle"]];
  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerObscuresBackgroundDuringPresentation"])
  {
    v8 = @"UISearchControllerObscuresBackgroundDuringPresentation";
  }

  else
  {
    v8 = @"UISearchControllerDimsBackgroundDuringPresentation";
  }

  v5->_obscuresBackgroundDuringPresentation = [(NSCoder *)v4 decodeBoolForKey:v8];
  if (![(NSCoder *)v4 containsValueForKey:@"UISearchControllerWantsDefaultNavigationBarHidingBehavior"])
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerHidesNavigationBarDuringPresentation"])
    {
      v9 = 1024;
    }

    else
    {
      v9 = 0;
    }

    v5->_controllerFlags = (*&v5->_controllerFlags & 0xFFFFF3FF | v9);
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerResultsController"])
  {
    v10 = [(NSCoder *)v4 decodeObjectForKey:@"UISearchControllerResultsController"];
    searchResultsController = v5->_searchResultsController;
    v5->_searchResultsController = v10;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerAutomaticallyShowsSearchResultsController"])
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerAutomaticallyShowsSearchResultsController"])
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    v5->_controllerFlags = (*&v5->_controllerFlags & 0xFFFFFF7F | v12);
    if (v12)
    {
      goto LABEL_24;
    }
  }

  else if ((*&v5->_controllerFlags & 0x80) != 0)
  {
    goto LABEL_24;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerShowsSearchResultsController"])
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerShowsSearchResultsController"])
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v5->_controllerFlags = (*&v5->_controllerFlags & 0xFFFFFEFF | v13);
  }

LABEL_24:
  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerAutomaticallyShowsCancelButton"])
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerAutomaticallyShowsCancelButton"])
    {
      v14 = 16;
    }

    else
    {
      v14 = 0;
    }

    v5->_controllerFlags = (*&v5->_controllerFlags & 0xFFFFFFEF | v14);
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerScopeBarActivation"])
  {
    v15 = (*&v5->_controllerFlags & 0xFFFFFF9F | (32 * ([(NSCoder *)v4 decodeIntegerForKey:@"UISearchControllerScopeBarActivation"]& 3)));
LABEL_31:
    v5->_controllerFlags = v15;
    goto LABEL_34;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerAutomaticallyShowsScopeBar"]&& ![(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerAutomaticallyShowsScopeBar"])
  {
    v15 = (*&v5->_controllerFlags & 0xFFFFFF9F | 0x20);
    goto LABEL_31;
  }

LABEL_34:
  if ([(NSCoder *)v4 containsValueForKey:@"UISearchControllerIgnoresSearchSuggestionsForStackedSearch"])
  {
    if ([(NSCoder *)v4 decodeBoolForKey:@"UISearchControllerIgnoresSearchSuggestionsForStackedSearch"])
    {
      v16 = 0x20000;
    }

    else
    {
      v16 = 0;
    }

    v5->_controllerFlags = (*&v5->_controllerFlags & 0xFFFDFFFF | v16);
  }

LABEL_39:

  return v5;
}

- (void)dealloc
{
  v16[5] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_windowWillAnimateToken];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = @"UIApplicationWillEnterForegroundNotification";
  v16[1] = @"UIApplicationDidBecomeActiveNotification";
  v16[2] = @"UIApplicationWillResignActiveNotification";
  v16[3] = @"UIApplicationDidEnterBackgroundNotification";
  v16[4] = 0x1EFB3A190;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
  [(NSNotificationCenter *)defaultCenter2 _uiRemoveObserver:v5 names:?];

  [(UISearchController *)self _uninstallBackGestureRecognizer];
  [(UISearchController *)self _uninstallDoneGestureRecognizer];
  [(UISystemInputViewController *)self->_systemInputViewController prepareForRelease];
  [(UISystemInputViewController *)self->_systemInputViewController resetContainingResponder];
  systemInputViewController = self->_systemInputViewController;
  self->_systemInputViewController = 0;

  [(UISearchBar *)self->_searchBar _setSearchController:0];
  [(UISearchBar *)self->_searchBar setDelegate:0];
  leftDividerView = self->__leftDividerView;
  self->__leftDividerView = 0;

  rightDividerView = self->__rightDividerView;
  self->__rightDividerView = 0;

  scopeBarFocusContainerGuide = self->__scopeBarFocusContainerGuide;
  self->__scopeBarFocusContainerGuide = 0;

  suggestionController = self->_suggestionController;
  self->_suggestionController = 0;

  suggestionContainerView = self->__suggestionContainerView;
  self->__suggestionContainerView = 0;

  tvKeyboardContainerView = self->__tvKeyboardContainerView;
  self->__tvKeyboardContainerView = 0;

  didScrollDelegate = self->_didScrollDelegate;
  if (didScrollDelegate)
  {
    scrollView = [(_UISearchControllerDidScrollDelegate *)didScrollDelegate scrollView];
    [scrollView _removeScrollViewScrollObserver:self->_didScrollDelegate];
  }

  [(UISearchController *)self _removeCarPlayLimitedUIObserver];
  v15.receiver = self;
  v15.super_class = UISearchController;
  [(UIViewController *)&v15 dealloc];
}

- (void)loadView
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(UIViewController *)self presentingViewController];
    view = [presentingViewController2 view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(UIViewController *)self _defaultInitialViewFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = [[_UISearchControllerView alloc] initWithFrame:v7, v9, v11, v13];
  searchControllerView = self->_searchControllerView;
  self->_searchControllerView = v18;

  [(UIView *)self->_searchControllerView setAutoresizingMask:18];
  v20 = self->_searchControllerView;

  [(UIViewController *)self setView:v20];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = UISearchController;
  [(UIViewController *)&v13 viewDidLoad];
  if (self->_searchResultsController)
  {
    v3 = [UIView alloc];
    view = [(UIViewController *)self view];
    [view bounds];
    v5 = [(UIView *)v3 initWithFrame:?];
    resultsControllerViewContainer = self->_resultsControllerViewContainer;
    self->_resultsControllerViewContainer = v5;

    v7 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
    scrollPocketCollectorInteraction = self->_scrollPocketCollectorInteraction;
    self->_scrollPocketCollectorInteraction = v7;

    if (_UIScrollPocketEnabled())
    {
      [(UIView *)self->_resultsControllerViewContainer addInteraction:self->_scrollPocketCollectorInteraction];
    }

    v9 = [[_UIScrollPocketInteraction alloc] initWithStyle:4];
    topSafeAreaInsetScrollPocketInteraction = self->_topSafeAreaInsetScrollPocketInteraction;
    self->_topSafeAreaInsetScrollPocketInteraction = v9;

    [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setEdge:1];
    [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setCollectorInteraction:self->_scrollPocketCollectorInteraction];
    [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setRequiresPocket:1];
    [(UIView *)self->_resultsControllerViewContainer addInteraction:self->_topSafeAreaInsetScrollPocketInteraction];
    [(UIView *)self->_resultsControllerViewContainer setAutoresizingMask:18];
    view2 = [(UIViewController *)self->_searchResultsController view];
    [(UIView *)self->_resultsControllerViewContainer bounds];
    [view2 setFrame:?];
    [(UIView *)self->_resultsControllerViewContainer addSubview:view2];
    [view2 setAutoresizingMask:18];
    [(UIViewController *)self addChildViewController:self->_searchResultsController];
    view3 = [(UIViewController *)self view];
    [view3 addSubview:self->_resultsControllerViewContainer];

    [(UIViewController *)self->_searchResultsController didMoveToParentViewController:self];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = UISearchController;
  [(UIViewController *)&v6 viewDidAppear:appear];
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(UISearchController *)self _limitedUIDidChangeAnimated:0];
  }

  if ([(UISearchController *)self _shouldLogAppearance])
  {
    AnalyticsSendEventLazy();
  }

  [(UISearchController *)self set_shouldLogAppearance:1];
}

id __36__UISearchController_viewDidAppear___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = _UIPrivateMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v4 = @"bundle_id";
    v5[0] = v0;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = UISearchController;
  [(UIViewController *)&v3 viewDidDisappear:disappear];
  AnalyticsSendEventLazy();
}

id __39__UISearchController_viewDidDisappear___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = _UIPrivateMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v4 = @"bundle_id";
    v5[0] = v0;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)applicationWillEnterForeground:(id)foreground
{
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    searchBar = [(UISearchController *)self searchBar];
    [searchBar becomeFirstResponder];

    v7 = +[UIKeyboard activeKeyboard];
    [v7 didMoveToWindow];
  }

  *&self->_controllerFlags |= 0x2000000u;
}

- (void)applicationDidEnterBackground:(id)background
{
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    searchBar = [(UISearchController *)self searchBar];
    [searchBar resignFirstResponder];
  }

  *&self->_controllerFlags &= ~0x2000000u;
}

- (id)_createAnimationCoordinator
{
  v3 = objc_alloc_init(_UIAnimationCoordinator);
  view = [(UIViewController *)self view];
  [(_UIAnimationCoordinator *)v3 setContainerView:view];

  return v3;
}

- (void)_resizeResultsControllerWithDelta:(CGSize)delta
{
  height = delta.height;
  [(UIView *)self->_resultsControllerViewContainer frame];
  v6 = v5;
  v8 = v7;
  v10 = height + v9;
  v12 = v11 - height;
  _createAnimationCoordinator = [(UISearchController *)self _createAnimationCoordinator];
  [(UIView *)self->_resultsControllerViewContainer frame];
  [_createAnimationCoordinator setStartFrame:?];
  [_createAnimationCoordinator setEndFrame:{v6, v10, v8, v12}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__UISearchController__resizeResultsControllerWithDelta___block_invoke;
  v14[3] = &unk_1E711EE30;
  v14[4] = self;
  *&v14[5] = v6;
  *&v14[6] = v10;
  *&v14[7] = v8;
  *&v14[8] = v12;
  [_createAnimationCoordinator setAnimator:v14];
  [_createAnimationCoordinator animate];
}

- (BOOL)_resultsControllerWillLayoutVisibleUnderContainerView
{
  searchResultsController = self->_searchResultsController;
  if (searchResultsController)
  {
    v4 = [(UIViewController *)searchResultsController edgesForExtendedLayout]& 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  presentationController = [(UIViewController *)self presentationController];
  resultsUnderlapsSearchBar = [presentationController resultsUnderlapsSearchBar];

  return resultsUnderlapsSearchBar & v4;
}

- (id)preferredFocusEnvironments
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (self->_barPresentationStyle == 5)
  {
    searchBar = [(UISearchController *)self searchBar];
    v4 = searchBar;
    if (searchBar)
    {
      v21[0] = searchBar;
      v5 = MEMORY[0x1E695DEC8];
      v6 = v21;
LABEL_4:
      v7 = [v5 arrayWithObjects:v6 count:1];
LABEL_16:

      goto LABEL_21;
    }

    goto LABEL_15;
  }

  searchResultsController = self->_searchResultsController;
  if (searchResultsController)
  {
    view = [(UIViewController *)searchResultsController view];
    isHidden = [view isHidden];
  }

  else
  {
    isHidden = 1;
  }

  if (self->_systemInputViewController)
  {
    _tvKeyboardContainerView = [(UISearchController *)self _tvKeyboardContainerView];
    isUserInteractionEnabled = [_tvKeyboardContainerView isUserInteractionEnabled];

    controllerFlags = self->_controllerFlags;
    if ((!isUserInteractionEnabled || !(((*&controllerFlags & 0x8000000) == 0) | isHidden & 1)) && (*&controllerFlags & 0x20000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    systemInputViewController = self->_systemInputViewController;
    v15 = MEMORY[0x1E695DEC8];
    p_systemInputViewController = &systemInputViewController;
    goto LABEL_20;
  }

  if ((*(&self->_controllerFlags + 3) & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (isHidden)
  {
    searchBar2 = [(UISearchController *)self searchBar];
    v4 = searchBar2;
    if (searchBar2)
    {
      v18 = searchBar2;
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v18;
      goto LABEL_4;
    }

LABEL_15:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v19 = self->_searchResultsController;
  v15 = MEMORY[0x1E695DEC8];
  p_systemInputViewController = &v19;
LABEL_20:
  v7 = [v15 arrayWithObjects:p_systemInputViewController count:1];
LABEL_21:

  return v7;
}

- (void)set_systemInputMarginView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->__systemInputMarginView, view);
  view = [(UIViewController *)self view];
  subviews = [view subviews];
  v7 = [subviews containsObject:self->__systemInputMarginView];

  if ((v7 & 1) == 0)
  {
    view2 = [(UIViewController *)self view];
    [view2 addSubview:self->__systemInputMarginView];
  }
}

- (void)_setRequestedInteractionModel:(unint64_t)model
{
  if (UIKeyboardCarPlayRequiresTouch())
  {
    modelCopy = 1;
  }

  else
  {
    modelCopy = model;
  }

  if (self->__requestedInteractionModel != modelCopy)
  {
    self->__requestedInteractionModel = modelCopy;
    if (self->_systemInputViewController)
    {
      LODWORD(_window) = 0;
    }

    else
    {
      _window = [(UIViewController *)self _window];

      if (_window)
      {
        searchBar = [(UISearchController *)self searchBar];
        searchField = [searchBar searchField];
        v9 = [UISystemInputViewController systemInputViewControllerForResponder:searchField editorView:0 containingResponder:self];
        systemInputViewController = self->_systemInputViewController;
        self->_systemInputViewController = v9;

        LODWORD(_window) = 1;
      }
    }

    [UISystemInputViewController setKeyboardInteractionModel:self->__requestedInteractionModel];
    v11 = self->_systemInputViewController;
    if (v11)
    {
      [(UISystemInputViewController *)v11 setRequestedInteractionModel:self->__requestedInteractionModel];
    }

    if (_window)
    {

      [(UISearchController *)self _didCreateSystemInputViewController];
    }
  }
}

- (void)_createSystemInputViewControllerIfNeededForTraitEnvironment:(id)environment
{
  v51[2] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  traitCollection = [environmentCopy traitCollection];
  if ([traitCollection userInterfaceIdiom] == 2)
  {
    goto LABEL_4;
  }

  traitCollection2 = [environmentCopy traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 8)
  {

LABEL_4:
    goto LABEL_5;
  }

  traitCollection3 = [environmentCopy traitCollection];
  userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

  if (userInterfaceIdiom != 3)
  {
    goto LABEL_25;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _window = [environmentCopy _window];
    windowScene = [_window windowScene];
    _carPlaySceneComponent = [windowScene _carPlaySceneComponent];

    if (_carPlaySceneComponent)
    {
      UIKeyboardCarPlayFiveRowKeyboardEnabled = [_carPlaySceneComponent disableFiveRowKeyboards] ^ 1;
    }
  }

  systemInputViewController = self->_systemInputViewController;
  if (!systemInputViewController)
  {
    searchBar = [(UISearchController *)self searchBar];
    searchField = [searchBar searchField];
    v13 = [UISystemInputViewController systemInputViewControllerForResponder:searchField editorView:0 containingResponder:self];
    v14 = self->_systemInputViewController;
    self->_systemInputViewController = v13;
  }

  [UISystemInputViewController setKeyboardInteractionModel:[(UISearchController *)self _requestedInteractionModel]];
  if (!self->_systemInputViewController)
  {
    goto LABEL_22;
  }

  [(UISearchBar *)self->_searchBar _setShowsDeleteButton:([(UISearchController *)self _requestedInteractionModel]& 1) == 0];
  [(UISystemInputViewController *)self->_systemInputViewController setRequestedInteractionModel:[(UISearchController *)self _requestedInteractionModel]];
  v15 = self->_systemInputViewController;
  searchBar2 = [(UISearchController *)self searchBar];
  searchField2 = [searchBar2 searchField];
  [(UISystemInputViewController *)v15 setPersistentDelegate:searchField2];

  traitCollection4 = [(UIViewController *)self traitCollection];
  if ([traitCollection4 userInterfaceIdiom] == 3)
  {
    v19 = [(UISearchController *)self _requestedInteractionModel]& 1;
  }

  else
  {
    v19 = 0;
  }

  childViewControllers = [(UIViewController *)self childViewControllers];
  v21 = [childViewControllers containsObject:self->_systemInputViewController];

  if (v21)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [(UIViewController *)self addChildViewController:self->_systemInputViewController];
  view = [(UIViewController *)self view];
  view2 = [(UIViewController *)self->_systemInputViewController view];
  [view addSubview:view2];

  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  view3 = [(UIViewController *)self->_systemInputViewController view];
  [view3 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v28 = v27;

  view4 = [(UIViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v32 = v31;

  view5 = [(UIViewController *)self->_systemInputViewController view];
  [view5 setFrame:{v24, v25, v32, v28}];

  [(UIViewController *)self->_systemInputViewController didMoveToParentViewController:self];
  if (v19)
  {
    v44 = MEMORY[0x1E69977A0];
    view6 = [(UIViewController *)self->_systemInputViewController view];
    leadingAnchor = [view6 leadingAnchor];
    view7 = [(UIViewController *)self view];
    safeAreaLayoutGuide2 = [view7 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v45;
    view8 = [(UIViewController *)self->_systemInputViewController view];
    trailingAnchor = [view8 trailingAnchor];
    view9 = [(UIViewController *)self view];
    safeAreaLayoutGuide3 = [view9 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [v44 activateConstraints:v39];

LABEL_20:
    [(UISystemInputViewController *)self->_systemInputViewController updateBackdropForCarPlay];
  }

LABEL_21:
  [(UISystemInputViewController *)self->_systemInputViewController reloadInputViewsForPersistentDelegate];
LABEL_22:
  view10 = [(UIViewController *)self view];
  [view10 set_ensureSystemInputViewAboveSearchBarContainerView:1];

  if (!systemInputViewController)
  {
    [(UISearchController *)self _didCreateSystemInputViewController];
  }

LABEL_25:
}

- (id)_viewToInsertSearchBarContainerViewUnder
{
  view = [(UIViewController *)self view];
  _ensureSystemInputViewAboveSearchBarContainerView = [view _ensureSystemInputViewAboveSearchBarContainerView];

  if (_ensureSystemInputViewAboveSearchBarContainerView)
  {
    view2 = [(UIViewController *)self->_systemInputViewController view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (UISystemInputViewController)_systemInputViewController
{
  [(UISearchController *)self _createSystemInputViewControllerIfNeededForTraitEnvironment:self];
  systemInputViewController = self->_systemInputViewController;

  return systemInputViewController;
}

- (id)_systemInputViewControllerAfterUpdate:(BOOL)update
{
  systemInputViewController = self->_systemInputViewController;
  if (!systemInputViewController || update)
  {
    _systemInputViewController = [(UISearchController *)self _systemInputViewController];
  }

  else
  {
    _systemInputViewController = systemInputViewController;
  }

  return _systemInputViewController;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  if (self->_barPresentationStyle && ![(UISearchController *)self isBeingDismissed])
  {
    v8 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
    [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:v8];
    previouslyFocusedView = [contextCopy previouslyFocusedView];
    nextFocusedView = [contextCopy nextFocusedView];
    v11 = nextFocusedView;
    if (nextFocusedView)
    {
      v12 = nextFocusedView;
    }

    else
    {
      _focusSystem = [(UIViewController *)self _focusSystem];
      focusedItem = [_focusSystem focusedItem];
      v12 = _UIFocusEnvironmentContainingView(focusedItem);
    }

    if (previouslyFocusedView)
    {
      searchBar = [(UISearchController *)self searchBar];
      if ([previouslyFocusedView isDescendantOfView:searchBar])
      {
        v16 = 1;
      }

      else
      {
        view = [(UIViewController *)self->_systemInputViewController view];
        v16 = [previouslyFocusedView isDescendantOfView:view];
      }

      [previouslyFocusedView isDescendantOfView:self->_resultsControllerViewContainer];
    }

    else
    {
      v16 = 0;
    }

    searchBar2 = [(UISearchController *)self searchBar];
    if ([v12 isDescendantOfView:searchBar2])
    {
      v19 = 1;
    }

    else
    {
      [(UIViewController *)self->_systemInputViewController view];
      v21 = v20 = v8;
      v19 = [v12 isDescendantOfView:v21];

      v8 = v20;
    }

    if (!(v16 & 1 | ((v19 & 1) == 0)))
    {
      [v8 didFocusSearchBarForController:self];
      goto LABEL_34;
    }

    if (v19 & 1 | ((v16 & 1) == 0))
    {
      if (!v12)
      {
        v22 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
        if (v22)
        {
          v23 = v22;
          v24 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
          v59 = v8;
          resolvedKeyboardStyle = [v24 resolvedKeyboardStyle];

          v51 = resolvedKeyboardStyle == 2;
          v8 = v59;
          if (!v51)
          {
            presentingViewController = [(UIViewController *)self presentingViewController];
            navigationController = [presentingViewController navigationController];

            presentedViewController = [(UIViewController *)self presentedViewController];
            if (presentedViewController)
            {
              v55 = 0;
            }

            else
            {
              searchResultsController = [(UISearchController *)self searchResultsController];
              presentedViewController2 = [searchResultsController presentedViewController];
              if (presentedViewController2)
              {
                v55 = 0;
              }

              else
              {
                presentedViewController3 = [navigationController presentedViewController];
                v55 = presentedViewController3 == 0;
              }
            }

            v70 = 0;
            v64 = 0;
            v65 = &v64;
            v66 = 0x3032000000;
            v67 = __Block_byref_object_copy__171;
            v68 = __Block_byref_object_dispose__171;
            v69 = 0;
            presentingViewController2 = [(UIViewController *)self presentingViewController];
            v43 = presentingViewController2;
            if (presentingViewController2)
            {
              selfCopy = presentingViewController2;
            }

            else
            {
              selfCopy = self;
            }

            v45 = selfCopy;

            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __71__UISearchController_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
            v61[3] = &unk_1E7103DA8;
            v46 = navigationController;
            v62 = v46;
            v63 = &v64;
            v56 = v45;
            [(UIViewController *)v45 _enumerateAncestorViewControllersUntilStop:&v70 usingBlock:v61];
            viewControllers = [v46 viewControllers];
            v57 = [viewControllers indexOfObject:v65[5]];

            v58 = v46;
            viewControllers2 = [v46 viewControllers];
            topViewController = [v46 topViewController];
            v50 = [viewControllers2 indexOfObject:topViewController];

            if (v65[5])
            {
              v51 = v57 == v50;
            }

            else
            {
              v51 = 1;
            }

            v52 = v51;
            [(UIViewController *)self view];
            v53 = v8 = v59;
            window = [v53 window];
            if (window)
            {

              if ((v55 & v52) == 1)
              {
                [v59 willFocusOffscreenViewForController:self withHeading:1];
                [v59 didFocusSearchBarForController:self];
              }
            }

            else
            {
            }

            _Block_object_dispose(&v64, 8);
          }
        }
      }

LABEL_34:
      if (v19)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0x8000000;
      }

      self->_controllerFlags = (*&self->_controllerFlags & 0xF7FFFFFF | v32);
      nextFocusedItem = [contextCopy nextFocusedItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        previouslyFocusedItem = [contextCopy previouslyFocusedItem];
        nextFocusedItem2 = [contextCopy nextFocusedItem];

        if (previouslyFocusedItem == nextFocusedItem2)
        {
LABEL_42:

          goto LABEL_43;
        }

        searchBar3 = [(UISearchController *)self searchBar];
        [searchBar3 _hideOrResetHelperPlaceHolder:0];

        [(UISearchController *)self _displayDefaultHelperPlaceholderMessage];
        searchBar4 = +[UIDictationController sharedInstance];
        [searchBar4 updateHelperMessageDisplayIfNeeded];
      }

      else
      {
        searchBar4 = [(UISearchController *)self searchBar];
        [searchBar4 _hideOrResetHelperPlaceHolder:1];
      }

      goto LABEL_42;
    }

    v60 = v8;
    _scroller = [v12 _scroller];
    v29_scroller = [_scroller _scroller];
    if ([v29_scroller isDescendantOfView:self->_resultsControllerViewContainer])
    {
      do
      {
        v31 = v29_scroller;

        v29_scroller = [v31 _scroller];

        _scroller = v31;
      }

      while (([v29_scroller isDescendantOfView:self->_resultsControllerViewContainer] & 1) != 0);
    }

    else
    {
      v31 = _scroller;
    }

    v8 = v60;
    if (v31)
    {
      if ([(UISystemInputViewController *)self->_systemInputViewController resolvedKeyboardStyle]== 1)
      {
        if (([v31 _canScrollY] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if ([v31 _canScrollX])
      {
LABEL_32:
        [v60 didUnfocusSearchBarForController:self];
      }
    }

LABEL_33:

    goto LABEL_34;
  }

LABEL_43:
}

void __71__UISearchController_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 parentViewController];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    *a3 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)_updateKeyboardFocusGuidesForAnimator:(id)animator
{
  if ([animator collapesKeyboardWhenNotFocused])
  {
    [(UISearchController *)self _createOrUpdateKeyboardToSearchResultsFocusGuide];
    [(UISearchController *)self _createOrUpdateSearchResultsToHiddenKeyboardFocusGuide];
    systemInputViewController = self->_systemInputViewController;

    [(UISystemInputViewController *)systemInputViewController setKeyboardCanBecomeFocusedWithZeroAlpha:1];
  }

  else
  {
    keyboardToSearchResultsFocusGuide = [(UISearchController *)self keyboardToSearchResultsFocusGuide];

    if (keyboardToSearchResultsFocusGuide)
    {
      keyboardToSearchResultsFocusGuide2 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
      owningView = [keyboardToSearchResultsFocusGuide2 owningView];
      keyboardToSearchResultsFocusGuide3 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
      [owningView removeLayoutGuide:keyboardToSearchResultsFocusGuide3];

      [(UISearchController *)self setKeyboardToSearchResultsFocusGuide:0];
    }

    searchResultsToHiddenKeyboardFocusGuide = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];

    if (searchResultsToHiddenKeyboardFocusGuide)
    {
      searchResultsToHiddenKeyboardFocusGuide2 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
      owningView2 = [searchResultsToHiddenKeyboardFocusGuide2 owningView];
      searchResultsToHiddenKeyboardFocusGuide3 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
      [owningView2 removeLayoutGuide:searchResultsToHiddenKeyboardFocusGuide3];

      [(UISearchController *)self setSearchResultsToHiddenKeyboardFocusGuide:0];
    }

    [(UISystemInputViewController *)self->_systemInputViewController setKeyboardCanBecomeFocusedWithZeroAlpha:0];
    view = [(UIViewController *)self->_systemInputViewController view];
    [view setAlpha:1.0];
  }
}

- (void)_createOrUpdateKeyboardToSearchResultsFocusGuide
{
  v36[4] = *MEMORY[0x1E69E9840];
  v3 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
  view = [v3 view];

  if (view)
  {
    keyboardToSearchResultsFocusGuide = [(UISearchController *)self keyboardToSearchResultsFocusGuide];

    v6 = 0x1E695D000;
    if (!keyboardToSearchResultsFocusGuide)
    {
      v7 = objc_alloc_init(UIFocusGuide);
      [(UIFocusGuide *)v7 setEnabled:0];
      view2 = [v3 view];
      [view2 addLayoutGuide:v7];

      v27 = MEMORY[0x1E69977A0];
      heightAnchor = [(UILayoutGuide *)v7 heightAnchor];
      v32 = [heightAnchor constraintEqualToConstant:1.0];
      v36[0] = v32;
      topAnchor = [(UILayoutGuide *)v7 topAnchor];
      view3 = [v3 view];
      bottomAnchor = [view3 bottomAnchor];
      v28 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v36[1] = v28;
      leadingAnchor = [(UILayoutGuide *)v7 leadingAnchor];
      view4 = [v3 view];
      leadingAnchor2 = [view4 leadingAnchor];
      v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v36[2] = v10;
      view5 = [v3 view];
      trailingAnchor = [view5 trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)v7 trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v36[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      [v27 activateConstraints:v15];

      v6 = 0x1E695D000uLL;
      [(UISearchController *)self setKeyboardToSearchResultsFocusGuide:v7];
    }

    searchResultsController = [(UISearchController *)self searchResultsController];
    if (searchResultsController)
    {
      searchResultsController2 = [(UISearchController *)self searchResultsController];
      v35 = searchResultsController2;
      v18 = [*(v6 + 3784) arrayWithObjects:&v35 count:1];
    }

    else
    {
      v18 = 0;
    }

    searchBar = [(UISearchController *)self searchBar];
    if ([searchBar showsScopeBar])
    {
      searchBar2 = [(UISearchController *)self searchBar];
      _scopeBar = [searchBar2 _scopeBar];

      if (!_scopeBar)
      {
LABEL_11:
        keyboardToSearchResultsFocusGuide2 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
        [keyboardToSearchResultsFocusGuide2 setPreferredFocusEnvironments:v18];

        goto LABEL_12;
      }

      searchBar = [(UISearchController *)self searchBar];
      _scopeBar2 = [searchBar _scopeBar];
      v34 = _scopeBar2;
      v23 = [*(v6 + 3784) arrayWithObjects:&v34 count:1];

      v18 = v23;
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_createOrUpdateSearchResultsToHiddenKeyboardFocusGuide
{
  v27[4] = *MEMORY[0x1E69E9840];
  v3 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
  view = [v3 view];

  if (view)
  {
    v5 = 0x1E695D000;
    if (!self->_searchResultsToHiddenKeyboardFocusGuide)
    {
      v6 = objc_alloc_init(UIFocusGuide);
      [(UIFocusGuide *)v6 setEnabled:0];
      view2 = [(UIViewController *)self view];
      [view2 addLayoutGuide:v6];

      v19 = MEMORY[0x1E69977A0];
      heightAnchor = [(UILayoutGuide *)v6 heightAnchor];
      v24 = [heightAnchor constraintEqualToConstant:1.0];
      v27[0] = v24;
      leadingAnchor = [(UILayoutGuide *)v6 leadingAnchor];
      view3 = [(UIViewController *)self view];
      leadingAnchor2 = [view3 leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v27[1] = v20;
      topAnchor = [(UILayoutGuide *)v6 topAnchor];
      view4 = [v3 view];
      bottomAnchor = [view4 bottomAnchor];
      v9 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v27[2] = v9;
      view5 = [(UIViewController *)self view];
      trailingAnchor = [view5 trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)v6 trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v27[3] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
      [v19 activateConstraints:v14];

      [(UISearchController *)self setSearchResultsToHiddenKeyboardFocusGuide:v6];
      v5 = 0x1E695D000uLL;
    }

    v26 = v3;
    v15 = [*(v5 + 3784) arrayWithObjects:&v26 count:1];
    searchResultsToHiddenKeyboardFocusGuide = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
    [searchResultsToHiddenKeyboardFocusGuide setPreferredFocusEnvironments:v15];
  }
}

- (void)_willUpdateFocusInContext:(id)context
{
  contextCopy = context;
  dyld_program_sdk_at_least();
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  nextFocusedItem = [contextCopy nextFocusedItem];
  if (previouslyFocusedItem != nextFocusedItem && self->_barPresentationStyle)
  {
    isBeingDismissed = [(UISearchController *)self isBeingDismissed];

    if (isBeingDismissed)
    {
      goto LABEL_12;
    }

    previouslyFocusedItem = [contextCopy nextFocusedView];
    view = [(UIViewController *)self view];
    [previouslyFocusedItem bounds];
    [view convertRect:previouslyFocusedItem fromView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    nextFocusedItem = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
    [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:nextFocusedItem];
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MaxY = CGRectGetMaxY(v26);
    view2 = [(UIViewController *)self view];
    [view2 bounds];
    v18 = CGRectGetMaxY(v27);

    if (MaxY > v18)
    {
      v19 = 2;
LABEL_8:
      [nextFocusedItem willFocusOffscreenViewForController:self withHeading:v19];
      _scroller = [previouslyFocusedItem _scroller];
      if (_scroller)
      {
        [previouslyFocusedItem bounds];
        [_scroller convertRect:previouslyFocusedItem fromView:?];
        [_scroller scrollRectToVisible:1 animated:?];
      }

      goto LABEL_11;
    }

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MinY = CGRectGetMinY(v28);
    view3 = [(UIViewController *)self view];
    [view3 bounds];
    v22 = CGRectGetMinY(v29);

    if (MinY < v22)
    {
      v19 = 1;
      goto LABEL_8;
    }
  }

LABEL_11:

LABEL_12:
}

- (void)viewWillAppear:(BOOL)appear
{
  v30.receiver = self;
  v30.super_class = UISearchController;
  [(UIViewController *)&v30 viewWillAppear:appear];
  _searchPresentationController = [(UISearchController *)self _searchPresentationController];
  if ([(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView])
  {
    v5 = [(UIViewController *)self->_searchResultsController _contentOrObservableScrollViewForEdge:1];
    v6 = v5;
    if (v5)
    {
      if ([v5 _compatibleContentInsetAdjustmentBehavior] == 101)
      {
        searchResultsController = self->_searchResultsController;
        if (searchResultsController)
        {
          if ([(UIViewController *)searchResultsController automaticallyAdjustsScrollViewInsets])
          {
            presentingViewController = [_searchPresentationController presentingViewController];
            navigationController = [presentingViewController navigationController];

            if (navigationController)
            {
              [v6 contentInset];
              v11 = v10;
              v13 = v12;
              v15 = v14;
              [navigationController _scrollViewBottomContentInsetForViewController:self->_searchResultsController];
              [v6 setContentInset:{v11, v13, v16, v15}];
            }
          }
        }
      }
    }
  }

  else if (([_searchPresentationController animatorShouldLayoutPresentationViews] & 1) == 0)
  {
    [_searchPresentationController finalFrameForContainerView];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    scopeButtonTitles = [(UISearchBar *)self->_searchBar scopeButtonTitles];
    if ([scopeButtonTitles count])
    {
      v26 = [(UISearchBar *)self->_searchBar _wouldCombineLandscapeBarsForSize:v22, v24];

      if (!v26)
      {
        [(UISearchBar *)self->_searchBar _scopeBarHeight];
        v24 = v24 + v27;
      }
    }

    else
    {
    }

    v31.origin.x = v18;
    v31.origin.y = v20;
    v31.size.width = v22;
    v31.size.height = v24;
    MaxY = CGRectGetMaxY(v31);
    [(UIView *)self->_resultsControllerViewContainer frame];
    [(UISearchController *)self _resizeResultsControllerWithDelta:0.0, MaxY - v29];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = UISearchController;
  [(UIViewController *)&v3 viewWillDisappear:disappear];
}

- (void)_willPresentFromViewController:(id)controller
{
  [(UISearchController *)self _startDeferringSettingSearchSuggestionsWithReason:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained willPresentSearchController:self];
  }

  automaticallyShowsCancelButton = [(UISearchController *)self automaticallyShowsCancelButton];
  v5 = objc_loadWeakRetained(&self->_activeBorrowedSearchTabHostedFieldConfiguration);
  [v5 setShowsCancelAction:automaticallyShowsCancelButton];
}

- (void)_didPresentFromViewController:(id)controller
{
  [(UISearchController *)self _stopDeferringSearchSuggestionsWithReason:1 postDeferralAction:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 didPresentSearchController:self];
      v5 = v7;
    }
  }
}

- (void)_willDismissSearchController
{
  v11 = *MEMORY[0x1E69E9840];
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    *&self->_controllerFlags |= 0x800000u;
    if (_UISolariumEnabled())
    {
      navigationController = [presentingViewController navigationController];
      [navigationController _setInteractiveScrollActive:0];
LABEL_4:
    }
  }

  else
  {
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_6;
    }

    if (os_variant_has_internal_diagnostics())
    {
      navigationController = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(navigationController, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, navigationController, OS_LOG_TYPE_FAULT, "-_willDismissSearchController unexpectedly received with nil presentingViewController on iOS16.4 or later. self = %@", &v9, 0xCu);
      }

      goto LABEL_4;
    }

    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_willDismissSearchController___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-_willDismissSearchController unexpectedly received with nil presentingViewController on iOS16.4 or later. self = %@", &v9, 0xCu);
    }
  }

LABEL_6:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained willDismissSearchController:self];
  }

  v6 = objc_loadWeakRetained(&self->_activeBorrowedSearchTabHostedFieldConfiguration);
  [v6 setShowsCancelAction:0];

  _trackableState = [(UISearchController *)self _trackableState];
  [_trackableState setActive:0 animated:1];
}

- (void)_didDismissSearchController
{
  *&self->_controllerFlags &= ~0x800000u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 didDismissSearchController:self];
      v4 = v6;
    }
  }
}

- (CGSize)preferredContentSize
{
  [(UIViewController *)self->_searchResultsController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = UISearchController;
  controllerCopy = controller;
  [(UIViewController *)&v9 _preferredContentSizeDidChangeForChildViewController:controllerCopy];
  [controllerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(UIViewController *)self setPreferredContentSize:v6, v8];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if (self->_searchResultsController)
  {
    if (!style)
    {
      return;
    }
  }

  else
  {
    if (!style)
    {
      return;
    }

    if (style == 7 || style == 2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Presenting UISearchController in a popover or form sheet while reusing the search origin as the search results destination makes little sense. Initialize UISearchController with a proper search results controller to present as a popover or in a form sheet."];
    }
  }

  if (style > 7 || ((1 << style) & 0x94) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"UISearchController currently only supports UIModalPresentationCustom, UIModalPresentationPopover and UIModalPresentationFormSheet presentation styles"}];
  }

  v6 = style == 7 || style == 2;
  self->__showResultsForEmptySearch = v6;
  v7.receiver = self;
  v7.super_class = UISearchController;
  [(UIViewController *)&v7 setModalPresentationStyle:style];
}

- (void)setActive:(BOOL)active
{
  if (active)
  {

    [(UISearchController *)self _performAutomaticPresentationFromTextField:0];
  }

  else
  {
    v4 = +[UIView areAnimationsEnabled];

    [(UISearchController *)self _dismissPresentation:v4];
  }
}

- (void)setAutomaticallyShowsSearchResultsController:(BOOL)automaticallyShowsSearchResultsController
{
  if (automaticallyShowsSearchResultsController)
  {
    controllerFlags = self->_controllerFlags;
    v5 = 128;
  }

  else
  {
    showsSearchResultsController = [(UISearchController *)self showsSearchResultsController];
    v5 = 0;
    if (showsSearchResultsController)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    controllerFlags = (*&self->_controllerFlags & 0xFFFFFEFF | v7);
    self->_controllerFlags = controllerFlags;
  }

  self->_controllerFlags = (*&controllerFlags & 0xFFFFFF7F | v5);
  searchBar = self->_searchBar;

  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:searchBar];
}

- (void)setShowsSearchResultsController:(BOOL)showsSearchResultsController
{
  if (showsSearchResultsController)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFE7F | v3);
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:self->_searchBar];
}

- (void)setAutomaticallyShowsCancelButton:(BOOL)automaticallyShowsCancelButton
{
  if (automaticallyShowsCancelButton)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFEF | v3);
}

- (void)setAutomaticallyShowsScopeBar:(BOOL)automaticallyShowsScopeBar
{
  if (automaticallyShowsScopeBar)
  {
    v3 = 0;
  }

  else
  {
    v3 = 32;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFF9F | v3);
}

- (void)setScopeBarActivation:(UISearchControllerScopeBarActivation)scopeBarActivation
{
  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFF9F | (32 * (scopeBarActivation & 3)));
  if ((scopeBarActivation & 3) != 0)
  {
    v4 = scopeBarActivation & 3;
  }

  else
  {
    v5 = dyld_program_sdk_at_least();
    v4 = 2;
    if (!v5)
    {
      v4 = 3;
    }
  }

  searchBar = self->_searchBar;

  [(UISearchBar *)searchBar _setActiveSearchDeferringScopeBar:v4 == 2];
}

- (void)_scopeBarWillShowOrHide
{
  if (self && (*(self + 1116) & 0x60) == 0x20 && [*(self + 992) _isHostedByNavigationBar])
  {
    WeakRetained = objc_loadWeakRetained((self + 1312));
    _navigationBar = [WeakRetained _navigationBar];

    v3 = objc_loadWeakRetained((self + 1312));
    [_navigationBar _searchScopeBarWillManuallyShowOrHideForNavigationItem:v3];
  }
}

- (void)_dci_setAutomaticScopeBarShowsOnPresentation:(BOOL)presentation
{
  if (presentation)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(UISearchController *)self setScopeBarActivation:v3];
}

- (BOOL)_dci_automaticScopeBarShowsOnPresentation
{
  if (self)
  {
    v2 = (self->_controllerFlags >> 5) & 3;
    if (!v2)
    {
      v3 = dyld_program_sdk_at_least();
      v2 = 2;
      if (!v3)
      {
        v2 = 3;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 == 3;
}

- (void)_connectSearchBar:(id)bar
{
  barCopy = bar;
  searchBar = self->_searchBar;
  if (searchBar != barCopy)
  {
    v10 = barCopy;
    [(UISearchBar *)searchBar _setSearchController:0];
    objc_storeStrong(&self->_searchBar, bar);
    [(UISearchBar *)self->_searchBar _setSearchController:self];
    [(UISearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
    [(UIView *)self->_searchBar frame];
    if (CGRectEqualToRect(v12, *MEMORY[0x1E695F058]))
    {
      [(UIView *)self->_searchBar sizeToFit];
    }

    searchTextField = [(UISearchBar *)self->_searchBar searchTextField];
    _suggestionController = [searchTextField _suggestionController];
    suggestionController = self->_suggestionController;
    self->_suggestionController = _suggestionController;

    barCopy = v10;
  }
}

- (void)_sizeSearchViewToPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UISearchController__sizeSearchViewToPresentingViewController___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
  [UIView performWithoutAnimation:v6];
}

void __64__UISearchController__sizeSearchViewToPresentingViewController___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 40) view];
  [v11 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) view];
  [v10 setFrame:{v3, v5, v7, v9}];
}

- (BOOL)_searchBarShouldFinalizeBecomingFirstResponder
{
  _locatePresentingViewController = [(UISearchController *)self _locatePresentingViewController];
  _transitionCoordinator = [(UIViewController *)_locatePresentingViewController _transitionCoordinator];
  v5 = _transitionCoordinator;
  v7 = _locatePresentingViewController == self || _transitionCoordinator == 0;
  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 2)
  {
    goto LABEL_10;
  }

  traitCollection2 = [(UIViewController *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 8)
  {

LABEL_10:
    goto LABEL_11;
  }

  traitCollection3 = [(UIViewController *)self traitCollection];
  v13 = [traitCollection3 userInterfaceIdiom] == 3;

  if (v13 || v7 || !v5)
  {
    if (!v13 && !v7)
    {
      goto LABEL_25;
    }
  }

  else if (![(UIViewController *)self isBeingPresented]|| ![(UISearchBar *)self->_searchBar _isHostedByNavigationBar]&& ![(UISearchController *)self _isSearchTextFieldBorrowed])
  {
    goto LABEL_25;
  }

LABEL_11:
  if (_locatePresentingViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_globalSearchDelegate);
    if (WeakRetained)
    {

      goto LABEL_14;
    }

    if ([(UIViewController *)_locatePresentingViewController _appearState]!= 3 && [(UIViewController *)_locatePresentingViewController _appearState])
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

LABEL_14:
  v11 = 1;
LABEL_26:

  return v11;
}

- (void)_clearSearchSuggestionsIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 1118))
    {
      _suggestionController = [self _suggestionController];
      hasVisibleMenu = [_suggestionController hasVisibleMenu];

      if (hasVisibleMenu)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v5 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
          {
            v6 = 138412290;
            selfCopy2 = self;
            _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }

        else
        {
          v4 = *(__UILogGetCategoryCachedImpl("Assert", &_clearSearchSuggestionsIfNecessary___s_category_0) + 8);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v6 = 138412290;
            selfCopy2 = self;
            _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }
      }

      else
      {
        [self setSearchSuggestions:0];
      }
    }

    *(self + 1116) &= ~0x10000u;
  }
}

- (void)_searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  if (dyld_program_sdk_at_least())
  {
    [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
    searchResultsUpdater = [(UISearchController *)self searchResultsUpdater];
    [searchResultsUpdater updateSearchResultsForSearchController:self];
  }
}

- (void)_tvos_searchBar:(id)bar textDidChange:(id)change programatically:(BOOL)programatically
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "UIKit issue: dedicated tvOS method not executed on this platform: %@", &v9, 0xCu);
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_tvos_searchBar_textDidChange_programatically____s_category) + 8);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIKit issue: dedicated tvOS method not executed on this platform: %@", &v9, 0xCu);
  }

LABEL_5:
}

- (void)__searchBar:(int)bar changedSearchTextFieldContentProgramatically:
{
  v13 = a2;
  if (self)
  {
    if (bar)
    {
      if ([self isBeingDismissed])
      {
        goto LABEL_16;
      }

      _searchBarTextField = [v13 _searchBarTextField];
      if (![_searchBarTextField _hasContent])
      {
        goto LABEL_15;
      }
    }

    v6 = (*(self + 1116) >> 5) & 3;
    if (v6 != 2 && (v6 || !dyld_program_sdk_at_least()) || [*(self + 992) showsScopeBar])
    {
      if ((bar & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_15:

      goto LABEL_16;
    }

    scopeButtonTitles = [*(self + 992) scopeButtonTitles];
    v8 = [scopeButtonTitles count];

    if (bar)
    {
    }

    if (v8)
    {
      v9 = *(self + 992);
      WeakRetained = objc_loadWeakRetained((self + 1312));
      _navigationBar = [WeakRetained _navigationBar];
      _searchBarTextField2 = [v13 _searchBarTextField];
      [v9 _setDeferredAutomaticShowsScopeBarInNavigationBar:_navigationBar hasContent:{objc_msgSend(_searchBarTextField2, "_hasContent")}];

      _searchBarTextField = objc_loadWeakRetained((self + 1312));
      [_searchBarTextField _searchControllerReadyForDeferredAutomaticShowsScopeBar];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)__searchTextFieldDidSetOrInsertTokens:(uint64_t)tokens
{
  v3 = a2;
  if (tokens)
  {
    v5 = v3;
    _searchBarTextField = [*(tokens + 992) _searchBarTextField];

    v3 = v5;
    if (_searchBarTextField == v5)
    {
      [(UISearchController *)tokens __searchBar:1 changedSearchTextFieldContentProgramatically:?];
      v3 = v5;
    }
  }
}

- (void)_ios_searchBar:(id)bar textDidChange:(id)change programatically:(BOOL)programatically
{
  programaticallyCopy = programatically;
  barCopy = bar;
  changeCopy = change;
  if (!programaticallyCopy)
  {
    _searchBarTextField = [barCopy _searchBarTextField];
    _needsDelayedSearchControllerPresentation = [_searchBarTextField _needsDelayedSearchControllerPresentation];

    if (_needsDelayedSearchControllerPresentation)
    {
      [(UISearchController *)self _performDidBeginEditingForSearchBar:barCopy];
    }

    else
    {
      [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
    }
  }

  [(UISearchController *)self __searchBar:barCopy changedSearchTextFieldContentProgramatically:programaticallyCopy];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:barCopy];
  isFirstResponder = [barCopy isFirstResponder];
  searchResultsUpdater = [(UISearchController *)self searchResultsUpdater];
  [searchResultsUpdater updateSearchResultsForSearchController:self];

  if (isFirstResponder && ([barCopy isFirstResponder] & 1) == 0)
  {
    [barCopy becomeFirstResponder];
  }
}

- (void)_searchBarTokensDidChange:(id)change
{
  changeCopy = change;
  [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:changeCopy];

  searchResultsUpdater = [(UISearchController *)self searchResultsUpdater];
  [searchResultsUpdater updateSearchResultsForSearchController:self];
}

- (void)_performDidBeginEditingForSearchBar:(id)bar
{
  barCopy = bar;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __58__UISearchController__performDidBeginEditingForSearchBar___block_invoke;
  v15 = &unk_1E70F8908;
  objc_copyWeak(&v18, &location);
  v5 = barCopy;
  v16 = v5;
  selfCopy = self;
  v6 = _Block_copy(&v12);
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
  v8 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
  v9 = v8;
  if (WeakRetained == v8)
  {

    goto LABEL_5;
  }

  v10 = objc_loadWeakRetained(&self->_globalSearchDelegate);

  if (!v10)
  {
LABEL_5:
    v6[2](v6, 1);
    goto LABEL_6;
  }

  v11 = objc_loadWeakRetained(&self->_globalSearchDelegate);
  [v11 _showViewControllerForGlobalSearchController:self completion:{v6, v12, v13, v14, v15}];

LABEL_6:
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __58__UISearchController__performDidBeginEditingForSearchBar___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = [*(a1 + 32) _searchBarTextField];
      [v5 _resetNeedsDelayedSearchControllerPresentation];

      [WeakRetained _performAutomaticPresentationFromTextField:1];
      v6 = [WeakRetained traitCollection];
      v7 = [v6 userInterfaceIdiom];

      if (v7 == 3)
      {
        v8 = [WeakRetained _focusSystem];
        v9 = [v8 focusedItem];
        v10 = _UIFocusEnvironmentContainingView(v9);

        if ([v10 isDescendantOfView:*(*(a1 + 40) + 1208)])
        {
          v11 = [WeakRetained _animatorForBarPresentationStyle:*(*(a1 + 40) + 1000) dismissing:0];
          [v11 didFocusSearchBarForController:WeakRetained];
        }
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Failed to show column for search controller", buf, 2u);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &UIDictationInputModeInvocationSourceGenerativeField_block_invoke___s_category_0) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Failed to show column for search controller", v14, 2u);
      }
    }
  }
}

- (void)_searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  _searchBarTextField = [editingCopy _searchBarTextField];
  _needsDelayedSearchControllerPresentation = [_searchBarTextField _needsDelayedSearchControllerPresentation];

  if ((_needsDelayedSearchControllerPresentation & 1) == 0)
  {
    [(UISearchController *)self _performDidBeginEditingForSearchBar:editingCopy];
  }
}

- (void)_searchBarCancelButtonClicked:(id)clicked
{
  [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
  v4 = +[UIView areAnimationsEnabled];

  [(UISearchController *)self _dismissPresentation:v4];
}

- (void)_searchBarSearchTextFieldRequirementDidChange:(id)change
{
  changeCopy = change;
  [(UISearchController *)self _setDisplaysSearchBarItemGroupInline:[(UISearchController *)self _displaysSearchBarItemGroupInline]];
  _requiresSearchTextField = [changeCopy _requiresSearchTextField];
  _searchBarTextField = [changeCopy _searchBarTextField];

  window = [_searchBarTextField window];

  v7 = window;
  if (_requiresSearchTextField && !window)
  {
    controllerFlags = self->_controllerFlags;
    self->_controllerFlags = (*&controllerFlags | 0x400000);
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    _navigationBar = [WeakRetained _navigationBar];
    [_navigationBar layoutIfNeeded];

    v7 = 0;
    self->_controllerFlags = (*&self->_controllerFlags & 0xFFBFFFFF | (((*&controllerFlags >> 22) & 1) << 22));
  }
}

- (id)_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    splitViewController2 = 0;
    goto LABEL_24;
  }

  _viewControllerForAncestor = [(UIView *)searchBar _viewControllerForAncestor];
  if (!_viewControllerForAncestor)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    _hasIntegratedSearchBarInNavigationBar = [WeakRetained _hasIntegratedSearchBarInNavigationBar];
    if (_hasIntegratedSearchBarInNavigationBar && (-[UISearchController _inlineSearchBarItemGroup](self, "_inlineSearchBarItemGroup"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isHidden] & 1) == 0))
    {
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      _hasIntegratedSearchBarInToolbar = [v8 _hasIntegratedSearchBarInToolbar];

      if (_hasIntegratedSearchBarInNavigationBar)
      {

        if (_hasIntegratedSearchBarInToolbar)
        {
          goto LABEL_12;
        }

LABEL_10:
        _viewControllerForAncestor = 0;
        goto LABEL_13;
      }

      if (!_hasIntegratedSearchBarInToolbar)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v11 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    _navigationBar = [v11 _navigationBar];
    _viewControllerForAncestor = [_navigationBar _effectiveDelegate];
  }

LABEL_13:
  splitViewController = [_viewControllerForAncestor splitViewController];
  _globalSearchController = [splitViewController _globalSearchController];

  if (_globalSearchController == self)
  {
    splitViewController2 = [_viewControllerForAncestor splitViewController];
    _globalSearchDonorViewController = [splitViewController2 _globalSearchDonorViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      splitViewController2 = 0;
      goto LABEL_23;
    }

    topViewController = [_viewControllerForAncestor topViewController];
    splitViewController2 = topViewController;
    if (self->_managedPalette)
    {
      goto LABEL_23;
    }

    if ([topViewController _isNestedNavigationController])
    {
      topViewController2 = [splitViewController2 topViewController];

      splitViewController2 = topViewController2;
    }

    navigationItem = [splitViewController2 navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

    if (_searchControllerIfAllowed == self)
    {
      goto LABEL_23;
    }

    _globalSearchDonorViewController = 0;
  }

  splitViewController2 = _globalSearchDonorViewController;
LABEL_23:

LABEL_24:

  return splitViewController2;
}

- (id)_locatePresentingViewController
{
  _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar = [(UISearchController *)self _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar];
  if (_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar)
  {
    _viewControllerForAncestor = _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar;
  }

  else
  {
    searchBar = [(UISearchController *)self searchBar];
    _viewControllerForAncestor = [searchBar _viewControllerForAncestor];

    if (!_viewControllerForAncestor)
    {
      _window = [(UIViewController *)self _window];
      _viewControllerForAncestor = [_window rootViewController];
    }
  }

  v7 = _firstChildViewControllerDefiningPresentationContext(_viewControllerForAncestor);
  if (!v7)
  {
    v7 = _viewControllerForAncestor;
  }

  return v7;
}

- (void)_contentScrollViewDidFinishContentOffsetAnimation
{
  if (self)
  {
    deferredActivationOrDismissal = self->_deferredActivationOrDismissal;
    if (deferredActivationOrDismissal)
    {
      deferredActivationOrDismissal[2](deferredActivationOrDismissal, a2);
      v4 = self->_deferredActivationOrDismissal;
      self->_deferredActivationOrDismissal = 0;

      *&self->_controllerFlags &= ~0x1000000u;
    }
  }
}

- (void)_performAutomaticPresentationFromTextField:(BOOL)field
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    if ([v7 searchBarPlacement] == 2)
    {
      v8 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      v9 = [v8 _shouldSearchControllerDeferPresentationTransition:self];

      if (v9)
      {
        if ((*(&self->_controllerFlags + 3) & 1) != 0 || !self->_deferredActivationOrDismissal)
        {
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke;
          aBlock[3] = &unk_1E7101C60;
          objc_copyWeak(&v25, &location);
          fieldCopy = field;
          v10 = _Block_copy(aBlock);
          deferredActivationOrDismissal = self->_deferredActivationOrDismissal;
          self->_deferredActivationOrDismissal = v10;

          *&self->_controllerFlags |= 0x1000000u;
          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);
        }

        return;
      }
    }

    else
    {
    }
  }

  _locatePresentingViewController = [(UISearchController *)self _locatePresentingViewController];
  if (([_locatePresentingViewController isBeingDismissed] & 1) == 0)
  {
    if (self)
    {
      v13 = self->super._parentModalViewController != 0;
    }

    else
    {
      v13 = 0;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_2;
    v20[3] = &unk_1E70F67F8;
    v20[4] = self;
    v14 = _locatePresentingViewController;
    v21 = v14;
    v22 = v13;
    fieldCopy2 = field;
    v15 = _Block_copy(v20);
    transitionCoordinator = [v14 transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [v14 transitionCoordinator];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_4;
      v18[3] = &unk_1E70F3770;
      v19 = v15;
      [transitionCoordinator2 animateAlongsideTransition:0 completion:v18];
    }

    else
    {
      v15[2](v15);
    }
  }
}

void __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAutomaticPresentationFromTextField:*(a1 + 40)];
}

void __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_2(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _createSystemInputViewControllerIfNeededForTraitEnvironment:*(a1 + 40)];
  v2 = *(a1 + 32);
  if ((*(a1 + 48) & 1) != 0 || v2 && *(v2 + 112))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 1264));
    goto LABEL_5;
  }

  v8 = objc_loadWeakRetained((v2 + 1320));
  if ([v8 _hasIntegratedSearchBarInNavigationBar])
  {
    v9 = [*(*(a1 + 32) + 992) _searchBarTextField];
    v10 = [v9 window];
    if (!v10)
    {
      v22 = [*(a1 + 32) _inlineSearchBarItemGroup];
      v23 = [v22 isHidden];

      if ((v23 & 1) == 0)
      {
        [*(*(a1 + 32) + 992) _shrinkToButtonIfNecessary];
        [*(*(a1 + 32) + 992) _setRequiresSearchTextField:1];
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  [*(a1 + 32) _sizeSearchViewToPresentingViewController:*(a1 + 40)];
  if ((*(a1 + 49) & 1) == 0)
  {
    [*(*(a1 + 32) + 992) _setSuppressFirstResponderOnTransitionToLayoutStateSearching:1];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1264));
  if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained presentSearchController:*(a1 + 32)], (v11 = *(a1 + 32)) == 0) || !*(v11 + 112))
  {
    if (*(a1 + 40))
    {
      *(*(a1 + 32) + 1116) = *(*(a1 + 32) + 1116) & 0xFFFFFDFF | ((*(a1 + 49) & 1) << 9);
      [*(a1 + 32) _willPresentFromViewController:*(a1 + 40)];
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_3;
      v27 = &unk_1E70F35B8;
      v28 = v13;
      v29 = v12;
      [v29 presentViewController:v13 animated:1 completion:&v24];
      if ([*(a1 + 32) modalPresentationStyle] == 7)
      {
        v14 = [*(a1 + 32) popoverPresentationController];
        [v14 setPermittedArrowDirections:15];
        v15 = [*(a1 + 32) searchBar];
        v16 = [v15 searchField];
        [v14 setSourceView:v16];

        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          v17 = [*(a1 + 32) searchBar];
          v18 = [v17 searchField];
          [v18 bounds];
          [v14 setSourceRect:?];
        }

        v19 = [*(a1 + 32) searchBar];
        v20 = [v19 searchField];
        v30[0] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        [v14 setPassthroughViews:v21];
      }
    }
  }

LABEL_5:
  v4 = *(a1 + 32);
  v5 = [v4 searchBar];
  [v4 _updateVisibilityOfSearchResultsForSearchBar:v5];

  v6 = [*(a1 + 32) searchResultsUpdater];
  [v6 updateSearchResultsForSearchController:*(a1 + 32)];

  v7 = [*(a1 + 32) _trackableState];
  [v7 setActive:1 animated:1];
}

uint64_t __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _didPresentFromViewController:*(a1 + 40)];
  *(*(a1 + 32) + 1116) &= ~0x200u;
  return result;
}

- (void)_dismissPresentation:(BOOL)presentation
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    if ([v7 searchBarPlacement] == 2)
    {
      v8 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      v9 = [v8 _shouldSearchControllerDeferPresentationTransition:self];

      if (v9)
      {
        if ((*(&self->_controllerFlags + 3) & 1) == 0 || !self->_deferredActivationOrDismissal)
        {
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __43__UISearchController__dismissPresentation___block_invoke;
          aBlock[3] = &unk_1E7101C60;
          objc_copyWeak(&v17, &location);
          presentationCopy = presentation;
          v10 = _Block_copy(aBlock);
          deferredActivationOrDismissal = self->_deferredActivationOrDismissal;
          self->_deferredActivationOrDismissal = v10;

          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
        }

        return;
      }
    }

    else
    {
    }
  }

  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController || (dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UISearchController *)self _willDismissSearchController];
  }

  searchTextField = [(UISearchBar *)self->_searchBar searchTextField];
  [searchTextField setText:0];
  [searchTextField setTokens:MEMORY[0x1E695E0F0]];
  [UISearchController _resignSearchBarAsFirstResponder:self->_searchBar];
  v14 = +[UIView areAnimationsEnabled];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__UISearchController__dismissPresentation___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [presentingViewController dismissViewControllerAnimated:v14 completion:v15];
}

void __43__UISearchController__dismissPresentation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissPresentation:*(a1 + 40)];
}

- (void)_showSearchSuggestionsListIfApplicable
{
  WeakRetained = objc_loadWeakRetained((self + 1320));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((self + 1320));
    _hasIntegratedSearchBarInNavigationBar = [v4 _hasIntegratedSearchBarInNavigationBar];

    if ((_hasIntegratedSearchBarInNavigationBar & 1) == 0)
    {
      v6 = *(self + 1224);
      if (!v6)
      {
        v7 = [[_UISearchSuggestionsListViewController alloc] initWithSearchController:self];
        v8 = *(self + 1224);
        *(self + 1224) = v7;

        [self addChildViewController:*(self + 1224)];
        view = [*(self + 1224) view];
        [view setAutoresizingMask:18];
        if (*(self + 1272))
        {
          [self loadViewIfRequired];
          [*(self + 1208) bounds];
          [view setFrame:?];
          v10 = *(self + 1208);
          view2 = [*(self + 1224) view];
          view4 = v10;
          v13 = view2;
        }

        else
        {
          view3 = [self view];
          [view3 bounds];
          [view setFrame:?];

          view4 = [self view];
          view2 = view4;
          v13 = view;
        }

        [view4 addSubview:v13];

        [*(self + 1224) didMoveToParentViewController:self];
        v6 = *(self + 1224);
      }

      view5 = [v6 view];
      [view5 setHidden:0];
    }
  }
}

- (void)_updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:(BOOL)update
{
  updateCopy = update;
  isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
  controllerFlags = self->_controllerFlags;
  if (*&controllerFlags & 0x60000) != 0 || (*&controllerFlags & 0x8000) != 0 || (WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar)) == 0 || (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar), v10 = [v9 _hasIntegratedSearchBarInNavigationBar], v9, v8, (v10))
  {
    [(UISearchController *)self _hideSearchSuggestionsList];
    if (!updateCopy)
    {
      return;
    }

    goto LABEL_6;
  }

  _suggestionController = [(UISearchController *)self _suggestionController];
  suggestions = [_suggestionController suggestions];
  v15 = [suggestions count];

  if (!v15 || ([(UISearchController *)self _isSearchResultsControllerViewUnhidden]& 1) != 0 || (*(&self->_controllerFlags + 2) & 0x90) != 0)
  {
    [(UISearchController *)self _hideSearchSuggestionsList];
  }

  else
  {
    [(UISearchController *)self _showSearchSuggestionsListIfApplicable];
    [(_UISearchSuggestionsListViewController *)self->_suggestionsListViewController updateList];
  }

  *&self->_controllerFlags &= ~0x100000u;
  if (updateCopy)
  {
LABEL_6:
    searchBar = self->_searchBar;
    v12 = isSuggestionsListViewControllerView ^ [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];

    [(UISearchController *)self _requestNavigationControllerObservingUpdateForSearchBar:v12 visibilityChangedForSearchSuggestionsList:0 forSearchResultsController:?];
  }
}

- (void)_requestNavigationControllerObservingUpdateForSearchBar:(int)bar visibilityChangedForSearchSuggestionsList:(int)list forSearchResultsController:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (self && bar | list)
  {
    presentingViewController = [self presentingViewController];
    if (presentingViewController && _UIBarsApplyChromelessEverywhere() && [v7 _isHostedByNavigationBar])
    {
      isSearchResultsControllerView = [(UISearchController *)self _isSearchResultsControllerViewUnhidden];
      isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
      v11 = isSearchResultsControllerView ^ list;
      v12 = isSuggestionsListViewControllerView ^ bar;
      navigationController = [presentingViewController navigationController];
      _outermostNavigationController = [navigationController _outermostNavigationController];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v35 = __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke;
      v36 = &unk_1E711EE58;
      v15 = _outermostNavigationController;
      v37 = v15;
      v38 = presentingViewController;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v30 = __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke_2;
      v31 = &unk_1E711EE80;
      selfCopy = self;
      v33 = v38;
      if (isSearchResultsControllerView && isSuggestionsListViewControllerView)
      {
        if (os_variant_has_internal_diagnostics())
        {
          logb = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(logb, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            selfCopy5 = self;
            _os_log_fault_impl(&dword_188A29000, logb, OS_LOG_TYPE_FAULT, "UISearchController should not be showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }

        else
        {
          log = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B010) + 8);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy5 = self;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "UISearchController should not be showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }
      }

      v27 = 0;
      v28 = 0;
      v30(v29, isSearchResultsControllerView, isSuggestionsListViewControllerView, &v28, &v27);
      v16 = v28;
      v17 = v27;
      if ((v11 & v12) == 1)
      {
        if (os_variant_has_internal_diagnostics())
        {
          logc = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(logc, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            selfCopy5 = self;
            _os_log_fault_impl(&dword_188A29000, logc, OS_LOG_TYPE_FAULT, "UISearchController should not have been showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }

        else
        {
          loga = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B018) + 8);
          if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy5 = self;
            _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "UISearchController should not have been showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }
      }

      v25 = 0;
      v26 = 0;
      v30(v29, v11, v12, &v26, &v25);
      v18 = v26;
      v19 = v25;
      v20 = v19;
      if (v16 != v18 || v17 != v19)
      {
        if (v16 != v18)
        {
          [v15 _stopObservingContentScrollView:v18];
        }

        if (v17 != v20)
        {
          [v15 _stopObservingContentScrollView:v20];
        }

        v35(v34, v16, v17);
      }
    }
  }
}

- (void)_updateHasPendingSuggestionMenuRefreshFlagForReason:(int64_t)reason
{
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x80000) != 0)
  {
    goto LABEL_51;
  }

  if (reason <= 1)
  {
    if (reason)
    {
      if (reason != 1)
      {
        return;
      }

LABEL_53:
      self->_controllerFlags = (*&controllerFlags & 0xFFD7FFFF);
      return;
    }

LABEL_14:
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    _navigationBar = [WeakRetained _navigationBar];
    _viewControllerForAncestor = [_navigationBar _viewControllerForAncestor];

    v17 = [_viewControllerForAncestor _splitViewControllerEnforcingClass:1];
    v18 = v17;
    if (reason)
    {
      _suggestionController = [(UISearchController *)self _suggestionController];
      hasVisibleMenu = [_suggestionController hasVisibleMenu];

      _isExpanding = [v18 _isExpanding];
      v22 = self->_controllerFlags;
      if (_isExpanding | ((*&v22 & 0x40000) >> 18))
      {
        v23 = 0x200000;
      }

      else
      {
        v23 = 0x80000;
      }

      if (_isExpanding | ((*&v22 & 0x40000) >> 18))
      {
        v24 = -2097153;
      }

      else
      {
        v24 = -786433;
      }

      if (!hasVisibleMenu)
      {
        v23 = 0;
      }

      v25 = (v24 & *&v22 | v23);
      goto LABEL_24;
    }

    if ([v17 _isExpanding])
    {
      isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
      v27 = self->_controllerFlags;
      if (isSuggestionsListViewControllerView)
      {
        v28 = 0x200000;
LABEL_33:
        v25 = (v28 | *&v27 & 0xFFDFFFFF);
LABEL_24:
        self->_controllerFlags = v25;
LABEL_50:

LABEL_51:
        if (reason != 1)
        {
          return;
        }

        controllerFlags = self->_controllerFlags;
        goto LABEL_53;
      }

      if ((*&v27 & 0x40000) == 0)
      {
        v28 = 0;
        goto LABEL_33;
      }

      _navigationBar = [(UISearchController *)self _suggestionController];
      if ([_navigationBar hasVisibleMenu])
      {
        v32 = 0x200000;
      }

      else
      {
        v32 = 0;
      }

      v30 = (*&self->_controllerFlags & 0xFFDFFFFF | v32);
    }

    else
    {
      v29 = *&self->_controllerFlags & 0x60000;
      if (!v29 || (-[UISearchController searchSuggestions](self, "searchSuggestions"), _navigationBar = objc_claimAutoreleasedReturnValue(), ![_navigationBar count]))
      {
        if ([(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden])
        {
          v31 = 0x80000;
        }

        else
        {
          v31 = 0;
        }

        self->_controllerFlags = (*&self->_controllerFlags & 0xFFF7FFFF | v31);
        if (!v29)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      v30 = (*&self->_controllerFlags | 0x80000);
    }

    self->_controllerFlags = v30;
LABEL_49:

    goto LABEL_50;
  }

  if (reason == 2 || reason == 4)
  {
    goto LABEL_14;
  }

  if (reason == 3)
  {
    searchBar = [(UISearchController *)self searchBar];
    isFirstResponder = [searchBar isFirstResponder];

    v8 = self->_controllerFlags;
    if (isFirstResponder)
    {
      if ((v8 & 0x60000) != 0)
      {
        searchSuggestions = [(UISearchController *)self searchSuggestions];
        v10 = [searchSuggestions count];
        v11 = self->_controllerFlags;
        v12 = *&v11 | 0x80000;
        v13 = *&v11 & 0xFFF7FFFF | (((*&v11 >> 21) & 1) << 19);
        if (v10)
        {
          v13 = v12;
        }

        self->_controllerFlags = v13;

        v8 = self->_controllerFlags;
      }

      else
      {
        v8 = (v8 >> 2) & 0x80000 | v8 & 0xFFF1FFFF;
      }
    }

    self->_controllerFlags = (v8 & 0xFFDFFFFF);
    if ((v8 & 0x80000) != 0)
    {
      superview = [(UIView *)self->_searchBar superview];
      [superview setNeedsLayout];
    }
  }
}

void __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v8 = a2;
  if (a2 == v5)
  {
    v9 = 5;
  }

  else
  {
    [v6 _updateAndObserveScrollView:a2 viewController:v7 forEdges:1];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v10;
    v9 = 4;
  }

  [v6 _updateAndObserveScrollView:v8 viewController:v7 forEdges:v9];
}

id __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke_2(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    *a4 = [*(*(a1 + 32) + 1272) _contentOrObservableScrollViewForEdge:1];
    v8 = *(a1 + 32);
    v9 = 1272;
  }

  else
  {
    if (!a3)
    {
      v10 = (a1 + 40);
      *a4 = [*(a1 + 40) _contentOrObservableScrollViewForEdge:1];
      goto LABEL_7;
    }

    *a4 = [*(*(a1 + 32) + 1224) _contentOrObservableScrollViewForEdge:1];
    v8 = *(a1 + 32);
    v9 = 1224;
  }

  v10 = (v8 + v9);
LABEL_7:
  result = [*v10 _contentOrObservableScrollViewForEdge:4];
  *a5 = result;
  return result;
}

- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)bar
{
  barCopy = bar;
  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 2)
  {
    goto LABEL_4;
  }

  traitCollection2 = [(UIViewController *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 8)
  {

LABEL_4:
LABEL_5:
    view = [(UIViewController *)self->_searchResultsController view];
    [view setHidden:0];

    goto LABEL_6;
  }

  traitCollection3 = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    goto LABEL_5;
  }

  if ([(UIViewController *)self modalPresentationStyle]== UIModalPresentationCustom)
  {
    isSearchResultsControllerView = [(UISearchController *)self _isSearchResultsControllerViewUnhidden];
    isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
    _showsSearchResultsController = [(UISearchController *)self _showsSearchResultsController];
    view2 = [(UIViewController *)self->_searchResultsController view];
    [view2 setHidden:!_showsSearchResultsController];

    [(UISearchController *)self _updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:0];
    _isSuggestionsListViewControllerViewUnhidden = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
    _isSearchResultsControllerViewUnhidden = [(UISearchController *)self _isSearchResultsControllerViewUnhidden];
    [(UISearchController *)self _requestNavigationControllerObservingUpdateForSearchBar:barCopy visibilityChangedForSearchSuggestionsList:isSuggestionsListViewControllerView ^ _isSuggestionsListViewControllerViewUnhidden forSearchResultsController:isSearchResultsControllerView ^ _isSearchResultsControllerViewUnhidden];
  }

  else
  {
    _showsSearchResultsController2 = [(UISearchController *)self _showsSearchResultsController];
    view3 = [(UIViewController *)self->_searchResultsController view];
    [view3 setHidden:!_showsSearchResultsController2];

    [(UISearchController *)self _updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:0];
    _searchPresentationController = [(UISearchController *)self _searchPresentationController];
    presentedView = [_searchPresentationController presentedView];

    if (presentedView)
    {
      if ([(UISearchController *)self _showsSearchResultsController])
      {
        _isSuggestionsListViewControllerViewUnhidden2 = 1;
      }

      else
      {
        _isSuggestionsListViewControllerViewUnhidden2 = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
      }

      [_searchPresentationController setContentVisible:_isSuggestionsListViewControllerViewUnhidden2];
    }
  }

LABEL_6:
}

- (void)_setupForCurrentTraitCollection
{
  traitCollection = [(UIViewController *)self traitCollection];
  if (traitCollection)
  {
    v4 = traitCollection;
    traitCollection2 = [(UIViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

    [(UISearchController *)self _uninstallBackGestureRecognizer];
    [(UISearchController *)self _uninstallDoneGestureRecognizer];
    if ((userInterfaceIdiom == 8 || userInterfaceIdiom == 2) && dyld_program_sdk_at_least() && (-[UISearchController _systemInputViewControllerAfterUpdate:](self, "_systemInputViewControllerAfterUpdate:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 resolvedKeyboardStyle], v7, v8 == 2))
    {
      [(UISearchController *)self _installBackGestureRecognizer];
      [(UISearchController *)self _installDoneGestureRecognizer];

      [(UISearchController *)self _removeCarPlayLimitedUIObserver];
    }

    else if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      selfCopy = self;
      v10 = selfCopy;
      if (selfCopy)
      {
        v11 = selfCopy;
        while ([(UIViewController *)v11 _transitionsChildViewControllers])
        {
          parentViewController = [(UIViewController *)v11 parentViewController];
          v13 = parentViewController;
          if (parentViewController)
          {
            presentingViewController = parentViewController;
          }

          else
          {
            presentingViewController = [(UIViewController *)v11 presentingViewController];
          }

          v15 = presentingViewController;

          v11 = v15;
          if (!v15)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        [(UISearchController *)v10 _installBackGestureRecognizer];
        v11 = 0;
      }

      [(UISearchController *)v10 _installDoneGestureRecognizer];
      _carPlayLimitedUIToken = [(UISearchController *)v10 _carPlayLimitedUIToken];
      traitCollection3 = [(UIViewController *)v10 traitCollection];
      userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

      if (userInterfaceIdiom2 != 3 || _carPlayLimitedUIToken)
      {
        traitCollection4 = [(UIViewController *)v10 traitCollection];
        userInterfaceIdiom3 = [traitCollection4 userInterfaceIdiom];

        if (userInterfaceIdiom3 != 3 && _carPlayLimitedUIToken)
        {
          [(UISearchController *)v10 _removeCarPlayLimitedUIObserver];
        }
      }

      else
      {
        objc_initWeak(&location, v10);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __53__UISearchController__setupForCurrentTraitCollection__block_invoke;
        v26 = &unk_1E70F3D28;
        objc_copyWeak(&v27, &location);
        _carPlayLimitedUIToken = [defaultCenter addObserverForName:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0 queue:mainQueue usingBlock:&v23];

        [(UISearchController *)v10 _setCarPlayLimitedUIToken:_carPlayLimitedUIToken, v23, v24, v25, v26];
        [(UISearchController *)v10 _limitedUIDidChangeAnimated:0];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    [(UISearchController *)self _uninstallBackGestureRecognizer];

    [(UISearchController *)self _uninstallDoneGestureRecognizer];
  }
}

void __53__UISearchController__setupForCurrentTraitCollection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _limitedUIDidChangeAnimated:1];
}

- (void)_installBackGestureRecognizer
{
  if (!self->_backButtonDismissGestureRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleBackButtonGesture_];
    backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
    self->_backButtonDismissGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_backButtonDismissGestureRecognizer setAllowedPressTypes:&unk_1EFE2D468];
    [(UIGestureRecognizer *)self->_backButtonDismissGestureRecognizer setDelegate:self];
  }

  view = [(UIViewController *)self view];
  [view addGestureRecognizer:self->_backButtonDismissGestureRecognizer];
}

- (void)_uninstallBackGestureRecognizer
{
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  [viewIfLoaded removeGestureRecognizer:self->_backButtonDismissGestureRecognizer];

  backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
  self->_backButtonDismissGestureRecognizer = 0;
}

- (void)_handleBackButtonGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    v4 = +[UIView areAnimationsEnabled];

    [(UISearchController *)self _dismissPresentation:v4];
  }
}

- (void)_installDoneGestureRecognizer
{
  if (!self->_doneButtonGestureRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__updateFocusFromDoneButton_];
    doneButtonGestureRecognizer = self->_doneButtonGestureRecognizer;
    self->_doneButtonGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_doneButtonGestureRecognizer setAllowedPressTypes:&unk_1EFE2D480];
  }

  view = [(UIViewController *)self view];
  [view addGestureRecognizer:self->_doneButtonGestureRecognizer];
}

- (void)_uninstallDoneGestureRecognizer
{
  viewIfLoaded = [(UIViewController *)self viewIfLoaded];
  [viewIfLoaded removeGestureRecognizer:self->_doneButtonGestureRecognizer];

  doneButtonGestureRecognizer = self->_doneButtonGestureRecognizer;
  self->_doneButtonGestureRecognizer = 0;
}

- (void)_updateFocusFromDoneButton:(id)button
{
  if ([button state] == 3)
  {
    _focusSystem = [(UIViewController *)self _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v6 = _UIFocusEnvironmentContainingView(focusedItem);
    view = [(UIViewController *)self->_systemInputViewController view];
    v8 = [v6 isDescendantOfView:view];

    if (v8)
    {
      *&self->_controllerFlags |= 0x8000000u;

      [(UIViewController *)self setNeedsFocusUpdate];
    }
  }
}

- (void)_limitedUIDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v58[4] = *MEMORY[0x1E69E9840];
  _carPlayLimitedUIViewController = [(UISearchController *)self _carPlayLimitedUIViewController];
  objc_initWeak(&location, self);
  _screen = [(UIViewController *)self _screen];
  _isSoftKeyboardLimited = [_screen _isSoftKeyboardLimited];

  view = [(UIViewController *)self->_systemInputViewController view];
  [view setUserInteractionEnabled:_isSoftKeyboardLimited ^ 1u];

  searchBar = [(UISearchController *)self searchBar];
  searchField = [searchBar searchField];
  [searchField setUserInteractionEnabled:_isSoftKeyboardLimited ^ 1u];

  if (_isSoftKeyboardLimited)
  {
    if (!_carPlayLimitedUIViewController)
    {
      _carPlayLimitedUIViewController = objc_alloc_init(_UISearchControllerLimitedUIShieldViewController);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke;
      v55[3] = &unk_1E70F2F80;
      objc_copyWeak(&v56, &location);
      v55[4] = self;
      [(_UISearchControllerLimitedUIShieldViewController *)_carPlayLimitedUIViewController setDismissAction:v55];
      [(UISearchController *)self _setCarPlayLimitedUIViewController:_carPlayLimitedUIViewController];
      [(UIViewController *)self addChildViewController:_carPlayLimitedUIViewController];
      view2 = [(UIViewController *)_carPlayLimitedUIViewController view];
      view3 = [(UIViewController *)self view];
      [view3 bounds];
      [view2 setFrame:?];

      view4 = [(UIViewController *)self view];
      view5 = [(UIViewController *)_carPlayLimitedUIViewController view];
      [view4 addSubview:view5];

      [(UIViewController *)_carPlayLimitedUIViewController didMoveToParentViewController:self];
      view6 = [(UIViewController *)_carPlayLimitedUIViewController view];
      [view6 setTranslatesAutoresizingMaskIntoConstraints:0];

      v31 = MEMORY[0x1E69977A0];
      view7 = [(UIViewController *)_carPlayLimitedUIViewController view];
      topAnchor = [view7 topAnchor];
      view8 = [(UIViewController *)self view];
      topAnchor2 = [view8 topAnchor];
      v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v58[0] = v40;
      view9 = [(UIViewController *)_carPlayLimitedUIViewController view];
      bottomAnchor = [view9 bottomAnchor];
      view10 = [(UIViewController *)self view];
      bottomAnchor2 = [view10 bottomAnchor];
      v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v58[1] = v35;
      view11 = [(UIViewController *)_carPlayLimitedUIViewController view];
      leadingAnchor = [view11 leadingAnchor];
      view12 = [(UIViewController *)self view];
      leadingAnchor2 = [view12 leadingAnchor];
      v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v58[2] = v16;
      view13 = [(UIViewController *)_carPlayLimitedUIViewController view];
      trailingAnchor = [view13 trailingAnchor];
      view14 = [(UIViewController *)self view];
      trailingAnchor2 = [view14 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v58[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
      [v31 activateConstraints:v22];

      searchBar2 = [(UISearchController *)self searchBar];
      cancelButton = [searchBar2 cancelButton];
      [cancelButton setEnabled:0];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_2;
      aBlock[3] = &unk_1E70F5AC0;
      aBlock[4] = self;
      v25 = _Block_copy(aBlock);
      v26 = v25;
      if (animatedCopy)
      {
        view15 = [(UIViewController *)_carPlayLimitedUIViewController view];
        [view15 setAlpha:0.0];

        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_3;
        v51[3] = &unk_1E70F35B8;
        v52 = _carPlayLimitedUIViewController;
        selfCopy = self;
        [UIView animateWithDuration:v51 animations:v26 completion:0.4];
      }

      else
      {
        (*(v25 + 2))(v25, 1);
      }

      objc_destroyWeak(&v56);
    }
  }

  else if (_carPlayLimitedUIViewController)
  {
    searchBar3 = [(UISearchController *)self searchBar];
    [searchBar3 setHidden:0];

    searchBar4 = [(UISearchController *)self searchBar];
    cancelButton2 = [searchBar4 cancelButton];
    [cancelButton2 setEnabled:1];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_4;
    v49[3] = &unk_1E70F35B8;
    v49[4] = self;
    v50 = _carPlayLimitedUIViewController;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_5;
    v46[3] = &unk_1E70F3C60;
    _carPlayLimitedUIViewController = v50;
    v47 = _carPlayLimitedUIViewController;
    selfCopy2 = self;
    [UIView animateWithDuration:v49 animations:v46 completion:0.4];
    [(UISearchController *)self _setCarPlayLimitedUIViewController:0];
    [(UIViewController *)self setNeedsFocusUpdate];
  }

  objc_destroyWeak(&location);
}

void __50__UISearchController__limitedUIDidChangeAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 navigationController];

  if (v3)
  {
    [*(a1 + 32) _willDismissSearchController];
    v4 = [WeakRetained searchBar];
    v5 = [v4 searchField];
    [v5 setText:0];

    v6 = [WeakRetained searchBar];
    [UISearchController _resignSearchBarAsFirstResponder:v6];

    v7 = [WeakRetained presentingViewController];
    v8 = [v7 navigationController];
    v9 = [v8 popViewControllerAnimated:1];

    [*(a1 + 32) _didDismissSearchController];
  }

  else
  {
    [WeakRetained setActive:0];
  }
}

void __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) view];
  v4 = [*(a1 + 32) searchBar];
  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  v9 = [v3 _firstCommonAncestorToView:v4 givenCommonAncestor:v6];

  v7 = v9;
  if (!v9)
  {
    v8 = [*(a1 + 32) searchBar];
    [v8 setNeedsFocusUpdate];

    v7 = *(a1 + 32);
  }

  [v7 setNeedsFocusUpdate];
}

void __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) searchBar];
  [v3 setAlpha:0.0];
}

void __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:0.0];
}

void __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = [*(a1 + 40) searchBar];
  [v3 becomeFirstResponder];
}

- (void)_removeCarPlayLimitedUIObserver
{
  _carPlayLimitedUIToken = [(UISearchController *)self _carPlayLimitedUIToken];
  if (_carPlayLimitedUIToken)
  {
    v5 = _carPlayLimitedUIToken;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:v5];

    [(UISearchController *)self _setCarPlayLimitedUIToken:0];
    _carPlayLimitedUIToken = v5;
  }
}

- (id)focusItemContainer
{
  _carPlayLimitedUIViewController = [(UISearchController *)self _carPlayLimitedUIViewController];
  view = [_carPlayLimitedUIViewController view];
  v5 = view;
  if (view)
  {
    focusItemContainer = view;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UISearchController;
    focusItemContainer = [(UIViewController *)&v9 focusItemContainer];
  }

  v7 = focusItemContainer;

  return v7;
}

- (void)_updateBarPresentationStyleForPresentingViewController:(id)controller
{
  controllerCopy = controller;
  searchBar = [(UISearchController *)self searchBar];
  window = [searchBar window];

  if (window || -[UISearchController _isSearchTextFieldBorrowed](self, "_isSearchTextFieldBorrowed") && (WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar), [WeakRetained _navigationBar], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "window"), window = objc_claimAutoreleasedReturnValue(), v10, WeakRetained, window))
  {
    searchBar2 = [(UISearchController *)self searchBar];
    v7 = [_UISearchPresentationController shouldExciseSearchBar:searchBar2 duringPresentationWithPresenter:controllerCopy];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    self->_barPresentationStyle = v8;
  }

  else
  {
    self->_barPresentationStyle = 3;
  }
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  [(UISearchController *)self _updateBarPresentationStyleForPresentingViewController:presentingControllerCopy];
  modalPresentationStyle = [(UIViewController *)self modalPresentationStyle];
  if (modalPresentationStyle == UIModalPresentationFormSheet)
  {
    if ([(UISearchController *)self _allowFormSheetStylePresentation])
    {
      modalPresentationStyle = UIModalPresentationFormSheet;
    }

    else
    {
      modalPresentationStyle = UIModalPresentationCustom;
    }
  }

  traitCollection = [sourceControllerCopy traitCollection];
  if ([traitCollection userInterfaceIdiom] == 2)
  {

LABEL_8:
    v16 = [(_UISearchPresentationController *)[_UISearchATVPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
    v17 = 4;
LABEL_9:
    self->_barPresentationStyle = v17;
    goto LABEL_10;
  }

  traitCollection2 = [sourceControllerCopy traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 8)
  {
    goto LABEL_8;
  }

  traitCollection3 = [sourceControllerCopy traitCollection];
  userInterfaceIdiom2 = [traitCollection3 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 3)
  {
    v16 = [(_UISearchPresentationController *)[_UISearchCarPlayPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
    v17 = 5;
    goto LABEL_9;
  }

  switch(modalPresentationStyle)
  {
    case UIModalPresentationFormSheet:
      v22 = _UISearchFormSheetPresentationController;
      goto LABEL_21;
    case UIModalPresentationPopover:
      v22 = _UISearchPopoverPresentationController;
      goto LABEL_21;
    case UIModalPresentationCustom:
      v22 = _UISearchPresentationController;
LABEL_21:
      v16 = [[v22 alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
      goto LABEL_10;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:2673 description:{@"UISearchController only supports modal presentation styles UIModalPresentationPopover, UIModalPresentationFormSheet and UIModalPresentationCustom"}];

  v16 = 0;
LABEL_10:
  searchBar = [(UISearchController *)self searchBar];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:searchBar];

  return v16;
}

- (id)_searchPresentationController
{
  _parentModalViewController = [(UIViewController *)self _parentModalViewController];

  if (_parentModalViewController)
  {
    _parentModalViewController2 = [(UIViewController *)self _parentModalViewController];
    _originalPresentationController = [_parentModalViewController2 _originalPresentationController];
  }

  else
  {
    _originalPresentationController = 0;
  }

  adaptivePresentationController = [_originalPresentationController adaptivePresentationController];

  if (adaptivePresentationController)
  {
    adaptivePresentationController2 = [_originalPresentationController adaptivePresentationController];

    _originalPresentationController = adaptivePresentationController2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          _originalPresentationController = 0;
        }
      }
    }
  }

  return _originalPresentationController;
}

- (id)_animatorForBarPresentationStyle:(int)style dismissing:(BOOL)dismissing
{
  dismissingCopy = dismissing;
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  searchBar = [(UISearchController *)selfCopy searchBar];
  _searchController = [searchBar _searchController];

  if (_searchController != selfCopy)
  {
    if (dyld_program_sdk_at_least())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", searchBar, selfCopy}];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v20 = searchBar;
          v21 = 2112;
          v22 = selfCopy;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", buf, 0x16u);
        }
      }

      else
      {
        v10 = *(__UILogGetCategoryCachedImpl("Assert", &_handleOrThrowForDisconnectedSearchBarAsAppropriate___s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = searchBar;
          v21 = 2112;
          v22 = selfCopy;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", buf, 0x16u);
        }
      }

      [searchBar _setRequiresLegacyVisualProvider];
      v11 = _UIMainBundleIdentifier();
      v12 = [v11 isEqualToString:@"com.spotify.client"];

      if (v12)
      {
        v13 = [searchBar backgroundImageForBarPosition:2 barMetrics:0];
        [searchBar setBackgroundImage:v13 forBarPosition:2 barMetrics:101];
      }
    }
  }

  if (style <= 2)
  {
    if (style == 1)
    {
      v14 = _UISearchControllerTransplantSearchBarAnimator;
      goto LABEL_20;
    }

    if (style == 2)
    {
      v14 = _UISearchControllerInPlaceSearchBarAnimator;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (style == 3)
  {
    v14 = _UISearchControllerOffscreenSearchBarAnimator;
    goto LABEL_20;
  }

  if (style != 4)
  {
    if (style == 5)
    {
      v14 = _UISearchControllerCarPlaySearchBarAnimator;
LABEL_20:
      v15 = objc_alloc_init(v14);
      goto LABEL_24;
    }

LABEL_21:
    if (dismissingCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"UISearchController.m" lineNumber:2762 description:@"How did we get here? Was state restoration involved?"];
    }

    goto LABEL_23;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"presentationStyle is _UISearchBarPresentationStyleATV, but we're not on tvOS. This is not supported."}];
LABEL_23:
  v15 = 0;
LABEL_24:

  return v15;
}

- (id)_defaultAnimationController
{
  if (dyld_program_sdk_at_least())
  {
    barPresentationStyle = self->_barPresentationStyle;
    if (!barPresentationStyle)
    {
      [(UISearchController *)self _updateBarPresentationStyleForPresentingViewController:0];
      barPresentationStyle = self->_barPresentationStyle;
    }

    _defaultAnimationController = [(UISearchController *)self _animatorForBarPresentationStyle:barPresentationStyle dismissing:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UISearchController;
    _defaultAnimationController = [(UIViewController *)&v6 _defaultAnimationController];
  }

  return _defaultAnimationController;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:1];
  animator = self->_animator;
  self->_animator = v4;

  return self;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  sourceController = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0, sourceController];
  animator = self->_animator;
  self->_animator = sourceController;

  return self;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = UISearchController;
  [(UIViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy && !disappearCopy)
  {
    if ([(UIViewController *)self _appearState]== 2)
    {
      windowScene = [windowCopy windowScene];
      _interfaceOrientation = [windowScene _interfaceOrientation];

      if (self->_lastKnownInterfaceOrientation != _interfaceOrientation)
      {
        if (self->_managedPalette)
        {
          [(UISearchController *)self _adjustSearchBarSizeForOrientation:_interfaceOrientation];
        }

        self->_lastKnownInterfaceOrientation = _interfaceOrientation;
      }
    }

    goto LABEL_9;
  }

  if (windowCopy)
  {
LABEL_9:
    [(UISearchController *)self _setupForCurrentTraitCollection];
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = UISearchController;
  [(UIViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
  [(UIView *)self->_resultsControllerViewContainer bounds];
  v5 = v4;
  [(UIView *)self->_resultsControllerViewContainer safeAreaInsets];
  [(_UIScrollPocketInteraction *)self->_topSafeAreaInsetScrollPocketInteraction _setRect:0.0, 0.0, v5, v6];
  [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:v3];
  [v3 didRelayoutSearchBarForController:self];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = UISearchController;
  [(UIViewController *)&v16 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    if ([WeakRetained _hasIntegratedSearchBarInNavigationBar])
    {
      horizontalSizeClass = [collectionCopy horizontalSizeClass];
      traitCollection = [(UIViewController *)self traitCollection];
      horizontalSizeClass2 = [traitCollection horizontalSizeClass];

      if (horizontalSizeClass != horizontalSizeClass2)
      {
        _dci_searchSuggestions = [(UISearchController *)self _dci_searchSuggestions];
        if ([_dci_searchSuggestions count])
        {
          _suggestionController = [(UISearchController *)self _suggestionController];
          if ([_suggestionController hasVisibleMenu])
          {
            v14 = 0;
          }

          else
          {
            v14 = 0x100000;
          }

          self->_controllerFlags = (*&self->_controllerFlags & 0xFFEFFFFF | v14);
        }

        else
        {
          *&self->_controllerFlags &= ~0x100000u;
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __80__UISearchController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
        v15[3] = &unk_1E70F3B98;
        v15[4] = self;
        [coordinatorCopy animateAlongsideTransition:0 completion:v15];
      }
    }

    else
    {
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(UIViewController *)self view];
  _window = [view _window];
  _toWindowOrientation = [_window _toWindowOrientation];

  _managedPalette = [(UISearchController *)self _managedPalette];
  if (_managedPalette && [(UISearchController *)self isActive])
  {
    [_managedPalette frame];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__UISearchController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v17[3] = &unk_1E711EEA8;
    v17[4] = self;
    v17[5] = _toWindowOrientation;
    v17[6] = v12;
    v17[7] = v13;
    v17[8] = v14;
    v17[9] = v15;
    [coordinatorCopy animateAlongsideTransition:v17 completion:0];
    if (!_toWindowOrientation)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(UISearchController *)self _adjustSearchBarSizeForOrientation:_toWindowOrientation];
  if (_toWindowOrientation)
  {
LABEL_6:
    self->_lastKnownInterfaceOrientation = _toWindowOrientation;
  }

LABEL_7:
  v16.receiver = self;
  v16.super_class = UISearchController;
  [(UIViewController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];

  [(UISearchController *)self _updateHasPendingSuggestionMenuRefreshFlagForReason:2];
}

- (void)_adjustSearchBarSizeForOrientation:(int64_t)orientation oldPaletteFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(UISearchController *)self _containedInNavigationPaletteAndNotHidden])
  {
    return;
  }

  searchBar = [(UISearchController *)self searchBar];
  prompt = [searchBar prompt];
  if (prompt)
  {
    v12 = prompt;
    searchBar2 = [(UISearchController *)self searchBar];
    _scopeBarIsVisible = [searchBar2 _scopeBarIsVisible];

    if (_scopeBarIsVisible)
    {
      return;
    }
  }

  else
  {
  }

  searchBar3 = [(UISearchController *)self searchBar];
  objc_opt_class();
  if (searchBar3)
  {
    superview = searchBar3;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [superview superview];
    }

    while (superview);
  }

  else
  {
    superview = 0;
  }

  v45 = superview;

  searchBar4 = [(UISearchController *)self searchBar];
  [searchBar4 _defaultHeightForOrientation:orientation];
  v19 = v18;

  searchBar5 = [(UISearchController *)self searchBar];
  [searchBar5 frame];
  v22 = v21;

  v23 = v45;
  if (v22 != v19)
  {
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    IsNull = CGRectIsNull(v47);
    if (IsNull)
    {
      [v45 frame];
      v25 = CGRectGetHeight(v48);
      v26 = v45;
      v43 = v19 - v25;
      v44 = 0.0;
    }

    else
    {
      v43 = *(MEMORY[0x1E695F060] + 8);
      v44 = *MEMORY[0x1E695F060];
      v26 = v45;
    }

    [v26 frame];
    v28 = v27;
    v30 = v29;
    superview2 = [v45 superview];
    [superview2 bounds];
    v33 = v32;

    [v45 setFrame:{v28, v30, v33, v19}];
    searchBar6 = [(UISearchController *)self searchBar];
    [v45 bounds];
    [searchBar6 setFrame:?];

    searchBar7 = [(UISearchController *)self searchBar];
    [searchBar7 setNeedsLayout];

    searchBar8 = [(UISearchController *)self searchBar];
    [searchBar8 layoutIfNeeded];

    isActive = [(UISearchController *)self isActive];
    v23 = v45;
    if (isActive)
    {
      if (IsNull)
      {
        if ([(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView])
        {
          v39 = v43;
          v38 = v44;
LABEL_21:
          [(UISearchController *)self _updateSearchResultsContentScrollViewWithDelta:v38, v39];
LABEL_27:
          [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
          [(UIViewController *)self _updateContentOverlayInsetsForSelfAndChildren];
          v23 = v45;
          goto LABEL_28;
        }

        if (self->_managedPalette)
        {
          v51.origin.x = v28;
          v51.origin.y = v30;
          v51.size.width = v33;
          v51.size.height = v19;
          MaxY = CGRectGetMaxY(v51);
          [(UIView *)self->_resultsControllerViewContainer frame];
          v39 = MaxY - CGRectGetMinY(v52);
        }

        else
        {
          v39 = v43;
        }

        v38 = v44;
      }

      else
      {
        v49.origin.x = v28;
        v49.origin.y = v30;
        v49.size.width = v33;
        v49.size.height = v19;
        v40 = CGRectGetMaxY(v49);
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        v39 = v40 - CGRectGetMaxY(v50);
        _resultsControllerWillLayoutVisibleUnderContainerView = [(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView];
        v38 = 0.0;
        if (_resultsControllerWillLayoutVisibleUnderContainerView)
        {
          goto LABEL_21;
        }
      }

      [(UISearchController *)self _resizeResultsControllerWithDelta:v38, v39];
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (void)_updateSearchResultsContentScrollViewWithDelta:(CGSize)delta
{
  height = delta.height;
  v5 = [(UIViewController *)self->_searchResultsController _contentOrObservableScrollViewForEdge:1, delta.width];
  v6 = v5;
  if (v5)
  {
    v24 = v5;
    _compatibleContentInsetAdjustmentBehavior = [v5 _compatibleContentInsetAdjustmentBehavior];
    v6 = v24;
    if (_compatibleContentInsetAdjustmentBehavior == 101)
    {
      searchResultsController = self->_searchResultsController;
      if (searchResultsController)
      {
        automaticallyAdjustsScrollViewInsets = [(UIViewController *)searchResultsController automaticallyAdjustsScrollViewInsets];
        v6 = v24;
        if (automaticallyAdjustsScrollViewInsets)
        {
          edgesForExtendedLayout = [(UIViewController *)self->_searchResultsController edgesForExtendedLayout];
          v6 = v24;
          if (edgesForExtendedLayout)
          {
            [v24 contentOffset];
            v12 = v11;
            v14 = v13;
            [v24 contentInset];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v21 = v14 - height;
            v23 = height + v22;
            [v24 setContentOffset:{v12, v21}];
            [v24 setContentInset:{v23, v16, v18, v20}];
            v6 = v24;
          }
        }
      }
    }
  }
}

- (void)_updateSearchResultsPositionWithDelta:(CGSize)delta
{
  height = delta.height;
  width = delta.width;
  if (![(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView])
  {

    [(UISearchController *)self _resizeResultsControllerWithDelta:width, height];
  }
}

- (void)_updateSearchResultsControllerWithDelta:(CGSize)delta
{
  height = delta.height;
  width = delta.width;
  [(UISearchController *)self _updateSearchResultsContentScrollViewWithDelta:?];

  [(UISearchController *)self _updateSearchResultsPositionWithDelta:width, height];
}

- (void)_presentingViewControllerWillChange:(id)change
{
  v28 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v23.receiver = self;
  v23.super_class = UISearchController;
  [(UIViewController *)&v23 _presentingViewControllerWillChange:changeCopy];
  if (![(UIViewController *)self isBeingPresented])
  {
    goto LABEL_19;
  }

  [(UISearchController *)self _sizeSearchViewToPresentingViewController:changeCopy];
  [(UISearchController *)self _beginWatchingPresentingController];
  _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar = [(UISearchController *)self _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar];
  v6 = _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar;
  if (_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar)
  {
    if (([_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar definesPresentationContext] & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Search", &_presentingViewControllerWillChange____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "The topViewController (%@) of the navigation controller containing the presented search controller (%@) must have definesPresentationContext set to YES.", buf, 0x16u);
      }
    }
  }

  searchResultsController = [(UISearchController *)self searchResultsController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  searchResultsController2 = [(UISearchController *)self searchResultsController];
  topViewController = [searchResultsController2 topViewController];
  _existingView = [topViewController _existingView];

  if (!_existingView)
  {
    searchResultsController = [(UISearchController *)self searchResultsController];
    view = [searchResultsController view];
    [view layoutSubviews];

LABEL_9:
  }

  searchBar = [(UISearchController *)self searchBar];
  [searchBar _setScopeBarPosition:0];

  v14 = [changeCopy _splitViewControllerEnforcingClass:0];
  v15 = v14;
  if (v14)
  {
    if ([v14 isCollapsed])
    {
      v16 = 0;
    }

    else
    {
      masterViewController = [v15 masterViewController];
      _parentViewController = [(UIViewController *)changeCopy _parentViewController];
      do
      {
        v16 = _parentViewController != masterViewController;
        if (_parentViewController == masterViewController)
        {
          break;
        }

        v18_parentViewController = [(UIViewController *)_parentViewController _parentViewController];

        _parentViewController = v18_parentViewController;
      }

      while (v18_parentViewController);
    }
  }

  else
  {
    v16 = 1;
  }

  searchBar2 = [(UISearchController *)self searchBar];
  [searchBar2 _setAllowsInlineScopeBar:v16];

LABEL_19:
  if ([(UISearchController *)self isBeingDismissed])
  {
    [(UISearchController *)self _endWatchingPresentingController];
    searchResultsUpdater = [(UISearchController *)self searchResultsUpdater];
    [searchResultsUpdater updateSearchResultsForSearchController:self];

    if ([(UIViewController *)self modalPresentationStyle]== UIModalPresentationPopover)
    {
      searchBar3 = [(UISearchController *)self searchBar];
      [UISearchController _resignSearchBarAsFirstResponder:searchBar3];
    }
  }
}

- (void)_presentingViewControllerDidChange:(id)change
{
  animator = self->_animator;
  self->_animator = 0;
  changeCopy = change;

  if (!changeCopy)
  {
    self->_barPresentationStyle = 0;
  }

  v6.receiver = self;
  v6.super_class = UISearchController;
  [(UIViewController *)&v6 _presentingViewControllerDidChange:changeCopy];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  if (-[UISearchController isActive](self, "isActive") && ([controllerCopy presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == self))
  {
    if (*&self->_controllerFlags)
    {
      [(UIView *)self->_searchBar frame];
      Height = CGRectGetHeight(v25);
      v21 = [controllerCopy _contentOrObservableScrollViewForEdge:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        tableHeaderView = [v21 tableHeaderView];
        [tableHeaderView frame];
        Height = Height - CGRectGetHeight(v26);
      }
    }

    else
    {
      Height = 0.0;
      if (_UISolariumEnabled())
      {
        WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
        if (WeakRetained)
        {
        }

        else
        {
          window = [(UIView *)self->_searchBar window];

          if (window)
          {
            [(UIView *)self->_searchBar frame];
            Height = CGRectGetHeight(v27);
          }
        }
      }
    }

    v15 = 0.0;
    if (absolute)
    {
      *absolute = 0;
    }

    v13 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = UISearchController;
    [(UIViewController *)&v24 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
    Height = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  v16 = Height;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

+ (void)_resignSearchBarAsFirstResponder:(id)responder
{
  responderCopy = responder;
  [responderCopy resignFirstResponder];
  keyboardSceneDelegate = [responderCopy keyboardSceneDelegate];
  searchField = [responderCopy searchField];

  [keyboardSceneDelegate _clearPreservedInputViewsWithRestorableResponder:searchField];
}

- (void)_updateTableHeaderBackgroundViewInTableView:(id)view amountScrolledUnder:(double)under
{
  viewCopy = view;
  _tableHeaderBackgroundView = [viewCopy _tableHeaderBackgroundView];
  if (_tableHeaderBackgroundView)
  {
    if ([viewCopy _usingCustomBackgroundView])
    {
      [viewCopy setTableHeaderBackgroundColor:0];
    }

    else
    {
      isHidden = [_tableHeaderBackgroundView isHidden];
      if (under >= 0.0)
      {
        if ((isHidden & 1) == 0)
        {
          [_tableHeaderBackgroundView setHidden:1];
        }
      }

      else
      {
        if (isHidden)
        {
          [_tableHeaderBackgroundView setHidden:0];
        }

        [viewCopy bounds];
        [_tableHeaderBackgroundView setFrame:?];
        _refreshControl = [viewCopy _refreshControl];
        backgroundColor = [_refreshControl backgroundColor];
        if (backgroundColor)
        {
          [_refreshControl backgroundColor];
        }

        else
        {
          [viewCopy tableHeaderBackgroundColor];
        }
        v9 = ;
        [_tableHeaderBackgroundView setBackgroundColor:v9];
      }
    }
  }
}

- (void)_updateSearchBarMaskIfNecessary
{
  searchBar = [(UISearchController *)self searchBar];
  window = [searchBar window];

  if (!window)
  {
    return;
  }

  searchBar2 = [(UISearchController *)self searchBar];
  _containingScrollView = [searchBar2 _containingScrollView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = _containingScrollView;
    _refreshControl = [v35 _refreshControl];
    if (!_containingScrollView)
    {
      goto LABEL_16;
    }

LABEL_7:
    searchBar3 = [(UISearchController *)self searchBar];
    [searchBar3 bounds];
    Height = CGRectGetHeight(v37);

    [_containingScrollView _effectiveContentInset];
    v11 = v10;
    [_containingScrollView contentOffset];
    v13 = v11 + v12;
    searchBar4 = [(UISearchController *)self searchBar];
    [searchBar4 frame];
    v16 = v13 - v15;

    if (_refreshControl && ([_refreshControl refreshControlState] == 2 || objc_msgSend(_refreshControl, "refreshControlState") == 3))
    {
      [_refreshControl _refreshControlHeight];
      v16 = v16 - v17;
    }

    searchBar5 = [(UISearchController *)self searchBar];
    [searchBar5 _currentScreenScale];
    v20 = 1.0 / v19;

    v21 = v16 + v20;
    searchBar6 = [(UISearchController *)self searchBar];
    [searchBar6 bounds];
    v24 = v23;
    v26 = v25;
    Width = v27;
    v30 = v29;

    if (v21 <= Height)
    {
      if (v21 > 0.0)
      {
        v39.origin.x = v24;
        v39.origin.y = v26;
        v39.size.width = Width;
        v39.size.height = v30;
        Width = CGRectGetWidth(v39);
        v30 = Height - v21;
        v24 = 0.0;
        v26 = v21;
      }
    }

    else
    {
      v31 = *MEMORY[0x1E695F058];
      v32 = *(MEMORY[0x1E695F058] + 8);
      v33 = *(MEMORY[0x1E695F058] + 24);
      v38.origin.x = v24;
      v38.origin.y = v26;
      v38.size.width = Width;
      v38.size.height = v30;
      Width = CGRectGetWidth(v38);
      v24 = v31;
      v26 = v32;
      v30 = v33;
    }

    searchBar7 = [(UISearchController *)self searchBar];
    [searchBar7 _setMaskBounds:{v24, v26, Width, v30}];

    [(UISearchController *)self _updateTableHeaderBackgroundViewInTableView:v35 amountScrolledUnder:v21];
    goto LABEL_16;
  }

  _refreshControl = 0;
  v35 = 0;
  if (_containingScrollView)
  {
    goto LABEL_7;
  }

LABEL_16:
}

- (void)_watchScrollView:(id)view forScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  viewCopy = view;
  didScrollDelegate = self->_didScrollDelegate;
  v12 = viewCopy;
  if (!scrollingCopy)
  {
    scrollView = [(_UISearchControllerDidScrollDelegate *)didScrollDelegate scrollView];
    [scrollView _removeScrollViewScrollObserver:self->_didScrollDelegate];

    v11 = self->_didScrollDelegate;
    self->_didScrollDelegate = 0;

    goto LABEL_7;
  }

  if (!didScrollDelegate)
  {
    v8 = objc_alloc_init(_UISearchControllerDidScrollDelegate);
    v9 = self->_didScrollDelegate;
    self->_didScrollDelegate = v8;

    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setController:self];
    viewCopy = v12;
  }

  if (viewCopy)
  {
    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setScrollView:v12];
    [v12 _addScrollViewScrollObserver:self->_didScrollDelegate];
LABEL_7:
    viewCopy = v12;
  }
}

- (void)_beginWatchingPresentingController
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  navigationController = [presentingViewController navigationController];

  if (navigationController)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__navigationControllerWillShowViewController_ name:0x1EFB3A190 object:navigationController];
  }
}

- (void)_endWatchingPresentingController
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFB3A190 object:0];
}

- (void)_navigationControllerWillShowViewController:(id)controller
{
  v52 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  object = [controllerCopy object];
  userInfo = [controllerCopy userInfo];
  v7 = [userInfo objectForKey:0x1EFB3A1F0];

  userInfo2 = [controllerCopy userInfo];

  v9 = [userInfo2 objectForKey:0x1EFB3A210];

  presentedViewController = [v7 presentedViewController];

  if (presentedViewController == self)
  {
    if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && [object isNavigationBarHidden])
    {
      if ([(UISearchController *)self isActive]&& v9)
      {
        _managedPalette = [(UISearchController *)self _managedPalette];
        [_managedPalette setIgnoreGeometryChanges:1];
      }

      [object setNavigationBarHidden:0 animated:1];
      [object _setSearchHidNavigationBar:0];
      _managedPalette2 = [(UISearchController *)self _managedPalette];
      [_managedPalette2 setIgnoreGeometryChanges:0];
    }

    traitCollection = [(UIViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      *&self->_controllerFlags |= 2u;
    }

    else
    {
      searchBar = [(UISearchController *)self searchBar];
      if ([searchBar isFirstResponder])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFFD | v16);
    }

    searchBar2 = [(UISearchController *)self searchBar];
    [UISearchController _resignSearchBarAsFirstResponder:searchBar2];
  }

  presentedViewController2 = [v9 presentedViewController];

  if (presentedViewController2 == self)
  {
    searchBar3 = [(UISearchController *)self searchBar];
    _containedInNavigationPalette = [searchBar3 _containedInNavigationPalette];

    if (_containedInNavigationPalette)
    {
      v21 = [object existingPaletteForEdge:2];
      [v21 setVisibleWhenPinningBarIsHidden:1];
    }

    navigationItem = [v9 navigationItem];
    _searchControllerIfAllowed = [navigationItem _searchControllerIfAllowed];

    if (_searchControllerIfAllowed)
    {
      goto LABEL_31;
    }

    searchBar4 = [(UISearchController *)self searchBar];
    _isHostedByNavigationBar = [searchBar4 _isHostedByNavigationBar];

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!_isHostedByNavigationBar)
    {
      if (has_internal_diagnostics)
      {
        v37 = *(__UILogGetCategoryCachedImpl("UISearchController", &qword_1ED49B028) + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v37;
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138412802;
          v47 = v40;
          v48 = 2112;
          v49 = v42;
          v50 = 2112;
          v51 = navigationItem;
        }
      }

      if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && ([object isNavigationBarHidden] & 1) == 0 && _shouldPerformNavigationBarHidingWithLuck(object))
      {
        [object setNavigationBarHidden:1 animated:1];
        [object _setSearchHidNavigationBar:1];
      }

      goto LABEL_31;
    }

    if (has_internal_diagnostics)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v28 = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_25;
        }

        v43 = objc_opt_class();
        v30 = NSStringFromClass(v43);
        v44 = objc_opt_class();
        v32 = NSStringFromClass(v44);
        *buf = 138412802;
        v47 = v30;
        v48 = 2112;
        v49 = v32;
        v50 = 2112;
        v51 = navigationItem;
        _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "Even though navigationItem has no search controller, the search bar is hosted by the navigation bar. Attempting to prevent a future crash by avoiding hiding the navigation bar. self is a %@. viewController is a %@. navigationItem = %@", buf, 0x20u);
LABEL_24:

LABEL_25:
        goto LABEL_31;
      }

      v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B020) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412802;
        v47 = v30;
        v48 = 2112;
        v49 = v32;
        v50 = 2112;
        v51 = navigationItem;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Even though navigationItem has no search controller, the search bar is hosted by the navigation bar. Attempting to prevent a future crash by avoiding hiding the navigation bar. self is a %@. viewController is a %@. navigationItem = %@", buf, 0x20u);
        goto LABEL_24;
      }
    }

LABEL_31:
    controllerFlags = self->_controllerFlags;
    if ((*&controllerFlags & 2) != 0)
    {
      self->_controllerFlags = (*&controllerFlags & 0xFFFFFFFD);
      transitionCoordinator = [(UIViewController *)self transitionCoordinator];
      v35 = transitionCoordinator;
      if (transitionCoordinator)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __66__UISearchController__navigationControllerWillShowViewController___block_invoke;
        v45[3] = &unk_1E70F3B98;
        v45[4] = self;
        [transitionCoordinator animateAlongsideTransition:0 completion:v45];
      }

      else
      {
        searchBar5 = [(UISearchController *)self searchBar];
        [searchBar5 becomeFirstResponder];
      }
    }
  }
}

void __66__UISearchController__navigationControllerWillShowViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) searchBar];
  [v1 becomeFirstResponder];
}

- (void)_didCreateSystemInputViewController
{
  v3 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
  [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:v3];
}

- (BOOL)_hasVisibleSuggestionsMenu
{
  _suggestionController = [(UISearchController *)self _suggestionController];
  hasVisibleMenu = [_suggestionController hasVisibleMenu];

  return hasVisibleMenu;
}

- (BOOL)_allowsSuggestionsMenu
{
  _suggestionController = [(UISearchController *)self _suggestionController];
  if ([_suggestionController shouldUseMenuIOS])
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    _hasIntegratedSearchBarInNavigationBar = [WeakRetained _hasIntegratedSearchBarInNavigationBar];
  }

  else
  {
    _hasIntegratedSearchBarInNavigationBar = 0;
  }

  return _hasIntegratedSearchBarInNavigationBar;
}

- (void)setSearchSuggestions:(NSArray *)searchSuggestions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = searchSuggestions;
  if (v4)
  {
    v5 = [[_UISearchSuggestionItemGroup alloc] initWithHeaderTitle:0 suggestionItems:v4];
    v7[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(UISearchController *)self _setSearchSuggestionGroups:v6];
  }

  else
  {
    [(UISearchController *)self _setSearchSuggestionGroups:0];
  }
}

- (void)_setSearchSuggestionGroups:(id)groups
{
  groupsCopy = groups;
  controllerFlags = self->_controllerFlags;
  v6 = *&controllerFlags & 0xFFFEFFFF;
  self->_controllerFlags = (*&controllerFlags & 0xFFFEFFFF);
  v11 = groupsCopy;
  if (!groupsCopy)
  {
    goto LABEL_5;
  }

  v7 = groupsCopy;
  if ((*&controllerFlags & 0x7000) == 0)
  {
    isActive = [(UISearchController *)self isActive];
    v7 = v11;
    if (isActive)
    {
      v6 = self->_controllerFlags;
LABEL_5:
      self->_controllerFlags = (v6 & 0xFFFF7FFF);
      _suggestionController = [(UISearchController *)self _suggestionController];
      [_suggestionController updateSuggestionGroups:v11 userInitiated:1];

      searchBar = [(UISearchController *)self searchBar];
      [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:searchBar];

      goto LABEL_7;
    }
  }

  [(UISearchController *)self _setDeferredSearchSuggestionGroups:v7];
LABEL_7:
}

- (NSArray)_searchSuggestionGroups
{
  _suggestionController = [(UISearchController *)self _suggestionController];
  suggestionGroups = [_suggestionController suggestionGroups];

  return suggestionGroups;
}

- (NSArray)searchSuggestions
{
  _suggestionController = [(UISearchController *)self _suggestionController];
  suggestions = [_suggestionController suggestions];

  return suggestions;
}

- (BOOL)_shouldDisplayDefaultSuggestion
{
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  shouldDisplayDefaultSuggestion = [_tvSuggestionController shouldDisplayDefaultSuggestion];

  return shouldDisplayDefaultSuggestion;
}

- (void)_setClearSuggestionsOnSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFBFFFFFF | v3);
}

- (void)_setUpdateSearchTextOnDidSelectSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xEFFFFFFF | v3);
}

- (void)_setShouldDisplayDefaultSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  [_tvSuggestionController setShouldDisplayDefaultSuggestion:suggestionCopy];
}

- (BOOL)_showSearchSuggestionPreview
{
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  showSearchSuggestionPreview = [_tvSuggestionController showSearchSuggestionPreview];

  return showSearchSuggestionPreview;
}

- (void)_setShowSearchSuggestionPreview:(BOOL)preview
{
  previewCopy = preview;
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  [_tvSuggestionController setShowSearchSuggestionPreview:previewCopy];
}

- (NSString)_suggestionRowTitle
{
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  searchSuggestionsTitle = [_tvSuggestionController searchSuggestionsTitle];

  return searchSuggestionsTitle;
}

- (void)_setSuggestionRowTitle:(id)title
{
  titleCopy = title;
  _tvSuggestionController = [(UISearchController *)self _tvSuggestionController];
  [_tvSuggestionController setSearchSuggestionsTitle:titleCopy];
}

- (void)setIgnoresSearchSuggestionsForSearchBarPlacementStacked:(BOOL)ignoresSearchSuggestionsForSearchBarPlacementStacked
{
  controllerFlags = self->_controllerFlags;
  if (((((*&controllerFlags & 0x20000) == 0) ^ ignoresSearchSuggestionsForSearchBarPlacementStacked) & 1) == 0)
  {
    if (ignoresSearchSuggestionsForSearchBarPlacementStacked)
    {
      v4 = 0x20000;
    }

    else
    {
      v4 = 0;
    }

    self->_controllerFlags = (*&controllerFlags & 0xFFFDFFFF | v4);
    [(UISearchController *)self _updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:1];
  }
}

- (void)_setUsesSearchSuggestionsMenuForStackedSearch:(BOOL)search
{
  if (search)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFBFFFF | v3);
}

- (void)_setDisplaysSearchBarItemGroupInline:(BOOL)inline
{
  self->_displaysSearchBarItemGroupInline = inline;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__UISearchController__setDisplaysSearchBarItemGroupInline___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView _animateSystemChanges:v3];
}

void __59__UISearchController__setDisplaysSearchBarItemGroupInline___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 32) searchBar];
    v3 = v2;
    if (*(v1 + 1184) == 1)
    {
      v4 = [(_UIBarButtonItemSearchBarGroup *)*(v1 + 1232) searchItem];
      if (v4)
      {
        v5 = v4;
        [(UIBarButtonItem *)v4 setCustomView:v3];
      }

      else
      {
        v5 = [[UIBarButtonItem alloc] initWithCustomView:v3];
        [(UIBarButtonItem *)v5 _setSearchBarViewItem:1];
        v11[0] = v5;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        [*(v1 + 1232) setBarButtonItems:v6];
      }

      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(v1 + 1232) setHidden:v3 == 0];
      WeakRetained = objc_loadWeakRetained((v1 + 1312));
      [*(v1 + 1232) _setShouldAlwaysCollapse:{objc_msgSend(WeakRetained, "preferredSearchBarPlacement") == 4}];

      v8 = [v3 _requiresSearchTextField];
      v9 = *(v1 + 1232);
      if (v8)
      {
        [v9 setRepresentativeItem:0];
        [v3 _idealInlineWidthForLayoutState:{objc_msgSend(v3, "_layoutState")}];
        [(UIBarButtonItem *)v5 setWidth:?];
      }

      else
      {
        v10 = [v9 representativeItem];
        if (!v10)
        {
          v10 = [v3 _searchIconBarButtonItem];
          [*(v1 + 1232) setRepresentativeItem:v10];
        }

        [v3 _idealInlineWidthForLayoutState:1];
        [v10 setWidth:?];
        [v3 _idealInlineWidthForLayoutState:2];
        [(UIBarButtonItem *)v5 setWidth:?];
      }
    }

    else
    {
      [v2 setTranslatesAutoresizingMaskIntoConstraints:1];
      [*(v1 + 1232) setHidden:1];
    }
  }
}

- (BOOL)_tvShouldScrollWithObservedScrollViewIfPossible
{
  resolvedKeyboardStyle = [(UISystemInputViewController *)self->_systemInputViewController resolvedKeyboardStyle];
  if (resolvedKeyboardStyle != 1)
  {

    LOBYTE(resolvedKeyboardStyle) = [(UISearchController *)self _shouldHideGridKeyboardUnfocused];
  }

  return resolvedKeyboardStyle;
}

- (void)_adjustTVSearchContainerViewForContentScrollView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  if (window)
  {
    v5 = window;
    _tvShouldScrollWithObservedScrollViewIfPossible = [(UISearchController *)self _tvShouldScrollWithObservedScrollViewIfPossible];

    if (_tvShouldScrollWithObservedScrollViewIfPossible)
    {
      _focusSystemSceneComponent = [viewCopy _focusSystemSceneComponent];
      coordinateSpace = [_focusSystemSceneComponent coordinateSpace];
      _tvKeyboardContainerView = [(UISearchController *)self _tvKeyboardContainerView];
      _tvKeyboardContainerView2 = [(UISearchController *)self _tvKeyboardContainerView];
      [_tvKeyboardContainerView2 bounds];
      [_tvKeyboardContainerView convertRect:coordinateSpace toCoordinateSpace:?];
      v12 = v11;

      _tvKeyboardContainerView3 = [(UISearchController *)self _tvKeyboardContainerView];
      [_tvKeyboardContainerView3 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = v12 + v19;
      [viewCopy contentOffset];
      v22 = v21;
      [viewCopy adjustedContentInset];
      v24 = fmax(fmin(v22 + v23, v20), 0.0);
      v25 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
      resolvedKeyboardStyle = [v25 resolvedKeyboardStyle];

      if (resolvedKeyboardStyle == 1)
      {
        v27 = vabdd_f64(v24, v20);
        _tvKeyboardContainerView4 = [(UISearchController *)self _tvKeyboardContainerView];
        isUserInteractionEnabled = [_tvKeyboardContainerView4 isUserInteractionEnabled];

        if (v27 > 2.22044605e-16 != isUserInteractionEnabled)
        {
          _tvKeyboardContainerView5 = [(UISearchController *)self _tvKeyboardContainerView];
          [_tvKeyboardContainerView5 setUserInteractionEnabled:v27 > 2.22044605e-16];
        }
      }

      _tvKeyboardContainerView6 = [(UISearchController *)self _tvKeyboardContainerView];
      [_tvKeyboardContainerView6 setBounds:{v15, v24, v17, v19}];
    }
  }
}

- (void)_searchBarTextFieldDidSelectSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  searchResultsUpdater = [(UISearchController *)self searchResultsUpdater];
  if (objc_opt_respondsToSelector())
  {
    [searchResultsUpdater updateSearchResultsForSearchController:self selectingSearchSuggestion:suggestionCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [searchResultsUpdater _dci_updateSearchResultsForSearchController:self selectingSearchSuggestion:suggestionCopy];
  }

  [(UISearchController *)self _dci_setSearchSuggestions:0];
  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFE7FFF | 0x8000);
  searchBar = [(UISearchController *)self searchBar];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:searchBar];
}

- (void)_startDeferringSettingSearchSuggestionsWithReason:(unint64_t)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
  _hasIntegratedSearchBarInNavigationBar = [WeakRetained _hasIntegratedSearchBarInNavigationBar];

  controllerFlags = self->_controllerFlags;
  if (_hasIntegratedSearchBarInNavigationBar)
  {
    self->_controllerFlags = (*&controllerFlags | ((reasonCopy & 7) << 12));
  }

  else if ((*&controllerFlags & 0x7000) != 0)
  {

    [(UISearchController *)self _stopDeferringSearchSuggestionsWithReason:7 postDeferralAction:0];
  }
}

- (void)_stopDeferringSearchSuggestionsWithReason:(unint64_t)reason postDeferralAction:(int64_t)action
{
  controllerFlags = self->_controllerFlags;
  self->_controllerFlags = (*&controllerFlags & ((~reason << 12) | 0xFFFF8FFF));
  if ((*&controllerFlags & (~reason << 12) & 0x7000) == 0)
  {
    if (action)
    {
      _deferredSearchSuggestionGroups = [(UISearchController *)self _deferredSearchSuggestionGroups];
      if (_deferredSearchSuggestionGroups)
      {
        *&self->_controllerFlags &= 0xFFFE7FFF;
        v9 = _deferredSearchSuggestionGroups;
        _suggestionController = [(UISearchController *)self _suggestionController];
        [_suggestionController updateSuggestionGroups:v9 userInitiated:1];

        [(UISearchController *)self _setDeferredSearchSuggestionGroups:0];
        searchBar = [(UISearchController *)self searchBar];
        [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:searchBar];

        _deferredSearchSuggestionGroups = v9;
      }
    }

    else
    {

      [(UISearchController *)self _setDeferredSearchSuggestionGroups:0];
    }
  }
}

- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _dci_searchController:self willDismissSearchSuggestionsMenuWasSuggestionSelected:(*&self->_controllerFlags >> 15) & 1];
  }

  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x88000) == 0)
  {
    self->_controllerFlags = (*&controllerFlags | 0x10000);
  }
}

- (id)searchTextField
{
  if (self->_borrowedSearchTextFieldHandle)
  {
    view = [(_UIBorrowedViewHandle *)self->_borrowedSearchTextFieldHandle view];
  }

  else
  {
    searchBar = [(UISearchController *)self searchBar];
    view = [searchBar searchField];
  }

  return view;
}

- (id)searchTextColor
{
  searchTextField = [(UISearchController *)self searchTextField];
  textColor = [searchTextField textColor];

  return textColor;
}

- (id)searchPlaceholderColor
{
  searchTextField = [(UISearchController *)self searchTextField];
  _placeholderColor = [searchTextField _placeholderColor];

  return _placeholderColor;
}

- (void)_startManagingPalette:(id)palette
{
  if (palette)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4083 description:@"UIKit Bug – we should not be going down this code path"];
  }

  managedPalette = self->_managedPalette;
  self->_managedPalette = 0;
}

- (void)_stopManagingPalette
{
  [(UIView *)self->_searchBar removeFromSuperview];
  managedPalette = self->_managedPalette;
  self->_managedPalette = 0;
}

- (void)_setSearchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth:(BOOL)width
{
  widthCopy = width;
  if ([(UISearchController *)self _searchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth]!= width)
  {

    [(UISearchController *)self _setClearAsCancelButtonVisibilityWhenEmpty:widthCopy];
  }
}

- (void)_setClearAsCancelButtonVisibilityWhenEmpty:(int64_t)empty
{
  controllerFlags = self->_controllerFlags;
  if (empty != controllerFlags >> 30)
  {
    emptyCopy = empty;
    if (empty >= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4109 description:@"Unsupported value for visibility"];

      LODWORD(controllerFlags) = self->_controllerFlags;
    }

    self->_controllerFlags = (controllerFlags & 0x3FFFFFFF | (emptyCopy << 30));
    searchBar = self->_searchBar;

    [(UISearchBar *)searchBar _updateShowsClearButtonWhenEmpty];
  }
}

- (BOOL)_prefersSearchTextFieldAnchoredToKeyboard
{
  if (!_UISolariumEnabled())
  {
    return 0;
  }

  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    window = [(UIView *)self->_searchBar window];
    v4 = window == 0;
  }

  return v4;
}

- (UISearchTextField)_borrowedSearchTextFieldClone
{
  _borrowedSearchTextField = [(UISearchController *)self _borrowedSearchTextField];
  [_borrowedSearchTextField removeFromSuperview];
  _initWithDeferredSearchIconImageConfiguration = [objc_alloc(objc_opt_class()) _initWithDeferredSearchIconImageConfiguration];
  [_borrowedSearchTextField frame];
  [_initWithDeferredSearchIconImageConfiguration setFrame:?];
  [(UISearchBar *)self->_searchBar _setUpNewSearchField:_initWithDeferredSearchIconImageConfiguration];
  [(UISearchBar *)self->_searchBar _addSearchFieldClone:_initWithDeferredSearchIconImageConfiguration];

  return _initWithDeferredSearchIconImageConfiguration;
}

- (id)_borrowedSearchTabHostedFieldConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_activeBorrowedSearchTabHostedFieldConfiguration);
  if (!WeakRetained)
  {
    if (!self->_assertionController)
    {
      v4 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
      assertionController = self->_assertionController;
      self->_assertionController = v4;
    }

    objc_initWeak(&location, self);
    _borrowedSearchTextField = [(UISearchController *)self _borrowedSearchTextField];
    [_borrowedSearchTextField setBorderStyle:0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __64__UISearchController__borrowedSearchTabHostedFieldConfiguration__block_invoke;
    v15 = &unk_1E70F7450;
    objc_copyWeak(&v16, &location);
    v7 = [UIAction actionWithHandler:&v12];
    v8 = [_UISearchTabHostedFieldConfiguration alloc];
    WeakRetained = [(_UISearchTabHostedFieldConfiguration *)v8 initWithSearchBarView:_borrowedSearchTextField cancelAction:v7, v12, v13, v14, v15];
    if ([(UISearchController *)self automaticallyShowsCancelButton])
    {
      isActive = [(UISearchController *)self isActive];
    }

    else
    {
      isActive = 0;
    }

    [(_UISearchTabHostedFieldConfiguration *)WeakRetained setShowsCancelAction:isActive];
    v10 = [(_UIAssertionController *)self->_assertionController vendAssertionOfType:1 initialState:1 reason:0 requiresExplicitInvalidation:0];
    [(_UISearchTabHostedFieldConfiguration *)WeakRetained set_borrowedAssertion:v10];

    objc_storeWeak(&self->_activeBorrowedSearchTabHostedFieldConfiguration, WeakRetained);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return WeakRetained;
}

void __64__UISearchController__borrowedSearchTabHostedFieldConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained searchBar];
  [v1 _performCancelAction];
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type == 1 && !state)
  {
    [(_UIBorrowedViewHandle *)self->_borrowedSearchTextFieldHandle returnView];
    borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
    self->_borrowedSearchTextFieldHandle = 0;

    objc_storeWeak(&self->_activeBorrowedSearchTabHostedFieldConfiguration, 0);
  }
}

- (void)_setInlineSearchAccessoryEnabled:(BOOL)enabled
{
  self->_inlineSearchAccessoryEnabled = enabled;
  if (enabled)
  {
    if (self->_borrowedSearchTextFieldHandle)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4223 description:@"Attempted to inline a search text field that was already borrowed."];
    }

    _borrowedSearchTextField = [(UISearchController *)self _borrowedSearchTextField];
    [(_UISearchControllerView *)self->_searchControllerView borrowSearchFieldFromControllerForInlinePresentation:_borrowedSearchTextField];
  }

  else
  {
    [(_UISearchControllerView *)self->_searchControllerView returnBorrowedSearchTextField];
    [(_UIBorrowedViewHandle *)self->_borrowedSearchTextFieldHandle returnView];
    borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
    self->_borrowedSearchTextFieldHandle = 0;

    [(UISearchController *)self _notifyNavigationItemOfSearchTextFieldBorrowingStateChange];
  }
}

- (void)_prepareInlineSearchAccessoryVisible:(BOOL)visible shouldUpdatePosition:(BOOL)position
{
  positionCopy = position;
  [(_UISearchControllerView *)self->_searchControllerView setInlineSearchFieldAccessoryIsOffscreenForPresentationAnimation:!visible];
  if (positionCopy)
  {
    searchControllerView = self->_searchControllerView;

    [(_UISearchControllerView *)searchControllerView _updateInlineSearchAccessoryFrame];
  }
}

- (void)_notifyNavigationItemOfSearchTextFieldBorrowingStateChange
{
  searchBar = [(UISearchController *)self searchBar];
  _searchController = [searchBar _searchController];

  _navigationItemCurrentlyDisplayingSearchBar = [_searchController _navigationItemCurrentlyDisplayingSearchBar];
  v5 = _navigationItemCurrentlyDisplayingSearchBar;
  if (_navigationItemCurrentlyDisplayingSearchBar)
  {
    [_navigationItemCurrentlyDisplayingSearchBar _searchBarUpdatedSearchFieldIntegrationInSearchController:_searchController];
  }

  searchBar2 = [(UISearchController *)self searchBar];
  [searchBar2 _notifyOfBorrowingStateChange];
}

- (NSString)description
{
  v29.receiver = self;
  v29.super_class = UISearchController;
  v3 = [(UISearchController *)&v29 description];
  if (os_variant_has_internal_diagnostics())
  {
    if (self->_obscuresBackgroundDuringPresentation)
    {
      v5 = [v3 stringByAppendingString:@" obscuresBackgroundDuringPresentation"];

      v3 = v5;
    }

    if (self->__showResultsForEmptySearch)
    {
      v6 = [v3 stringByAppendingString:@" showResultsForEmptySearch"];

      v3 = v6;
    }

    controllerFlags = self->_controllerFlags;
    if ((*&controllerFlags & 0x80) == 0)
    {
      if ((*&controllerFlags & 0x100) != 0)
      {
        v8 = @"shown";
      }

      else
      {
        v8 = @"hidden";
      }

      v9 = [v3 stringByAppendingFormat:@" [manually shows searchResultsController—%@]", v8];

      controllerFlags = self->_controllerFlags;
      v3 = v9;
    }

    if ((*&controllerFlags & 0x60) == 0x20)
    {
      searchBar = self->_searchBar;
      if (searchBar)
      {
        showsScopeBar = [(UISearchBar *)searchBar showsScopeBar];
        v12 = @"hidden";
        if (showsScopeBar)
        {
          v12 = @"shown";
        }
      }

      else
      {
        v12 = @"missing searchBar";
      }

      v13 = [v3 stringByAppendingFormat:@" [UISearchBar API shows scopeBar—%@]", v12];

      controllerFlags = self->_controllerFlags;
      v3 = v13;
    }

    v14 = *&controllerFlags >> 30;
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = @" clearAsCancelButtonVisibilityWhenEmpty: SHOWS";
      }

      else
      {
        v15 = @" clearAsCancelButtonVisibilityWhenEmpty: HIDES";
      }

      v16 = [v3 stringByAppendingString:v15];

      v3 = v16;
    }

    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

    if (WeakRetained)
    {
      v18 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      v19 = [v3 stringByAppendingFormat:@" nav item=%p", v18];

      v3 = v19;
    }

    v20 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    v21 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

    if (v20 != v21)
    {
      v22 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
      v23 = [v3 stringByAppendingFormat:@" nav item for bar=%p", v22];

      v3 = v23;
    }

    v24 = self->_controllerFlags;
    hidesNavigationBarDuringPresentation = [(UISearchController *)self hidesNavigationBarDuringPresentation];
    v26 = @"OFF";
    if (hidesNavigationBarDuringPresentation)
    {
      v26 = @"ON";
    }

    if ((*&v24 & 0x800) != 0)
    {
      v27 = @" [hidesNavigationBarDuringPresentation %@ by default]";
    }

    else
    {
      v27 = @" [hidesNavigationBarDuringPresentation explicitly set %@]";
    }

    v28 = [v3 stringByAppendingFormat:v27, v26];

    v3 = [v28 stringByAppendingFormat:@" searchBar=%p", self->_searchBar];
  }

  return v3;
}

- (_UISearchControllerGlobalSearchDelegate)_globalSearchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_globalSearchDelegate);

  return WeakRetained;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationItem)_navigationItemCurrentlyDisplayingSearchController
{
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

  return WeakRetained;
}

- (UISearchResultsUpdatingPrivate)searchResultsUpdaterPrivate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchResultsUpdaterPrivate);

  return WeakRetained;
}

@end