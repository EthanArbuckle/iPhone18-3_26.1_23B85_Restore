@interface UISearchDisplayController
- (BOOL)_areSearchContentsSplitViewMaster;
- (BOOL)_containedInPopover;
- (BOOL)_searchBarInNavigationControllerComponent;
- (BOOL)_searchBarShouldScrollToVisible:(id)a3;
- (BOOL)_shouldAccountForStatusBarHeight;
- (BOOL)isNavigationBarHidingEnabled;
- (BOOL)popoverControllerShouldDismissPopover:(id)a3;
- (NSString)noResultsMessage;
- (UIEdgeInsets)_tableViewContentInsets;
- (UINavigationItem)navigationItem;
- (UISearchDisplayController)initWithCoder:(id)a3;
- (UISearchDisplayController)initWithSearchBar:(id)a3 contentsController:(id)a4 searchResultsTableViewStyle:(int64_t)a5;
- (UITableView)searchResultsTableView;
- (UIViewController)searchContentsController;
- (double)_dimmingViewAlpha;
- (double)_statusBarHeight;
- (double)_updateNavigationPalette;
- (id)_containerView;
- (id)_containingTableView;
- (id)_containingViewOfClass:(Class)a3;
- (id)_createPopoverController;
- (id)_dimmingViewColor;
- (id)_noResultsMessageLabel;
- (id)_topShadowView;
- (id)searchResultsDataSource;
- (id)searchResultsDelegate;
- (void)_adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:(BOOL)a3;
- (void)_animateNavigationBarSearchBarAppearance:(id)a3;
- (void)_cleanUpSearchBar;
- (void)_clearSavedSelectedCellsWeUsedWhenHedgingOurBets;
- (void)_configureContainerView;
- (void)_configureNewSearchBar;
- (void)_configureSearchBarForTableView;
- (void)_destroyManagedTableView;
- (void)_disableParentScrollViews;
- (void)_enableParentScrollViews;
- (void)_hideVisibleRefreshControl;
- (void)_hoistSearchBar;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_managedTableViewDidScroll;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_popoverClearButtonPressed:(id)a3;
- (void)_popoverKeyboardDidHide:(id)a3;
- (void)_popoverKeyboardDidShow:(id)a3;
- (void)_restoreSelectedCellsInCaseViewDidNotReallyAppear;
- (void)_saveSelectedRowsInCaseViewDoesNotReallyAppear;
- (void)_searchBarSuperviewChanged;
- (void)_searchBarSuperviewWillChange;
- (void)_sendDelegateDidBeginDidEndSearch;
- (void)_setAllowDisablingNavigationBarHiding:(BOOL)a3;
- (void)_setCancelButtonManagementDisabled:(BOOL)a3;
- (void)_setDimmingOverlayColor:(id)a3;
- (void)_setShowsResultsForEmptyField:(BOOL)a3;
- (void)_setTableViewVisible:(BOOL)a3 inView:(id)a4;
- (void)_setupNoResultsLabelIfNecessary;
- (void)_updateNoSearchResultsMessageVisiblity;
- (void)_updatePinnedSearchBar;
- (void)_updateSearchBarMaskIfNecessary;
- (void)_updateTableHeaderBackgroundViewInTableView:(id)a3 amountScrolledUnder:(double)a4;
- (void)_watchContainingTableViewForScrolling:(BOOL)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)navigationControllerDidCancelShowingViewController:(id)a3;
- (void)navigationControllerDidShowViewController:(id)a3;
- (void)navigationControllerWillShowViewController:(id)a3;
- (void)popoverController:(id)a3 animationCompleted:(int64_t)a4;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarResultsListButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)setActive:(BOOL)visible animated:(BOOL)animated;
- (void)setAutomaticallyShowsNoResultsMessage:(BOOL)a3;
- (void)setDimTableViewOnEmptySearchString:(BOOL)a3;
- (void)setNavigationBarHidingEnabled:(BOOL)a3;
- (void)setNavigationBarSearchFieldSizing:(unint64_t)a3;
- (void)setNoResultsMessage:(id)a3;
- (void)setNoResultsMessageVisible:(BOOL)a3;
- (void)setSearchBar:(id)a3;
- (void)setSearchContentsController:(id)a3;
- (void)setSearchResultsDataSource:(id)searchResultsDataSource;
- (void)setSearchResultsDelegate:(id)searchResultsDelegate;
- (void)showHideAnimationDidFinish;
- (void)windowDidRotate:(id)a3;
- (void)windowWillAnimateRotation:(id)a3;
@end

@implementation UISearchDisplayController

- (UISearchDisplayController)initWithSearchBar:(id)a3 contentsController:(id)a4 searchResultsTableViewStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v13.receiver = self;
  v13.super_class = UISearchDisplayController;
  v11 = [(UISearchDisplayController *)&v13 init];
  if (v11)
  {
    if ((__UISearchDisplayControllerSupportRequired & 1) == 0)
    {
      UISearchDisplayControllerNoLongerSupported();
    }

    objc_storeWeak(&v11->_viewController, v10);
    objc_storeStrong(&v11->_searchBar, a3);
    if (v11->_searchBar)
    {
      [(UISearchDisplayController *)v11 _configureNewSearchBar];
    }

    [v10 _setSearchDisplayControllerUnretained:v11];
    UISearchDisplayControllerCommonInit(v11);
    v11->_searchResultsTableViewStyle = a5;
  }

  return v11;
}

- (UISearchDisplayController)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISearchDisplayController;
  v5 = [(UISearchDisplayController *)&v9 init];
  if (v5)
  {
    if (_UIApplicationPackedMinimumDeploymentVersion() >= 0xD0000)
    {
      UISearchDisplayControllerNoLongerSupported();
    }

    UISearchDisplayControllerCommonInit(v5);
    v5->_searchResultsTableViewStyle = 0;
    v6 = [v4 decodeObjectForKey:@"UIResultsTitle"];
    resultsTitle = v5->_resultsTitle;
    v5->_resultsTitle = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  resultsTitle = self->_resultsTitle;
  if (resultsTitle)
  {
    [a3 encodeObject:resultsTitle forKey:@"UIResultsTitle"];
  }
}

- (void)dealloc
{
  v11[9] = *MEMORY[0x1E69E9840];
  [(UISearchBar *)self->_searchBar setController:0];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained _clearRecordedContentScrollView];
  [WeakRetained _setSearchDisplayControllerUnretained:0];
  [(UISearchDisplayController *)self _destroyManagedTableView];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = @"UIWindowWillAnimateRotationNotification";
  v11[1] = @"UIWindowDidRotateNotification";
  v11[2] = 0x1EFB3A190;
  v11[3] = 0x1EFB3A1B0;
  v11[4] = 0x1EFB3A1D0;
  v11[5] = @"UIKeyboardDidShowNotification";
  v11[6] = @"UIKeyboardDidHideNotification";
  v11[7] = @"UIKeyboardPrivateWillShowNotification";
  v11[8] = @"UIKeyboardPrivateWillHideNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:9];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

  didScrollDelegate = self->_didScrollDelegate;
  if (didScrollDelegate)
  {
    v7 = [(_UISearchControllerDidScrollDelegate *)didScrollDelegate scrollView];
    [v7 _removeScrollViewScrollObserver:self->_didScrollDelegate];
  }

  containingScrollViews = self->_containingScrollViews;
  if (containingScrollViews)
  {
    CFRelease(containingScrollViews);
  }

  tableViewBackgroundHeaderView = self->_tableViewBackgroundHeaderView;
  self->_tableViewBackgroundHeaderView = 0;

  v10.receiver = self;
  v10.super_class = UISearchDisplayController;
  [(UISearchDisplayController *)&v10 dealloc];
}

- (void)_configureSearchBarForTableView
{
  v3 = [(UISearchDisplayController *)self _containingTableView];
  if (v3)
  {
    v11 = v3;
    v4 = [v3 tableHeaderView];
    searchBar = self->_searchBar;

    if (v4 == searchBar)
    {
      [(UISearchBar *)self->_searchBar _setShowsSeparator:0];
      tableViewBackgroundHeaderView = self->_tableViewBackgroundHeaderView;
      if (!tableViewBackgroundHeaderView || ([v11 _tableHeaderBackgroundView], v7 = objc_claimAutoreleasedReturnValue(), v7, tableViewBackgroundHeaderView != v7))
      {
        if (([v11 _usingCustomBackgroundView] & 1) == 0)
        {
          v8 = [UIColor colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
          [v11 setTableHeaderBackgroundColor:v8];
        }

        [(UISearchDisplayController *)self _updateTableHeaderBackgroundViewInTableView:v11 amountScrolledUnder:0.0];
        v9 = [v11 _tableHeaderBackgroundView];
        v10 = self->_tableViewBackgroundHeaderView;
        self->_tableViewBackgroundHeaderView = v9;
      }
    }

    [(UISearchBar *)self->_searchBar _updateInsetsForTableView:v11];
    [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:1];
    v3 = v11;
  }
}

- (void)_cleanUpSearchBar
{
  v3 = [(UISearchDisplayController *)self _containingTableView];
  if (v3)
  {
    v5 = v3;
    if (([v3 _usingCustomBackgroundView] & 1) == 0)
    {
      [v5 setTableHeaderBackgroundColor:0];
    }

    tableViewBackgroundHeaderView = self->_tableViewBackgroundHeaderView;
    self->_tableViewBackgroundHeaderView = 0;

    [(UISearchBar *)self->_searchBar _updateInsetsForTableView:0];
    [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:0];
    v3 = v5;
  }
}

- (BOOL)_areSearchContentsSplitViewMaster
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v4 = [WeakRetained splitViewController];
  v5 = [v4 masterViewController];

  v6 = objc_loadWeakRetained(&self->_viewController);
  v7 = v6;
  v8 = v6 != 0;
  if (v6 && v6 != v5)
  {
    do
    {
      v9 = v7;
      v7 = v7[12];

      v8 = v7 != 0;
      if (v7)
      {
        v10 = v7 == v5;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
  }

  return v8;
}

- (void)_configureNewSearchBar
{
  [(UISearchBar *)self->_searchBar _setRequiresLegacyVisualProvider];
  [(UISearchBar *)self->_searchBar setController:self];
  [(UISearchBar *)self->_searchBar setShowsScopeBar:*&self->_searchDisplayControllerFlags & 1];
  [(UIView *)self->_searchBar frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UISearchBar *)self->_searchBar _defaultHeight];
  [(UISearchBar *)self->_searchBar setFrame:v4, v6, v8, v9];
  [(UISearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
  [(UISearchBar *)self->_searchBar setUsesEmbeddedAppearance:1];
  [(UISearchBar *)self->_searchBar _setAllowsInlineScopeBar:[(UISearchDisplayController *)self _areSearchContentsSplitViewMaster]^ 1];
  if (![(UISearchBar *)self->_searchBar showsScopeBar])
  {
    [(UISearchBar *)self->_searchBar _setScopeBarHidden:1];
  }

  v10 = [(UISearchBar *)self->_searchBar placeholder];
  v11 = [v10 length];

  if (!v11)
  {
    searchBar = self->_searchBar;
    v13 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
    [(UISearchBar *)searchBar setPlaceholder:v13];
  }

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = [(UIView *)self->_searchBar window];
  [v16 addObserver:self selector:sel_windowWillAnimateRotation_ name:@"UIWindowWillAnimateRotationNotification" object:v14];

  v15 = [(UIView *)self->_searchBar window];
  [v16 addObserver:self selector:sel_windowDidRotate_ name:@"UIWindowDidRotateNotification" object:v15];

  [(UISearchDisplayController *)self _configureSearchBarForTableView];
}

- (void)setSearchBar:(id)a3
{
  v5 = a3;
  searchBar = self->_searchBar;
  if (searchBar != v5)
  {
    v10 = v5;
    if (searchBar)
    {
      [(UISearchBar *)searchBar setController:0];
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      v8 = [(UIView *)self->_searchBar window];
      [v7 removeObserver:self name:@"UIWindowWillAnimateRotationNotification" object:v8];

      v9 = [(UIView *)self->_searchBar window];
      [v7 removeObserver:self name:@"UIWindowDidRotateNotification" object:v9];
    }

    objc_storeStrong(&self->_searchBar, a3);
    [(UISearchDisplayController *)self _configureNewSearchBar];
    v5 = v10;
  }
}

- (void)_setupNoResultsLabelIfNecessary
{
  if (!self->_noResultsLabel)
  {
    v3 = [UILabel alloc];
    v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    noResultsLabel = self->_noResultsLabel;
    self->_noResultsLabel = v4;

    v6 = self->_noResultsLabel;
    v7 = [(UISearchDisplayController *)self noResultsMessage];
    [(UILabel *)v6 setText:v7];

    [(UILabel *)self->_noResultsLabel setTextAlignment:1];
    [(UIView *)self->_noResultsLabel setAutoresizingMask:5];
    v8 = self->_noResultsLabel;
    v9 = +[UIColor clearColor];
    [(UIView *)v8 setBackgroundColor:v9];

    v10 = self->_noResultsLabel;
    v11 = [UIColor colorWithWhite:0.8 alpha:1.0];
    [(UILabel *)v10 setTextColor:v11];

    UISystemFontBoldForSize();
  }
}

- (void)setSearchContentsController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_viewController, obj);
    [(UISearchBar *)self->_searchBar _setAllowsInlineScopeBar:[(UISearchDisplayController *)self _areSearchContentsSplitViewMaster]^ 1];
    v6 = [(UISearchDisplayController *)self isNavigationBarHidingEnabled];
    v5 = obj;
    if (v6)
    {
      v7 = [obj navigationController];
      [v7 setPretendNavBarHidden:{-[UISearchDisplayController isActive](self, "isActive")}];
      if (v7 && [v7 searchBarHidNavBar])
      {
        *&self->_searchDisplayControllerFlags |= 8u;
      }

      v5 = obj;
    }
  }
}

- (id)_containingViewOfClass:(Class)a3
{
  v4 = [(UIView *)self->_searchBar superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    if (!WeakRetained)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v6 = WeakRetained;
    do
    {
      v7 = v6;
      v4 = [v6 savedHeaderSuperview];
      v6 = v6[12];
    }

    while (!v4 && v6);
  }

  if (v4)
  {
    do
    {
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v8 = [v4 superview];

      v4 = v8;
    }

    while (v8);
  }

LABEL_12:

  return v4;
}

- (id)_containingTableView
{
  WeakRetained = objc_loadWeakRetained(&self->_savedContainingScrollView);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_savedContainingScrollView), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_savedContainingScrollView);
  }

  else
  {
    v7 = [(UISearchDisplayController *)self _containingViewOfClass:objc_opt_class()];
  }

  return v7;
}

- (id)_topShadowView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UITableView *)self->_tableView _topShadowView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_popoverKeyboardDidShow:(id)a3
{
  if (self->_popoverController)
  {
    v4 = MEMORY[0x1E695DEC8];
    searchBar = self->_searchBar;
    v7 = +[UIKeyboard activeKeyboard];
    v6 = [v4 arrayWithObjects:{searchBar, v7, 0}];
    [(UIPopoverController *)self->_popoverController setPassthroughViews:v6];
  }
}

