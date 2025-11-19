@interface UISearchController
+ (BOOL)_forceSearchBarHostedInNavigationBar;
+ (void)_resignSearchBarAsFirstResponder:(id)a3;
- (BOOL)_allowsSuggestionsMenu;
- (BOOL)_dci_automaticScopeBarShowsOnPresentation;
- (BOOL)_hasVisibleSuggestionsMenu;
- (BOOL)_hidesNavigationBarDuringPresentationRespectingInlineSearch;
- (BOOL)_isSearchTextFieldBorrowed;
- (BOOL)_prefersSearchTextFieldAnchoredToKeyboard;
- (BOOL)_resultsControllerWillLayoutVisibleUnderContainerView;
- (BOOL)_searchBarHidesOtherNavigationBarContentWithTraitCollection:(id)a3;
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
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
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
- (id)_animatorForBarPresentationStyle:(int)a3 dismissing:(BOOL)a4;
- (id)_borrowedSearchTabHostedFieldConfiguration;
- (id)_createAnimationCoordinator;
- (id)_defaultAnimationController;
- (id)_locatePresentingViewController;
- (id)_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_searchPresentationController;
- (id)_systemInputViewControllerAfterUpdate:(BOOL)a3;
- (id)_viewToInsertSearchBarContainerViewUnder;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)delegate;
- (id)focusItemContainer;
- (id)preferredFocusEnvironments;
- (id)searchPlaceholderColor;
- (id)searchResultsUpdater;
- (id)searchTextColor;
- (id)searchTextField;
- (uint64_t)_isSearchResultsControllerViewUnhidden;
- (uint64_t)_isSuggestionsListViewControllerViewUnhidden;
- (void)__searchBar:(int)a3 changedSearchTextFieldContentProgramatically:;
- (void)__searchTextFieldDidSetOrInsertTokens:(uint64_t)a1;
- (void)_adjustSearchBarSizeForOrientation:(int64_t)a3 oldPaletteFrame:(CGRect)a4;
- (void)_adjustTVSearchContainerViewForContentScrollView:(id)a3;
- (void)_beginWatchingPresentingController;
- (void)_clearSearchSuggestionsIfNecessary;
- (void)_commonInit;
- (void)_connectSearchBar:(id)a3;
- (void)_contentScrollViewDidFinishContentOffsetAnimation;
- (void)_createOrUpdateKeyboardToSearchResultsFocusGuide;
- (void)_createOrUpdateSearchResultsToHiddenKeyboardFocusGuide;
- (void)_createSystemInputViewControllerIfNeededForTraitEnvironment:(id)a3;
- (void)_dci_setAutomaticScopeBarShowsOnPresentation:(BOOL)a3;
- (void)_didCreateSystemInputViewController;
- (void)_didDismissSearchController;
- (void)_didPresentFromViewController:(id)a3;
- (void)_dismissPresentation:(BOOL)a3;
- (void)_endWatchingPresentingController;
- (void)_handleBackButtonGesture:(id)a3;
- (void)_hideSearchSuggestionsList;
- (void)_installBackGestureRecognizer;
- (void)_installDoneGestureRecognizer;
- (void)_ios_searchBar:(id)a3 textDidChange:(id)a4 programatically:(BOOL)a5;
- (void)_limitedUIDidChangeAnimated:(BOOL)a3;
- (void)_navigationControllerWillShowViewController:(id)a3;
- (void)_notifyNavigationItemOfSearchTextFieldBorrowingStateChange;
- (void)_performAutomaticPresentationFromTextField:(BOOL)a3;
- (void)_performDidBeginEditingForSearchBar:(id)a3;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)_prepareInlineSearchAccessoryVisible:(BOOL)a3 shouldUpdatePosition:(BOOL)a4;
- (void)_presentingViewControllerDidChange:(id)a3;
- (void)_presentingViewControllerWillChange:(id)a3;
- (void)_removeCarPlayLimitedUIObserver;
- (void)_requestNavigationControllerObservingUpdateForSearchBar:(int)a3 visibilityChangedForSearchSuggestionsList:(int)a4 forSearchResultsController:;
- (void)_requestPendingSuggestionMenuRefresh;
- (void)_resizeResultsControllerWithDelta:(CGSize)a3;
- (void)_scopeBarWillShowOrHide;
- (void)_searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)_searchBarCancelButtonClicked:(id)a3;
- (void)_searchBarSearchTextFieldRequirementDidChange:(id)a3;
- (void)_searchBarSuperviewChanged;
- (void)_searchBarTextDidBeginEditing:(id)a3;
- (void)_searchBarTextFieldDidSelectSearchSuggestion:(id)a3;
- (void)_searchBarTokensDidChange:(id)a3;
- (void)_sendDelegateInsertSearchFieldTextSuggestion:(id)a3;
- (void)_setClearAsCancelButtonVisibilityWhenEmpty:(int64_t)a3;
- (void)_setClearSuggestionsOnSelection:(BOOL)a3;
- (void)_setDisplaysSearchBarItemGroupInline:(BOOL)a3;
- (void)_setInlineSearchAccessoryEnabled:(BOOL)a3;
- (void)_setNavigationItemCurrentlyDisplayingSearchBar:(id)a3 withGlobalSearchDelegate:(id)a4;
- (void)_setNavigationItemCurrentlyDisplayingSearchController:(id)a3;
- (void)_setRequestedInteractionModel:(unint64_t)a3;
- (void)_setSearchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth:(BOOL)a3;
- (void)_setSearchSuggestionGroups:(id)a3;
- (void)_setShouldDisplayDefaultSuggestion:(BOOL)a3;
- (void)_setShowSearchSuggestionPreview:(BOOL)a3;
- (void)_setSuggestionRowTitle:(id)a3;
- (void)_setTransitioningOutWithoutDisappearing:(BOOL)a3;
- (void)_setUpdateSearchTextOnDidSelectSuggestion:(BOOL)a3;
- (void)_setUsesSearchSuggestionsMenuForStackedSearch:(BOOL)a3;
- (void)_setupForCurrentTraitCollection;
- (void)_showSearchSuggestionsListIfApplicable;
- (void)_sizeSearchViewToPresentingViewController:(id)a3;
- (void)_startDeferringSettingSearchSuggestionsWithReason:(unint64_t)a3;
- (void)_startManagingPalette:(id)a3;
- (void)_stopDeferringSearchSuggestionsWithReason:(unint64_t)a3 postDeferralAction:(int64_t)a4;
- (void)_stopManagingPalette;
- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)a3;
- (void)_tvos_searchBar:(id)a3 textDidChange:(id)a4 programatically:(BOOL)a5;
- (void)_uninstallBackGestureRecognizer;
- (void)_uninstallDoneGestureRecognizer;
- (void)_updateBarPresentationStyleForPresentingViewController:(id)a3;
- (void)_updateFocusFromDoneButton:(id)a3;
- (void)_updateHasPendingSuggestionMenuRefreshFlagForReason:(int64_t)a3;
- (void)_updateInlineSearchBarItemGroup;
- (void)_updateKeyboardFocusGuidesForAnimator:(id)a3;
- (void)_updateSearchBarHostingFromNavigationItem:(id)a3;
- (void)_updateSearchBarMaskIfNecessary;
- (void)_updateSearchResultsContentScrollViewWithDelta:(CGSize)a3;
- (void)_updateSearchResultsControllerWithDelta:(CGSize)a3;
- (void)_updateSearchResultsPositionWithDelta:(CGSize)a3;
- (void)_updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:(BOOL)a3;
- (void)_updateTableHeaderBackgroundViewInTableView:(id)a3 amountScrolledUnder:(double)a4;
- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)a3;
- (void)_watchScrollView:(id)a3 forScrolling:(BOOL)a4;
- (void)_willDismissSearchController;
- (void)_willPresentFromViewController:(id)a3;
- (void)_willUpdateFocusInContext:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)setActive:(BOOL)active;
- (void)setAutomaticallyShowsCancelButton:(BOOL)automaticallyShowsCancelButton;
- (void)setAutomaticallyShowsScopeBar:(BOOL)automaticallyShowsScopeBar;
- (void)setAutomaticallyShowsSearchResultsController:(BOOL)automaticallyShowsSearchResultsController;
- (void)setDelegate:(id)delegate;
- (void)setHidesNavigationBarDuringPresentation:(BOOL)hidesNavigationBarDuringPresentation;
- (void)setIgnoresSearchSuggestionsForSearchBarPlacementStacked:(BOOL)ignoresSearchSuggestionsForSearchBarPlacementStacked;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setScopeBarActivation:(UISearchControllerScopeBarActivation)scopeBarActivation;
- (void)setSearchSuggestions:(NSArray *)searchSuggestions;
- (void)setSelectedSuggestion:(id)a3;
- (void)setShowsSearchResultsController:(BOOL)showsSearchResultsController;
- (void)set_systemInputMarginView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UISearchController

- (void)_commonInit
{
  v26[1] = *MEMORY[0x1E69E9840];
  [(UISearchController *)self setModalPresentationStyle:4];
  [(UIViewController *)self setModalTransitionStyle:2];
  [(UIViewController *)self setTransitioningDelegate:self];
  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
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
  v5 = [(UIViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  controllerFlags = self->_controllerFlags;
  if (v6 != 6)
  {
    controllerFlags = (*&controllerFlags | 0x10);
    self->_controllerFlags = controllerFlags;
  }

  self->_controllerFlags = (*&controllerFlags | 0x16000000);
  v8 = [(UISearchController *)self searchBar];
  if (!v8)
  {
    v9 = [UISearchBar alloc];
    v8 = [(UISearchBar *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v10 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
    [(UISearchBar *)v8 setPlaceholder:v10];
  }

  [(UISearchController *)self _connectSearchBar:v8];
  objc_initWeak(&location, self);
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __33__UISearchController__commonInit__block_invoke;
  v23 = &unk_1E70F3D28;
  objc_copyWeak(&v24, &location);
  v12 = [v11 addObserverForName:@"UIWindowWillAnimateRotationNotification" object:0 queue:0 usingBlock:&v20];
  windowWillAnimateToken = self->_windowWillAnimateToken;
  self->_windowWillAnimateToken = v12;

  v26[0] = 0x1EFE32398;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{1, v20, v21, v22, v23}];
  v15 = [(UIViewController *)self _registerForTraitTokenChanges:v14 withTarget:self action:sel__setupForCurrentTraitCollection];

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 addObserver:self selector:sel_applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:self selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 addObserver:self selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 addObserver:self selector:sel_applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

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
    v5 = [(UIViewController *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];
    if (v6 == 1)
    {
      if (([v5 _hasSplitViewControllerContextSidebarColumn] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
        v8 = [WeakRetained _navigationBar];
        v9 = [v8 _viewControllerForAncestor];

        v4 = [v9 modalPresentationStyle] != 16 && objc_msgSend(v9, "modalPresentationStyle") != 2;
        goto LABEL_16;
      }
    }

    else if (v6 != 5)
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
  v5 = [v4 searchBarPlacement];

  return v5;
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

  v3 = [(UISearchController *)self searchResultsController];
  if (!v3 || ![(UISearchController *)self showsSearchResultsController])
  {
    goto LABEL_14;
  }

  if ((v3[94] & 3u) - 1 <= 1)
  {
    v4 = v3;
LABEL_16:
    v5 = v4;
    goto LABEL_18;
  }

  if ([v3 _appearState] != 3)
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
  v7 = [WeakRetained _navigationBar];
  v8 = [v7 delegate];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (!v8 || [v8 _appearState] != 3)
  {
    goto LABEL_13;
  }

  v5 = v3;

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
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 1272) _existingView];
    if (v2)
    {
      v3 = [*(v1 + 1272) _existingView];
      v1 = [v3 isHidden] ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (BOOL)showsSearchResultsController
{
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x80) != 0)
  {
    v5 = [(UISearchBar *)self->_searchBar text];
    if ([v5 length])
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

    v7 = [(UISearchController *)self _dci_searchSuggestions];
    if ([v7 count])
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
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 1224) _existingView];
    if (v2)
    {
      v3 = [*(v1 + 1224) _existingView];
      v1 = [v3 isHidden] ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)_hideSearchSuggestionsList
{
  v1 = [*(a1 + 1224) _existingView];
  [v1 setHidden:1];
}

- (UISearchTextField)_borrowedSearchTextField
{
  borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
  if (!borrowedSearchTextFieldHandle)
  {
    v4 = [(UISearchBar *)self->_searchBar _borrowSearchTextField];
    v5 = self->_borrowedSearchTextFieldHandle;
    self->_borrowedSearchTextFieldHandle = v4;

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
      v6 = [(UINavigationItem *)p_isa _confirmedSearchBarPlacementBarButtonItem];
      v7 = self->_inlineToolbarSearchBarItem;
      self->_inlineToolbarSearchBarItem = v6;
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
  v3 = [(UISearchController *)self searchBar];
  v4 = [v3 superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(UISearchController *)self searchBar];
    v7 = [v6 superview];

    v8 = [v7 tableHeaderView];
    v9 = [(UISearchController *)self searchBar];

    if (v8 == v9)
    {
      *&self->_controllerFlags |= 1u;
      v10 = [(UISearchController *)self searchBar];
      [v10 _setShowsSeparator:0];

      v11 = [(UISearchController *)self searchBar];
      [v11 _updateInsetsForTableView:v7];

      if (([v7 _usingCustomBackgroundView] & 1) == 0)
      {
        v12 = [UIColor colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
        [v7 setTableHeaderBackgroundColor:v12];
      }

      [(UISearchController *)self _updateTableHeaderBackgroundViewInTableView:v7 amountScrolledUnder:0.0];
      [(UISearchController *)self _watchScrollView:v7 forScrolling:1];
    }
  }

  else if (*&self->_controllerFlags)
  {
    if (![(UIViewController *)self isBeingPresented])
    {
      v13 = [(UISearchController *)self searchBar];
      [v13 _setShowsSeparator:0];

      v14 = [(UISearchController *)self searchBar];
      [v14 _updateInsetsForTableView:0];
    }

    [(UISearchController *)self _watchScrollView:0 forScrolling:0];
  }

  v15 = [(UIViewController *)self traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 3)
  {
    v17 = [(UISearchController *)self searchBar];
    v21 = [v17 searchField];

    v18 = [v21 window];
    if (v18)
    {
      v19 = v18;
      v20 = [(UISystemInputViewController *)self->_systemInputViewController persistentDelegate];

      if (v21 == v20)
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
  v3 = [(UISearchController *)self searchBar];
  v4 = [v3 _isHostedInlineByNavigationBar];

  if (v4)
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
    v4 = [WeakRetained _hasIntegratedSearchBarInNavigationBar];

    if (v4)
    {
      v5 = [(UISearchController *)self _suggestionController];
      v6 = [(UISearchController *)self _searchSuggestionGroups];
      [v5 updateSuggestionGroups:v6 userInitiated:0];
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

- (void)setSelectedSuggestion:(id)a3
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

- (BOOL)_searchBarHidesOtherNavigationBarContentWithTraitCollection:(id)a3
{
  v7 = _UISolariumEnabled() && (-[UISearchController searchBar](self, "searchBar"), v5 = v4 = a3;

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

- (void)_sendDelegateInsertSearchFieldTextSuggestion:(id)a3
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    v5 = a3;
    v6 = [(UISearchController *)self delegate];
    [v6 _searchController:self insertSearchFieldTextSuggestion:v5];
  }
}

- (void)_setTransitioningOutWithoutDisappearing:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFFB | v3);
}

- (void)_updateSearchBarHostingFromNavigationItem:(id)a3
{
  v5 = a3;
  v4 = [v5 _hasIntegratedSearchBarInNavigationBar];
  [(UISearchBar *)self->_searchBar _setHostedInlineByNavigationBar:v4];
  if ((v4 & 1) == 0)
  {
    -[UISearchBar _setHostedInlineByToolbar:](self->_searchBar, "_setHostedInlineByToolbar:", [v5 _hasIntegratedSearchBarInToolbar]);
  }
}

- (void)_setNavigationItemCurrentlyDisplayingSearchController:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v15 = [objc_opt_class() _forceSearchBarHostedInNavigationBar];
    if (!v4)
    {
      if (v15)
      {
        WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

        if (WeakRetained)
        {
          v17 = *(__UILogGetCategoryCachedImpl("UISearchController", &_setNavigationItemCurrentlyDisplayingSearchController____s_category) + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = MEMORY[0x1E696AF00];
            v19 = v17;
            v20 = [v18 callStackSymbols];
            v21 = 138412546;
            v22 = self;
            v23 = 2112;
            v24 = v20;
            _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "UISearchController that requires hosting in navigation bar is losing its navigation item\n\t%@\n%@", &v21, 0x16u);
          }
        }
      }
    }
  }

  p_navigationItemCurrentlyDisplayingSearchController = &self->__navigationItemCurrentlyDisplayingSearchController;
  v6 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);

  if (!v4)
  {
    v7 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    v8 = [v7 _stackEntry];
    [v8 setSearchActive:0];

    v9 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    v10 = objc_loadWeakRetained(p_navigationItemCurrentlyDisplayingSearchController);

    if (v9 != v10)
    {
      v11 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
      v12 = [v11 _stackEntry];
      [v12 setSearchActive:0];
    }
  }

  objc_storeWeak(p_navigationItemCurrentlyDisplayingSearchController, v4);
  v13 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);

  if (!v4 || !v13)
  {
    objc_storeWeak(&self->__navigationItemCurrentlyDisplayingSearchBar, v4);
    if (v6 != v4)
    {
      [(UISearchController *)self _updateSearchBarHostingFromNavigationItem:v4];
    }
  }

  inlineToolbarSearchBarItem = self->_inlineToolbarSearchBarItem;
  if (inlineToolbarSearchBarItem)
  {
    [(UIBarButtonItem *)inlineToolbarSearchBarItem _setVendingNavigationItem:v4];
  }
}

- (void)_setNavigationItemCurrentlyDisplayingSearchBar:(id)a3 withGlobalSearchDelegate:(id)a4
{
  obj = a3;
  v7 = a4;
  if ((obj != 0) != (v7 != 0))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:396 description:@"UIKit error: globalSearchDelegate and navigationItem must both be set to non-nil or both to nil"];
  }

  objc_storeWeak(&self->_globalSearchDelegate, v7);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UISearchController;
  [(UIViewController *)&v11 encodeWithCoder:v4];
  searchResultsController = self->_searchResultsController;
  if (searchResultsController)
  {
    [v4 encodeObject:searchResultsController forKey:@"UISearchControllerResultsController"];
  }

  [v4 encodeBool:self->_obscuresBackgroundDuringPresentation forKey:@"UISearchControllerDimsBackgroundDuringPresentation"];
  [v4 encodeBool:self->_obscuresBackgroundDuringPresentation forKey:@"UISearchControllerObscuresBackgroundDuringPresentation"];
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x800) != 0)
  {
    v8 = @"UISearchControllerWantsDefaultNavigationBarHidingBehavior";
    v9 = v4;
    v7 = 1;
  }

  else
  {
    v7 = (*&controllerFlags >> 10) & 1;
    v8 = @"UISearchControllerHidesNavigationBarDuringPresentation";
    v9 = v4;
  }

  [v9 encodeBool:v7 forKey:v8];
  [v4 encodeBool:(*&self->_controllerFlags >> 7) & 1 forKey:@"UISearchControllerAutomaticallyShowsSearchResultsController"];
  v10 = self->_controllerFlags;
  if ((*&v10 & 0x80) == 0)
  {
    [v4 encodeBool:(*&v10 >> 8) & 1 forKey:@"UISearchControllerShowsSearchResultsController"];
    v10 = self->_controllerFlags;
  }

  [v4 encodeBool:(*&v10 >> 4) & 1 forKey:@"UISearchControllerAutomaticallyShowsCancelButton"];
  [v4 encodeInteger:(self->_controllerFlags >> 5) & 3 forKey:@"UISearchControllerScopeBarActivation"];
  [v4 encodeBool:(*&self->_controllerFlags >> 17) & 1 forKey:@"UISearchControllerIgnoresSearchSuggestionsForStackedSearch"];
  [v4 encodeInteger:-[UIViewController modalPresentationStyle](self forKey:{"modalPresentationStyle"), @"UISearchControllerModalPresentationStyle"}];
  [v4 encodeObject:self->_searchBar forKey:@"UISearchControllerSearchBar"];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_windowWillAnimateToken];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = @"UIApplicationWillEnterForegroundNotification";
  v16[1] = @"UIApplicationDidBecomeActiveNotification";
  v16[2] = @"UIApplicationWillResignActiveNotification";
  v16[3] = @"UIApplicationDidEnterBackgroundNotification";
  v16[4] = 0x1EFB3A190;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

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
    v14 = [(_UISearchControllerDidScrollDelegate *)didScrollDelegate scrollView];
    [v14 _removeScrollViewScrollObserver:self->_didScrollDelegate];
  }

  [(UISearchController *)self _removeCarPlayLimitedUIObserver];
  v15.receiver = self;
  v15.super_class = UISearchController;
  [(UIViewController *)&v15 dealloc];
}