- (void)_popoverKeyboardDidHide:(id)a3
{
  if (self->_popoverController)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_searchBar, 0}];
    [(UIPopoverController *)self->_popoverController setPassthroughViews:v4];
  }
}

- (void)_popoverClearButtonPressed:(id)a3
{
  [(UISearchBar *)self->_searchBar setText:&stru_1EFB14550];

  [(UISearchDisplayController *)self setActive:0 animated:1];
}

- (id)_createPopoverController
{
  v3 = [[UITableViewController alloc] initWithStyle:self->_searchResultsTableViewStyle];
  v4 = [(UISearchDisplayController *)self searchResultsTableView];
  [(UIView *)v4 __setViewDelegate:?];

  v5 = [(UISearchDisplayController *)self searchResultsTableView];
  [v5 setContentInset:{0.0, 0.0, 0.0, 0.0}];

  v6 = [(UISearchDisplayController *)self searchResultsTableView];
  [v6 setContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  v7 = [(UISearchDisplayController *)self searchResultsTableView];
  [(UITableViewController *)v3 setTableView:v7];

  v8 = [(UISearchDisplayController *)self searchResultsTitle];
  if ([v8 length])
  {
    [(UISearchDisplayController *)self searchResultsTitle];
  }

  else
  {
    _UINSLocalizedStringWithDefaultValue(@"Results", @"Results");
  }
  v9 = ;
  v10 = [(UIViewController *)v3 navigationItem];
  [v10 setTitle:v9];

  if ([(UISearchBar *)self->_searchBar showsSearchResultsButton]&& [(UISearchBar *)self->_searchBar isSearchResultsButtonSelected])
  {
    v11 = [UIBarButtonItem alloc];
    v12 = _UIKitBundle();
    v13 = [v12 localizedStringForKey:@"Clear[Search]" value:@"Clear" table:@"Localizable"];
    v14 = [(UIBarButtonItem *)v11 initWithTitle:v13 style:1 target:self action:sel__popoverClearButtonPressed_];
    v15 = [(UIViewController *)v3 navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  v16 = [[UINavigationController alloc] initWithRootViewController:v3];
  v17 = [[UIPopoverController alloc] initWithContentViewController:v16];
  [(UIPopoverController *)v17 setDelegate:self];

  return v17;
}

- (void)_destroyManagedTableView
{
  tableView = self->_tableView;
  if (tableView)
  {
    [(UIScrollView *)tableView removeFromSuperview];
    v4 = self->_tableView;
    self->_tableView = 0;
  }

  popoverController = self->_popoverController;
  if (popoverController)
  {
    if ([(UIPopoverController *)popoverController isPopoverVisible])
    {
      [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:0];
    }

    v6 = self->_popoverController;
    v7 = self->_popoverController;
    self->_popoverController = 0;
  }
}

- (void)_disableParentScrollViews
{
  if (self->_containingScrollViews || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]), (self->_containingScrollViews = Mutable) != 0))
  {
    v4 = [(UIView *)self->_searchBar superview];
    if (!v4 && [(UISearchDisplayController *)self displaysSearchBarInNavigationBar]|| [(UISearchBar *)self->_searchBar _containedInNavigationPalette])
    {
      v5 = [(UIView *)self->_containerView superview];

      v4 = v5;
    }

    if (v4)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v4 isScrollEnabled])
          {
            [v4 setScrollEnabled:0];
            [v4 setProgrammaticScrollEnabled:0];
            CFArrayAppendValue(self->_containingScrollViews, v4);
          }
        }

        v6 = [v4 superview];

        v4 = v6;
      }

      while (v6);
    }
  }
}

- (void)_enableParentScrollViews
{
  containingScrollViews = self->_containingScrollViews;
  if (containingScrollViews)
  {
    v4.length = CFArrayGetCount(self->_containingScrollViews);
    v4.location = 0;
    CFArrayApplyFunction(containingScrollViews, v4, _EnableScrollView, 0);
    CFArrayRemoveAllValues(self->_containingScrollViews);
    CFRelease(self->_containingScrollViews);
    self->_containingScrollViews = 0;
  }
}

- (UIEdgeInsets)_tableViewContentInsets
{
  if ((*&self->_searchDisplayControllerFlags & 0x1000) == 0)
  {
    v3 = [(UISearchDisplayController *)self _searchBarInNavigationControllerComponent];
    v4 = 0.0;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (![(UISearchBar *)self->_searchBar _containedInNavigationPalette])
  {
    if (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
    {
      [(UIView *)self->_searchBar bounds];
      Height = CGRectGetHeight(v22);
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v11 = [WeakRetained navigationController];
    v12 = [v11 navigationBar];
    [v12 frame];
    Height = CGRectGetHeight(v21);
    goto LABEL_9;
  }

  v5 = objc_loadWeakRetained(&self->_viewController);
  v6 = [v5 edgesForExtendedLayout];

  Height = 0.0;
  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_viewController);
    v9 = [v8 navigationController];
    WeakRetained = [v9 existingPaletteForEdge:2];

    [WeakRetained frame];
    Height = CGRectGetHeight(v19);
    if ([(UISearchDisplayController *)self isNavigationBarHidingEnabled])
    {
LABEL_10:

      goto LABEL_12;
    }

    v11 = objc_loadWeakRetained(&self->_viewController);
    v12 = [v11 navigationController];
    v13 = [v12 navigationBar];
    [v13 frame];
    Height = Height + CGRectGetHeight(v20);

LABEL_9:
    goto LABEL_10;
  }

LABEL_12:
  v14 = [(UISearchDisplayController *)self _shouldAccountForStatusBarHeight];
  v15 = 0.0;
  if (v14)
  {
    [(UISearchDisplayController *)self _statusBarHeight];
  }

  v4 = Height + v15;
LABEL_15:
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v4;
  return result;
}

- (void)_adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:(BOOL)a3
{
  if (a3)
  {
    v36 = *(MEMORY[0x1E695EFF8] + 8);
    v37 = *MEMORY[0x1E695EFF8];
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    [(UIScrollView *)self->_tableView contentOffset];
    v36 = v9;
    v37 = v8;
    [(UIScrollView *)self->_tableView contentInset];
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  [(UISearchDisplayController *)self _tableViewContentInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20 + self->_lastFooterAdjustment;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v38 = [WeakRetained navigationController];

  v23 = v38;
  if (v38)
  {
    v35 = v5;
    v24 = v4;
    v25 = v7;
    v26 = v6;
    v27 = objc_loadWeakRetained(&self->_viewController);
    [v38 _scrollViewBottomContentInsetForViewController:v27];
    v29 = v28;

    lastFooterAdjustment = self->_lastFooterAdjustment;
    if (lastFooterAdjustment != v29)
    {
      self->_lastFooterAdjustment = lastFooterAdjustment + v29 - lastFooterAdjustment;
      v21 = v21 + v29 - lastFooterAdjustment;
    }

    v6 = v26;
    v23 = v38;
    v7 = v25;
    v4 = v24;
    v5 = v35;
  }

  if (v5 != v17 || v4 != v15 || v7 != v19 || v6 != v21)
  {
    [(UITableView *)self->_tableView setContentInset:v15, v17, v21, v19];
    [(UIScrollView *)self->_tableView setScrollIndicatorInsets:v15, v17, v21, v19];
    v23 = v38;
    if (v4 != v15 || v5 != v17)
    {
      [(UITableView *)self->_tableView setContentOffset:v37 + v5 - v17, v36 + v4 - v15];
      v23 = v38;
    }
  }
}

- (void)_hoistSearchBar
{
  v3 = [(UIView *)self->_searchBar superview];
  v4 = [(UISearchDisplayControllerContainerView *)self->_containerView topView];

  if (v3 == v4)
  {
    if (*&self->_searchDisplayControllerFlags)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_savedContainingScrollView);
    if (WeakRetained)
    {
      v17 = WeakRetained;
      if (self->_savedSearchBarResizingMask != -1)
      {
        [(UIView *)self->_searchBar setAutoresizingMask:?];
        self->_savedSearchBarResizingMask = -1;
      }

      *&self->_searchDisplayControllerFlags |= 0x8000u;
      [v17 addSubview:self->_searchBar];
      *&self->_searchDisplayControllerFlags &= ~0x8000u;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchBar = self->_searchBar;
        [v17 _rectForTableHeaderView];
        [(UISearchBar *)searchBar setFrame:?];
      }

      [v17 layoutBelowIfNeeded];
      objc_storeWeak(&self->_savedContainingScrollView, 0);
      goto LABEL_15;
    }
  }

  else
  {
    WeakRetained = [(UISearchDisplayController *)self _containingViewOfClass:objc_opt_class()];
    if (WeakRetained)
    {
      v17 = WeakRetained;
      objc_storeWeak(&self->_savedContainingScrollView, WeakRetained);
      [(UIView *)self->_searchBar frame];
      v7 = v6;
      v9 = v8;
      v10 = *MEMORY[0x1E695EFF8];
      v11 = [(UISearchDisplayControllerContainerView *)self->_containerView topView];
      [v11 bounds];
      Width = CGRectGetWidth(v19);

      if (Width == 0.0)
      {
        v7 = 0.0;
      }

      [(UISearchDisplayController *)self _additionalNonCollapsingHeightAboveSearchBar];
      [(UISearchBar *)self->_searchBar setFrame:v10, v13, v7, v9];
      *&self->_searchDisplayControllerFlags |= 0x8000u;
      v14 = [(UISearchDisplayControllerContainerView *)self->_containerView topView];
      [v14 addSubview:self->_searchBar];

      *&self->_searchDisplayControllerFlags &= ~0x8000u;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 _pinsTableHeaderView])
      {
        v15 = [(UIView *)self->_searchBar autoresizingMask];
        self->_savedSearchBarResizingMask = v15;
        [(UIView *)self->_searchBar setAutoresizingMask:v15 | 2];
      }

LABEL_15:
      WeakRetained = v17;
    }
  }
}

- (void)_setTableViewVisible:(BOOL)a3 inView:(id)a4
{
  v4 = a3;
  v6 = [(UISearchDisplayController *)self _isSearchBarInBar:a3];
  v7 = [(UIView *)self->_tableView isHidden];
  if (v4)
  {
    if (!v7)
    {
      if (!v6)
      {
        return;
      }

      v24 = +[UIDevice currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if ((v25 & 0xFFFFFFFFFFFFFFFBLL) != 1 || [(UIPopoverController *)self->_popoverController isPopoverVisible])
      {
        return;
      }
    }

    [(UISearchDisplayController *)self _adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:1];
    if (objc_opt_respondsToSelector())
    {
      [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self willShowSearchResultsTableView:self->_tableView];
    }

    if (!v6 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 userInterfaceIdiom], v8, (v9 & 0xFFFFFFFFFFFFFFFBLL) != 1) || -[UISearchDisplayController displaysSearchBarInNavigationBar](self, "displaysSearchBarInNavigationBar") && -[UISearchDisplayController navigationBarSearchFieldSizing](self, "navigationBarSearchFieldSizing") != 3)
    {
      [(UIView *)self->_tableView setHidden:0];
      [(UIView *)self->_dimmingView setHidden:1];
      self->_lastKeyboardAdjustment = 0.0;
      if (UIKeyboardAutomaticIsOnScreen())
      {
        [(UITableView *)self->_tableView _adjustForAutomaticKeyboardInfo:0 animated:0 lastAdjustment:&self->_lastKeyboardAdjustment];
      }

      containerView = self->_containerView;
      if ((*&self->_searchDisplayControllerFlags & 0x1000) != 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = [(UISearchDisplayController *)self _searchBarInNavigationControllerComponent]^ 1;
      }

      [(UISearchDisplayControllerContainerView *)containerView setBottomViewUserInteractionEnabled:v27];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
      {
        goto LABEL_48;
      }

      searchBar = self->_searchBar;
      v32 = self->_tableView;
      v33 = [(UISearchBar *)searchBar _makeShadowView];
      [(UITableView *)v32 _setTopShadowView:v33];

LABEL_47:
LABEL_48:
      if (objc_opt_respondsToSelector())
      {
        [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self didShowSearchResultsTableView:self->_tableView];
      }

      [(UISearchDisplayController *)self _updateNoSearchResultsMessageVisiblity];
      return;
    }

    if (!self->_popoverController)
    {
      v10 = [(UISearchDisplayController *)self _createPopoverController];
      popoverController = self->_popoverController;
      self->_popoverController = v10;
    }

    v12 = [(UISearchDisplayController *)self navigationBarSearchFieldSizing];
    v13 = MEMORY[0x1E695DEC8];
    v14 = self->_searchBar;
    if (v12 == 3)
    {
      v15 = [(UISearchBar *)self->_searchBar searchField];
      v16 = +[UIKeyboard activeKeyboard];
      v17 = [v13 arrayWithObjects:{v15, v16, 0}];
      [(UIPopoverController *)self->_popoverController setPassthroughViews:v17];

      v18 = [(UISearchBar *)self->_searchBar searchField];
      v19 = v18;
    }

    else
    {
      v34 = +[UIKeyboard activeKeyboard];
      v35 = [v13 arrayWithObjects:{v14, v34, 0}];
      [(UIPopoverController *)self->_popoverController setPassthroughViews:v35];

      v36 = [(UISearchBar *)self->_searchBar isSearchResultsButtonSelected];
      v18 = [(UISearchBar *)self->_searchBar searchField];
      v19 = v18;
      if (v36)
      {
        v37 = [(UISearchBar *)self->_searchBar searchField];
        [v37 bounds];
        [v19 rightViewRectForBounds:?];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

LABEL_46:
        v50 = self->_popoverController;
        v33 = [(UISearchBar *)self->_searchBar searchField];
        [(UIPopoverController *)v50 presentPopoverFromRect:v33 inView:3 permittedArrowDirections:1 animated:v39, v41, v43, v45];
        goto LABEL_47;
      }
    }

    [v18 bounds];
    v39 = v46;
    v41 = v47;
    v43 = v48;
    v45 = v49;
    goto LABEL_46;
  }

  if (v6 || !v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self willHideSearchResultsTableView:self->_tableView];
    }

    if (v6 && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 userInterfaceIdiom], v20, (v21 & 0xFFFFFFFFFFFFFFFBLL) == 1) && (!-[UISearchDisplayController displaysSearchBarInNavigationBar](self, "displaysSearchBarInNavigationBar") || -[UISearchDisplayController navigationBarSearchFieldSizing](self, "navigationBarSearchFieldSizing") == 3))
    {
      [(UISearchBar *)self->_searchBar setSearchResultsButtonSelected:0];
      if ([(UIPopoverController *)self->_popoverController isPopoverVisible])
      {
        [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:0];
      }

      v22 = self->_popoverController;
      v23 = self->_popoverController;
      self->_popoverController = 0;
    }

    else
    {
      if ([(UISearchDisplayController *)self dimTableViewOnEmptySearchString])
      {
        [(UIView *)self->_dimmingView setHidden:0];
      }

      [(UIView *)self->_tableView setHidden:1];
      [(UIView *)self->_tableView setAlpha:1.0];
      [(UISearchDisplayControllerContainerView *)self->_containerView setBottomViewUserInteractionEnabled:[(UISearchDisplayController *)self dimTableViewOnEmptySearchString]];
    }

    v28 = [(UISearchBar *)self->_searchBar searchField];
    [v28 _setSuffix:0 withColor:0];

    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;
      tableView = self->_tableView;

      [(UISearchDisplayDelegate *)delegate searchDisplayController:self didHideSearchResultsTableView:tableView];
    }
  }
}