- (void)loadView
{
  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    v4 = [(UIViewController *)self presentingViewController];
    v5 = [v4 view];
    [v5 bounds];
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
    v4 = [(UIViewController *)self view];
    [v4 bounds];
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
    v11 = [(UIViewController *)self->_searchResultsController view];
    [(UIView *)self->_resultsControllerViewContainer bounds];
    [v11 setFrame:?];
    [(UIView *)self->_resultsControllerViewContainer addSubview:v11];
    [v11 setAutoresizingMask:18];
    [(UIViewController *)self addChildViewController:self->_searchResultsController];
    v12 = [(UIViewController *)self view];
    [v12 addSubview:self->_resultsControllerViewContainer];

    [(UIViewController *)self->_searchResultsController didMoveToParentViewController:self];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = UISearchController;
  [(UIViewController *)&v6 viewDidAppear:a3];
  v4 = [(UIViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UISearchController;
  [(UIViewController *)&v3 viewDidDisappear:a3];
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

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = [(UIViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    v6 = [(UISearchController *)self searchBar];
    [v6 becomeFirstResponder];

    v7 = +[UIKeyboard activeKeyboard];
    [v7 didMoveToWindow];
  }

  *&self->_controllerFlags |= 0x2000000u;
}

- (void)applicationDidEnterBackground:(id)a3
{
  v4 = [(UIViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    v6 = [(UISearchController *)self searchBar];
    [v6 resignFirstResponder];
  }

  *&self->_controllerFlags &= ~0x2000000u;
}

- (id)_createAnimationCoordinator
{
  v3 = objc_alloc_init(_UIAnimationCoordinator);
  v4 = [(UIViewController *)self view];
  [(_UIAnimationCoordinator *)v3 setContainerView:v4];

  return v3;
}

- (void)_resizeResultsControllerWithDelta:(CGSize)a3
{
  height = a3.height;
  [(UIView *)self->_resultsControllerViewContainer frame];
  v6 = v5;
  v8 = v7;
  v10 = height + v9;
  v12 = v11 - height;
  v13 = [(UISearchController *)self _createAnimationCoordinator];
  [(UIView *)self->_resultsControllerViewContainer frame];
  [v13 setStartFrame:?];
  [v13 setEndFrame:{v6, v10, v8, v12}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__UISearchController__resizeResultsControllerWithDelta___block_invoke;
  v14[3] = &unk_1E711EE30;
  v14[4] = self;
  *&v14[5] = v6;
  *&v14[6] = v10;
  *&v14[7] = v8;
  *&v14[8] = v12;
  [v13 setAnimator:v14];
  [v13 animate];
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

  v5 = [(UIViewController *)self presentationController];
  v6 = [v5 resultsUnderlapsSearchBar];

  return v6 & v4;
}

- (id)preferredFocusEnvironments
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (self->_barPresentationStyle == 5)
  {
    v3 = [(UISearchController *)self searchBar];
    v4 = v3;
    if (v3)
    {
      v21[0] = v3;
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
    v9 = [(UIViewController *)searchResultsController view];
    v10 = [v9 isHidden];
  }

  else
  {
    v10 = 1;
  }

  if (self->_systemInputViewController)
  {
    v11 = [(UISearchController *)self _tvKeyboardContainerView];
    v12 = [v11 isUserInteractionEnabled];

    controllerFlags = self->_controllerFlags;
    if ((!v12 || !(((*&controllerFlags & 0x8000000) == 0) | v10 & 1)) && (*&controllerFlags & 0x20000000) == 0)
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
  if (v10)
  {
    v14 = [(UISearchController *)self searchBar];
    v4 = v14;
    if (v14)
    {
      v18 = v14;
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

- (void)set_systemInputMarginView:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->__systemInputMarginView, a3);
  v5 = [(UIViewController *)self view];
  v6 = [v5 subviews];
  v7 = [v6 containsObject:self->__systemInputMarginView];

  if ((v7 & 1) == 0)
  {
    v8 = [(UIViewController *)self view];
    [v8 addSubview:self->__systemInputMarginView];
  }
}

- (void)_setRequestedInteractionModel:(unint64_t)a3
{
  if (UIKeyboardCarPlayRequiresTouch())
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  if (self->__requestedInteractionModel != v5)
  {
    self->__requestedInteractionModel = v5;
    if (self->_systemInputViewController)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = [(UIViewController *)self _window];

      if (v6)
      {
        v7 = [(UISearchController *)self searchBar];
        v8 = [v7 searchField];
        v9 = [UISystemInputViewController systemInputViewControllerForResponder:v8 editorView:0 containingResponder:self];
        systemInputViewController = self->_systemInputViewController;
        self->_systemInputViewController = v9;

        LODWORD(v6) = 1;
      }
    }

    [UISystemInputViewController setKeyboardInteractionModel:self->__requestedInteractionModel];
    v11 = self->_systemInputViewController;
    if (v11)
    {
      [(UISystemInputViewController *)v11 setRequestedInteractionModel:self->__requestedInteractionModel];
    }

    if (v6)
    {

      [(UISearchController *)self _didCreateSystemInputViewController];
    }
  }
}

- (void)_createSystemInputViewControllerIfNeededForTraitEnvironment:(id)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 traitCollection];
  if ([v5 userInterfaceIdiom] == 2)
  {
    goto LABEL_4;
  }

  v6 = [v4 traitCollection];
  if ([v6 userInterfaceIdiom] == 8)
  {

LABEL_4:
    goto LABEL_5;
  }

  v41 = [v4 traitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 != 3)
  {
    goto LABEL_25;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 _window];
    v8 = [v7 windowScene];
    v9 = [v8 _carPlaySceneComponent];

    if (v9)
    {
      UIKeyboardCarPlayFiveRowKeyboardEnabled = [v9 disableFiveRowKeyboards] ^ 1;
    }
  }

  systemInputViewController = self->_systemInputViewController;
  if (!systemInputViewController)
  {
    v11 = [(UISearchController *)self searchBar];
    v12 = [v11 searchField];
    v13 = [UISystemInputViewController systemInputViewControllerForResponder:v12 editorView:0 containingResponder:self];
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
  v16 = [(UISearchController *)self searchBar];
  v17 = [v16 searchField];
  [(UISystemInputViewController *)v15 setPersistentDelegate:v17];

  v18 = [(UIViewController *)self traitCollection];
  if ([v18 userInterfaceIdiom] == 3)
  {
    v19 = [(UISearchController *)self _requestedInteractionModel]& 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(UIViewController *)self childViewControllers];
  v21 = [v20 containsObject:self->_systemInputViewController];

  if (v21)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [(UIViewController *)self addChildViewController:self->_systemInputViewController];
  v22 = [(UIViewController *)self view];
  v23 = [(UIViewController *)self->_systemInputViewController view];
  [v22 addSubview:v23];

  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  v26 = [(UIViewController *)self->_systemInputViewController view];
  [v26 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v28 = v27;

  v29 = [(UIViewController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  [v30 layoutFrame];
  v32 = v31;

  v33 = [(UIViewController *)self->_systemInputViewController view];
  [v33 setFrame:{v24, v25, v32, v28}];

  [(UIViewController *)self->_systemInputViewController didMoveToParentViewController:self];
  if (v19)
  {
    v44 = MEMORY[0x1E69977A0];
    v50 = [(UIViewController *)self->_systemInputViewController view];
    v48 = [v50 leadingAnchor];
    v49 = [(UIViewController *)self view];
    v47 = [v49 safeAreaLayoutGuide];
    v46 = [v47 leadingAnchor];
    v45 = [v48 constraintEqualToAnchor:v46];
    v51[0] = v45;
    v43 = [(UIViewController *)self->_systemInputViewController view];
    v34 = [v43 trailingAnchor];
    v35 = [(UIViewController *)self view];
    v36 = [v35 safeAreaLayoutGuide];
    v37 = [v36 trailingAnchor];
    v38 = [v34 constraintEqualToAnchor:v37];
    v51[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [v44 activateConstraints:v39];

LABEL_20:
    [(UISystemInputViewController *)self->_systemInputViewController updateBackdropForCarPlay];
  }

LABEL_21:
  [(UISystemInputViewController *)self->_systemInputViewController reloadInputViewsForPersistentDelegate];
LABEL_22:
  v40 = [(UIViewController *)self view];
  [v40 set_ensureSystemInputViewAboveSearchBarContainerView:1];

  if (!systemInputViewController)
  {
    [(UISearchController *)self _didCreateSystemInputViewController];
  }

LABEL_25:
}

- (id)_viewToInsertSearchBarContainerViewUnder
{
  v3 = [(UIViewController *)self view];
  v4 = [v3 _ensureSystemInputViewAboveSearchBarContainerView];

  if (v4)
  {
    v5 = [(UIViewController *)self->_systemInputViewController view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UISystemInputViewController)_systemInputViewController
{
  [(UISearchController *)self _createSystemInputViewControllerIfNeededForTraitEnvironment:self];
  systemInputViewController = self->_systemInputViewController;

  return systemInputViewController;
}

- (id)_systemInputViewControllerAfterUpdate:(BOOL)a3
{
  systemInputViewController = self->_systemInputViewController;
  if (!systemInputViewController || a3)
  {
    v4 = [(UISearchController *)self _systemInputViewController];
  }

  else
  {
    v4 = systemInputViewController;
  }

  return v4;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_barPresentationStyle && ![(UISearchController *)self isBeingDismissed])
  {
    v8 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
    [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:v8];
    v9 = [v6 previouslyFocusedView];
    v10 = [v6 nextFocusedView];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = [(UIViewController *)self _focusSystem];
      v14 = [v13 focusedItem];
      v12 = _UIFocusEnvironmentContainingView(v14);
    }

    if (v9)
    {
      v15 = [(UISearchController *)self searchBar];
      if ([v9 isDescendantOfView:v15])
      {
        v16 = 1;
      }

      else
      {
        v17 = [(UIViewController *)self->_systemInputViewController view];
        v16 = [v9 isDescendantOfView:v17];
      }

      [v9 isDescendantOfView:self->_resultsControllerViewContainer];
    }

    else
    {
      v16 = 0;
    }

    v18 = [(UISearchController *)self searchBar];
    if ([v12 isDescendantOfView:v18])
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
          v25 = [v24 resolvedKeyboardStyle];

          v51 = v25 == 2;
          v8 = v59;
          if (!v51)
          {
            v26 = [(UIViewController *)self presentingViewController];
            v27 = [v26 navigationController];

            v28 = [(UIViewController *)self presentedViewController];
            if (v28)
            {
              v55 = 0;
            }

            else
            {
              v39 = [(UISearchController *)self searchResultsController];
              v40 = [v39 presentedViewController];
              if (v40)
              {
                v55 = 0;
              }

              else
              {
                v41 = [v27 presentedViewController];
                v55 = v41 == 0;
              }
            }

            v70 = 0;
            v64 = 0;
            v65 = &v64;
            v66 = 0x3032000000;
            v67 = __Block_byref_object_copy__171;
            v68 = __Block_byref_object_dispose__171;
            v69 = 0;
            v42 = [(UIViewController *)self presentingViewController];
            v43 = v42;
            if (v42)
            {
              v44 = v42;
            }

            else
            {
              v44 = self;
            }

            v45 = v44;

            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __71__UISearchController_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
            v61[3] = &unk_1E7103DA8;
            v46 = v27;
            v62 = v46;
            v63 = &v64;
            v56 = v45;
            [(UIViewController *)v45 _enumerateAncestorViewControllersUntilStop:&v70 usingBlock:v61];
            v47 = [v46 viewControllers];
            v57 = [v47 indexOfObject:v65[5]];

            v58 = v46;
            v48 = [v46 viewControllers];
            v49 = [v46 topViewController];
            v50 = [v48 indexOfObject:v49];

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
            v54 = [v53 window];
            if (v54)
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
      v33 = [v6 nextFocusedItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v35 = [v6 previouslyFocusedItem];
        v36 = [v6 nextFocusedItem];

        if (v35 == v36)
        {
LABEL_42:

          goto LABEL_43;
        }

        v37 = [(UISearchController *)self searchBar];
        [v37 _hideOrResetHelperPlaceHolder:0];

        [(UISearchController *)self _displayDefaultHelperPlaceholderMessage];
        v38 = +[UIDictationController sharedInstance];
        [v38 updateHelperMessageDisplayIfNeeded];
      }

      else
      {
        v38 = [(UISearchController *)self searchBar];
        [v38 _hideOrResetHelperPlaceHolder:1];
      }

      goto LABEL_42;
    }

    v60 = v8;
    v29 = [v12 _scroller];
    v30 = [v29 _scroller];
    if ([v30 isDescendantOfView:self->_resultsControllerViewContainer])
    {
      do
      {
        v31 = v30;

        v30 = [v31 _scroller];

        v29 = v31;
      }

      while (([v30 isDescendantOfView:self->_resultsControllerViewContainer] & 1) != 0);
    }

    else
    {
      v31 = v29;
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

- (void)_updateKeyboardFocusGuidesForAnimator:(id)a3
{
  if ([a3 collapesKeyboardWhenNotFocused])
  {
    [(UISearchController *)self _createOrUpdateKeyboardToSearchResultsFocusGuide];
    [(UISearchController *)self _createOrUpdateSearchResultsToHiddenKeyboardFocusGuide];
    systemInputViewController = self->_systemInputViewController;

    [(UISystemInputViewController *)systemInputViewController setKeyboardCanBecomeFocusedWithZeroAlpha:1];
  }

  else
  {
    v5 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];

    if (v5)
    {
      v6 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
      v7 = [v6 owningView];
      v8 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
      [v7 removeLayoutGuide:v8];

      [(UISearchController *)self setKeyboardToSearchResultsFocusGuide:0];
    }

    v9 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];

    if (v9)
    {
      v10 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
      v11 = [v10 owningView];
      v12 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
      [v11 removeLayoutGuide:v12];

      [(UISearchController *)self setSearchResultsToHiddenKeyboardFocusGuide:0];
    }

    [(UISystemInputViewController *)self->_systemInputViewController setKeyboardCanBecomeFocusedWithZeroAlpha:0];
    v13 = [(UIViewController *)self->_systemInputViewController view];
    [v13 setAlpha:1.0];
  }
}

- (void)_createOrUpdateKeyboardToSearchResultsFocusGuide
{
  v36[4] = *MEMORY[0x1E69E9840];
  v3 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];

    v6 = 0x1E695D000;
    if (!v5)
    {
      v7 = objc_alloc_init(UIFocusGuide);
      [(UIFocusGuide *)v7 setEnabled:0];
      v8 = [v3 view];
      [v8 addLayoutGuide:v7];

      v27 = MEMORY[0x1E69977A0];
      v33 = [(UILayoutGuide *)v7 heightAnchor];
      v32 = [v33 constraintEqualToConstant:1.0];
      v36[0] = v32;
      v30 = [(UILayoutGuide *)v7 topAnchor];
      v31 = [v3 view];
      v29 = [v31 bottomAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      v36[1] = v28;
      v25 = [(UILayoutGuide *)v7 leadingAnchor];
      v26 = [v3 view];
      v9 = [v26 leadingAnchor];
      v10 = [v25 constraintEqualToAnchor:v9];
      v36[2] = v10;
      v11 = [v3 view];
      v12 = [v11 trailingAnchor];
      v13 = [(UILayoutGuide *)v7 trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v36[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      [v27 activateConstraints:v15];

      v6 = 0x1E695D000uLL;
      [(UISearchController *)self setKeyboardToSearchResultsFocusGuide:v7];
    }

    v16 = [(UISearchController *)self searchResultsController];
    if (v16)
    {
      v17 = [(UISearchController *)self searchResultsController];
      v35 = v17;
      v18 = [*(v6 + 3784) arrayWithObjects:&v35 count:1];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(UISearchController *)self searchBar];
    if ([v19 showsScopeBar])
    {
      v20 = [(UISearchController *)self searchBar];
      v21 = [v20 _scopeBar];

      if (!v21)
      {
LABEL_11:
        v24 = [(UISearchController *)self keyboardToSearchResultsFocusGuide];
        [v24 setPreferredFocusEnvironments:v18];

        goto LABEL_12;
      }

      v19 = [(UISearchController *)self searchBar];
      v22 = [v19 _scopeBar];
      v34 = v22;
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
  v4 = [v3 view];

  if (v4)
  {
    v5 = 0x1E695D000;
    if (!self->_searchResultsToHiddenKeyboardFocusGuide)
    {
      v6 = objc_alloc_init(UIFocusGuide);
      [(UIFocusGuide *)v6 setEnabled:0];
      v7 = [(UIViewController *)self view];
      [v7 addLayoutGuide:v6];

      v19 = MEMORY[0x1E69977A0];
      v25 = [(UILayoutGuide *)v6 heightAnchor];
      v24 = [v25 constraintEqualToConstant:1.0];
      v27[0] = v24;
      v22 = [(UILayoutGuide *)v6 leadingAnchor];
      v23 = [(UIViewController *)self view];
      v21 = [v23 leadingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v27[1] = v20;
      v17 = [(UILayoutGuide *)v6 topAnchor];
      v18 = [v3 view];
      v8 = [v18 bottomAnchor];
      v9 = [v17 constraintEqualToAnchor:v8];
      v27[2] = v9;
      v10 = [(UIViewController *)self view];
      v11 = [v10 trailingAnchor];
      v12 = [(UILayoutGuide *)v6 trailingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v27[3] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
      [v19 activateConstraints:v14];

      [(UISearchController *)self setSearchResultsToHiddenKeyboardFocusGuide:v6];
      v5 = 0x1E695D000uLL;
    }

    v26 = v3;
    v15 = [*(v5 + 3784) arrayWithObjects:&v26 count:1];
    v16 = [(UISearchController *)self searchResultsToHiddenKeyboardFocusGuide];
    [v16 setPreferredFocusEnvironments:v15];
  }
}

- (void)_willUpdateFocusInContext:(id)a3
{
  v24 = a3;
  dyld_program_sdk_at_least();
  v4 = [v24 previouslyFocusedItem];
  v5 = [v24 nextFocusedItem];
  if (v4 != v5 && self->_barPresentationStyle)
  {
    v6 = [(UISearchController *)self isBeingDismissed];

    if (v6)
    {
      goto LABEL_12;
    }

    v4 = [v24 nextFocusedView];
    v7 = [(UIViewController *)self view];
    [v4 bounds];
    [v7 convertRect:v4 fromView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v5 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0];
    [(UISearchController *)self _updateKeyboardFocusGuidesForAnimator:v5];
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MaxY = CGRectGetMaxY(v26);
    v17 = [(UIViewController *)self view];
    [v17 bounds];
    v18 = CGRectGetMaxY(v27);

    if (MaxY > v18)
    {
      v19 = 2;
LABEL_8:
      [v5 willFocusOffscreenViewForController:self withHeading:v19];
      v23 = [v4 _scroller];
      if (v23)
      {
        [v4 bounds];
        [v23 convertRect:v4 fromView:?];
        [v23 scrollRectToVisible:1 animated:?];
      }

      goto LABEL_11;
    }

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MinY = CGRectGetMinY(v28);
    v21 = [(UIViewController *)self view];
    [v21 bounds];
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

- (void)viewWillAppear:(BOOL)a3
{
  v30.receiver = self;
  v30.super_class = UISearchController;
  [(UIViewController *)&v30 viewWillAppear:a3];
  v4 = [(UISearchController *)self _searchPresentationController];
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
            v8 = [v4 presentingViewController];
            v9 = [v8 navigationController];

            if (v9)
            {
              [v6 contentInset];
              v11 = v10;
              v13 = v12;
              v15 = v14;
              [v9 _scrollViewBottomContentInsetForViewController:self->_searchResultsController];
              [v6 setContentInset:{v11, v13, v16, v15}];
            }
          }
        }
      }
    }
  }

  else if (([v4 animatorShouldLayoutPresentationViews] & 1) == 0)
  {
    [v4 finalFrameForContainerView];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(UISearchBar *)self->_searchBar scopeButtonTitles];
    if ([v25 count])
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UISearchController;
  [(UIViewController *)&v3 viewWillDisappear:a3];
}

- (void)_willPresentFromViewController:(id)a3
{
  [(UISearchController *)self _startDeferringSettingSearchSuggestionsWithReason:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained willPresentSearchController:self];
  }

  v4 = [(UISearchController *)self automaticallyShowsCancelButton];
  v5 = objc_loadWeakRetained(&self->_activeBorrowedSearchTabHostedFieldConfiguration);
  [v5 setShowsCancelAction:v4];
}

- (void)_didPresentFromViewController:(id)a3
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
  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    *&self->_controllerFlags |= 0x800000u;
    if (_UISolariumEnabled())
    {
      v4 = [v3 navigationController];
      [v4 _setInteractiveScrollActive:0];
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
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412290;
        v10 = self;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "-_willDismissSearchController unexpectedly received with nil presentingViewController on iOS16.4 or later. self = %@", &v9, 0xCu);
      }

      goto LABEL_4;
    }

    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_willDismissSearchController___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = self;
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

  v7 = [(UISearchController *)self _trackableState];
  [v7 setActive:0 animated:1];
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

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = UISearchController;
  v4 = a3;
  [(UIViewController *)&v9 _preferredContentSizeDidChangeForChildViewController:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(UIViewController *)self setPreferredContentSize:v6, v8];
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  if (self->_searchResultsController)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    if (a3 == 7 || a3 == 2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Presenting UISearchController in a popover or form sheet while reusing the search origin as the search results destination makes little sense. Initialize UISearchController with a proper search results controller to present as a popover or in a form sheet."];
    }
  }

  if (a3 > 7 || ((1 << a3) & 0x94) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"UISearchController currently only supports UIModalPresentationCustom, UIModalPresentationPopover and UIModalPresentationFormSheet presentation styles"}];
  }

  v6 = a3 == 7 || a3 == 2;
  self->__showResultsForEmptySearch = v6;
  v7.receiver = self;
  v7.super_class = UISearchController;
  [(UIViewController *)&v7 setModalPresentationStyle:a3];
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
    v6 = [(UISearchController *)self showsSearchResultsController];
    v5 = 0;
    if (v6)
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
  if (a1 && (*(a1 + 1116) & 0x60) == 0x20 && [*(a1 + 992) _isHostedByNavigationBar])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1312));
    v4 = [WeakRetained _navigationBar];

    v3 = objc_loadWeakRetained((a1 + 1312));
    [v4 _searchScopeBarWillManuallyShowOrHideForNavigationItem:v3];
  }
}

- (void)_dci_setAutomaticScopeBarShowsOnPresentation:(BOOL)a3
{
  if (a3)
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

- (void)_connectSearchBar:(id)a3
{
  v5 = a3;
  searchBar = self->_searchBar;
  if (searchBar != v5)
  {
    v10 = v5;
    [(UISearchBar *)searchBar _setSearchController:0];
    objc_storeStrong(&self->_searchBar, a3);
    [(UISearchBar *)self->_searchBar _setSearchController:self];
    [(UISearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
    [(UIView *)self->_searchBar frame];
    if (CGRectEqualToRect(v12, *MEMORY[0x1E695F058]))
    {
      [(UIView *)self->_searchBar sizeToFit];
    }

    v7 = [(UISearchBar *)self->_searchBar searchTextField];
    v8 = [v7 _suggestionController];
    suggestionController = self->_suggestionController;
    self->_suggestionController = v8;

    v5 = v10;
  }
}

- (void)_sizeSearchViewToPresentingViewController:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UISearchController__sizeSearchViewToPresentingViewController___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [(UISearchController *)self _locatePresentingViewController];
  v4 = [(UIViewController *)v3 _transitionCoordinator];
  v5 = v4;
  v7 = v3 == self || v4 == 0;
  v8 = [(UIViewController *)self traitCollection];
  if ([v8 userInterfaceIdiom] == 2)
  {
    goto LABEL_10;
  }

  v9 = [(UIViewController *)self traitCollection];
  if ([v9 userInterfaceIdiom] == 8)
  {

LABEL_10:
    goto LABEL_11;
  }

  v12 = [(UIViewController *)self traitCollection];
  v13 = [v12 userInterfaceIdiom] == 3;

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
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_globalSearchDelegate);
    if (WeakRetained)
    {

      goto LABEL_14;
    }

    if ([(UIViewController *)v3 _appearState]!= 3 && [(UIViewController *)v3 _appearState])
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
  if (a1)
  {
    if (*(a1 + 1118))
    {
      v2 = [a1 _suggestionController];
      v3 = [v2 hasVisibleMenu];

      if (v3)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v5 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
          {
            v6 = 138412290;
            v7 = a1;
            _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }

        else
        {
          v4 = *(__UILogGetCategoryCachedImpl("Assert", &_clearSearchSuggestionsIfNecessary___s_category_0) + 8);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            v6 = 138412290;
            v7 = a1;
            _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIKit inconsistency: Menu became visible with clear-search-suggestions still pending. Search suggestions will not be cleared. %@", &v6, 0xCu);
          }
        }
      }

      else
      {
        [a1 setSearchSuggestions:0];
      }
    }

    *(a1 + 1116) &= ~0x10000u;
  }
}

- (void)_searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  if (dyld_program_sdk_at_least())
  {
    [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
    v5 = [(UISearchController *)self searchResultsUpdater];
    [v5 updateSearchResultsForSearchController:self];
  }
}

- (void)_tvos_searchBar:(id)a3 textDidChange:(id)a4 programatically:(BOOL)a5
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

- (void)__searchBar:(int)a3 changedSearchTextFieldContentProgramatically:
{
  v13 = a2;
  if (a1)
  {
    if (a3)
    {
      if ([a1 isBeingDismissed])
      {
        goto LABEL_16;
      }

      v3 = [v13 _searchBarTextField];
      if (![v3 _hasContent])
      {
        goto LABEL_15;
      }
    }

    v6 = (*(a1 + 1116) >> 5) & 3;
    if (v6 != 2 && (v6 || !dyld_program_sdk_at_least()) || [*(a1 + 992) showsScopeBar])
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_15:

      goto LABEL_16;
    }

    v7 = [*(a1 + 992) scopeButtonTitles];
    v8 = [v7 count];

    if (a3)
    {
    }

    if (v8)
    {
      v9 = *(a1 + 992);
      WeakRetained = objc_loadWeakRetained((a1 + 1312));
      v11 = [WeakRetained _navigationBar];
      v12 = [v13 _searchBarTextField];
      [v9 _setDeferredAutomaticShowsScopeBarInNavigationBar:v11 hasContent:{objc_msgSend(v12, "_hasContent")}];

      v3 = objc_loadWeakRetained((a1 + 1312));
      [v3 _searchControllerReadyForDeferredAutomaticShowsScopeBar];
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)__searchTextFieldDidSetOrInsertTokens:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    v4 = [*(a1 + 992) _searchBarTextField];

    v3 = v5;
    if (v4 == v5)
    {
      [(UISearchController *)a1 __searchBar:1 changedSearchTextFieldContentProgramatically:?];
      v3 = v5;
    }
  }
}

- (void)_ios_searchBar:(id)a3 textDidChange:(id)a4 programatically:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  if (!v5)
  {
    v9 = [v13 _searchBarTextField];
    v10 = [v9 _needsDelayedSearchControllerPresentation];

    if (v10)
    {
      [(UISearchController *)self _performDidBeginEditingForSearchBar:v13];
    }

    else
    {
      [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
    }
  }

  [(UISearchController *)self __searchBar:v13 changedSearchTextFieldContentProgramatically:v5];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v13];
  v11 = [v13 isFirstResponder];
  v12 = [(UISearchController *)self searchResultsUpdater];
  [v12 updateSearchResultsForSearchController:self];

  if (v11 && ([v13 isFirstResponder] & 1) == 0)
  {
    [v13 becomeFirstResponder];
  }
}

- (void)_searchBarTokensDidChange:(id)a3
{
  v4 = a3;
  [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v4];

  v5 = [(UISearchController *)self searchResultsUpdater];
  [v5 updateSearchResultsForSearchController:self];
}

- (void)_performDidBeginEditingForSearchBar:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __58__UISearchController__performDidBeginEditingForSearchBar___block_invoke;
  v15 = &unk_1E70F8908;
  objc_copyWeak(&v18, &location);
  v5 = v4;
  v16 = v5;
  v17 = self;
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

- (void)_searchBarTextDidBeginEditing:(id)a3
{
  v6 = a3;
  v4 = [v6 _searchBarTextField];
  v5 = [v4 _needsDelayedSearchControllerPresentation];

  if ((v5 & 1) == 0)
  {
    [(UISearchController *)self _performDidBeginEditingForSearchBar:v6];
  }
}

- (void)_searchBarCancelButtonClicked:(id)a3
{
  [(UISearchController *)self _clearSearchSuggestionsIfNecessary];
  v4 = +[UIView areAnimationsEnabled];

  [(UISearchController *)self _dismissPresentation:v4];
}

- (void)_searchBarSearchTextFieldRequirementDidChange:(id)a3
{
  v4 = a3;
  [(UISearchController *)self _setDisplaysSearchBarItemGroupInline:[(UISearchController *)self _displaysSearchBarItemGroupInline]];
  v5 = [v4 _requiresSearchTextField];
  v6 = [v4 _searchBarTextField];

  v11 = [v6 window];

  v7 = v11;
  if (v5 && !v11)
  {
    controllerFlags = self->_controllerFlags;
    self->_controllerFlags = (*&controllerFlags | 0x400000);
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    v10 = [WeakRetained _navigationBar];
    [v10 layoutIfNeeded];

    v7 = 0;
    self->_controllerFlags = (*&self->_controllerFlags & 0xFFBFFFFF | (((*&controllerFlags >> 22) & 1) << 22));
  }
}