- (void)_searchBarSuperviewWillChange
{
  if ((*&self->_searchDisplayControllerFlags & 0x80000000) == 0)
  {
    [(UISearchDisplayController *)self _cleanUpSearchBar];
  }
}

- (void)_searchBarSuperviewChanged
{
  if ((*&self->_searchDisplayControllerFlags & 0x80000000) == 0)
  {
    if ([(UISearchBar *)self->_searchBar _containedInNavigationPalette])
    {
      v3 = [MEMORY[0x1E696AD88] defaultCenter];
      [v3 addObserver:self selector:sel_navigationControllerWillShowViewController_ name:0x1EFB3A190 object:0];
    }

    [(UISearchDisplayController *)self _configureSearchBarForTableView];
  }
}

- (void)_hideVisibleRefreshControl
{
  v2 = [(UISearchDisplayController *)self _containingTableView];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 _refreshControl];
    v2 = v8;
    if (v3)
    {
      v4 = [v8 _refreshControl];
      if ([v4 refreshControlState] == 2)
      {
      }

      else
      {
        v5 = [v8 _refreshControl];
        v6 = [v5 refreshControlState];

        v2 = v8;
        if (v6 != 3)
        {
          goto LABEL_7;
        }
      }

      v7 = [v8 _refreshControl];
      [v7 _removeInsets];

      v2 = v8;
    }
  }

LABEL_7:
}

- (double)_dimmingViewAlpha
{
  v3 = [(UISearchDisplayController *)self _dimmingOverlayColor];
  if (v3)
  {
    v4 = [(UISearchDisplayController *)self _dimmingOverlayColor];
    Alpha = CGColorGetAlpha([v4 CGColor]);
  }

  else
  {
    Alpha = 0.4;
  }

  return Alpha;
}

- (id)_dimmingViewColor
{
  v3 = [(UISearchDisplayController *)self _dimmingOverlayColor];

  if (v3)
  {
    v9 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
    v4 = [(UISearchDisplayController *)self _dimmingOverlayColor];
    v5 = v4;
    if (v4)
    {
      [v4 getRed:&v10 green:&v9 blue:&v8 alpha:0];
    }

    v6 = [UIColor colorWithRed:v10 green:v9 blue:v8 alpha:1.0];
  }

  else
  {
    v6 = +[UIColor blackColor];
  }

  return v6;
}

- (void)_sendDelegateDidBeginDidEndSearch
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if (searchDisplayControllerFlags)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      [(UISearchDisplayDelegate *)delegate searchDisplayControllerDidBeginSearch:self];
      return;
    }

    searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  }

  if (searchDisplayControllerFlags & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(UISearchDisplayDelegate *)v5 searchDisplayControllerDidEndSearch:self];
  }
}