- (id)_locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v5 = [(UIView *)searchBar _viewControllerForAncestor];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    v7 = [WeakRetained _hasIntegratedSearchBarInNavigationBar];
    if (v7 && (-[UISearchController _inlineSearchBarItemGroup](self, "_inlineSearchBarItemGroup"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isHidden] & 1) == 0))
    {
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
      v9 = [v8 _hasIntegratedSearchBarInToolbar];

      if (v7)
      {

        if (v9)
        {
          goto LABEL_12;
        }

LABEL_10:
        v5 = 0;
        goto LABEL_13;
      }

      if (!v9)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v11 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    v12 = [v11 _navigationBar];
    v5 = [v12 _effectiveDelegate];
  }

LABEL_13:
  v13 = [v5 splitViewController];
  v14 = [v13 _globalSearchController];

  if (v14 == self)
  {
    v10 = [v5 splitViewController];
    v19 = [v10 _globalSearchDonorViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v15 = [v5 topViewController];
    v10 = v15;
    if (self->_managedPalette)
    {
      goto LABEL_23;
    }

    if ([v15 _isNestedNavigationController])
    {
      v16 = [v10 topViewController];

      v10 = v16;
    }

    v17 = [v10 navigationItem];
    v18 = [v17 _searchControllerIfAllowed];

    if (v18 == self)
    {
      goto LABEL_23;
    }

    v19 = 0;
  }

  v10 = v19;
LABEL_23:

LABEL_24:

  return v10;
}

- (id)_locatePresentingViewController
{
  v3 = [(UISearchController *)self _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(UISearchController *)self searchBar];
    v4 = [v5 _viewControllerForAncestor];

    if (!v4)
    {
      v6 = [(UIViewController *)self _window];
      v4 = [v6 rootViewController];
    }
  }

  v7 = _firstChildViewControllerDefiningPresentationContext(v4);
  if (!v7)
  {
    v7 = v4;
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

- (void)_performAutomaticPresentationFromTextField:(BOOL)a3
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
          v26 = a3;
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

  v12 = [(UISearchController *)self _locatePresentingViewController];
  if (([v12 isBeingDismissed] & 1) == 0)
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
    v14 = v12;
    v21 = v14;
    v22 = v13;
    v23 = a3;
    v15 = _Block_copy(v20);
    v16 = [v14 transitionCoordinator];

    if (v16)
    {
      v17 = [v14 transitionCoordinator];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__UISearchController__performAutomaticPresentationFromTextField___block_invoke_4;
      v18[3] = &unk_1E70F3770;
      v19 = v15;
      [v17 animateAlongsideTransition:0 completion:v18];
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

- (void)_dismissPresentation:(BOOL)a3
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
          v18 = a3;
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

  v12 = [(UIViewController *)self presentingViewController];
  if (v12 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UISearchController *)self _willDismissSearchController];
  }

  v13 = [(UISearchBar *)self->_searchBar searchTextField];
  [v13 setText:0];
  [v13 setTokens:MEMORY[0x1E695E0F0]];
  [UISearchController _resignSearchBarAsFirstResponder:self->_searchBar];
  v14 = +[UIView areAnimationsEnabled];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__UISearchController__dismissPresentation___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [v12 dismissViewControllerAnimated:v14 completion:v15];
}

void __43__UISearchController__dismissPresentation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissPresentation:*(a1 + 40)];
}

- (void)_showSearchSuggestionsListIfApplicable
{
  WeakRetained = objc_loadWeakRetained((a1 + 1320));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 1320));
    v5 = [v4 _hasIntegratedSearchBarInNavigationBar];

    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 1224);
      if (!v6)
      {
        v7 = [[_UISearchSuggestionsListViewController alloc] initWithSearchController:a1];
        v8 = *(a1 + 1224);
        *(a1 + 1224) = v7;

        [a1 addChildViewController:*(a1 + 1224)];
        v9 = [*(a1 + 1224) view];
        [v9 setAutoresizingMask:18];
        if (*(a1 + 1272))
        {
          [a1 loadViewIfRequired];
          [*(a1 + 1208) bounds];
          [v9 setFrame:?];
          v10 = *(a1 + 1208);
          v11 = [*(a1 + 1224) view];
          v12 = v10;
          v13 = v11;
        }

        else
        {
          v14 = [a1 view];
          [v14 bounds];
          [v9 setFrame:?];

          v12 = [a1 view];
          v11 = v12;
          v13 = v9;
        }

        [v12 addSubview:v13];

        [*(a1 + 1224) didMoveToParentViewController:a1];
        v6 = *(a1 + 1224);
      }

      v15 = [v6 view];
      [v15 setHidden:0];
    }
  }
}

- (void)_updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:(BOOL)a3
{
  v3 = a3;
  isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
  controllerFlags = self->_controllerFlags;
  if (*&controllerFlags & 0x60000) != 0 || (*&controllerFlags & 0x8000) != 0 || (WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar)) == 0 || (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar), v10 = [v9 _hasIntegratedSearchBarInNavigationBar], v9, v8, (v10))
  {
    [(UISearchController *)self _hideSearchSuggestionsList];
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  v13 = [(UISearchController *)self _suggestionController];
  v14 = [v13 suggestions];
  v15 = [v14 count];

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
  if (v3)
  {
LABEL_6:
    searchBar = self->_searchBar;
    v12 = isSuggestionsListViewControllerView ^ [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];

    [(UISearchController *)self _requestNavigationControllerObservingUpdateForSearchBar:v12 visibilityChangedForSearchSuggestionsList:0 forSearchResultsController:?];
  }
}