- (void)showHideAnimationDidFinish
{
  if ((![(UISearchDisplayController *)self _showsResultsForEmptyField]|| [(UISearchDisplayController *)self _showsResultsForEmptyField]&& (*&self->_searchDisplayControllerFlags & 1) == 0) && ![(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
  {
    [(UISearchDisplayController *)self _hoistSearchBar];
  }

  if (*&self->_searchDisplayControllerFlags)
  {
    [(UISearchBar *)self->_searchBar _allowCursorToAppear:1];
    if (![(UISearchDisplayController *)self _isSearchBarInBar])
    {
      goto LABEL_25;
    }

    v3 = [(UISearchBar *)self->_searchBar text];
    v8 = [v3 length] || -[UISearchDisplayController _showsResultsForEmptyField](self, "_showsResultsForEmptyField") || -[UISearchDisplayController navigationBarSearchFieldSizing](self, "navigationBarSearchFieldSizing") == 3;
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v10 = [WeakRetained _existingView];
    [(UISearchDisplayController *)self _setTableViewVisible:v8 inView:v10];
  }

  else
  {
    v3 = [(UISearchDisplayController *)self _containingTableView];
    if ([v3 _pinsTableHeaderView])
    {
      [v3 _setIgnorePinnedTableHeaderUpdates:0];
    }

    if (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
    {
      v4 = objc_loadWeakRetained(&self->_viewController);
      v5 = [v4 _existingView];
      [(UISearchDisplayController *)self _setTableViewVisible:0 inView:v5];
    }

    [(UISearchBar *)self->_searchBar _destroyCancelButton];
    if ([(UISearchBar *)self->_searchBar isTranslucent])
    {
      [(UISearchBar *)self->_searchBar _setScopeBarHidden:1];
    }

    if (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& (*&self->_searchDisplayControllerFlags & 0x2000) == 0)
    {
      [(UIView *)self->_containerView removeFromSuperview];
    }

    v6 = objc_loadWeakRetained(&self->_viewController);
    [v6 _clearRecordedContentScrollView];

    if ([(UISearchBar *)self->_searchBar barPosition]!= 3)
    {
      [(UISearchBar *)self->_searchBar _setMaskActive:1];
      searchBar = self->_searchBar;
      [(UIView *)searchBar bounds];
      [(UISearchBar *)searchBar _setMaskBounds:?];
    }

    [(UISearchDisplayController *)self _updateSearchBarMaskIfNecessary];
  }

LABEL_25:

  [(UISearchDisplayController *)self _sendDelegateDidBeginDidEndSearch];
}

- (void)setActive:(BOOL)visible animated:(BOOL)animated
{
  v4 = visible;
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if ((searchDisplayControllerFlags & 1) != visible)
  {
    v7 = animated;
    *&self->_searchDisplayControllerFlags = searchDisplayControllerFlags & 0xFFFC | visible | 2;
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        [(UISearchDisplayDelegate *)self->_delegate searchDisplayControllerWillBeginSearch:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [(UISearchDisplayDelegate *)self->_delegate searchDisplayControllerWillEndSearch:self];
    }

    if ([(UISearchDisplayController *)self _isSearchBarInBar])
    {
      *&self->_searchDisplayControllerFlags &= ~0x1000u;
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      v23 = [WeakRetained navigationController];

      if (v4)
      {
        v24 = +[UIDevice currentDevice];
        v25 = [v24 userInterfaceIdiom];

        if ((v25 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar]|| [(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 3))
        {
          [v9 addObserver:self selector:sel__popoverKeyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
          [v9 addObserver:self selector:sel__popoverKeyboardDidHide_ name:@"UIKeyboardDidHideNotification" object:0];
        }

        if (v23)
        {
          [v9 addObserver:self selector:sel_navigationControllerWillShowViewController_ name:0x1EFB3A190 object:v23];
          [v9 addObserver:self selector:sel_navigationControllerDidShowViewController_ name:0x1EFB3A1B0 object:v23];
          [v9 addObserver:self selector:sel_navigationControllerDidCancelShowingViewController_ name:0x1EFB3A1D0 object:v23];
        }
      }

      else
      {
        searchBar = self->_searchBar;
        v31 = [(UISearchBar *)searchBar text];
        if ([v31 length])
        {
          v32 = [(UISearchDisplayController *)self displaysSearchBarInNavigationBar]^ 1;
        }

        else
        {
          v32 = 0;
        }

        [(UISearchBar *)searchBar setShowsSearchResultsButton:v32];

        if ((*&self->_searchDisplayControllerFlags & 0x100) == 0)
        {
          v74 = [(UISearchBar *)self->_searchBar searchField];
          [v74 resignFirstResponder];

          v75 = [(UISearchBar *)self->_searchBar searchField];
          [v75 _clearBecomeFirstResponderWhenCapable];
        }

        v76 = +[UIDevice currentDevice];
        v77 = [v76 userInterfaceIdiom];

        if ((v77 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar]|| [(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 3))
        {
          [v9 removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];
          [v9 removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
        }

        if (v23)
        {
          [v9 removeObserver:self name:0x1EFB3A190 object:v23];
          [v9 removeObserver:self name:0x1EFB3A1B0 object:v23];
          [v9 removeObserver:self name:0x1EFB3A1D0 object:v23];
        }

        [(UISearchBar *)self->_searchBar setText:&stru_1EFB14550];
      }

      v78 = +[UIDevice currentDevice];
      v79 = [v78 userInterfaceIdiom];

      if ((v79 & 0xFFFFFFFFFFFFFFFBLL) != 1 && [(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
      {
        v80 = objc_loadWeakRetained(&self->_viewController);
        v81 = v80;
        if (v4)
        {
          v82 = [v80 view];

          [(UISearchDisplayController *)self _hideVisibleRefreshControl];
          v83 = [(UIView *)self->_searchBar _screen];
          [v9 addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v83];

          v84 = [(UIView *)self->_searchBar _screen];
          [v9 addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v84];

          v85 = [(UISearchDisplayController *)self _containerView];
          containerView = self->_containerView;
          [v82 bounds];
          [(UIView *)containerView setFrame:?];
          v87 = self->_containerView;
          v88 = [v23 navigationBar];
          [v88 frame];
          [(UISearchDisplayControllerContainerView *)v87 updateTopViewHeight:CGRectGetHeight(v247)];

          [v82 addSubview:self->_containerView];
          [(UISearchDisplayController *)self _disableParentScrollViews];
          v89 = self->_containerView;
          [(UISearchDisplayController *)self _statusBarHeight];
          [(UISearchDisplayControllerContainerView *)v89 updateTopAttributeConstant:?];
          v90 = [(UIView *)self->_containerView _containingScrollView];
          [v90 contentOffset];
          self->_containingScrollViewContentOffset.x = v91;
          self->_containingScrollViewContentOffset.y = v92;
          [v90 _setAutomaticContentOffsetAdjustmentEnabled:0];
          [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:1];
        }

        else
        {
          v82 = [v80 _existingView];

          [(UISearchBar *)self->_searchBar setText:&stru_1EFB14550];
          [(UISearchDisplayController *)self _enableParentScrollViews];
          [v9 removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
          [v9 removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];
          v101 = [(UISearchBar *)self->_searchBar searchField];
          [v101 resignFirstResponder];

          v102 = [(UISearchBar *)self->_searchBar searchField];
          [v102 _clearBecomeFirstResponderWhenCapable];

          v103 = [(UIView *)self->_containerView _containingScrollView];
          [v103 _setAutomaticContentOffsetAdjustmentEnabled:1];

          [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:0];
        }

        v244[0] = MEMORY[0x1E69E9820];
        v244[1] = 3221225472;
        v244[2] = __48__UISearchDisplayController_setActive_animated___block_invoke;
        v244[3] = &unk_1E70F35E0;
        v245 = v4;
        v244[4] = self;
        v242[0] = MEMORY[0x1E69E9820];
        v242[1] = 3221225472;
        v242[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_2;
        v242[3] = &unk_1E70FA0F0;
        v243 = v4;
        v242[4] = self;
        [UIView animateWithDuration:v244 animations:v242 completion:0.3833];
      }

      *&self->_searchDisplayControllerFlags &= ~2u;
LABEL_94:
      if (![(UISearchBar *)self->_searchBar _containedInNavigationPalette])
      {
        [(UISearchDisplayController *)self showHideAnimationDidFinish];
      }

LABEL_205:

      return;
    }

    v26 = off_1E70EA000;
    v27 = "_UIMonochromaticTreatment";
    if ([(UISearchBar *)self->_searchBar _containedInNavigationPalette])
    {
      v28 = objc_loadWeakRetained(&self->_viewController);
      v29 = v28;
      if (v4)
      {
        [v28 view];
      }

      else
      {
        [v28 _existingView];
      }
      v199 = ;

      v44 = objc_loadWeakRetained(&self->_viewController);
      v45 = [v44 navigationController];

      v46 = [v45 existingPaletteForEdge:2];
      *&self->_searchDisplayControllerFlags &= ~0x1000u;
      if (!v4)
      {
        [(UISearchDisplayController *)self _enableParentScrollViews];
        [(UISearchBar *)self->_searchBar setText:&stru_1EFB14550];
        [v9 removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
        [v9 removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];
        [v9 removeObserver:self name:0x1EFB3A1B0 object:v45];
        [v9 removeObserver:self name:0x1EFB3A1D0 object:v45];
        v62 = [(UISearchBar *)self->_searchBar searchField];
        [v62 resignFirstResponder];

        v63 = [(UISearchBar *)self->_searchBar searchField];
        [v63 _clearBecomeFirstResponderWhenCapable];

        v64 = [(UIView *)self->_containerView _containingScrollView];
        [v64 _setAutomaticContentOffsetAdjustmentEnabled:1];

        [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:0];
        v65 = [(UISearchBar *)self->_searchBar searchField];
        [v65 _setSuffix:0 withColor:0];

        v66 = self->_searchDisplayControllerFlags;
        if ((v66 & 8) != 0)
        {
          *&self->_searchDisplayControllerFlags = v66 & 0xFFF7;
          v67 = 0.3833;
          if (!v7)
          {
            v67 = 0.0;
          }

          [v45 _setNavigationBarHidden:0 edgeIfNotNavigating:1 duration:v67];
          [(UISearchBar *)self->_searchBar _setBarPosition:self->_unactivatedBarPosition];
          [v46 setPinningBarShadowIsHidden:(*&self->_searchDisplayControllerFlags >> 14) & 1];
        }

LABEL_127:
        v128 = v26[431];
        v234 = MEMORY[0x1E69E9820];
        v235 = *(v27 + 235);
        v129 = v235;
        v236 = __48__UISearchDisplayController_setActive_animated___block_invoke_3;
        v237 = &unk_1E70F5B18;
        v241 = v4;
        v238 = self;
        v239 = v46;
        v130 = v199;
        v240 = v130;
        v231[0] = MEMORY[0x1E69E9820];
        v231[1] = v235;
        v231[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_4;
        v231[3] = &unk_1E70F8A60;
        v233 = v4;
        v231[4] = self;
        v131 = v239;
        v232 = v131;
        [(__objc2_class *)v128 animateWithDuration:&v234 animations:v231 completion:0.3833];
        if (!v7 || v4)
        {
          v132 = v7;
          v134 = self->_searchDisplayControllerFlags;
        }

        else
        {
          v132 = v7;
          v133 = [(UIView *)self->_tableView isHidden];
          v134 = self->_searchDisplayControllerFlags;
          if (!v133)
          {
            *&self->_searchDisplayControllerFlags = v134 | 0x2000;
            v135 = [(UIView *)self->_tableView backgroundColor];
            p_dimmingView = &self->_dimmingView;
            if (v135)
            {
              [(UIView *)self->_tableView backgroundColor];
            }

            else
            {
              +[UIColor whiteColor];
            }
            v140 = ;
            [(UIView *)*p_dimmingView setBackgroundColor:v140];

            [(UIView *)*p_dimmingView setAlpha:0.0];
            v139 = 0;
            v138 = 1;
            v26 = off_1E70EA000;
LABEL_136:
            [(UIView *)*p_dimmingView setHidden:v139];
            if (v4)
            {
              if ([(UISearchDisplayController *)self _showsResultsForEmptyField])
              {
                [(UIView *)self->_dimmingView setHidden:1];
                [(UISearchDisplayController *)self _setTableViewVisible:1 inView:0];
                if (v132)
                {
                  [(UIView *)self->_tableView setAlpha:0.0];
                  v141 = v26[431];
                  v230[0] = MEMORY[0x1E69E9820];
                  v230[1] = v129;
                  v230[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_5;
                  v230[3] = &unk_1E70F3590;
                  v230[4] = self;
                  [(__objc2_class *)v141 animateWithDuration:v230 animations:0.3833];
                }
              }
            }

            v142 = v26[431];
            if (v138)
            {
              v229[0] = MEMORY[0x1E69E9820];
              v229[1] = v129;
              v229[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_6;
              v229[3] = &unk_1E70F3590;
              v229[4] = self;
              v228[0] = MEMORY[0x1E69E9820];
              v228[1] = v129;
              v228[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_7;
              v228[3] = &unk_1E70F9B38;
              v228[4] = self;
              v228[5] = 0x3FC887FCB923A29CLL;
              [(__objc2_class *)v142 animateWithDuration:v229 animations:v228 completion:0.19165];
            }

            else
            {
              v226[0] = MEMORY[0x1E69E9820];
              v226[1] = v129;
              v226[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_9;
              v226[3] = &unk_1E70F35E0;
              v226[4] = self;
              v227 = v4;
              [(__objc2_class *)v142 animateWithDuration:v226 animations:0.19165];
            }

            v143 = v26[431];
            v224[0] = MEMORY[0x1E69E9820];
            v224[1] = v129;
            v224[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_10;
            v224[3] = &unk_1E70F35E0;
            v224[4] = self;
            v225 = v4;
            v222[0] = MEMORY[0x1E69E9820];
            v222[1] = v129;
            v222[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_11;
            v222[3] = &unk_1E70FA0F0;
            v223 = v4;
            v222[4] = self;
            [(__objc2_class *)v143 animateWithDuration:4 delay:v224 options:v222 animations:0.3833 completion:0.0];

            *&self->_searchDisplayControllerFlags &= ~2u;
            if (v132)
            {
              goto LABEL_205;
            }

            goto LABEL_94;
          }
        }

        *&self->_searchDisplayControllerFlags = v134 & 0xDFFF;
        v137 = [(UISearchDisplayController *)self _dimmingViewColor];
        p_dimmingView = &self->_dimmingView;
        [(UIView *)self->_dimmingView setBackgroundColor:v137];

        [(UISearchDisplayController *)self _dimmingViewAlpha];
        [(UIView *)self->_dimmingView setAlpha:?];
        v138 = 0;
        v139 = [(UISearchDisplayController *)self dimTableViewOnEmptySearchString]^ 1;
        goto LABEL_136;
      }

      v47 = self->_searchBar;
      v48 = [v45 navigationBar];
      v49 = [v48 _appearanceStorage];
      v50 = [v49 _barButtonAppearanceStorage];
      [(UISearchBar *)v47 _setupCancelButtonWithAppearance:v50];

      [(UISearchBar *)self->_searchBar set_forceCenteredPlaceholderLayout:1];
      [(UIView *)self->_searchBar layoutBelowIfNeeded];
      [(UISearchBar *)self->_searchBar set_forceCenteredPlaceholderLayout:0];
      [(UISearchDisplayController *)self _hideVisibleRefreshControl];
      v51 = [(UIView *)self->_searchBar _screen];
      [v9 addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v51];

      v52 = [(UIView *)self->_searchBar _screen];
      [v9 addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v52];

      [v9 addObserver:self selector:sel_navigationControllerDidShowViewController_ name:0x1EFB3A1B0 object:v45];
      [v9 addObserver:self selector:sel_navigationControllerDidCancelShowingViewController_ name:0x1EFB3A1D0 object:v45];
      v53 = [(UISearchDisplayController *)self _containerView];
      v54 = self->_containerView;
      [v199 bounds];
      [(UIView *)v54 setFrame:?];
      [v199 addSubview:self->_containerView];
      v55 = [(UIView *)self->_containerView _containingScrollView];
      [v55 contentOffset];
      self->_containingScrollViewContentOffset.x = v56;
      self->_containingScrollViewContentOffset.y = v57;
      [v55 _setAutomaticContentOffsetAdjustmentEnabled:0];
      [(UISearchDisplayController *)self _watchContainingTableViewForScrolling:1];
      if ((*&self->_searchDisplayControllerFlags & 8) == 0)
      {
        if (!-[UISearchDisplayController isNavigationBarHidingEnabled](self, "isNavigationBarHidingEnabled") || [v45 isNavigationBarHidden])
        {
          *&self->_searchDisplayControllerFlags &= ~8u;
LABEL_113:
          v116 = objc_loadWeakRetained(&self->_viewController);
          v117 = [v116 edgesForExtendedLayout];

          if (v117)
          {
            v118 = [v45 navigationBar];
            [v118 frame];
            Height = CGRectGetHeight(v248);
            [v46 bounds];
            v120 = Height + CGRectGetHeight(v249);

            [(UISearchDisplayControllerContainerView *)self->_containerView updateTopViewHeight:v120];
          }

          else
          {
            [(UISearchDisplayControllerContainerView *)self->_containerView collapseTopView];
          }

          v26 = off_1E70EA000;
          if ([(UISearchDisplayController *)self _shouldAccountForStatusBarHeight])
          {
            v121 = self->_containerView;
            [(UISearchDisplayController *)self _statusBarHeight];
            [(UISearchDisplayControllerContainerView *)v121 updateTopAttributeConstant:?];
          }

          [(UIView *)self->_containerView layoutIfNeeded];
          [(UISearchBar *)self->_searchBar _allowCursorToAppear:0];
          self->_unactivatedBarPosition = [(UISearchBar *)self->_searchBar barPosition];
          if ((*&self->_searchDisplayControllerFlags & 8) != 0 && [v46 boundaryEdge] == 2)
          {
            v122 = [(UIView *)self->_searchBar window];
            v123 = __UIStatusBarManagerForWindow(v122);
            v124 = [v123 isStatusBarHidden];

            v26 = off_1E70EA000;
            if ((v124 & 1) == 0 && ([(UISearchBar *)self->_searchBar barPosition]== 2 || ![(UISearchBar *)self->_searchBar barPosition]))
            {
              if (!-[UISearchDisplayController _containedInPopover](self, "_containedInPopover") || (v125 = objc_loadWeakRetained(&self->_viewController), [v125 _popoverController], v126 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v126, "_managingSplitViewController"), v127 = objc_claimAutoreleasedReturnValue(), v127, v126, v26 = off_1E70EA000, v125, v127))
              {
                [(UISearchBar *)self->_searchBar _setBarPosition:3];
              }
            }
          }

          [(UISearchDisplayController *)self _disableParentScrollViews];

          v27 = "_UIMonochromaticTreatment";
          goto LABEL_127;
        }

        *&self->_searchDisplayControllerFlags |= 8u;
      }

      [v46 setVisibleWhenPinningBarIsHidden:1];
      v113 = 0.3833;
      if (!v7)
      {
        v113 = 0.0;
      }

      [v45 _setNavigationBarHidden:1 edgeIfNotNavigating:1 duration:v113];
      v114 = [v45 navigationBar];
      if ([v114 _hidesShadow])
      {
        v115 = 0x4000;
      }

      else
      {
        v115 = 0;
      }

      *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xBFFF | v115;

      [v46 setPinningBarShadowIsHidden:1];
      goto LABEL_113;
    }

    if (!v4)
    {
      [(UISearchDisplayController *)self _enableParentScrollViews];
    }

    v33 = objc_loadWeakRetained(&self->_viewController);
    v34 = [v33 navigationController];

    v35 = 0;
    v36 = self->_searchDisplayControllerFlags;
    v192 = v36;
    v37 = 0;
    v38 = 0;
    if (v7 && !v4)
    {
      v39 = [(UIView *)self->_tableView isHidden];
      v37 = !v39;
      v35 = !v39;
      if (v39)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0x2000;
      }

      v36 = self->_searchDisplayControllerFlags;
    }

    v191 = v37;
    v194 = v35;
    *&self->_searchDisplayControllerFlags = v38 | v36 & 0xDFFF;
    v193 = [(UISearchBar *)self->_searchBar _scopeBarIsVisible];
    v40 = self->_searchBar;
    if (v4)
    {
      v41 = [v34 navigationBar];
      v42 = [v41 _appearanceStorage];
      v43 = [v42 _barButtonAppearanceStorage];
      [(UISearchBar *)v40 _setupCancelButtonWithAppearance:v43];

      v26 = off_1E70EA000;
      [(UISearchBar *)self->_searchBar set_forceCenteredPlaceholderLayout:1];
      [(UIView *)self->_searchBar layoutBelowIfNeeded];
      [(UISearchBar *)self->_searchBar set_forceCenteredPlaceholderLayout:0];
      [(UISearchBar *)self->_searchBar _allowCursorToAppear:0];
    }

    else
    {
      [(UISearchBar *)self->_searchBar setText:&stru_1EFB14550];
      v58 = [(UISearchBar *)self->_searchBar searchField];
      [v58 resignFirstResponder];
    }

    v59 = UIApp;
    v60 = [(UIView *)self->_searchBar window];
    if (([v59 _safeInterfaceOrientationForWindowIfExists:v60] - 3) > 1)
    {
    }

    else
    {
      v61 = [(UISearchBar *)self->_searchBar _allowsInlineScopeBar];

      if (v61)
      {
LABEL_53:
        [(UISearchDisplayController *)self _hideVisibleRefreshControl];
        if (v4)
        {
          v68 = +[UIDevice currentDevice];
          v69 = [v68 userInterfaceIdiom];

          if ((v69 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v70 = 0;
          }

          else
          {
            v70 = [(UIView *)self->_searchBar _containingScrollView];
          }

          [v70 _setAutomaticContentOffsetAdjustmentEnabled:0];
          objc_storeWeak(&self->_navigationControllerBookkeeper, v34);
          v72 = objc_loadWeakRetained(&self->_viewController);
          v73 = [v72 view];
        }

        else
        {
          [0 _setAutomaticContentOffsetAdjustmentEnabled:0];
          v71 = objc_loadWeakRetained(&self->_navigationControllerBookkeeper);

          if (v34 != v71)
          {
            v188 = [MEMORY[0x1E696AAA8] currentHandler];
            [v188 handleFailureInMethod:a2 object:self file:@"UISearchDisplayController.m" lineNumber:1269 description:@"search contents navigation controller must not change between -setActive:YES and -setActive:NO"];
          }

          v72 = objc_loadWeakRetained(&self->_viewController);
          v73 = [v72 _existingView];
          v70 = 0;
        }

        v93 = v73;

        v200 = v93;
        if (v93)
        {
          v197 = [(UISearchDisplayController *)self _containingTableView];
        }

        else
        {
          v197 = 0;
        }

        v190 = v70;
        v196 = v7;
        if (v4)
        {
          v94 = (v70 | v197) != 0;
          *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xEFFF | (v94 << 12);
          v95 = [(UISearchDisplayController *)self _containerView];
          [v95 configureInteractionForContainment:v94];

          if ([v197 _pinsTableHeaderView])
          {
            [v197 _setIgnorePinnedTableHeaderUpdates:1];
          }

          if (!v34)
          {
            v195 = 0;
            v96 = 0;
            v189 = 1;
            goto LABEL_167;
          }
        }

        else if (!v34)
        {
          v195 = 0;
          goto LABEL_105;
        }

        v97 = [v34 navigationBar];
        v96 = [v97 isTranslucent];

        v98 = [v34 navigationBar];
        v99 = [v98 _barPosition];

        if (v4)
        {
          v100 = objc_loadWeakRetained(&self->_viewController);
          v195 = [v34 _shouldNavigationBarInsetViewController:v100];

          if ((*&self->_searchDisplayControllerFlags & 8) == 0)
          {
            if (!-[UISearchDisplayController isNavigationBarHidingEnabled](self, "isNavigationBarHidingEnabled") || [v34 isNavigationBarHidden])
            {
              *&self->_searchDisplayControllerFlags &= ~8u;
LABEL_152:
              self->_unactivatedBarPosition = [(UISearchBar *)self->_searchBar barPosition];
              v149 = &__block_descriptor_57_e8_32s40s_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8ls32l8s40l8;
              if ((*&self->_searchDisplayControllerFlags & 8) != 0)
              {
                if (v99 == 3 && (-[UIView window](self->_searchBar, "window"), v150 = objc_claimAutoreleasedReturnValue(), __UIStatusBarManagerForWindow(v150), v151 = objc_claimAutoreleasedReturnValue(), v152 = [v151 isStatusBarHidden], v151, v149 = &__block_descriptor_57_e8_32s40s_e56_v16__0___UIViewControllerTransitionCoordinatorContext__8ls32l8s40l8, v150, !v152) || -[UISearchDisplayController _containedInPopover](self, "_containedInPopover") && !-[UISearchDisplayController _isSearchBarInBar](self, "_isSearchBarInBar"))
                {
                  [(UISearchDisplayController *)self _additionalNonCollapsingHeightAboveSearchBar];
                  if (v153 == 0.0 && ([(UISearchBar *)self->_searchBar barPosition]== 2 || ![(UISearchBar *)self->_searchBar barPosition]))
                  {
                    [(UISearchBar *)self->_searchBar _setBarPosition:3];
                  }
                }
              }

              if ([(UISearchBar *)self->_searchBar barPosition]== 3)
              {
                v154 = [v34 navigationBar];
                if ([v154 _hidesShadow])
                {
                  v155 = 0x4000;
                }

                else
                {
                  v155 = 0;
                }

                *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xBFFF | v155;
              }

              v156 = [v34 navigationBar];
              [v156 _setHidesShadow:1];

              [v9 addObserver:self selector:sel_navigationControllerWillShowViewController_ name:0x1EFB3A190 object:v34];
              [v9 addObserver:self selector:sel_navigationControllerDidShowViewController_ name:v149[256] object:v34];
              [v9 addObserver:self selector:sel_navigationControllerDidCancelShowingViewController_ name:0x1EFB3A1D0 object:v34];
              v189 = 0;
LABEL_167:
              [v200 bounds];
              [(UIView *)self->_containerView setFrame:?];
              v157 = objc_loadWeakRetained(&self->_viewController);
              [v157 _recordContentScrollView];

              v158 = 0.0;
              if ([(UISearchDisplayController *)self _shouldAccountForStatusBarHeight])
              {
                [(UISearchDisplayController *)self _statusBarHeight];
                v158 = v159 + 0.0;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v161 = self->_searchDisplayControllerFlags;
              if (isKindOfClass)
              {
                if ((*&v195 & ((v161 & 8) >> 3)) == 1)
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_13;
                  aBlock[3] = &unk_1E70F32F0;
                  aBlock[4] = self;
                  *&aBlock[5] = v158;
                  v112 = _Block_copy(aBlock);
                  v158 = 0.0;
                  v111 = 1;
                  goto LABEL_176;
                }
              }

              else if ((v161 & 8) != 0)
              {
                if ((v195 & 1) == 0)
                {
                  v186 = [v34 navigationBar];
                  [v186 bounds];
                  v187 = CGRectGetHeight(v250);

                  v158 = v158 + v187;
                  v221[0] = MEMORY[0x1E69E9820];
                  v221[1] = 3221225472;
                  v221[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_12;
                  v221[3] = &unk_1E70F6848;
                  v221[4] = self;
                  *&v221[5] = v158;
                  *&v221[6] = v187;
                  v112 = _Block_copy(v221);
                  v111 = 0;
LABEL_176:
                  v164 = v26[431];
                  v216[0] = MEMORY[0x1E69E9820];
                  v216[1] = 3221225472;
                  v216[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_14;
                  v216[3] = &unk_1E70F36D0;
                  v217 = v200;
                  v218 = self;
                  v219 = v158;
                  [(__objc2_class *)v164 performWithoutAnimation:v216];
                  v165 = [(UIView *)self->_containerView _containingScrollView];
                  [v165 contentOffset];
                  self->_containingScrollViewContentOffset.x = v166;
                  self->_containingScrollViewContentOffset.y = v167;

                  if ((*&self->_searchDisplayControllerFlags & 8) == 0 && ((v189 | v96 | [v34 isNavigationBarHidden]) & 1) == 0)
                  {
                    [(UISearchDisplayControllerContainerView *)self->_containerView collapseTopView];
                  }

                  if ((*&self->_searchDisplayControllerFlags & 0x1000) == 0)
                  {
                    v168 = [(UIView *)self->_searchBar _viewControllerForAncestor];
                    v169 = objc_loadWeakRetained(&self->_viewController);

                    if (v168 != v169)
                    {
                      [(UISearchDisplayControllerContainerView *)self->_containerView collapseTopView];
                    }
                  }

LABEL_183:
                  if (v191)
                  {
                    v170 = [(UIView *)self->_tableView backgroundColor];
                    v171 = &self->_dimmingView;
                    if (v170)
                    {
                      [(UIView *)self->_tableView backgroundColor];
                    }

                    else
                    {
                      +[UIColor whiteColor];
                    }
                    v175 = ;
                    [(UIView *)*v171 setBackgroundColor:v175];

                    [(UIView *)*v171 setAlpha:0.0];
                    v174 = 0;
                  }

                  else
                  {
                    v172 = [(UISearchDisplayController *)self _dimmingViewColor];
                    v171 = &self->_dimmingView;
                    [(UIView *)self->_dimmingView setBackgroundColor:v172];

                    v173 = 0.0;
                    if (!v4)
                    {
                      [(UISearchDisplayController *)self _dimmingViewAlpha];
                    }

                    [(UIView *)self->_dimmingView setAlpha:v173];
                    v174 = [(UISearchDisplayController *)self dimTableViewOnEmptySearchString]^ 1;
                  }

                  [(UIView *)*v171 setHidden:v174];
                  if (v4)
                  {
                    v176 = off_1E70EA000;
                    if ([(UISearchDisplayController *)self _showsResultsForEmptyField])
                    {
                      [(UIView *)self->_dimmingView setHidden:1];
                      [(UISearchDisplayController *)self _setTableViewVisible:1 inView:0];
                      if (v196)
                      {
                        [(UIView *)self->_tableView setAlpha:0.0];
                        v215[0] = MEMORY[0x1E69E9820];
                        v215[1] = 3221225472;
                        v215[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_15;
                        v215[3] = &unk_1E70F3590;
                        v215[4] = self;
                        [UIView animateWithDuration:v215 animations:0.3833];
                      }

                      [(UISearchBar *)self->_searchBar _setMaskActive:0];
                    }

                    else
                    {
                      [(UISearchBar *)self->_searchBar _setMaskActive:0];
                      if ((v111 & 1) == 0)
                      {
                        goto LABEL_201;
                      }
                    }
                  }

                  else
                  {
                    v176 = off_1E70EA000;
                    if (!v111)
                    {
                      goto LABEL_201;
                    }
                  }

                  if ((*&self->_searchDisplayControllerFlags & 0x1000) != 0)
                  {
                    [(UISearchDisplayController *)self _hoistSearchBar];
                  }

LABEL_201:
                  v177 = v176[431];
                  v203[0] = MEMORY[0x1E69E9820];
                  v203[1] = 3221225472;
                  v203[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_17;
                  v203[3] = &unk_1E7103628;
                  v203[4] = self;
                  v209 = v4;
                  v178 = v34;
                  v204 = v178;
                  v179 = v196;
                  v210 = v196;
                  v180 = v200;
                  v205 = v180;
                  v181 = v112;
                  v208 = v181;
                  v211 = (v192 & 8) != 0;
                  v212 = v195;
                  v213 = v193;
                  v182 = v190;
                  v206 = v182;
                  v183 = v197;
                  v207 = v183;
                  v214 = v194;
                  v201[0] = MEMORY[0x1E69E9820];
                  v201[1] = 3221225472;
                  v201[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_25;
                  v201[3] = &unk_1E70FA0F0;
                  v202 = v196;
                  v201[4] = self;
                  [(__objc2_class *)v177 conditionallyAnimate:v196 withAnimation:&__block_literal_global_122 layout:v203 completion:v201];
                  if (v4)
                  {
                    [(UISearchDisplayController *)self _disableParentScrollViews];
                    v184 = [(UIView *)self->_searchBar _screen];
                    [v9 addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v184];

                    v185 = [(UIView *)self->_searchBar _screen];
                    v179 = v196;
                    [v9 addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v185];
                  }

                  else
                  {
                    [v9 removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
                    [v9 removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];
                    v185 = [(UISearchBar *)self->_searchBar searchField];
                    [v185 _clearBecomeFirstResponderWhenCapable];
                  }

                  *&self->_searchDisplayControllerFlags &= ~2u;
                  if (v179)
                  {
                    goto LABEL_205;
                  }

                  goto LABEL_94;
                }
              }

              else
              {
                v162 = self->_searchBar;
                [(UIView *)v162 bounds];
                [(UIView *)v162 convertRect:v200 toView:?];
                v158 = v163;
              }

              v111 = 0;
              v112 = 0;
              goto LABEL_176;
            }

            *&self->_searchDisplayControllerFlags |= 8u;
          }

          v144 = +[UIDevice currentDevice];
          v145 = [v144 userInterfaceIdiom];

          if ((v145 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [v34 setPretendNavBarHidden:1];
          }

          v146 = objc_loadWeakRetained(&self->_viewController);
          v147 = [v34 topViewController];

          if (v146 == v147)
          {
            [v34 _setNavigationBarHidesCompletelyOffscreen:1];
            v148 = 0.3833;
            if (!v7)
            {
              v148 = 0.0;
            }

            [v34 _setNavigationBarHidden:1 edgeIfNotNavigating:1 duration:v148];
          }

          goto LABEL_152;
        }

        if ((*&self->_searchDisplayControllerFlags & 8) != 0)
        {
          v104 = +[UIDevice currentDevice];
          v105 = [v104 userInterfaceIdiom];

          if ((v105 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [v34 setPretendNavBarHidden:0];
            [v34 setAvoidMovingNavBarOffscreenBeforeUnhiding:1];
          }

          *&self->_searchDisplayControllerFlags &= ~8u;
          v106 = 0.3833;
          if (!v7)
          {
            v106 = 0.0;
          }

          [v34 _setNavigationBarHidden:0 edgeIfNotNavigating:1 duration:v106];
          [v34 _setNavigationBarHidesCompletelyOffscreen:0];
          v107 = +[UIDevice currentDevice];
          v108 = [v107 userInterfaceIdiom];

          if ((v108 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [v34 setAvoidMovingNavBarOffscreenBeforeUnhiding:0];
          }

          v109 = objc_loadWeakRetained(&self->_viewController);
          v195 = [v34 _shouldNavigationBarInsetViewController:v109];
        }

        else
        {
          v195 = 0;
        }

        [(UISearchBar *)self->_searchBar _setBarPosition:self->_unactivatedBarPosition];
        v110 = [v34 navigationBar];
        [v110 _setHidesShadow:(*&self->_searchDisplayControllerFlags >> 14) & 1];

        [v9 removeObserver:self name:0x1EFB3A190 object:v34];
        [v9 removeObserver:self name:0x1EFB3A1B0 object:v34];
        [v9 removeObserver:self name:0x1EFB3A1D0 object:v34];
LABEL_105:
        v111 = 0;
        v112 = 0;
        goto LABEL_183;
      }
    }

    [(UISearchBar *)self->_searchBar _setShowsScopeBar:v4 animateOpacity:1];
    goto LABEL_53;
  }

  if (visible)
  {
    if ([(UISearchDisplayController *)self _isSearchBarInBar:visible])
    {
      if ([(UISearchBar *)self->_searchBar isSearchResultsButtonSelected])
      {
        v10 = [(UISearchBar *)self->_searchBar searchField];
        v11 = [v10 isEditing];

        if (v11)
        {
          popoverController = self->_popoverController;
          v198 = [(UISearchBar *)self->_searchBar searchField];
          [v198 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [(UISearchBar *)self->_searchBar searchField];
          [(UIPopoverController *)popoverController presentPopoverFromRect:v21 inView:3 permittedArrowDirections:1 animated:v14, v16, v18, v20];
        }
      }
    }
  }
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1 && [*(*(a1 + 32) + 128) isHidden])
  {
    [*(*(a1 + 32) + 128) setHidden:0];
  }

  v2 = *(*(a1 + 32) + 128);
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = result;
    [*(*(result + 32) + 128) setHidden:1];
    v3 = *(*(v2 + 32) + 128);

    return [v3 removeFromSuperview];
  }

  return result;
}

void __48__UISearchDisplayController_setActive_animated___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1 && [*(*(a1 + 32) + 128) isHidden])
  {
    [*(*(a1 + 32) + 128) setHidden:0];
  }

  v2 = 0.0;
  if (*(a1 + 56))
  {
    v2 = 1.0;
  }

  [*(*(a1 + 32) + 128) setAlpha:v2];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if ((*(v3 + 256) & 8) != 0)
    {
      v4 = *(v3 + 128);
      [*(a1 + 40) bounds];
      [v4 updateTopViewHeight:1 animateUpdate:CGRectGetHeight(v10)];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = v5;
    if (v6 == 1)
    {
      if ([v5 isIndexHidden])
      {
        v7 = 0;
      }

      else
      {
        v7 = 4;
      }

      *(*(a1 + 32) + 256) = *(*(a1 + 32) + 256) & 0xFFFB | v7;
    }

    else if ((*(*(a1 + 32) + 256) & 4) == 0)
    {
LABEL_18:

      return;
    }

    [v8 setIndexHiddenForSearch:v6];
    v5 = v8;
    goto LABEL_18;
  }
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 128) setHidden:1];
    [*(*(a1 + 32) + 128) removeFromSuperview];
    [*(a1 + 40) setVisibleWhenPinningBarIsHidden:*(a1 + 48)];
  }

  v2 = *(a1 + 32);

  return [v2 _sendDelegateDidBeginDidEndSearch];
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setHidden:1];
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_8;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:v2];
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_9(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _dimmingViewAlpha];
  }

  v3 = *(*(a1 + 32) + 24);

  return [v3 setAlpha:v2];
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_10(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 256) & 0x200) == 0)
  {
    return [*(v1 + 32) _setShowsCancelButton:*(result + 40)];
  }

  return result;
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_11(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(*(result + 32) + 32) _allowCursorToAppear:1];
  }

  return result;
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 40) + 128)];
  [*(*(a1 + 40) + 128) updateTopAttributeConstant:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 128);

  return [v2 layoutIfNeeded];
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_17(uint64_t a1)
{
  [*(*(a1 + 32) + 32) _setShadowVisibleIfNecessary:*(a1 + 80)];
  if (*(a1 + 80) == 1 && [*(*(a1 + 32) + 32) isTranslucent])
  {
    [*(*(a1 + 32) + 32) _setScopeBarHidden:0];
  }

  v2 = UIApp;
  v3 = [*(*(a1 + 32) + 32) window];
  if (([v2 _safeInterfaceOrientationForWindowIfExists:v3] - 3) > 1)
  {
  }

  else
  {
    v4 = [*(*(a1 + 32) + 32) _allowsInlineScopeBar];

    if (v4)
    {
      [*(*(a1 + 32) + 32) _setShowsScopeBar:*(a1 + 80) animateOpacity:1];
    }
  }

  if ([*(*(a1 + 32) + 32) searchBarStyle] == 2)
  {
    if (*(a1 + 80) == 1)
    {
      v5 = [*(a1 + 40) navigationBar];
      v6 = [v5 _backgroundBackdropStyle];

      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
    }

    [*(*(a1 + 32) + 32) _updateBackgroundToBackdropStyle:v6];
  }

LABEL_14:
  [*(*(a1 + 32) + 32) sizeToFit];
  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  [*(v7 + 32) bounds];
  Height = CGRectGetHeight(v37);
  [*(a1 + 32) _additionalNonCollapsingHeightAboveSearchBar];
  [v8 updateTopViewHeight:1 animateUpdate:Height + v10];
  if (*(a1 + 80) == 1)
  {
    v11 = *(a1 + 81);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_19;
    v35[3] = &unk_1E70F35B8;
    v35[4] = *(a1 + 32);
    v36 = *(a1 + 48);
    [UIView conditionallyAnimate:v11 withAnimation:&__block_literal_global_124 layout:v35 completion:0];
    v12 = *(a1 + 72);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (*(a1 + 82) && *(a1 + 83) == 1)
      {
        [*(*(a1 + 32) + 128) updateTopAttributeConstant:0.0];
      }
    }

    else if (*(a1 + 82) && (*(a1 + 83) & 1) == 0)
    {
      v24 = [*(a1 + 40) navigationBar];
      [v24 bounds];
      v25 = CGRectGetHeight(v39);

      [*(*(a1 + 32) + 128) adjustTopAttributeConstantByDelta:v25];
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v13 = [*(*(a1 + 32) + 32) searchField];
    [v13 _setSuffix:0 withColor:0];

    if (*(a1 + 84) == 1 && ([*(*(a1 + 32) + 16) isHidden] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 32), "_allowsInlineScopeBar") & 1) == 0)
    {
      [*(a1 + 32) _adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:0];
    }
  }

  [*(a1 + 56) _setAutomaticContentOffsetAdjustmentEnabled:1];
  v14 = *(a1 + 64);
  if (v14)
  {
    if (*(a1 + 80) == 1)
    {
      if ([v14 isIndexHidden])
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      *(*(a1 + 32) + 256) = *(*(a1 + 32) + 256) & 0xFFFB | v15;
      [*(a1 + 64) setIndexHiddenForSearch:1];
      v16 = *(*(a1 + 32) + 32);
      v17 = 0;
    }

    else
    {
      if ((*(*(a1 + 32) + 256) & 4) == 0)
      {
        goto LABEL_36;
      }

      [v14 setIndexHiddenForSearch:0];
      v16 = *(*(a1 + 32) + 32);
      v17 = *(a1 + 64);
    }

    [v16 _updateInsetsForTableView:v17];
LABEL_36:
    [*(*(a1 + 32) + 32) bounds];
    v18 = CGRectGetHeight(v38);
    v19 = 0.0;
    if (*(a1 + 80) == 1 && *(a1 + 83) == 1)
    {
      [*(a1 + 32) _statusBarHeight];
      v19 = v20;
    }

    v21 = *(*(a1 + 32) + 32);
    v22 = [*(a1 + 64) tableHeaderView];
    v23 = v22;
    if (v21 == v22)
    {
      v26 = v18 + v19;
      [*(a1 + 64) heightForTableHeaderViewHiding];
      v28 = v27;

      if (v26 != v28)
      {
        [*(a1 + 64) _tableHeaderHeightDidChangeToHeight:v26];
      }
    }

    else
    {
    }

    if (*(a1 + 81) == 1)
    {
      [*(a1 + 64) layoutBelowIfNeeded];
    }

    [*(a1 + 32) _updatePinnedSearchBar];
  }

  v29 = *(a1 + 32);
  if ((*(v29 + 256) & 0x200) == 0)
  {
    [*(v29 + 32) _setShowsCancelButton:*(a1 + 80)];
    v29 = *(a1 + 32);
  }

  [*(v29 + 32) layoutBelowIfNeeded];
  if (*(a1 + 85) == 1)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_20;
    v33[3] = &unk_1E70F3590;
    v34 = *(a1 + 32);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_21;
    v32[3] = &unk_1E70F9B38;
    v32[4] = v34;
    v32[5] = 0x3FC887FCB923A29CLL;
    return [UIView animateWithDuration:32 delay:v33 options:v32 animations:0.19165 completion:0.0];
  }

  else
  {
    v31 = 0.0;
    if (*(a1 + 80) == 1)
    {
      [*(a1 + 32) _dimmingViewAlpha];
    }

    return [*(*(a1 + 32) + 24) setAlpha:v31];
  }
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_19(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  [*(a1 + 40) bounds];

  return [v1 setFrame:?];
}

void __48__UISearchDisplayController_setActive_animated___block_invoke_21(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_22;
  v9[3] = &unk_1E70F3590;
  v10 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_23;
  v8[3] = &unk_1E70F5AC0;
  v8[4] = v10;
  [UIView animateWithDuration:0 delay:v9 options:v8 animations:v2 completion:0.0];
  v3 = [*(a1 + 32) _topShadowView];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__UISearchDisplayController_setActive_animated___block_invoke_24;
    v6[3] = &unk_1E70F3590;
    v7 = v3;
    [UIView animateWithDuration:v6 animations:v5];
  }
}

uint64_t __48__UISearchDisplayController_setActive_animated___block_invoke_25(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) showHideAnimationDidFinish];
  }

  return result;
}

- (void)_updatePinnedSearchBar
{
  v3 = [(UISearchDisplayController *)self _containingTableView];
  if ([v3 _pinsTableHeaderView] && (~*&self->_searchDisplayControllerFlags & 3) == 0 && !-[UISearchDisplayController _showsResultsForEmptyField](self, "_showsResultsForEmptyField"))
  {
    [v3 _rectForTableHeaderView];
    [(UISearchBar *)self->_searchBar setFrame:?];
  }
}

- (double)_updateNavigationPalette
{
  v3 = [(UISearchBar *)self->_searchBar prompt];
  if (v3)
  {

LABEL_4:
    [(UIView *)self->_searchBar bounds];

    return CGRectGetHeight(*&v4);
  }

  if ([(UISearchBar *)self->_searchBar _scopeBarIsVisible])
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v10 = [WeakRetained navigationController];
  v11 = [v10 existingPaletteForEdge:2];

  if (v11)
  {
    v12 = [WeakRetained navigationController];
    +[UINavigationBar defaultSizeForOrientation:](UINavigationBar, "defaultSizeForOrientation:", [v12 interfaceOrientation]);
    v14 = v13;
    v16 = v15;

    [v11 frame];
    if (v18 != v14 || v17 != v16)
    {
      [v11 frame];
      [v11 setFrame:?];
      searchBar = self->_searchBar;
      [v11 bounds];
      [(UISearchBar *)searchBar setFrame:?];
      [(UISearchBar *)self->_searchBar setNeedsLayout];
      [(UIView *)self->_searchBar layoutIfNeeded];
    }

    [v11 frame];
    Height = CGRectGetHeight(v22);
  }

  else
  {
    Height = -1.0;
  }

  return Height;
}

- (void)_keyboardWillShow:(id)a3
{
  tableView = self->_tableView;
  v5 = [a3 userInfo];
  [(UITableView *)tableView _adjustForAutomaticKeyboardInfo:v5 animated:1 lastAdjustment:&self->_lastKeyboardAdjustment];
}

- (void)_keyboardWillHide:(id)a3
{
  tableView = self->_tableView;
  v5 = [a3 userInfo];
  [(UITableView *)tableView _adjustForAutomaticKeyboardInfo:v5 animated:1 lastAdjustment:&self->_lastKeyboardAdjustment];
}

- (void)windowWillAnimateRotation:(id)a3
{
  v26 = a3;
  popoverController = self->_popoverController;
  if (popoverController && [(UIPopoverController *)popoverController isPopoverVisible])
  {
    *&self->_searchDisplayControllerFlags |= 0x100u;
    [(UISearchDisplayController *)self setActive:0 animated:0];
  }

  if ([(UISearchDisplayController *)self _searchBarInNavigationControllerComponent])
  {
    if ([(UISearchBar *)self->_searchBar _containedInNavigationPalette])
    {
      [(UISearchDisplayController *)self _updateNavigationPalette];
      Height = v5;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      v18 = [WeakRetained navigationController];
      v19 = [v18 navigationBar];
      [v19 frame];
      Height = CGRectGetHeight(v29);
    }

    if (Height < 0.0)
    {
      goto LABEL_24;
    }

    if ([(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 3)
    {
      goto LABEL_24;
    }

    [(UISearchDisplayControllerContainerView *)self->_containerView updateTopViewHeight:Height];
    [(UISearchDisplayController *)self _adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:0];
    v20 = [(UISearchBar *)self->_searchBar searchField];
    v21 = [v20 _clearButton];
    [v21 setImage:0 forState:0];

    [(UISearchBar *)self->_searchBar setNeedsLayout];
    [(UIView *)self->_searchBar layoutIfNeeded];
    v22 = [(UISearchBar *)self->_searchBar searchField];
    [v22 _updateButtons];

    if ([(UISearchDisplayController *)self navigationBarSearchFieldSizing])
    {
      goto LABEL_24;
    }

    v8 = [(UISearchDisplayController *)self navigationItem];
    [v8 set_titleViewWidthForAnimations:14433663.0];
    [v8 updateNavigationBarButtonsAnimated:1];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_viewController);
    v8 = [v7 _existingView];

    [(UIView *)self->_searchBar bounds];
    v10 = v9;
    [(UIView *)self->_searchBar sizeToFit];
    containerView = self->_containerView;
    [(UIView *)self->_searchBar bounds];
    [(UISearchDisplayControllerContainerView *)containerView updateTopViewHeight:CGRectGetHeight(v28)];
    if (v8)
    {
      v12 = [(UISearchDisplayController *)self _containingTableView];
      if (v12)
      {
        v13 = v12;
        searchBar = self->_searchBar;
        v15 = [v12 tableHeaderView];
        v16 = v15;
        if (searchBar == v15)
        {
          [(UIView *)self->_searchBar bounds];
          v24 = v23;

          if (v24 != v10)
          {
            [(UIView *)self->_searchBar bounds];
            [v13 _tableHeaderHeightDidChangeToHeight:v25];
          }
        }

        else
        {
        }

        [v13 layoutBelowIfNeeded];
        [(UISearchDisplayController *)self _updatePinnedSearchBar];
      }
    }

    [(UISearchBar *)self->_searchBar _setBackgroundLayoutNeedsUpdate];
    [(UIView *)self->_searchBar layoutBelowIfNeeded];
    if ((*&self->_searchDisplayControllerFlags & 1) != 0 && ![(UISearchDisplayController *)self _isSearchBarInBar])
    {
      [(UISearchDisplayController *)self _adjustTableViewContentInsetsAndOffsetsIgnoringCurrent:0];
    }

    [(UISearchDisplayController *)self _updateSearchBarMaskIfNecessary];
  }

LABEL_24:
  [(UIView *)self->_noResultsLabel setContentMode:4];
  [(UISearchDisplayController *)self _updateNoSearchResultsMessageVisiblity];
}

- (void)windowDidRotate:(id)a3
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if ((searchDisplayControllerFlags & 0x100) != 0)
  {
    [(UISearchDisplayController *)self setActive:1 animated:1];
    searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  }

  *&self->_searchDisplayControllerFlags = searchDisplayControllerFlags & 0xFEFF;
  noResultsLabel = self->_noResultsLabel;

  [(UIView *)noResultsLabel setContentMode:3];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  if ([(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& [(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 2 && ![(UISearchDisplayController *)self isActive])
  {
    v4 = [(UISearchDisplayController *)self navigationItem];
    v5 = [v4 titleView];
    [v5 frame];
    self->_searchFieldInNavigationBarFrame.origin.x = v6;
    self->_searchFieldInNavigationBarFrame.origin.y = v7;
    self->_searchFieldInNavigationBarFrame.size.width = v8;
    self->_searchFieldInNavigationBarFrame.size.height = v9;

    [v4 set_titleViewWidthForAnimations:14433663.0];
    [v4 updateNavigationBarButtonsAnimated:1];
  }

  [(UISearchDisplayController *)self setActive:1 animated:1];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(UISearchDisplayDelegate *)self->_delegate _shouldDeactivateOnCancelButtonClicked])
  {
    if ([(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& [(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 2)
    {
      v21 = [(UISearchDisplayController *)self navigationItem];
      v4 = [v21 titleView];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [(UISearchDisplayController *)self setActive:0 animated:1];
      v13 = [v21 titleView];
      [v13 frame];
      v25.origin.x = v14;
      v25.origin.y = v15;
      v25.size.width = v16;
      v25.size.height = v17;
      v23.origin.x = v6;
      v23.origin.y = v8;
      v23.size.width = v10;
      v23.size.height = v12;
      v18 = CGRectEqualToRect(v23, v25);

      if (v18)
      {
        [v21 set_titleViewWidthForAnimations:self->_searchFieldInNavigationBarFrame.size.width];
      }

      else
      {
        v19 = [v21 titleView];
        [v19 frame];
        [v21 set_titleViewWidthForAnimations:CGRectGetWidth(v24)];
      }

      v20 = *(MEMORY[0x1E695F058] + 16);
      self->_searchFieldInNavigationBarFrame.origin = *MEMORY[0x1E695F058];
      self->_searchFieldInNavigationBarFrame.size = v20;
      [v21 updateNavigationBarButtonsAnimated:1];
    }

    else
    {

      [(UISearchDisplayController *)self setActive:0 animated:1];
    }
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = [(UISearchBar *)self->_searchBar searchField];
  [v3 resignFirstResponder];
}

- (void)searchBarResultsListButtonClicked:(id)a3
{
  [(UISearchBar *)self->_searchBar setSearchResultsButtonSelected:(*&self->_searchDisplayControllerFlags & 1) == 0];
  v4 = (*&self->_searchDisplayControllerFlags & 1) == 0;

  [(UISearchDisplayController *)self setActive:v4 animated:1];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  if ((*&self->_searchDisplayControllerFlags & 2) == 0)
  {
    v10 = v5;
    v6 = [(UISearchDisplayController *)self searchResultsTableView];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self shouldReloadTableForSearchString:v10])
    {
      [v6 reloadData];
    }

    v7 = [v10 length] || -[UIPopoverController isPopoverVisible](self->_popoverController, "isPopoverVisible") || -[UISearchDisplayController _showsResultsForEmptyField](self, "_showsResultsForEmptyField");
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v9 = [WeakRetained view];
    [(UISearchDisplayController *)self _setTableViewVisible:v7 inView:v9];

    v5 = v10;
  }
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v7 = a3;
  if ((*&self->_searchDisplayControllerFlags & 1) == 0)
  {
    [(UISearchBar *)self->_searchBar becomeFirstResponder];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self shouldReloadTableForSearchScope:a4])
  {
    v6 = [(UISearchDisplayController *)self searchResultsTableView];
    [v6 reloadData];
  }
}

- (void)_clearSavedSelectedCellsWeUsedWhenHedgingOurBets
{
  savedSelectedCellsWhenViewWillAppear = self->_savedSelectedCellsWhenViewWillAppear;
  if (savedSelectedCellsWhenViewWillAppear)
  {
    self->_savedSelectedCellsWhenViewWillAppear = 0;
  }
}

- (void)_saveSelectedRowsInCaseViewDoesNotReallyAppear
{
  [(UISearchDisplayController *)self _clearSavedSelectedCellsWeUsedWhenHedgingOurBets];
  v6 = [(UISearchDisplayController *)self searchResultsTableView];
  v3 = [v6 indexPathsForSelectedRows];
  v4 = [v3 copy];
  savedSelectedCellsWhenViewWillAppear = self->_savedSelectedCellsWhenViewWillAppear;
  self->_savedSelectedCellsWhenViewWillAppear = v4;
}

- (void)_restoreSelectedCellsInCaseViewDidNotReallyAppear
{
  if (self->_savedSelectedCellsWhenViewWillAppear)
  {
    v3 = [(UISearchDisplayController *)self searchResultsTableView];
    [v3 _selectRowsAtIndexPaths:self->_savedSelectedCellsWhenViewWillAppear animated:0 scrollPosition:0 notifyDelegate:0];

    [(UISearchDisplayController *)self _clearSavedSelectedCellsWeUsedWhenHedgingOurBets];
  }
}

- (void)navigationControllerWillShowViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v4 object];

  v7 = [v5 valueForKey:0x1EFB3A1F0];
  v8 = [v5 valueForKey:0x1EFB3A210];
  v9 = [v5 valueForKey:0x1EFB3A230];
  v10 = [v9 BOOLValue];

  v11 = [v6 transitionCoordinator];
  v12 = v11;
  v13 = 0.0;
  if (v10)
  {
    if (v11)
    {
      [v11 transitionDuration];
      v13 = v14;
    }

    else
    {
      v13 = 0.3833;
    }
  }

  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  if (searchDisplayControllerFlags)
  {
    if (v8 == WeakRetained)
    {
      if ((*&self->_searchDisplayControllerFlags & 8) != 0)
      {
        if ([(UISearchBar *)self->_searchBar _containedInNavigationPalette])
        {
          attachedNavigationPalette = self->_attachedNavigationPalette;
          if (attachedNavigationPalette)
          {
            [(_UINavigationControllerPalette *)attachedNavigationPalette setVisibleWhenPinningBarIsHidden:1];
            [v6 attachPalette:self->_attachedNavigationPalette isPinned:0];
            [(_UINavigationControllerPalette *)self->_attachedNavigationPalette setPinningBarShadowIsHidden:(*&self->_searchDisplayControllerFlags & 0x4000) == 0];
            if ([v12 initiallyInteractive])
            {
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __72__UISearchDisplayController_navigationControllerWillShowViewController___block_invoke;
              v30[3] = &unk_1E70F4990;
              v31 = v6;
              v32 = self;
              [v12 notifyWhenInteractionEndsUsingBlock:v30];
              v24 = v31;
            }

            else
            {
              v24 = self->_attachedNavigationPalette;
              self->_attachedNavigationPalette = 0;
            }
          }
        }

        [v6 _setNavigationBarHidden:1 edgeIfNotNavigating:1 duration:v13];
        v25 = +[UIDevice currentDevice];
        v26 = [v25 userInterfaceIdiom];

        if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(UISearchDisplayController *)self _searchBarInNavigationControllerComponent])
        {
          [v6 _sendNavigationBarToBack];
        }

        if ([(UISearchBar *)self->_searchBar barPosition]== 3)
        {
          v27 = [v6 navigationBar];
          [v27 _setHidesShadow:(*&self->_searchDisplayControllerFlags & 0x4000) == 0];
        }
      }

      if (v7)
      {
        if (v6 && [v6 isInteractiveTransition])
        {
          [(UISearchDisplayController *)self _saveSelectedRowsInCaseViewDoesNotReallyAppear];
        }

        [(UITableView *)self->_tableView _deselectAllNonMultiSelectRowsAnimated:v10 notifyDelegate:0];
      }
    }

    else
    {
      v17 = objc_loadWeakRetained(&self->_viewController);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __72__UISearchDisplayController_navigationControllerWillShowViewController___block_invoke_2;
      v28[3] = &unk_1E7102BB0;
      v29 = v7;
      v18 = [(UIViewController *)v17 _doesSelfOrAncestorPassPredicate:v28];

      if (v18 && (*&self->_searchDisplayControllerFlags & 8) != 0)
      {
        v19 = +[UIDevice currentDevice];
        v20 = [v19 userInterfaceIdiom];

        if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          [v6 setPretendNavBarHidden:0];
        }

        [v6 _setNavigationBarHidden:0 edgeIfNotNavigating:1 duration:v13];
        if ([(UISearchBar *)self->_searchBar _containedInNavigationPalette])
        {
          v21 = [v6 existingPaletteForEdge:2];
          [v21 setVisibleWhenPinningBarIsHidden:0];
          [v21 setPinningBarShadowIsHidden:(*&self->_searchDisplayControllerFlags >> 14) & 1];
          if ([v21 isAttached] && (objc_msgSend(v21, "isPinned") & 1) == 0)
          {
            objc_storeStrong(&self->_attachedNavigationPalette, v21);
          }
        }

        if ([(UISearchBar *)self->_searchBar barPosition]== 3)
        {
          v22 = [v6 navigationBar];
          [v22 _setHidesShadow:(*&self->_searchDisplayControllerFlags >> 14) & 1];
        }
      }
    }
  }

  else if (v8 == WeakRetained && [(UISearchBar *)self->_searchBar _containedInNavigationPalette])
  {
    [(UISearchDisplayController *)self _updateNavigationPalette];
  }
}

void __72__UISearchDisplayController_navigationControllerWillShowViewController___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    [*(a1 + 32) detachPalette:*(*(a1 + 40) + 200)];
    v3 = *(*(a1 + 40) + 200);

    [v3 setVisibleWhenPinningBarIsHidden:0];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 200);
    *(v4 + 200) = 0;
  }
}

- (void)navigationControllerDidShowViewController:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 valueForKey:0x1EFB3A210];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (v7 == WeakRetained)
  {
    [(UISearchDisplayController *)self _clearSavedSelectedCellsWeUsedWhenHedgingOurBets];
  }

  if (*&self->_searchDisplayControllerFlags)
  {
    v6 = objc_loadWeakRetained(&self->_viewController);

    if (v7 == v6)
    {
      [(UITableView *)self->_tableView flashScrollIndicators];
    }
  }
}

- (void)navigationControllerDidCancelShowingViewController:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 valueForKey:0x1EFB3A210];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v6 = v7;
  if (v7 == WeakRetained)
  {
    [(UISearchDisplayController *)self _restoreSelectedCellsInCaseViewDidNotReallyAppear];
    v6 = v7;
  }
}

- (void)_updateNoSearchResultsMessageVisiblity
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if ((searchDisplayControllerFlags & 0x20) != 0)
  {
    v4 = [(UITableView *)self->_tableView numberOfSections];
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = v4 & 0x7FFFFFFF;
      do
      {
        v6 += [(UITableView *)self->_tableView numberOfRowsInSection:v5++];
      }

      while (v7 != v5);
      if (v6)
      {
LABEL_12:
        noResultsLabel = self->_noResultsLabel;

        [(UIView *)noResultsLabel removeFromSuperview];
        return;
      }
    }
  }

  else if ((searchDisplayControllerFlags & 0x10) == 0)
  {
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_12;
  }

  [(UITableView *)self->_tableView _offsetForNoResultsMessage];
  v9 = v8;
  [(UIView *)self->_tableView bounds];
  v11 = round(v10);
  [(UITableView *)self->_tableView rowHeight];
  v13 = v12;
  [(UISearchDisplayController *)self _setupNoResultsLabelIfNecessary];
  [(UILabel *)self->_noResultsLabel setFrame:0.0, v9, v11, v13];
  tableView = self->_tableView;
  v15 = self->_noResultsLabel;

  [(UIView *)tableView addSubview:v15];
}

- (void)_managedTableViewDidScroll
{
  if ([(UIScrollView *)self->_tableView isDragging]&& ![(UIScrollView *)self->_tableView isDecelerating]&& UIKeyboardAutomaticIsOnScreen())
  {
    [(UISearchBar *)self->_searchBar resignFirstResponder];
    v3 = [(UIView *)self->_searchBar keyboardSceneDelegate];
    if (([v3 automaticAppearanceEnabled] & 1) == 0)
    {
      [v3 forceOrderOutAutomaticAnimated:1];
    }
  }
}

- (void)popoverController:(id)a3 animationCompleted:(int64_t)a4
{
  if (a4 == 1)
  {
    [(UISearchDisplayController *)self setActive:0 animated:0];
  }
}

- (BOOL)popoverControllerShouldDismissPopover:(id)a3
{
  if ([(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& [(UISearchDisplayController *)self navigationBarSearchFieldSizing]== 3)
  {
    [(UISearchDisplayController *)self _animateNavigationBarSearchBarAppearance:0];
  }

  return 1;
}

- (UITableView)searchResultsTableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v4 = [(UISearchDisplayDelegate *)self->_delegate _resultsTableViewClass];
    }

    v5 = [v4 alloc];
    v6 = [v5 initWithFrame:self->_searchResultsTableViewStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = self->_tableView;
    self->_tableView = v6;

    WeakRetained = objc_loadWeakRetained(&self->_tableViewDataSource);
    [(UITableView *)self->_tableView setDataSource:WeakRetained];

    v9 = objc_loadWeakRetained(&self->_tableViewDelegate);
    [(UITableView *)self->_tableView setDelegate:v9];

    [(UIView *)self->_tableView setAutoresizingMask:18];
    v10 = +[UIColor tableBackgroundColor];
    [(UITableView *)self->_tableView setBackgroundColor:v10];

    if (objc_opt_respondsToSelector())
    {
      [(UITableView *)self->_tableView setController:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(UISearchDisplayDelegate *)self->_delegate searchDisplayController:self didLoadSearchResultsTableView:self->_tableView];
    }

    v11 = _UISolariumEnabled();
    tableView = self->_tableView;
    if ((v11 & 1) == 0)
    {
      [(UITableView *)self->_tableView rowHeight];
      tableView = self->_tableView;
      if (v12 == -1.0)
      {
        v13 = +[UIListContentConfiguration cellConfiguration];
        v14 = [(UIView *)self->_tableView traitCollection];
        [v13 _minimumHeightForTraitCollection:v14];
        [(UITableView *)tableView setRowHeight:?];

        tableView = self->_tableView;
      }
    }
  }

  return tableView;
}