- (void)_requestNavigationControllerObservingUpdateForSearchBar:(int)a3 visibilityChangedForSearchSuggestionsList:(int)a4 forSearchResultsController:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1 && a3 | a4)
  {
    v8 = [a1 presentingViewController];
    if (v8 && _UIBarsApplyChromelessEverywhere() && [v7 _isHostedByNavigationBar])
    {
      isSearchResultsControllerView = [(UISearchController *)a1 _isSearchResultsControllerViewUnhidden];
      isSuggestionsListViewControllerView = [(UISearchController *)a1 _isSuggestionsListViewControllerViewUnhidden];
      v11 = isSearchResultsControllerView ^ a4;
      v12 = isSuggestionsListViewControllerView ^ a3;
      v13 = [v8 navigationController];
      v14 = [v13 _outermostNavigationController];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v35 = __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke;
      v36 = &unk_1E711EE58;
      v15 = v14;
      v37 = v15;
      v38 = v8;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v30 = __147__UISearchController__requestNavigationControllerObservingUpdateForSearchBar_visibilityChangedForSearchSuggestionsList_forSearchResultsController___block_invoke_2;
      v31 = &unk_1E711EE80;
      v32 = a1;
      v33 = v38;
      if (isSearchResultsControllerView && isSuggestionsListViewControllerView)
      {
        if (os_variant_has_internal_diagnostics())
        {
          logb = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(logb, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v40 = a1;
            _os_log_fault_impl(&dword_188A29000, logb, OS_LOG_TYPE_FAULT, "UISearchController should not be showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }

        else
        {
          log = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B010) + 8);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = a1;
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
            v40 = a1;
            _os_log_fault_impl(&dword_188A29000, logc, OS_LOG_TYPE_FAULT, "UISearchController should not have been showing the search results controller and the search suggestions list at the same time. Internal UIKit logic error. searchController = %@", buf, 0xCu);
          }
        }

        else
        {
          loga = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B018) + 8);
          if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = a1;
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

- (void)_updateHasPendingSuggestionMenuRefreshFlagForReason:(int64_t)a3
{
  controllerFlags = self->_controllerFlags;
  if ((*&controllerFlags & 0x80000) != 0)
  {
    goto LABEL_51;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

LABEL_53:
      self->_controllerFlags = (*&controllerFlags & 0xFFD7FFFF);
      return;
    }

LABEL_14:
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchController);
    v15 = [WeakRetained _navigationBar];
    v16 = [v15 _viewControllerForAncestor];

    v17 = [v16 _splitViewControllerEnforcingClass:1];
    v18 = v17;
    if (a3)
    {
      v19 = [(UISearchController *)self _suggestionController];
      v20 = [v19 hasVisibleMenu];

      v21 = [v18 _isExpanding];
      v22 = self->_controllerFlags;
      if (v21 | ((*&v22 & 0x40000) >> 18))
      {
        v23 = 0x200000;
      }

      else
      {
        v23 = 0x80000;
      }

      if (v21 | ((*&v22 & 0x40000) >> 18))
      {
        v24 = -2097153;
      }

      else
      {
        v24 = -786433;
      }

      if (!v20)
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
        if (a3 != 1)
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

      v15 = [(UISearchController *)self _suggestionController];
      if ([v15 hasVisibleMenu])
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
      if (!v29 || (-[UISearchController searchSuggestions](self, "searchSuggestions"), v15 = objc_claimAutoreleasedReturnValue(), ![v15 count]))
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

  if (a3 == 2 || a3 == 4)
  {
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v6 = [(UISearchController *)self searchBar];
    v7 = [v6 isFirstResponder];

    v8 = self->_controllerFlags;
    if (v7)
    {
      if ((v8 & 0x60000) != 0)
      {
        v9 = [(UISearchController *)self searchSuggestions];
        v10 = [v9 count];
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
      v33 = [(UIView *)self->_searchBar superview];
      [v33 setNeedsLayout];
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

- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)a3
{
  v20 = a3;
  v4 = [(UIViewController *)self traitCollection];
  if ([v4 userInterfaceIdiom] == 2)
  {
    goto LABEL_4;
  }

  v5 = [(UIViewController *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 8)
  {

LABEL_4:
LABEL_5:
    v6 = [(UIViewController *)self->_searchResultsController view];
    [v6 setHidden:0];

    goto LABEL_6;
  }

  v7 = [(UIViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    goto LABEL_5;
  }

  if ([(UIViewController *)self modalPresentationStyle]== UIModalPresentationCustom)
  {
    isSearchResultsControllerView = [(UISearchController *)self _isSearchResultsControllerViewUnhidden];
    isSuggestionsListViewControllerView = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
    v11 = [(UISearchController *)self _showsSearchResultsController];
    v12 = [(UIViewController *)self->_searchResultsController view];
    [v12 setHidden:!v11];

    [(UISearchController *)self _updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:0];
    v13 = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
    v14 = [(UISearchController *)self _isSearchResultsControllerViewUnhidden];
    [(UISearchController *)self _requestNavigationControllerObservingUpdateForSearchBar:v20 visibilityChangedForSearchSuggestionsList:isSuggestionsListViewControllerView ^ v13 forSearchResultsController:isSearchResultsControllerView ^ v14];
  }

  else
  {
    v15 = [(UISearchController *)self _showsSearchResultsController];
    v16 = [(UIViewController *)self->_searchResultsController view];
    [v16 setHidden:!v15];

    [(UISearchController *)self _updateSearchSuggestionsListVisibilityShouldRequestNavigationControllerObservingUpdate:0];
    v17 = [(UISearchController *)self _searchPresentationController];
    v18 = [v17 presentedView];

    if (v18)
    {
      if ([(UISearchController *)self _showsSearchResultsController])
      {
        v19 = 1;
      }

      else
      {
        v19 = [(UISearchController *)self _isSuggestionsListViewControllerViewUnhidden];
      }

      [v17 setContentVisible:v19];
    }
  }

LABEL_6:
}

- (void)_setupForCurrentTraitCollection
{
  v3 = [(UIViewController *)self traitCollection];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIViewController *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    [(UISearchController *)self _uninstallBackGestureRecognizer];
    [(UISearchController *)self _uninstallDoneGestureRecognizer];
    if ((v6 == 8 || v6 == 2) && dyld_program_sdk_at_least() && (-[UISearchController _systemInputViewControllerAfterUpdate:](self, "_systemInputViewControllerAfterUpdate:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 resolvedKeyboardStyle], v7, v8 == 2))
    {
      [(UISearchController *)self _installBackGestureRecognizer];
      [(UISearchController *)self _installDoneGestureRecognizer];

      [(UISearchController *)self _removeCarPlayLimitedUIObserver];
    }

    else if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = self;
      v10 = v9;
      if (v9)
      {
        v11 = v9;
        while ([(UIViewController *)v11 _transitionsChildViewControllers])
        {
          v12 = [(UIViewController *)v11 parentViewController];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v14 = [(UIViewController *)v11 presentingViewController];
          }

          v15 = v14;

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
      v16 = [(UISearchController *)v10 _carPlayLimitedUIToken];
      v17 = [(UIViewController *)v10 traitCollection];
      v18 = [v17 userInterfaceIdiom];

      if (v18 != 3 || v16)
      {
        v21 = [(UIViewController *)v10 traitCollection];
        v22 = [v21 userInterfaceIdiom];

        if (v22 != 3 && v16)
        {
          [(UISearchController *)v10 _removeCarPlayLimitedUIObserver];
        }
      }

      else
      {
        objc_initWeak(&location, v10);
        v19 = [MEMORY[0x1E696AD88] defaultCenter];
        v20 = [MEMORY[0x1E696ADC8] mainQueue];
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __53__UISearchController__setupForCurrentTraitCollection__block_invoke;
        v26 = &unk_1E70F3D28;
        objc_copyWeak(&v27, &location);
        v16 = [v19 addObserverForName:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0 queue:v20 usingBlock:&v23];

        [(UISearchController *)v10 _setCarPlayLimitedUIToken:v16, v23, v24, v25, v26];
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

  v5 = [(UIViewController *)self view];
  [v5 addGestureRecognizer:self->_backButtonDismissGestureRecognizer];
}

- (void)_uninstallBackGestureRecognizer
{
  v3 = [(UIViewController *)self viewIfLoaded];
  [v3 removeGestureRecognizer:self->_backButtonDismissGestureRecognizer];

  backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
  self->_backButtonDismissGestureRecognizer = 0;
}

- (void)_handleBackButtonGesture:(id)a3
{
  if ([a3 state] == 3)
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

  v5 = [(UIViewController *)self view];
  [v5 addGestureRecognizer:self->_doneButtonGestureRecognizer];
}

- (void)_uninstallDoneGestureRecognizer
{
  v3 = [(UIViewController *)self viewIfLoaded];
  [v3 removeGestureRecognizer:self->_doneButtonGestureRecognizer];

  doneButtonGestureRecognizer = self->_doneButtonGestureRecognizer;
  self->_doneButtonGestureRecognizer = 0;
}

- (void)_updateFocusFromDoneButton:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(UIViewController *)self _focusSystem];
    v5 = [v4 focusedItem];
    v6 = _UIFocusEnvironmentContainingView(v5);
    v7 = [(UIViewController *)self->_systemInputViewController view];
    v8 = [v6 isDescendantOfView:v7];

    if (v8)
    {
      *&self->_controllerFlags |= 0x8000000u;

      [(UIViewController *)self setNeedsFocusUpdate];
    }
  }
}

- (void)_limitedUIDidChangeAnimated:(BOOL)a3
{
  v45 = a3;
  v58[4] = *MEMORY[0x1E69E9840];
  v4 = [(UISearchController *)self _carPlayLimitedUIViewController];
  objc_initWeak(&location, self);
  v5 = [(UIViewController *)self _screen];
  v6 = [v5 _isSoftKeyboardLimited];

  v7 = [(UIViewController *)self->_systemInputViewController view];
  [v7 setUserInteractionEnabled:v6 ^ 1u];

  v8 = [(UISearchController *)self searchBar];
  v9 = [v8 searchField];
  [v9 setUserInteractionEnabled:v6 ^ 1u];

  if (v6)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(_UISearchControllerLimitedUIShieldViewController);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke;
      v55[3] = &unk_1E70F2F80;
      objc_copyWeak(&v56, &location);
      v55[4] = self;
      [(_UISearchControllerLimitedUIShieldViewController *)v4 setDismissAction:v55];
      [(UISearchController *)self _setCarPlayLimitedUIViewController:v4];
      [(UIViewController *)self addChildViewController:v4];
      v10 = [(UIViewController *)v4 view];
      v11 = [(UIViewController *)self view];
      [v11 bounds];
      [v10 setFrame:?];

      v12 = [(UIViewController *)self view];
      v13 = [(UIViewController *)v4 view];
      [v12 addSubview:v13];

      [(UIViewController *)v4 didMoveToParentViewController:self];
      v14 = [(UIViewController *)v4 view];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      v31 = MEMORY[0x1E69977A0];
      v44 = [(UIViewController *)v4 view];
      v42 = [v44 topAnchor];
      v43 = [(UIViewController *)self view];
      v41 = [v43 topAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v58[0] = v40;
      v39 = [(UIViewController *)v4 view];
      v37 = [v39 bottomAnchor];
      v38 = [(UIViewController *)self view];
      v36 = [v38 bottomAnchor];
      v35 = [v37 constraintEqualToAnchor:v36];
      v58[1] = v35;
      v34 = [(UIViewController *)v4 view];
      v32 = [v34 leadingAnchor];
      v33 = [(UIViewController *)self view];
      v15 = [v33 leadingAnchor];
      v16 = [v32 constraintEqualToAnchor:v15];
      v58[2] = v16;
      v17 = [(UIViewController *)v4 view];
      v18 = [v17 trailingAnchor];
      v19 = [(UIViewController *)self view];
      v20 = [v19 trailingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v58[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
      [v31 activateConstraints:v22];

      v23 = [(UISearchController *)self searchBar];
      v24 = [v23 cancelButton];
      [v24 setEnabled:0];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_2;
      aBlock[3] = &unk_1E70F5AC0;
      aBlock[4] = self;
      v25 = _Block_copy(aBlock);
      v26 = v25;
      if (v45)
      {
        v27 = [(UIViewController *)v4 view];
        [v27 setAlpha:0.0];

        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_3;
        v51[3] = &unk_1E70F35B8;
        v52 = v4;
        v53 = self;
        [UIView animateWithDuration:v51 animations:v26 completion:0.4];
      }

      else
      {
        (*(v25 + 2))(v25, 1);
      }

      objc_destroyWeak(&v56);
    }
  }

  else if (v4)
  {
    v28 = [(UISearchController *)self searchBar];
    [v28 setHidden:0];

    v29 = [(UISearchController *)self searchBar];
    v30 = [v29 cancelButton];
    [v30 setEnabled:1];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_4;
    v49[3] = &unk_1E70F35B8;
    v49[4] = self;
    v50 = v4;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __50__UISearchController__limitedUIDidChangeAnimated___block_invoke_5;
    v46[3] = &unk_1E70F3C60;
    v4 = v50;
    v47 = v4;
    v48 = self;
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
  v3 = [(UISearchController *)self _carPlayLimitedUIToken];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:v5];

    [(UISearchController *)self _setCarPlayLimitedUIToken:0];
    v3 = v5;
  }
}

- (id)focusItemContainer
{
  v3 = [(UISearchController *)self _carPlayLimitedUIViewController];
  v4 = [v3 view];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UISearchController;
    v6 = [(UIViewController *)&v9 focusItemContainer];
  }

  v7 = v6;

  return v7;
}

- (void)_updateBarPresentationStyleForPresentingViewController:(id)a3
{
  v11 = a3;
  v4 = [(UISearchController *)self searchBar];
  v5 = [v4 window];

  if (v5 || -[UISearchController _isSearchTextFieldBorrowed](self, "_isSearchTextFieldBorrowed") && (WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar), [WeakRetained _navigationBar], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "window"), v5 = objc_claimAutoreleasedReturnValue(), v10, WeakRetained, v5))
  {
    v6 = [(UISearchController *)self searchBar];
    v7 = [_UISearchPresentationController shouldExciseSearchBar:v6 duringPresentationWithPresenter:v11];

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

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(UISearchController *)self _updateBarPresentationStyleForPresentingViewController:v10];
  v12 = [(UIViewController *)self modalPresentationStyle];
  if (v12 == UIModalPresentationFormSheet)
  {
    if ([(UISearchController *)self _allowFormSheetStylePresentation])
    {
      v12 = UIModalPresentationFormSheet;
    }

    else
    {
      v12 = UIModalPresentationCustom;
    }
  }

  v13 = [v11 traitCollection];
  if ([v13 userInterfaceIdiom] == 2)
  {

LABEL_8:
    v16 = [(_UISearchPresentationController *)[_UISearchATVPresentationController alloc] initWithPresentedViewController:v9 presentingViewController:v10];
    v17 = 4;
LABEL_9:
    self->_barPresentationStyle = v17;
    goto LABEL_10;
  }

  v14 = [v11 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 8)
  {
    goto LABEL_8;
  }

  v20 = [v11 traitCollection];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 3)
  {
    v16 = [(_UISearchPresentationController *)[_UISearchCarPlayPresentationController alloc] initWithPresentedViewController:v9 presentingViewController:v10];
    v17 = 5;
    goto LABEL_9;
  }

  switch(v12)
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
      v16 = [[v22 alloc] initWithPresentedViewController:v9 presentingViewController:v10];
      goto LABEL_10;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:2673 description:{@"UISearchController only supports modal presentation styles UIModalPresentationPopover, UIModalPresentationFormSheet and UIModalPresentationCustom"}];

  v16 = 0;
LABEL_10:
  v18 = [(UISearchController *)self searchBar];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v18];

  return v16;
}

- (id)_searchPresentationController
{
  v3 = [(UIViewController *)self _parentModalViewController];

  if (v3)
  {
    v4 = [(UIViewController *)self _parentModalViewController];
    v5 = [v4 _originalPresentationController];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 adaptivePresentationController];

  if (v6)
  {
    v7 = [v5 adaptivePresentationController];

    v5 = v7;
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

          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (id)_animatorForBarPresentationStyle:(int)a3 dismissing:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v7 = self;
  v8 = [(UISearchController *)v7 searchBar];
  v9 = [v8 _searchController];

  if (v9 != v7)
  {
    if (dyld_program_sdk_at_least())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", v8, v7}];
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = v7;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", buf, 0x16u);
        }
      }

      else
      {
        v10 = *(__UILogGetCategoryCachedImpl("Assert", &_handleOrThrowForDisconnectedSearchBarAsAppropriate___s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = v7;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Custom searchBar not correctly configured for UISearchController. The searchBar property getter override must always return the same searchBar instance, and never return nil. The getter may be called very early! searchBar = %@, searchController = %@", buf, 0x16u);
        }
      }

      [v8 _setRequiresLegacyVisualProvider];
      v11 = _UIMainBundleIdentifier();
      v12 = [v11 isEqualToString:@"com.spotify.client"];

      if (v12)
      {
        v13 = [v8 backgroundImageForBarPosition:2 barMetrics:0];
        [v8 setBackgroundImage:v13 forBarPosition:2 barMetrics:101];
      }
    }
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v14 = _UISearchControllerTransplantSearchBarAnimator;
      goto LABEL_20;
    }

    if (a3 == 2)
    {
      v14 = _UISearchControllerInPlaceSearchBarAnimator;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v14 = _UISearchControllerOffscreenSearchBarAnimator;
    goto LABEL_20;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      v14 = _UISearchControllerCarPlaySearchBarAnimator;
LABEL_20:
      v15 = objc_alloc_init(v14);
      goto LABEL_24;
    }

LABEL_21:
    if (v4)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v7 file:@"UISearchController.m" lineNumber:2762 description:@"How did we get here? Was state restoration involved?"];
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

    v4 = [(UISearchController *)self _animatorForBarPresentationStyle:barPresentationStyle dismissing:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UISearchController;
    v4 = [(UIViewController *)&v6 _defaultAnimationController];
  }

  return v4;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:1];
  animator = self->_animator;
  self->_animator = v4;

  return self;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = [(UISearchController *)self _animatorForBarPresentationStyle:self->_barPresentationStyle dismissing:0, a5];
  animator = self->_animator;
  self->_animator = v6;

  return self;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9.receiver = self;
  v9.super_class = UISearchController;
  [(UIViewController *)&v9 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6 && !v4)
  {
    if ([(UIViewController *)self _appearState]== 2)
    {
      v7 = [v6 windowScene];
      v8 = [v7 _interfaceOrientation];

      if (self->_lastKnownInterfaceOrientation != v8)
      {
        if (self->_managedPalette)
        {
          [(UISearchController *)self _adjustSearchBarSizeForOrientation:v8];
        }

        self->_lastKnownInterfaceOrientation = v8;
      }
    }

    goto LABEL_9;
  }

  if (v6)
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UISearchController;
  [(UIViewController *)&v16 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    if ([WeakRetained _hasIntegratedSearchBarInNavigationBar])
    {
      v9 = [v6 horizontalSizeClass];
      v10 = [(UIViewController *)self traitCollection];
      v11 = [v10 horizontalSizeClass];

      if (v9 != v11)
      {
        v12 = [(UISearchController *)self _dci_searchSuggestions];
        if ([v12 count])
        {
          v13 = [(UISearchController *)self _suggestionController];
          if ([v13 hasVisibleMenu])
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
        [v7 animateAlongsideTransition:0 completion:v15];
      }
    }

    else
    {
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(UIViewController *)self view];
  v9 = [v8 _window];
  v10 = [v9 _toWindowOrientation];

  v11 = [(UISearchController *)self _managedPalette];
  if (v11 && [(UISearchController *)self isActive])
  {
    [v11 frame];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__UISearchController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v17[3] = &unk_1E711EEA8;
    v17[4] = self;
    v17[5] = v10;
    v17[6] = v12;
    v17[7] = v13;
    v17[8] = v14;
    v17[9] = v15;
    [v7 animateAlongsideTransition:v17 completion:0];
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(UISearchController *)self _adjustSearchBarSizeForOrientation:v10];
  if (v10)
  {
LABEL_6:
    self->_lastKnownInterfaceOrientation = v10;
  }

LABEL_7:
  v16.receiver = self;
  v16.super_class = UISearchController;
  [(UIViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];

  [(UISearchController *)self _updateHasPendingSuggestionMenuRefreshFlagForReason:2];
}

- (void)_adjustSearchBarSizeForOrientation:(int64_t)a3 oldPaletteFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (![(UISearchController *)self _containedInNavigationPaletteAndNotHidden])
  {
    return;
  }

  v10 = [(UISearchController *)self searchBar];
  v11 = [v10 prompt];
  if (v11)
  {
    v12 = v11;
    v13 = [(UISearchController *)self searchBar];
    v14 = [v13 _scopeBarIsVisible];

    if (v14)
    {
      return;
    }
  }

  else
  {
  }

  v15 = [(UISearchController *)self searchBar];
  objc_opt_class();
  if (v15)
  {
    v16 = v15;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v16 = [v16 superview];
    }

    while (v16);
  }

  else
  {
    v16 = 0;
  }

  v45 = v16;

  v17 = [(UISearchController *)self searchBar];
  [v17 _defaultHeightForOrientation:a3];
  v19 = v18;

  v20 = [(UISearchController *)self searchBar];
  [v20 frame];
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
    v31 = [v45 superview];
    [v31 bounds];
    v33 = v32;

    [v45 setFrame:{v28, v30, v33, v19}];
    v34 = [(UISearchController *)self searchBar];
    [v45 bounds];
    [v34 setFrame:?];

    v35 = [(UISearchController *)self searchBar];
    [v35 setNeedsLayout];

    v36 = [(UISearchController *)self searchBar];
    [v36 layoutIfNeeded];

    v37 = [(UISearchController *)self isActive];
    v23 = v45;
    if (v37)
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
        v41 = [(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView];
        v38 = 0.0;
        if (v41)
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

- (void)_updateSearchResultsContentScrollViewWithDelta:(CGSize)a3
{
  height = a3.height;
  v5 = [(UIViewController *)self->_searchResultsController _contentOrObservableScrollViewForEdge:1, a3.width];
  v6 = v5;
  if (v5)
  {
    v24 = v5;
    v7 = [v5 _compatibleContentInsetAdjustmentBehavior];
    v6 = v24;
    if (v7 == 101)
    {
      searchResultsController = self->_searchResultsController;
      if (searchResultsController)
      {
        v9 = [(UIViewController *)searchResultsController automaticallyAdjustsScrollViewInsets];
        v6 = v24;
        if (v9)
        {
          v10 = [(UIViewController *)self->_searchResultsController edgesForExtendedLayout];
          v6 = v24;
          if (v10)
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

- (void)_updateSearchResultsPositionWithDelta:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(UISearchController *)self _resultsControllerWillLayoutVisibleUnderContainerView])
  {

    [(UISearchController *)self _resizeResultsControllerWithDelta:width, height];
  }
}

- (void)_updateSearchResultsControllerWithDelta:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UISearchController *)self _updateSearchResultsContentScrollViewWithDelta:?];

  [(UISearchController *)self _updateSearchResultsPositionWithDelta:width, height];
}

- (void)_presentingViewControllerWillChange:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = UISearchController;
  [(UIViewController *)&v23 _presentingViewControllerWillChange:v4];
  if (![(UIViewController *)self isBeingPresented])
  {
    goto LABEL_19;
  }

  [(UISearchController *)self _sizeSearchViewToPresentingViewController:v4];
  [(UISearchController *)self _beginWatchingPresentingController];
  v5 = [(UISearchController *)self _locatePresentingViewControllerIfInManagedPaletteOrHostedByNavigationBar];
  v6 = v5;
  if (v5)
  {
    if (([v5 definesPresentationContext] & 1) == 0)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Search", &_presentingViewControllerWillChange____s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "The topViewController (%@) of the navigation controller containing the presented search controller (%@) must have definesPresentationContext set to YES.", buf, 0x16u);
      }
    }
  }

  v8 = [(UISearchController *)self searchResultsController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [(UISearchController *)self searchResultsController];
  v10 = [v9 topViewController];
  v11 = [v10 _existingView];

  if (!v11)
  {
    v8 = [(UISearchController *)self searchResultsController];
    v12 = [v8 view];
    [v12 layoutSubviews];

LABEL_9:
  }

  v13 = [(UISearchController *)self searchBar];
  [v13 _setScopeBarPosition:0];

  v14 = [v4 _splitViewControllerEnforcingClass:0];
  v15 = v14;
  if (v14)
  {
    if ([v14 isCollapsed])
    {
      v16 = 0;
    }

    else
    {
      v17 = [v15 masterViewController];
      v18 = [(UIViewController *)v4 _parentViewController];
      do
      {
        v16 = v18 != v17;
        if (v18 == v17)
        {
          break;
        }

        v19 = [(UIViewController *)v18 _parentViewController];

        v18 = v19;
      }

      while (v19);
    }
  }

  else
  {
    v16 = 1;
  }

  v20 = [(UISearchController *)self searchBar];
  [v20 _setAllowsInlineScopeBar:v16];

LABEL_19:
  if ([(UISearchController *)self isBeingDismissed])
  {
    [(UISearchController *)self _endWatchingPresentingController];
    v21 = [(UISearchController *)self searchResultsUpdater];
    [v21 updateSearchResultsForSearchController:self];

    if ([(UIViewController *)self modalPresentationStyle]== UIModalPresentationPopover)
    {
      v22 = [(UISearchController *)self searchBar];
      [UISearchController _resignSearchBarAsFirstResponder:v22];
    }
  }
}