- (void)setSearchResultsDataSource:(id)searchResultsDataSource
{
  v5 = searchResultsDataSource;
  objc_storeWeak(&self->_tableViewDataSource, v5);
  tableView = self->_tableView;
  if (tableView)
  {
    [(UITableView *)tableView setDataSource:v5];
  }
}

- (void)setSearchResultsDelegate:(id)searchResultsDelegate
{
  v5 = searchResultsDelegate;
  objc_storeWeak(&self->_tableViewDelegate, v5);
  tableView = self->_tableView;
  if (tableView)
  {
    [(UITableView *)tableView setDelegate:v5];
  }
}

- (void)setNoResultsMessageVisible:(BOOL)a3
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if (((((searchDisplayControllerFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchDisplayControllerFlags = searchDisplayControllerFlags & 0xFFEF | v4;
    [(UISearchDisplayController *)self _updateNoSearchResultsMessageVisiblity];
  }
}

- (void)setAutomaticallyShowsNoResultsMessage:(BOOL)a3
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if (((((searchDisplayControllerFlags & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchDisplayControllerFlags = searchDisplayControllerFlags & 0xFFDF | v4;
    [(UISearchDisplayController *)self _updateNoSearchResultsMessageVisiblity];
  }
}

- (void)setNoResultsMessage:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_noResultsMessage, a3);
  noResultsLabel = self->_noResultsLabel;
  if (noResultsLabel)
  {
    v6 = [(UISearchDisplayController *)self noResultsMessage];
    [(UILabel *)noResultsLabel setText:v6];
  }
}

- (NSString)noResultsMessage
{
  noResultsMessage = self->_noResultsMessage;
  if (noResultsMessage)
  {
    v3 = noResultsMessage;
  }

  else
  {
    v3 = _UINSLocalizedStringWithDefaultValue(@"No Results", @"No Results");
  }

  return v3;
}

- (BOOL)isNavigationBarHidingEnabled
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if ((*&searchDisplayControllerFlags & 0x400) == 0)
  {
    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      LOBYTE(v6) = 1;
      return v6;
    }

    searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  }

  return (*&searchDisplayControllerFlags >> 6) & 1;
}

- (void)setNavigationBarHidingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xFFBF | v3;
}

- (void)_setAllowDisablingNavigationBarHiding:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xFBFF | v3;
}