- (void)_presentingViewControllerDidChange:(id)a3
{
  animator = self->_animator;
  self->_animator = 0;
  v5 = a3;

  if (!v5)
  {
    self->_barPresentationStyle = 0;
  }

  v6.receiver = self;
  v6.super_class = UISearchController;
  [(UIViewController *)&v6 _presentingViewControllerDidChange:v5];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  if (-[UISearchController isActive](self, "isActive") && ([v6 presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == self))
  {
    if (*&self->_controllerFlags)
    {
      [(UIView *)self->_searchBar frame];
      Height = CGRectGetHeight(v25);
      v21 = [v6 _contentOrObservableScrollViewForEdge:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 tableHeaderView];
        [v22 frame];
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
          v23 = [(UIView *)self->_searchBar window];

          if (v23)
          {
            [(UIView *)self->_searchBar frame];
            Height = CGRectGetHeight(v27);
          }
        }
      }
    }

    v15 = 0.0;
    if (a4)
    {
      *a4 = 0;
    }

    v13 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = UISearchController;
    [(UIViewController *)&v24 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
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

+ (void)_resignSearchBarAsFirstResponder:(id)a3
{
  v3 = a3;
  [v3 resignFirstResponder];
  v5 = [v3 keyboardSceneDelegate];
  v4 = [v3 searchField];

  [v5 _clearPreservedInputViewsWithRestorableResponder:v4];
}

- (void)_updateTableHeaderBackgroundViewInTableView:(id)a3 amountScrolledUnder:(double)a4
{
  v10 = a3;
  v5 = [v10 _tableHeaderBackgroundView];
  if (v5)
  {
    if ([v10 _usingCustomBackgroundView])
    {
      [v10 setTableHeaderBackgroundColor:0];
    }

    else
    {
      v6 = [v5 isHidden];
      if (a4 >= 0.0)
      {
        if ((v6 & 1) == 0)
        {
          [v5 setHidden:1];
        }
      }

      else
      {
        if (v6)
        {
          [v5 setHidden:0];
        }

        [v10 bounds];
        [v5 setFrame:?];
        v7 = [v10 _refreshControl];
        v8 = [v7 backgroundColor];
        if (v8)
        {
          [v7 backgroundColor];
        }

        else
        {
          [v10 tableHeaderBackgroundColor];
        }
        v9 = ;
        [v5 setBackgroundColor:v9];
      }
    }
  }
}

- (void)_updateSearchBarMaskIfNecessary
{
  v3 = [(UISearchController *)self searchBar];
  v4 = [v3 window];

  if (!v4)
  {
    return;
  }

  v5 = [(UISearchController *)self searchBar];
  v6 = [v5 _containingScrollView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v6;
    v7 = [v35 _refreshControl];
    if (!v6)
    {
      goto LABEL_16;
    }

LABEL_7:
    v8 = [(UISearchController *)self searchBar];
    [v8 bounds];
    Height = CGRectGetHeight(v37);

    [v6 _effectiveContentInset];
    v11 = v10;
    [v6 contentOffset];
    v13 = v11 + v12;
    v14 = [(UISearchController *)self searchBar];
    [v14 frame];
    v16 = v13 - v15;

    if (v7 && ([v7 refreshControlState] == 2 || objc_msgSend(v7, "refreshControlState") == 3))
    {
      [v7 _refreshControlHeight];
      v16 = v16 - v17;
    }

    v18 = [(UISearchController *)self searchBar];
    [v18 _currentScreenScale];
    v20 = 1.0 / v19;

    v21 = v16 + v20;
    v22 = [(UISearchController *)self searchBar];
    [v22 bounds];
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

    v34 = [(UISearchController *)self searchBar];
    [v34 _setMaskBounds:{v24, v26, Width, v30}];

    [(UISearchController *)self _updateTableHeaderBackgroundViewInTableView:v35 amountScrolledUnder:v21];
    goto LABEL_16;
  }

  v7 = 0;
  v35 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_16:
}

- (void)_watchScrollView:(id)a3 forScrolling:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  didScrollDelegate = self->_didScrollDelegate;
  v12 = v6;
  if (!v4)
  {
    v10 = [(_UISearchControllerDidScrollDelegate *)didScrollDelegate scrollView];
    [v10 _removeScrollViewScrollObserver:self->_didScrollDelegate];

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
    v6 = v12;
  }

  if (v6)
  {
    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setScrollView:v12];
    [v12 _addScrollViewScrollObserver:self->_didScrollDelegate];
LABEL_7:
    v6 = v12;
  }
}

- (void)_beginWatchingPresentingController
{
  v3 = [(UIViewController *)self presentingViewController];
  v5 = [v3 navigationController];

  if (v5)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__navigationControllerWillShowViewController_ name:0x1EFB3A190 object:v5];
  }
}

- (void)_endWatchingPresentingController
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:0x1EFB3A190 object:0];
}

- (void)_navigationControllerWillShowViewController:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:0x1EFB3A1F0];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:0x1EFB3A210];

  v10 = [v7 presentedViewController];

  if (v10 == self)
  {
    if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && [v5 isNavigationBarHidden])
    {
      if ([(UISearchController *)self isActive]&& v9)
      {
        v11 = [(UISearchController *)self _managedPalette];
        [v11 setIgnoreGeometryChanges:1];
      }

      [v5 setNavigationBarHidden:0 animated:1];
      [v5 _setSearchHidNavigationBar:0];
      v12 = [(UISearchController *)self _managedPalette];
      [v12 setIgnoreGeometryChanges:0];
    }

    v13 = [(UIViewController *)self traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 3)
    {
      *&self->_controllerFlags |= 2u;
    }

    else
    {
      v15 = [(UISearchController *)self searchBar];
      if ([v15 isFirstResponder])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      self->_controllerFlags = (*&self->_controllerFlags & 0xFFFFFFFD | v16);
    }

    v17 = [(UISearchController *)self searchBar];
    [UISearchController _resignSearchBarAsFirstResponder:v17];
  }

  v18 = [v9 presentedViewController];

  if (v18 == self)
  {
    v19 = [(UISearchController *)self searchBar];
    v20 = [v19 _containedInNavigationPalette];

    if (v20)
    {
      v21 = [v5 existingPaletteForEdge:2];
      [v21 setVisibleWhenPinningBarIsHidden:1];
    }

    v22 = [v9 navigationItem];
    v23 = [v22 _searchControllerIfAllowed];

    if (v23)
    {
      goto LABEL_31;
    }

    v24 = [(UISearchController *)self searchBar];
    v25 = [v24 _isHostedByNavigationBar];

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (!v25)
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
          v51 = v22;
        }
      }

      if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && ([v5 isNavigationBarHidden] & 1) == 0 && _shouldPerformNavigationBarHidingWithLuck(v5))
      {
        [v5 setNavigationBarHidden:1 animated:1];
        [v5 _setSearchHidNavigationBar:1];
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
        v51 = v22;
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
        v51 = v22;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Even though navigationItem has no search controller, the search bar is hosted by the navigation bar. Attempting to prevent a future crash by avoiding hiding the navigation bar. self is a %@. viewController is a %@. navigationItem = %@", buf, 0x20u);
        goto LABEL_24;
      }
    }

LABEL_31:
    controllerFlags = self->_controllerFlags;
    if ((*&controllerFlags & 2) != 0)
    {
      self->_controllerFlags = (*&controllerFlags & 0xFFFFFFFD);
      v34 = [(UIViewController *)self transitionCoordinator];
      v35 = v34;
      if (v34)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __66__UISearchController__navigationControllerWillShowViewController___block_invoke;
        v45[3] = &unk_1E70F3B98;
        v45[4] = self;
        [v34 animateAlongsideTransition:0 completion:v45];
      }

      else
      {
        v36 = [(UISearchController *)self searchBar];
        [v36 becomeFirstResponder];
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
  v2 = [(UISearchController *)self _suggestionController];
  v3 = [v2 hasVisibleMenu];

  return v3;
}

- (BOOL)_allowsSuggestionsMenu
{
  v3 = [(UISearchController *)self _suggestionController];
  if ([v3 shouldUseMenuIOS])
  {
    WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
    v5 = [WeakRetained _hasIntegratedSearchBarInNavigationBar];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (void)_setSearchSuggestionGroups:(id)a3
{
  v4 = a3;
  controllerFlags = self->_controllerFlags;
  v6 = *&controllerFlags & 0xFFFEFFFF;
  self->_controllerFlags = (*&controllerFlags & 0xFFFEFFFF);
  v11 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v7 = v4;
  if ((*&controllerFlags & 0x7000) == 0)
  {
    v8 = [(UISearchController *)self isActive];
    v7 = v11;
    if (v8)
    {
      v6 = self->_controllerFlags;
LABEL_5:
      self->_controllerFlags = (v6 & 0xFFFF7FFF);
      v9 = [(UISearchController *)self _suggestionController];
      [v9 updateSuggestionGroups:v11 userInitiated:1];

      v10 = [(UISearchController *)self searchBar];
      [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v10];

      goto LABEL_7;
    }
  }

  [(UISearchController *)self _setDeferredSearchSuggestionGroups:v7];
LABEL_7:
}

- (NSArray)_searchSuggestionGroups
{
  v2 = [(UISearchController *)self _suggestionController];
  v3 = [v2 suggestionGroups];

  return v3;
}

- (NSArray)searchSuggestions
{
  v2 = [(UISearchController *)self _suggestionController];
  v3 = [v2 suggestions];

  return v3;
}

- (BOOL)_shouldDisplayDefaultSuggestion
{
  v2 = [(UISearchController *)self _tvSuggestionController];
  v3 = [v2 shouldDisplayDefaultSuggestion];

  return v3;
}

- (void)_setClearSuggestionsOnSelection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFBFFFFFF | v3);
}

- (void)_setUpdateSearchTextOnDidSelectSuggestion:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xEFFFFFFF | v3);
}

- (void)_setShouldDisplayDefaultSuggestion:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISearchController *)self _tvSuggestionController];
  [v4 setShouldDisplayDefaultSuggestion:v3];
}

- (BOOL)_showSearchSuggestionPreview
{
  v2 = [(UISearchController *)self _tvSuggestionController];
  v3 = [v2 showSearchSuggestionPreview];

  return v3;
}

- (void)_setShowSearchSuggestionPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISearchController *)self _tvSuggestionController];
  [v4 setShowSearchSuggestionPreview:v3];
}

- (NSString)_suggestionRowTitle
{
  v2 = [(UISearchController *)self _tvSuggestionController];
  v3 = [v2 searchSuggestionsTitle];

  return v3;
}

- (void)_setSuggestionRowTitle:(id)a3
{
  v4 = a3;
  v5 = [(UISearchController *)self _tvSuggestionController];
  [v5 setSearchSuggestionsTitle:v4];
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

- (void)_setUsesSearchSuggestionsMenuForStackedSearch:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFBFFFF | v3);
}

- (void)_setDisplaysSearchBarItemGroupInline:(BOOL)a3
{
  self->_displaysSearchBarItemGroupInline = a3;
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
  v3 = [(UISystemInputViewController *)self->_systemInputViewController resolvedKeyboardStyle];
  if (v3 != 1)
  {

    LOBYTE(v3) = [(UISearchController *)self _shouldHideGridKeyboardUnfocused];
  }

  return v3;
}

- (void)_adjustTVSearchContainerViewForContentScrollView:(id)a3
{
  v32 = a3;
  v4 = [v32 window];
  if (v4)
  {
    v5 = v4;
    v6 = [(UISearchController *)self _tvShouldScrollWithObservedScrollViewIfPossible];

    if (v6)
    {
      v7 = [v32 _focusSystemSceneComponent];
      v8 = [v7 coordinateSpace];
      v9 = [(UISearchController *)self _tvKeyboardContainerView];
      v10 = [(UISearchController *)self _tvKeyboardContainerView];
      [v10 bounds];
      [v9 convertRect:v8 toCoordinateSpace:?];
      v12 = v11;

      v13 = [(UISearchController *)self _tvKeyboardContainerView];
      [v13 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = v12 + v19;
      [v32 contentOffset];
      v22 = v21;
      [v32 adjustedContentInset];
      v24 = fmax(fmin(v22 + v23, v20), 0.0);
      v25 = [(UISearchController *)self _systemInputViewControllerAfterUpdate:0];
      v26 = [v25 resolvedKeyboardStyle];

      if (v26 == 1)
      {
        v27 = vabdd_f64(v24, v20);
        v28 = [(UISearchController *)self _tvKeyboardContainerView];
        v29 = [v28 isUserInteractionEnabled];

        if (v27 > 2.22044605e-16 != v29)
        {
          v30 = [(UISearchController *)self _tvKeyboardContainerView];
          [v30 setUserInteractionEnabled:v27 > 2.22044605e-16];
        }
      }

      v31 = [(UISearchController *)self _tvKeyboardContainerView];
      [v31 setBounds:{v15, v24, v17, v19}];
    }
  }
}

- (void)_searchBarTextFieldDidSelectSearchSuggestion:(id)a3
{
  v6 = a3;
  v4 = [(UISearchController *)self searchResultsUpdater];
  if (objc_opt_respondsToSelector())
  {
    [v4 updateSearchResultsForSearchController:self selectingSearchSuggestion:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 _dci_updateSearchResultsForSearchController:self selectingSearchSuggestion:v6];
  }

  [(UISearchController *)self _dci_setSearchSuggestions:0];
  self->_controllerFlags = (*&self->_controllerFlags & 0xFFFE7FFF | 0x8000);
  v5 = [(UISearchController *)self searchBar];
  [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v5];
}

- (void)_startDeferringSettingSearchSuggestionsWithReason:(unint64_t)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__navigationItemCurrentlyDisplayingSearchBar);
  v6 = [WeakRetained _hasIntegratedSearchBarInNavigationBar];

  controllerFlags = self->_controllerFlags;
  if (v6)
  {
    self->_controllerFlags = (*&controllerFlags | ((v3 & 7) << 12));
  }

  else if ((*&controllerFlags & 0x7000) != 0)
  {

    [(UISearchController *)self _stopDeferringSearchSuggestionsWithReason:7 postDeferralAction:0];
  }
}

- (void)_stopDeferringSearchSuggestionsWithReason:(unint64_t)a3 postDeferralAction:(int64_t)a4
{
  controllerFlags = self->_controllerFlags;
  self->_controllerFlags = (*&controllerFlags & ((~a3 << 12) | 0xFFFF8FFF));
  if ((*&controllerFlags & (~a3 << 12) & 0x7000) == 0)
  {
    if (a4)
    {
      v6 = [(UISearchController *)self _deferredSearchSuggestionGroups];
      if (v6)
      {
        *&self->_controllerFlags &= 0xFFFE7FFF;
        v9 = v6;
        v7 = [(UISearchController *)self _suggestionController];
        [v7 updateSuggestionGroups:v9 userInitiated:1];

        [(UISearchController *)self _setDeferredSearchSuggestionGroups:0];
        v8 = [(UISearchController *)self searchBar];
        [(UISearchController *)self _updateVisibilityOfSearchResultsForSearchBar:v8];

        v6 = v9;
      }
    }

    else
    {

      [(UISearchController *)self _setDeferredSearchSuggestionGroups:0];
    }
  }
}

- (void)_suggestionsMenuInteractionWillEndWithAnimator:(id)a3
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
    v2 = [(_UIBorrowedViewHandle *)self->_borrowedSearchTextFieldHandle view];
  }

  else
  {
    v3 = [(UISearchController *)self searchBar];
    v2 = [v3 searchField];
  }

  return v2;
}

- (id)searchTextColor
{
  v2 = [(UISearchController *)self searchTextField];
  v3 = [v2 textColor];

  return v3;
}

- (id)searchPlaceholderColor
{
  v2 = [(UISearchController *)self searchTextField];
  v3 = [v2 _placeholderColor];

  return v3;
}

- (void)_startManagingPalette:(id)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4083 description:@"UIKit Bug – we should not be going down this code path"];
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

- (void)_setSearchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth:(BOOL)a3
{
  v3 = a3;
  if ([(UISearchController *)self _searchFieldShowsClearButtonWhenEmptyAndActiveAtRegularWidth]!= a3)
  {

    [(UISearchController *)self _setClearAsCancelButtonVisibilityWhenEmpty:v3];
  }
}

- (void)_setClearAsCancelButtonVisibilityWhenEmpty:(int64_t)a3
{
  controllerFlags = self->_controllerFlags;
  if (a3 != controllerFlags >> 30)
  {
    v4 = a3;
    if (a3 >= 3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4109 description:@"Unsupported value for visibility"];

      LODWORD(controllerFlags) = self->_controllerFlags;
    }

    self->_controllerFlags = (controllerFlags & 0x3FFFFFFF | (v4 << 30));
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

  v3 = [(UIViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIView *)self->_searchBar window];
    v4 = v5 == 0;
  }

  return v4;
}

- (UISearchTextField)_borrowedSearchTextFieldClone
{
  v3 = [(UISearchController *)self _borrowedSearchTextField];
  [v3 removeFromSuperview];
  v4 = [objc_alloc(objc_opt_class()) _initWithDeferredSearchIconImageConfiguration];
  [v3 frame];
  [v4 setFrame:?];
  [(UISearchBar *)self->_searchBar _setUpNewSearchField:v4];
  [(UISearchBar *)self->_searchBar _addSearchFieldClone:v4];

  return v4;
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
    v6 = [(UISearchController *)self _borrowedSearchTextField];
    [v6 setBorderStyle:0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __64__UISearchController__borrowedSearchTabHostedFieldConfiguration__block_invoke;
    v15 = &unk_1E70F7450;
    objc_copyWeak(&v16, &location);
    v7 = [UIAction actionWithHandler:&v12];
    v8 = [_UISearchTabHostedFieldConfiguration alloc];
    WeakRetained = [(_UISearchTabHostedFieldConfiguration *)v8 initWithSearchBarView:v6 cancelAction:v7, v12, v13, v14, v15];
    if ([(UISearchController *)self automaticallyShowsCancelButton])
    {
      v9 = [(UISearchController *)self isActive];
    }

    else
    {
      v9 = 0;
    }

    [(_UISearchTabHostedFieldConfiguration *)WeakRetained setShowsCancelAction:v9];
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

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (a4 == 1 && !a3)
  {
    [(_UIBorrowedViewHandle *)self->_borrowedSearchTextFieldHandle returnView];
    borrowedSearchTextFieldHandle = self->_borrowedSearchTextFieldHandle;
    self->_borrowedSearchTextFieldHandle = 0;

    objc_storeWeak(&self->_activeBorrowedSearchTabHostedFieldConfiguration, 0);
  }
}

- (void)_setInlineSearchAccessoryEnabled:(BOOL)a3
{
  self->_inlineSearchAccessoryEnabled = a3;
  if (a3)
  {
    if (self->_borrowedSearchTextFieldHandle)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"UISearchController.m" lineNumber:4223 description:@"Attempted to inline a search text field that was already borrowed."];
    }

    v7 = [(UISearchController *)self _borrowedSearchTextField];
    [(_UISearchControllerView *)self->_searchControllerView borrowSearchFieldFromControllerForInlinePresentation:v7];
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

- (void)_prepareInlineSearchAccessoryVisible:(BOOL)a3 shouldUpdatePosition:(BOOL)a4
{
  v4 = a4;
  [(_UISearchControllerView *)self->_searchControllerView setInlineSearchFieldAccessoryIsOffscreenForPresentationAnimation:!a3];
  if (v4)
  {
    searchControllerView = self->_searchControllerView;

    [(_UISearchControllerView *)searchControllerView _updateInlineSearchAccessoryFrame];
  }
}

- (void)_notifyNavigationItemOfSearchTextFieldBorrowingStateChange
{
  v3 = [(UISearchController *)self searchBar];
  v7 = [v3 _searchController];

  v4 = [v7 _navigationItemCurrentlyDisplayingSearchBar];
  v5 = v4;
  if (v4)
  {
    [v4 _searchBarUpdatedSearchFieldIntegrationInSearchController:v7];
  }

  v6 = [(UISearchController *)self searchBar];
  [v6 _notifyOfBorrowingStateChange];
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
        v11 = [(UISearchBar *)searchBar showsScopeBar];
        v12 = @"hidden";
        if (v11)
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
    v25 = [(UISearchController *)self hidesNavigationBarDuringPresentation];
    v26 = @"OFF";
    if (v25)
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