- (void)setDimTableViewOnEmptySearchString:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xFF7F | v3;
}

- (void)_setCancelButtonManagementDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_searchDisplayControllerFlags = *&self->_searchDisplayControllerFlags & 0xFDFF | v3;
}

- (id)_noResultsMessageLabel
{
  [(UISearchDisplayController *)self _setupNoResultsLabelIfNecessary];
  noResultsLabel = self->_noResultsLabel;

  return noResultsLabel;
}

- (void)_watchContainingTableViewForScrolling:(BOOL)a3
{
  v3 = a3;
  v19 = [(UISearchDisplayController *)self _containingTableView];
  if ([(UISearchDisplayController *)self _searchBarInNavigationControllerComponent])
  {
    v5 = [(UIView *)self->_containerView _containingScrollView];
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
LABEL_3:
      v6 = v19;
      if (v19 || (v6 = v5) != 0)
      {
        [v6 _removeScrollViewScrollObserver:self->_didScrollDelegate];
      }

      didScrollDelegate = self->_didScrollDelegate;
      self->_didScrollDelegate = 0;

      goto LABEL_25;
    }
  }

  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if ((searchDisplayControllerFlags & 2) != 0 || (searchDisplayControllerFlags & 1) != 0 || !v19 || ([v19 _pinsTableHeaderView] & 1) != 0 || -[UISearchDisplayController displaysSearchBarInNavigationBar](self, "displaysSearchBarInNavigationBar"))
  {
    v9 = [(UISearchDisplayController *)self _searchBarInNavigationControllerComponent];
    v10 = self->_searchDisplayControllerFlags;
    if (!v9 || (v10 & 1) == 0 || !v5)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_25;
      }

      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      v12 = [WeakRetained navigationController];
      v13 = [v12 topViewController];
      v14 = objc_loadWeakRetained(&self->_viewController);

      if (v13 == v14)
      {
        goto LABEL_25;
      }
    }
  }

  if (!self->_didScrollDelegate)
  {
    v15 = objc_alloc_init(_UISearchControllerDidScrollDelegate);
    v16 = self->_didScrollDelegate;
    self->_didScrollDelegate = v15;

    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setController:self];
  }

  if (v19)
  {
    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setScrollView:v19];
    v17 = self->_didScrollDelegate;
    v18 = v19;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    [(_UISearchControllerDidScrollDelegate *)self->_didScrollDelegate setScrollView:v5];
    v17 = self->_didScrollDelegate;
    v18 = v5;
  }

  [v18 _addScrollViewScrollObserver:v17];
LABEL_25:
}

- (void)_updateTableHeaderBackgroundViewInTableView:(id)a3 amountScrolledUnder:(double)a4
{
  v12 = a3;
  v6 = [v12 _tableHeaderBackgroundView];
  if (v6)
  {
    if ([v12 _usingCustomBackgroundView])
    {
      [v12 setTableHeaderBackgroundColor:0];
      tableViewBackgroundHeaderView = self->_tableViewBackgroundHeaderView;
      self->_tableViewBackgroundHeaderView = 0;
    }

    else
    {
      v8 = [v6 isHidden];
      if (a4 >= 0.0)
      {
        if ((v8 & 1) == 0)
        {
          [v6 setHidden:1];
        }
      }

      else
      {
        if (v8)
        {
          [v6 setHidden:0];
        }

        [v12 bounds];
        [v6 setFrame:?];
        v9 = [v12 _refreshControl];
        v10 = v9;
        if (!v9 || ([v9 backgroundColor], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v11 = [UIColor colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
        }

        [v6 setBackgroundColor:v11];
      }
    }
  }
}

- (void)_updateSearchBarMaskIfNecessary
{
  if ((*&self->_searchDisplayControllerFlags & 3) != 0)
  {
    return;
  }

  v3 = [(UIView *)self->_searchBar window];

  if (!v3 || [(UISearchDisplayController *)self _searchBarInNavigationControllerComponent])
  {
    return;
  }

  v4 = [(UISearchDisplayController *)self _containingTableView];
  v24 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [v5 _refreshControl];
    goto LABEL_9;
  }

  v7 = [(UIView *)self->_searchBar _containingScrollView];
  if (v7)
  {
    v5 = v7;
    v6 = 0;
LABEL_9:
    [(UIView *)self->_searchBar bounds];
    Height = CGRectGetHeight(v26);
    [v5 contentInset];
    v10 = v9;
    [v5 contentOffset];
    v12 = v10 + v11;
    [(UIView *)self->_searchBar frame];
    v14 = v12 - v13;
    if (v6 && ([v6 refreshControlState] == 2 || objc_msgSend(v6, "refreshControlState") == 3))
    {
      [v6 _refreshControlHeight];
      v14 = v14 - v15;
    }

    v16 = [(UIView *)self->_searchBar _screen];
    [v16 scale];
    v18 = 1.0 / v17;

    v19 = v14 + v18;
    if (v19 <= Height)
    {
      [(UIView *)self->_searchBar bounds];
      if (v19 > 0.0)
      {
        Width = CGRectGetWidth(*&v20);
        v23 = Height - v19;
        v20 = 0.0;
        v21 = v19;
      }
    }

    else
    {
      v20 = *MEMORY[0x1E695F058];
      v21 = *(MEMORY[0x1E695F058] + 8);
      Width = *(MEMORY[0x1E695F058] + 16);
      v23 = *(MEMORY[0x1E695F058] + 24);
    }

    [(UISearchBar *)self->_searchBar _setMaskBounds:v20, v21, Width, v23];
    [(UISearchDisplayController *)self _updateTableHeaderBackgroundViewInTableView:v24 amountScrolledUnder:v19];
  }
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v11 = a3;
  if (*&self->_searchDisplayControllerFlags)
  {
    v4 = [(UIView *)self->_containerView window];

    if (v4)
    {
      v5 = [(UIView *)self->_containerView _containingScrollView];
      [v5 contentOffset];
      v7 = v6;
      v9 = v8;

      if (v7 != self->_containingScrollViewContentOffset.x || v9 != self->_containingScrollViewContentOffset.y)
      {
        [(UIView *)self->_containerView frame];
        [(UIView *)self->_containerView setFrame:?];
        self->_containingScrollViewContentOffset.x = v7;
        self->_containingScrollViewContentOffset.y = v9;
      }
    }
  }

  if (![(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& ![(UISearchBar *)self->_searchBar _containedInNavigationPalette])
  {
    [(UISearchDisplayController *)self _updateSearchBarMaskIfNecessary];
  }
}

- (BOOL)_searchBarShouldScrollToVisible:(id)a3
{
  if (*&self->_searchDisplayControllerFlags)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = [(UISearchDisplayController *)self _containingTableView];
    v4 = [v3 _pinsTableHeaderView] ^ 1;
  }

  return v4;
}

- (void)_setShowsResultsForEmptyField:(BOOL)a3
{
  searchDisplayControllerFlags = self->_searchDisplayControllerFlags;
  if (((((searchDisplayControllerFlags & 0x800) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2048;
    }

    else
    {
      v4 = 0;
    }

    *&self->_searchDisplayControllerFlags = searchDisplayControllerFlags & 0xF7FF | v4;
  }
}

- (UINavigationItem)navigationItem
{
  if ([(UISearchDisplayController *)self displaysSearchBarInNavigationBar]&& !self->_navigationItem)
  {
    v3 = [(UISearchBar *)self->_searchBar _searchDisplayControllerNavigationItem];
    navigationItem = self->_navigationItem;
    self->_navigationItem = v3;
  }

  v5 = self->_navigationItem;

  return v5;
}

- (void)_configureContainerView
{
  v3 = [(UISearchDisplayController *)self displaysSearchBarInNavigationBar];
  containerView = self->_containerView;
  if (v3)
  {
    [(UIView *)containerView setHidden:1];
    [(UIView *)self->_containerView setAlpha:0.0];
    if ([(UISearchDisplayController *)self dimTableViewOnEmptySearchString])
    {
      [(UISearchDisplayController *)self _dimmingViewAlpha];
      [(UIView *)self->_dimmingView setAlpha:?];
      [(UIView *)self->_dimmingView setHidden:0];
    }

    if ([(UISearchDisplayController *)self _showsResultsForEmptyField])
    {
      [(UIView *)self->_dimmingView setHidden:1];
      tableView = self->_tableView;

      [(UIView *)tableView setHidden:0];
    }
  }

  else
  {
    [(UIView *)containerView setHidden:0];
    v6 = self->_containerView;

    [(UIView *)v6 setAlpha:1.0];
  }
}

- (id)_containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v6 = [WeakRetained view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = objc_loadWeakRetained(&self->_viewController);
    v16 = [v15 view];
    v17 = v16;
    if (v16)
    {
      [v16 transform];
    }

    else
    {
      memset(&v38, 0, sizeof(v38));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v38);

    if (!IsIdentity)
    {
      v19 = objc_loadWeakRetained(&self->_viewController);
      v20 = [v19 view];
      [v20 convertRect:0 fromView:{v8, v10, v12, v14}];
      v8 = v21;
      v10 = v22;
      v12 = v23;
      v14 = v24;
    }

    v25 = [UISearchDisplayControllerContainerView alloc];
    [(UIView *)self->_searchBar bounds];
    v26 = [(UISearchDisplayControllerContainerView *)v25 initWithFrame:v8 topViewHeight:v10, v12, v14, CGRectGetHeight(v40)];
    v27 = self->_containerView;
    self->_containerView = v26;

    v28 = [_UISearchDisplayControllerDimmingView alloc];
    v29 = [(UISearchDisplayControllerContainerView *)self->_containerView bottomView];
    [v29 bounds];
    v30 = [(UIControl *)v28 initWithFrame:?];

    [(UIControl *)v30 addTarget:self action:sel_searchBarCancelButtonClicked_ forControlEvents:64];
    v31 = [(UISearchDisplayController *)self _dimmingViewColor];
    [(UIView *)v30 setBackgroundColor:v31];

    [(UISearchDisplayController *)self _dimmingViewAlpha];
    [(UIView *)v30 setAlpha:?];
    [(UIView *)v30 setOpaque:0];
    [(UIView *)v30 setDeliversTouchesForGesturesToSuperview:0];
    [(UIView *)v30 setAutoresizingMask:18];
    v32 = [(UISearchDisplayControllerContainerView *)self->_containerView bottomView];
    [v32 addSubview:v30];

    objc_storeStrong(&self->_dimmingView, v30);
    v33 = [(UISearchDisplayController *)self searchResultsTableView];
    [v33 setHidden:1];
    [v33 setAutoresizingMask:18];
    objc_storeStrong(&self->_tableView, v33);
    if ((*&self->_searchDisplayControllerFlags & 0x1000) != 0 || [(UISearchDisplayController *)self _searchBarInNavigationControllerComponent])
    {
      v34 = [(UISearchDisplayControllerContainerView *)self->_containerView behindView:*&v38.a];
      [v34 bounds];
      [v33 setFrame:?];

      v35 = [(UISearchDisplayControllerContainerView *)self->_containerView behindView];
      [v35 addSubview:v33];
    }

    else
    {
      v36 = [(UISearchDisplayControllerContainerView *)self->_containerView bottomView];
      [v36 bounds];
      [v33 setFrame:?];

      v35 = [(UISearchDisplayControllerContainerView *)self->_containerView bottomView];
      [v35 insertSubview:v33 belowSubview:v30];
    }

    [(UISearchDisplayController *)self _configureContainerView];
    [UIView setAnimationsEnabled:v4];

    containerView = self->_containerView;
  }

  return containerView;
}

- (void)_animateNavigationBarSearchBarAppearance:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UISearchBar *)self->_searchBar _animatedAppearanceBarButtonItem];
  v7 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [(UISearchBar *)self->_searchBar _searchDisplayControllerNavigationItem];
  v9 = [v8 rightBarButtonItems];

  v10 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v58;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (v12)
        {
          [v7 addObject:*(*(&v57 + 1) + 8 * i)];
          v12 = 1;
        }

        else
        {
          v12 = [*(*(&v57 + 1) + 8 * i) isEqual:v6];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v11);
  }

  v15 = [v6 view];
  v16 = [(UISearchBar *)self->_searchBar searchField];
  v17 = v16;
  if (self->_animatingAppearanceNavigationSearchBarWidth == 0.0)
  {
    [v16 bounds];
    self->_animatingAppearanceNavigationSearchBarWidth = CGRectGetWidth(v63);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !self->_animatingAppearanceNavigationButton)
  {
    objc_storeStrong(&self->_animatingAppearanceNavigationButton, a3);
  }

  [v17 frame];
  v19 = v18;
  [v15 frame];
  x = v64.origin.x;
  y = v64.origin.y;
  width = v64.size.width;
  height = v64.size.height;
  v24 = CGRectGetWidth(v64);
  animatingAppearanceNavigationSearchBarWidth = self->_animatingAppearanceNavigationSearchBarWidth;
  if (v24 == v19 + animatingAppearanceNavigationSearchBarWidth)
  {
    v34 = v24 + -36.0;
    v35 = x + v34;
    v36 = width - v34;
    [(UISearchDisplayController *)self setActive:0 animated:1];
    [(UIView *)self->_animatingAppearanceNavigationButton setHidden:0];
    [(UIView *)self->_animatingAppearanceNavigationButton setAlpha:0.0];
    v37 = [v17 _placeholderLabel];
    [v37 setIgnoresGeometryChanges:1];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_6;
    v44[3] = &unk_1E70FFF08;
    v29 = &v45;
    v45 = v15;
    v46[2] = *&v35;
    v46[3] = *&y;
    v46[4] = *&v36;
    v46[5] = *&height;
    v30 = v46;
    v46[0] = v17;
    v46[1] = self;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_7;
    v42[3] = &unk_1E70F3C60;
    v42[4] = self;
    v43 = v46[0];
    v38 = v15;
    [UIView animateWithDuration:v44 animations:v42 completion:0.35];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_8;
    v40[3] = &unk_1E70F3590;
    v41 = v7;
    v39 = v7;
    [UIView animateWithDuration:0 delay:v40 options:0 animations:0.1 completion:0.28];

    v33 = v43;
  }

  else
  {
    v26 = v19 + animatingAppearanceNavigationSearchBarWidth - v24;
    v27 = x - v26;
    v28 = width + v26;
    [v15 bounds];
    [v17 setFrame:v19];
    [v17 setHidden:0];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke;
    v55[3] = &unk_1E70F3590;
    v29 = &v56;
    v56 = v7;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_2;
    v47[3] = &unk_1E7103650;
    v30 = &v48;
    v48 = v15;
    v51 = v27;
    v52 = y;
    v53 = v28;
    v54 = height;
    v49 = v17;
    v50 = self;
    v31 = v7;
    v32 = v15;
    [UIView animateWithDuration:v55 animations:v47 completion:0.19165];
    v33 = v49;
  }
}

void __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) view];
        [v6 setAlpha:0.0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_3;
  v6[3] = &unk_1E70FFF08;
  v7 = *(a1 + 32);
  v2 = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_4;
  v5[3] = &unk_1E70F5AC0;
  v5[4] = v4;
  [UIView animateWithDuration:v6 animations:v5 completion:0.3833];
}

uint64_t __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(*(a1 + 48) + 208);

  return [v2 setAlpha:0.0];
}

uint64_t __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_5;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  [UIView performWithoutAnimation:v3];
  [*(*(a1 + 32) + 208) setHidden:1];
  return [*(a1 + 32) setActive:1 animated:1];
}

uint64_t __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 208) setNeedsLayout];
  v2 = *(*(a1 + 32) + 208);

  return [v2 layoutIfNeeded];
}

uint64_t __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setAlpha:0.0];
  v2 = *(*(a1 + 48) + 208);

  return [v2 setAlpha:1.0];
}

void __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  *(v2 + 208) = 0;

  [*(a1 + 40) setHidden:1];
  v4 = [*(a1 + 40) _placeholderLabel];
  [v4 setIgnoresGeometryChanges:0];
}

void __70__UISearchDisplayController__animateNavigationBarSearchBarAppearance___block_invoke_8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) view];
        [v6 setAlpha:1.0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)setNavigationBarSearchFieldSizing:(unint64_t)a3
{
  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (a3 == 3 && (v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UISearchDisplayController.m" lineNumber:2489 description:@"UINavigationBarSearchFieldSizingAnimatedAppearance can only be used on iPad"];
  }

  self->_navigationBarSearchFieldSizing = a3;
}

- (void)_setDimmingOverlayColor:(id)a3
{
  v5 = a3;
  dimmingOverlayColor = self->_dimmingOverlayColor;
  p_dimmingOverlayColor = &self->_dimmingOverlayColor;
  v8 = v5;
  if (![(UIColor *)dimmingOverlayColor isEqual:?])
  {
    objc_storeStrong(p_dimmingOverlayColor, a3);
  }
}

- (BOOL)_searchBarInNavigationControllerComponent
{
  if ([(UISearchDisplayController *)self displaysSearchBarInNavigationBar])
  {
    return 1;
  }

  searchBar = self->_searchBar;

  return [(UISearchBar *)searchBar _containedInNavigationPalette];
}

- (BOOL)_shouldAccountForStatusBarHeight
{
  v4 = [(UISearchDisplayController *)self _isSearchBarInBar];
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    if ([WeakRetained edgesForExtendedLayout])
    {
      if ([(UISearchDisplayController *)self _containedInPopover])
      {
LABEL_7:
        v6 = objc_loadWeakRetained(&self->_viewController);
        v7 = [v6 _popoverController];
        v8 = [v7 _managingSplitViewController];
        v5 = v8 != 0;

        if (v4)
        {
          return v5;
        }

        goto LABEL_10;
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

LABEL_10:

    return v5;
  }

  if ([(UISearchDisplayController *)self _containedInPopover])
  {
    goto LABEL_7;
  }

  return 1;
}

- (double)_statusBarHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained _statusBarHeightAdjustmentForCurrentOrientation];
  v4 = v3;

  return v4;
}

- (BOOL)_containedInPopover
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v4 = [WeakRetained _popoverController];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = self->_popoverController != 0;
  }

  return v5;
}

- (UIViewController)searchContentsController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (id)searchResultsDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewDataSource);

  return WeakRetained;
}

- (id)searchResultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tableViewDelegate);

  return WeakRetained;
}

@end