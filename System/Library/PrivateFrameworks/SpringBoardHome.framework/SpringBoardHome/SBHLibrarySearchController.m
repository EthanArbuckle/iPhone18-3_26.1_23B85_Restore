@interface SBHLibrarySearchController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)needsToManageTopInset;
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)searchBarShouldReturn:(id)a3;
- (CGRect)_calculateSearchBarFrame:(BOOL)a3;
- (CGRect)_calculateSearchBarFrame:(BOOL)a3 forExplicitVisualConfiguration:(id)a4;
- (CGSize)preferredContentSize;
- (SBHLibrarySearchController)initWithSearchResultsController:(id)a3 contentViewController:(id)a4 usingPlatterAppearance:(BOOL)a5;
- (SBHLibrarySearchControllerDelegate)delegate;
- (SBHSearchResultsUpdating)searchResultsUpdater;
- (SBIconListLayoutProvider)listLayoutProvider;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_windowSafeAreaInsets;
- (UIEdgeInsets)safeAreaInsetsForSearchBar:(id)a3;
- (double)_bottomLayoutInsetForSearchResultsView;
- (double)_rubberbandingOffsetForContentOffset:(CGPoint)a3;
- (id)contentScrollView;
- (id)keyCommands;
- (void)_didDismissSearch;
- (void)_didPresentSearch;
- (void)_dismissPresentation:(BOOL)a3;
- (void)_layoutSearchViews;
- (void)_layoutSearchViewsWithMode:(int64_t)a3 withCompletion:(id)a4;
- (void)_performPresentation:(BOOL)a3;
- (void)_searchBackgroundContentReplacedWithSnapshot:(BOOL)a3;
- (void)_setUpFeatherMaskLayerMatchMoveAnimations;
- (void)_setupSearchAnimationSettings;
- (void)_updateContentOverlayInsetsFromParentForChildren;
- (void)_updateEffectiveSearchVisualConfiguration;
- (void)_updateHeaderBlurVisibility;
- (void)_willDismissSearchAnimated:(BOOL)a3;
- (void)_willPresentSearchAnimated:(BOOL)a3;
- (void)ppt_setDisablePullToSearch:(BOOL)a3;
- (void)resetSearchController:(BOOL)a3 clearSearchResults:(BOOL)a4 resetSearchBarTransformAndAlpha:(BOOL)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarDidInvalidateIntrinsicContentSize:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setListLayoutProvider:(id)a3;
- (void)setSearchBarAppearance:(unint64_t)a3;
- (void)setSearchResultsUpdater:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBHLibrarySearchController

- (BOOL)needsToManageTopInset
{
  v2 = [(SBHLibrarySearchController *)self containingIconLocation];
  v3 = [v2 isEqualToString:@"SBIconLocationAppLibraryOverlay"];

  return v3;
}

- (SBHLibrarySearchController)initWithSearchResultsController:(id)a3 contentViewController:(id)a4 usingPlatterAppearance:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = SBHLibrarySearchController;
  v11 = [(SBHLibrarySearchController *)&v20 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_containingIconLocation, @"SBIconLocationAppLibrary");
    objc_storeStrong(&v12->_searchResultsController, a3);
    [(SBHIconLibraryTableViewController *)v12->_searchResultsController setLayoutDelegate:v12];
    [(SBHIconLibraryTableViewController *)v12->_searchResultsController setObserver:v12];
    objc_storeStrong(&v12->_contentViewController, a4);
    v13 = [v10 contentScrollView];
    scrollView = v12->_scrollView;
    v12->_scrollView = v13;

    [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)v12->_contentViewController setLibrarySearchControllerScrollViewDelegate:v12];
    v12->_usesPlatterAppearance = a5;
    v12->_searchBarAppearance = 0;
    v15 = +[SBHHomeScreenDomain rootSettings];
    v16 = [v15 libraryPullToSearchSettings];
    pullToSearchSettings = v12->_pullToSearchSettings;
    v12->_pullToSearchSettings = v16;

    [(PTSettings *)v12->_pullToSearchSettings addKeyObserver:v12];
    if (a5)
    {
      v18 = [MEMORY[0x1E69DC938] currentDevice];
      v12->_needsLowQualityBackgroundEffects = [v18 sbf_animatedBlurRadiusGraphicsQuality] < 41;
    }

    else
    {
      v12->_needsLowQualityBackgroundEffects = 0;
    }

    [(SBHLibrarySearchController *)v12 _setupSearchAnimationSettings];
  }

  return v12;
}

- (id)contentScrollView
{
  v3 = [(SBHLibrarySearchController *)self isActive];
  v4 = &OBJC_IVAR___SBHLibrarySearchController__contentViewController;
  if (v3)
  {
    v4 = &OBJC_IVAR___SBHLibrarySearchController__searchResultsController;
  }

  v5 = [*(&self->super.super.super.isa + *v4) contentScrollView];

  return v5;
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    [(SBHLibrarySearchController *)self _updateHeaderBlurVisibility];
  }
}

- (void)viewDidLoad
{
  v87 = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v84 viewDidLoad];
  v3 = [(SBHLibrarySearchController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  containerView = self->_containerView;
  self->_containerView = v12;

  [v3 addSubview:self->_containerView];
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v7, v9, v11}];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v14;

  [(UIView *)self->_contentContainerView setAutoresizingMask:18];
  [(UIView *)self->_containerView addSubview:self->_contentContainerView];
  v16 = [objc_alloc(MEMORY[0x1E69D3FD0]) initWithFrame:{v5, v7, v9, v11}];
  searchResultsContainerView = self->_searchResultsContainerView;
  self->_searchResultsContainerView = v16;

  [(UIView *)self->_searchResultsContainerView setAutoresizingMask:18];
  [(UIView *)self->_searchResultsContainerView _setIgnoreBackdropViewsWhenHiding:1];
  v18 = &OBJC_IVAR___SBHIconManager__previousWidgetDataSourceBeforeResize;
  v19 = &OBJC_IVAR___SBHIconManager__previousWidgetDataSourceBeforeResize;
  v79 = v3;
  if ([(SBHLibrarySearchController *)self usesPlatterAppearance])
  {
    v20 = objc_alloc(MEMORY[0x1E69DD250]);
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
    v25 = [v20 initWithFrame:{*MEMORY[0x1E695F058], v22, v23, v24}];
    [(UIView *)v25 setClipsToBounds:1];
    [(UIView *)v25 setAlpha:0.0];
    searchResultsPlatterView = self->_searchResultsPlatterView;
    self->_searchResultsPlatterView = v25;
    v27 = v25;

    [(UIView *)self->_searchResultsContainerView insertSubview:v27 atIndex:0];
    v28 = [(SBHVisualStylingView *)[SBHLibraryCategoryPodBackgroundView alloc] initWithFrame:v21, v22, v23, v24];
    [(SBHLibraryCategoryPodBackgroundView *)v28 setAutoresizingMask:18];
    [(UIView *)self->_searchResultsPlatterView addSubview:v28];
    v29 = [(SBHLibrarySearchController *)self containingIconLocation];
    v30 = [(SBHLibrarySearchController *)self listLayoutProvider];
    v31 = [v30 layoutForIconLocation:v29];

    v32 = [v31 appLibraryVisualConfiguration];
    [v32 searchContinuousCornerRadius];
    v34 = v33;
    [(UIView *)self->_searchResultsPlatterView _setContinuousCornerRadius:?];
    v35 = [(SBHIconLibraryTableViewController *)self->_searchResultsController contentScrollView];
    [v35 setVerticalScrollIndicatorInsets:{v34, 0.0, v34, 0.0}];

    v36 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_endEditingForSearchField];
    [v36 setDelegate:self];
    [(UIView *)self->_searchResultsContainerView addGestureRecognizer:v36];

    v18 = &OBJC_IVAR___SBHIconManager__previousWidgetDataSourceBeforeResize;
    v19 = &OBJC_IVAR___SBHIconManager__previousWidgetDataSourceBeforeResize;

    v3 = v79;
  }

  [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0];
  v41 = [[SBHSearchBar alloc] initWithFrame:v37, v38, v39, v40];
  searchBar = self->_searchBar;
  self->_searchBar = v41;

  [(SBHSearchBar *)self->_searchBar setDelegate:self];
  [(UIView *)self->_searchBar sbh_createGlassGroupInForeground:1];
  v43 = [MEMORY[0x1E69DC938] currentDevice];
  v44 = [v43 userInterfaceIdiom];

  if ((v44 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SBHSearchBar *)self->_searchBar setBackgroundViewBottomInsetToTextField:24.0];
  }

  v45 = self->_searchBar;
  v46 = v19[588];
  v47 = [*(&self->super.super.super.isa + v46) focusGroupIdentifier];
  [(SBHSearchBar *)v45 setFocusGroupIdentifier:v47];

  [v3 addSubview:self->_searchBar];
  [(SBHLibrarySearchController *)self _updateEffectiveSearchVisualConfiguration];
  v48 = [(SBHSearchBar *)self->_searchBar searchTextField];
  searchField = self->_searchField;
  self->_searchField = v48;

  v50 = *(&self->super.super.super.isa + v18[599]);
  if (!v50)
  {
    v50 = self->_searchResultsContainerView;
  }

  v51 = v50;
  [(SBHLibrarySearchController *)self bs_addChildViewController:self->_contentViewController withSuperview:self->_contentContainerView];
  v78 = v51;
  [(SBHLibrarySearchController *)self bs_addChildViewController:*(&self->super.super.super.isa + v46) withSuperview:v51];
  v52 = [(SBHLibrarySearchController *)self view];
  [v52 bringSubviewToFront:self->_searchBar];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v53 = *(&self->super.super.super.isa + v46);
  v85[0] = self->_contentViewController;
  v85[1] = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
  v55 = [v54 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v81;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v81 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v80 + 1) + 8 * i) view];
        [(UIView *)self->_containerView bounds];
        [v59 setFrame:?];
      }

      v56 = [v54 countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v56);
  }

  if (self->_needsLowQualityBackgroundEffects)
  {
    v60 = [(SBHVisualStylingView *)[SBHLibrarySearchSimplifiedBackgroundView alloc] initWithFrame:v5, v7, v9, v11];
    [(SBHLibrarySearchSimplifiedBackgroundView *)v60 setAutoresizingMask:18];
  }

  else
  {
    v61 = [MEMORY[0x1E69DC938] currentDevice];
    v62 = [v61 userInterfaceIdiom];

    if ((v62 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v63 = @"homeScreenOverlayLibrarySearch-iPad";
    }

    else
    {
      v63 = @"homeScreenOverlayLibrarySearch";
    }

    v64 = MEMORY[0x1E69AE158];
    v65 = v63;
    v66 = SBHBundle();
    v60 = [v64 materialViewWithRecipeNamed:v65 inBundle:v66 options:0 initialWeighting:0 scaleAdjustment:0.0];

    [(SBHLibrarySearchSimplifiedBackgroundView *)v60 setGroupNameBase:@"SBHLibrarySearchControllerBackdropView"];
    [(SBHLibrarySearchSimplifiedBackgroundView *)v60 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustmentIfNecessary:1];
    v67 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice();
    [(SBHLibrarySearchSimplifiedBackgroundView *)v60 setBackdropScaleAdjustment:v67];
  }

  [(SBHLibrarySearchSimplifiedBackgroundView *)v60 bs_setHitTestingDisabled:1];
  searchBackgroundView = self->_searchBackgroundView;
  self->_searchBackgroundView = &v60->super.super;
  v69 = v60;

  [(UIView *)self->_searchResultsContainerView insertSubview:v69 atIndex:0];
  v70 = MEMORY[0x1E69D3FC0];
  v71 = [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController view];
  v72 = [v70 configureGradientMaskForFeatherBlurRecipe:1 onContentView:v71];
  contentViewGradientMaskLayers = self->_contentViewGradientMaskLayers;
  self->_contentViewGradientMaskLayers = v72;

  v74 = MEMORY[0x1E69D3FC0];
  v75 = [*(&self->super.super.super.isa + v46) view];
  v76 = [v74 configureGradientMaskForFeatherBlurRecipe:3 onContentView:v75];
  searchResultsGradientMaskLayers = self->_searchResultsGradientMaskLayers;
  self->_searchResultsGradientMaskLayers = v76;
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v11 viewWillLayoutSubviews];
  v3 = [(SBHLibrarySearchController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(SBHLibrarySearchController *)self searchBar];
  [v8 setPortraitOrientation:v5 < v7];

  if ([(SBHLibrarySearchController *)self _rotatingToInterfaceOrientation])
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  if ([(SBHLibrarySearchController *)self _appearState])
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:v10 withCompletion:0];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69DDCE0];
  [(SBHLibrarySearchController *)self _windowSafeAreaInsets];
  v9 = v8;
  if (self->_contentViewController == v6)
  {
    v12 = [(SBHLibrarySearchController *)self _inactiveSearchConfiguration];
    [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0 forExplicitVisualConfiguration:v12];
    MaxY = CGRectGetMaxY(v20);

    goto LABEL_6;
  }

  if (self->_searchResultsController != v6 || (v10 = 0.0, MaxY = 0.0, ![(SBHLibrarySearchController *)self usesPlatterAppearance]))
  {
    [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0];
    MaxY = CGRectGetMaxY(v19);
LABEL_6:
    v10 = v9;
  }

  v13 = *(v7 + 8);
  v14 = *(v7 + 24);
  if (a4)
  {
    *a4 = 1;
  }

  v15 = MaxY;
  v16 = v13;
  v17 = v10;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)preferredContentSize
{
  [(UIView *)self->_containerView frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v5 viewWillAppear:?];
  [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController bs_beginAppearanceTransition:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v4 viewDidAppear:a3];
  [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController bs_endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v5 viewWillDisappear:?];
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController bs_beginAppearanceTransition:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v5 viewDidDisappear:a3];
  if ([(SBHLibrarySearchController *)self isActive])
  {
    [(SBHLibrarySearchController *)self _dismissPresentation:0];
  }

  [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController bs_endAppearanceTransition];
  v4 = [(SBHIconLibraryTableViewController *)self->_searchResultsController contentScrollView];
  [v4 _scrollToTopIfPossible:0];

  [(SBHLibrarySearchController *)self resetSearchController:0 clearSearchResults:1 resetSearchBarTransformAndAlpha:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = SBHLibrarySearchController;
  v7 = a4;
  [(SBHLibrarySearchController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(UIView *)self->_searchBackgroundView layer];
  v9 = [v8 animationForKey:@"SBLibrarySearchMatchMoveAnimation"];
  [v8 removeAnimationForKey:@"SBLibrarySearchMatchMoveAnimation"];
  [(SBHLibrarySearchController *)self _searchBackgroundContentReplacedWithSnapshot:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SBHLibrarySearchController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_1E808E800;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v7 animateAlongsideTransition:0 completion:v12];
}

- (id)keyCommands
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SBHLibrarySearchController;
  v3 = [(SBHLibrarySearchController *)&v11 keyCommands];
  if ([(SBHSearchBar *)self->_searchBar showsCancelButton])
  {
    v4 = *MEMORY[0x1E69DDEA0];
    v5 = sel_endEditingForSearchField;
    v6 = 0;
  }

  else
  {
    v5 = sel_beginEditingForSearchField;
    v4 = @"f";
    v6 = 0x100000;
  }

  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v4 modifierFlags:v6 action:v5];
  v8 = v7;
  if (v3)
  {
    v9 = [v3 arrayByAddingObject:v7];
  }

  else
  {
    v12[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  return v9;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = SBHLibrarySearchController;
  [(SBHLibrarySearchController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(SBHLibrarySearchController *)self _updateContentOverlayInsetsFromParentForChildren];
  v5 = [(SBHLibrarySearchController *)self view];
  [v5 setNeedsLayout];
}

- (void)setActive:(BOOL)a3
{
  if (a3)
  {
    searchField = self->_searchField;

    [(UISearchTextField *)searchField becomeFirstResponder];
  }

  else
  {
    v5 = [MEMORY[0x1E69DD250] areAnimationsEnabled];

    [(SBHLibrarySearchController *)self _dismissPresentation:v5];
  }
}

- (double)_rubberbandingOffsetForContentOffset:(CGPoint)a3
{
  y = a3.y;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v5 = -v4;
  result = -(y + v4);
  if (y >= v5)
  {
    return 0.0;
  }

  return result;
}

- (void)_layoutSearchViewsWithMode:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  searchAnimationSettings = self->_searchAnimationSettings;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__SBHLibrarySearchController__layoutSearchViewsWithMode_withCompletion___block_invoke;
  v12[3] = &unk_1E8088C90;
  v12[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SBHLibrarySearchController__layoutSearchViewsWithMode_withCompletion___block_invoke_2;
  v10[3] = &unk_1E808A998;
  v11 = v6;
  v9 = v6;
  [v7 sb_animateWithSettings:searchAnimationSettings mode:a3 animations:v12 completion:v10];
}

uint64_t __72__SBHLibrarySearchController__layoutSearchViewsWithMode_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_layoutSearchViews
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = [(SBHLibrarySearchController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = self->_containerView;
  [(UIView *)v12 setFrame:v5, v7, v9, v11];
  v13 = [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController view];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = [(SBHIconLibraryTableViewController *)self->_searchResultsController view];
  v15 = self->_scrollView;
  [(UIView *)v12 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  UIRectGetCenter();
  v25 = v24;
  v27 = v26;
  [(UIScrollView *)v15 contentOffset];
  [(SBHLibrarySearchController *)self _rubberbandingOffsetForContentOffset:?];
  searchState = self->_searchState;
  if (searchState == 2)
  {
    v98 = 1.0;
    v30 = 0.0;
  }

  else
  {
    if (searchState == 1)
    {
      v30 = v28;
      [(SBHLibrarySearchController *)self _searchPresentationProgressForOffset:?];
    }

    else
    {
      v30 = 0.0;
      v31 = 0.0;
    }

    v98 = v31;
  }

  v32 = self->_searchResultsPlatterView;
  if (v32)
  {
    v33 = [(SBHLibrarySearchController *)self _activeSearchConfiguration];
    v97 = v17;
    if (self->_searchState == 2)
    {
      [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0 forExplicitVisualConfiguration:v33];
      v35 = v34;
    }

    else
    {
      v36 = [(SBHLibrarySearchController *)self _inactiveSearchConfiguration];
      [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0 forExplicitVisualConfiguration:v36];
      v35 = v37;
    }

    [(SBHLibrarySearchController *)self _bottomLayoutInsetForSearchResultsView];
    v38 = v19 + v35;
    v40 = v23 - (v39 + v35);
    [v33 textFieldWidth];
    v42 = v41;
    if (v41 <= 0.0)
    {
      if (v23 <= v21)
      {
        [v33 textFieldLandscapeLayoutInsets];
      }

      else
      {
        [v33 textFieldPortraitLayoutInsets];
      }

      v42 = v21 - (v43 + v44);
    }

    [v14 frame];
    [(UIView *)v32 setFrame:(v21 - v42) * 0.5, v30 + v38, v42, v40];
    [(UIView *)v32 bounds];
    [v14 setFrame:?];

    v17 = v97;
  }

  else
  {
    [v14 setCenter:{v25, v27 + v30}];
  }

  [(SBHLibrarySearchController *)self _calculateSearchBarFrame:1];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [(UIView *)v12 bringSubviewToFront:self->_searchBar];
  searchBar = self->_searchBar;
  BSRectWithSize();
  [(SBHSearchBar *)searchBar setBounds:?];
  v52 = self->_searchBar;
  UIRectGetCenter();
  [(SBHSearchBar *)v52 setCenter:?];
  v53 = [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController contentScrollView];
  v54 = self->_searchBackgroundView;
  [(UIView *)v54 setFrame:v17, v19, v21, v23];
  v100 = v15;
  if (self->_needsLowQualityBackgroundEffects)
  {
    [v53 setAlpha:1.0 - ((v98 + -0.15) / 0.4 + 0.0)];
    [(UIView *)v54 setAlpha:v98];
  }

  else
  {
    [(UIView *)v54 setWeighting:v98];
  }

  v55 = (v98 + -0.3) / 0.7 + 0.0;
  [(UIView *)v32 setAlpha:v55];
  [v14 setAlpha:v55];
  [MEMORY[0x1E69D3FC0] gradientMaskLayerInsetsForFeatherBlurRecipe:1];
  v57 = v56;
  v59 = v58;
  v62 = v50 - (v60 + v61);
  [(SBHSearchBar *)self->_searchBar backgroundViewBottomInsetToTextField];
  v64 = v63;
  v99 = v14;
  if (v63 == *MEMORY[0x1E69DE788])
  {
    v68 = v53;
  }

  else
  {
    v65 = [(SBHLibrarySearchController *)self _inactiveSearchConfiguration];
    v66 = v65;
    if (v23 <= v21)
    {
      [v65 textFieldLandscapeLayoutInsets];
    }

    else
    {
      [v65 textFieldPortraitLayoutInsets];
    }

    v68 = v53;
    v62 = v62 - (v67 - v64);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v69 = self->_contentViewGradientMaskLayers;
  v70 = [(NSArray *)v69 countByEnumeratingWithState:&v105 objects:v110 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v106;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v106 != v72)
        {
          objc_enumerationMutation(v69);
        }

        [*(*(&v105 + 1) + 8 * i) setFrame:{v46 + v57, 0.0, v48 - (v57 + v59), v62}];
      }

      v71 = [(NSArray *)v69 countByEnumeratingWithState:&v105 objects:v110 count:16];
    }

    while (v71);
  }

  [(SBHLibrarySearchController *)self _updateHeaderBlurVisibility];
  [MEMORY[0x1E69D3FC0] gradientMaskLayerInsetsForFeatherBlurRecipe:3];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = [(SBHIconLibraryTableViewController *)self->_searchResultsController headerBlurView];
  [v82 bounds];
  [v82 convertRect:v12 toView:?];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v89 = self->_searchResultsGradientMaskLayers;
  v90 = [(NSArray *)v89 countByEnumeratingWithState:&v101 objects:v109 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = v88 - (v75 + v79);
    v93 = v86 - (v77 + v81);
    v94 = v77 + v84;
    v95 = *v102;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v102 != v95)
        {
          objc_enumerationMutation(v89);
        }

        [*(*(&v101 + 1) + 8 * j) setFrame:{v94, 0.0, v93, v92}];
      }

      v91 = [(NSArray *)v89 countByEnumeratingWithState:&v101 objects:v109 count:16];
    }

    while (v91);
  }

  [(SBHLibrarySearchController *)self _setUpFeatherMaskLayerMatchMoveAnimations];
}

- (void)_updateHeaderBlurVisibility
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(SBHLibrarySearchControllerContentViewControllerScrollViewProvider *)self->_contentViewController contentScrollView];
  if ([(SBHLibrarySearchController *)self contentVisibility]== 2)
  {
    v4 = 1;
  }

  else
  {
    [v3 adjustedContentInset];
    v6 = v5;
    [v3 contentOffset];
    v4 = v6 + v7 <= 0.0;
  }

  v8 = [(SBHSearchBar *)self->_searchBar backgroundView];
  [v8 setHidden:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_contentViewGradientMaskLayers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) setHidden:{v4, v14}];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_setUpFeatherMaskLayerMatchMoveAnimations
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_contentViewGradientMaskLayers count])
  {
    [v3 addObjectsFromArray:self->_contentViewGradientMaskLayers];
  }

  if ([(NSArray *)self->_searchResultsGradientMaskLayers count])
  {
    [v3 addObjectsFromArray:self->_searchResultsGradientMaskLayers];
  }

  v4 = [(UIView *)self->_containerView window];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = MEMORY[0x1E69D3FC0];
        [v10 frame];
        v12 = [v11 matchMoveAnimationForFrame:v4 relativeToView:?];
        [v10 addAnimation:v12 forKey:@"SBLibrarySearchMatchMoveAnimation"];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (CGRect)_calculateSearchBarFrame:(BOOL)a3
{
  [(SBHLibrarySearchController *)self _calculateSearchBarFrame:a3 forExplicitVisualConfiguration:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_calculateSearchBarFrame:(BOOL)a3 forExplicitVisualConfiguration:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_scrollView;
  [(SBHLibrarySearchController *)self _windowSafeAreaInsets];
  v9 = v8;
  v10 = v8;
  [(UIScrollView *)v7 contentOffset];
  [(SBHLibrarySearchController *)self _rubberbandingOffsetForContentOffset:?];
  if (v4 && self->_searchState != 2)
  {
    v10 = v9 + v11 / 3.0;
  }

  [(UIView *)self->_containerView bounds];
  searchBar = self->_searchBar;
  if (v6)
  {
    [(SBHSearchBar *)searchBar sizeThatFits:v6 forVisualConfiguration:v12, v13];
  }

  else
  {
    [(SBHSearchBar *)searchBar sizeThatFits:v12, v13];
  }

  [(SBHLibrarySearchController *)self needsToManageTopInset];
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v16;
  v22 = v10 - v9;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_updateContentOverlayInsetsFromParentForChildren
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SBHLibrarySearchController *)self childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _updateContentOverlayInsetsFromParentIfNecessary];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateEffectiveSearchVisualConfiguration
{
  v3 = [(SBHLibrarySearchController *)self searchBarAppearance];
  if (v3 == 2)
  {
    v4 = [(SBHAppLibraryVisualConfiguration *)self->_libraryVisualConfiguration extendedSearchVisualConfiguration];
  }

  else if (v3 == 1)
  {
    v4 = [(SBHAppLibraryVisualConfiguration *)self->_libraryVisualConfiguration compactSearchVisualConfiguration];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SBHAppLibraryVisualConfiguration *)self->_libraryVisualConfiguration standardSearchVisualConfiguration];
  }

  obj = v4;
  v5 = [(SBHSearchBar *)self->_searchBar setInactiveSearchConfiguration:v4];
  v6 = obj;
  if (self->_searchVisualConfiguration != obj)
  {
    objc_storeStrong(&self->_searchVisualConfiguration, obj);
    v5 = [(SBHLibrarySearchController *)self _updateContentOverlayInsetsFromParentForChildren];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setSearchBarAppearance:(unint64_t)a3
{
  if (self->_searchBarAppearance != a3)
  {
    self->_searchBarAppearance = a3;
    [(SBHLibrarySearchController *)self _updateEffectiveSearchVisualConfiguration];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBHSearchTextField *)self->_searchField setLegibilitySettings:v6];
    v5 = v6;
  }
}

- (void)setListLayoutProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_listLayoutProvider, obj);
    [(SBHSearchBar *)self->_searchBar setListLayoutProvider:obj];
    v7 = [(SBHLibrarySearchController *)self containingIconLocation];
    v8 = [obj layoutForIconLocation:v7];
    v9 = [v8 appLibraryVisualConfiguration];
    if ([(SBHLibrarySearchController *)self usesPlatterAppearance])
    {
      [(SBHAppLibraryVisualConfiguration *)v9 searchContinuousCornerRadius];
      v11 = v10;
      [(UIView *)self->_searchResultsPlatterView _setContinuousCornerRadius:?];
      v12 = [(SBHIconLibraryTableViewController *)self->_searchResultsController contentScrollView];
      [v12 setVerticalScrollIndicatorInsets:{v11, 0.0, v11, 0.0}];
    }

    libraryVisualConfiguration = self->_libraryVisualConfiguration;
    self->_libraryVisualConfiguration = v9;

    [(SBHLibrarySearchController *)self _updateEffectiveSearchVisualConfiguration];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setSearchResultsUpdater:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_searchResultsUpdater, v4);
  if (objc_opt_respondsToSelector())
  {
    [v4 setSearchController:self];
  }
}

- (void)ppt_setDisablePullToSearch:(BOOL)a3
{
  if (self->_disablePullToSearch != a3)
  {
    self->_disablePullToSearch = a3;
    [(SBHLibrarySearchController *)self _dismissPresentation:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  [v4 adjustedContentInset];

  [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullGestureBeganFromTopLeeway];
  self->_scrollViewBeganScrollingFromTop = BSFloatLessThanOrEqualToFloat();
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  [(SBHLibrarySearchController *)self _rubberbandingOffsetForContentOffset:?];
  if (!self->_disablePullToSearch && self->_scrollViewBeganScrollingFromTop && BSFloatGreaterThanFloat() && !self->_searchState)
  {
    self->_searchState = 1;
    [(SBHLibrarySearchController *)self _willPresentSearchAnimated:1];
  }

  if (self->_searchState == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:v4 withCompletion:0];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6 = a3;
  v7 = v6;
  if (!self->_disablePullToSearch)
  {
    self->_scrollViewBeganScrollingFromTop = 0;
    if (self->_searchState == 1 && !self->_disablePullToSearch)
    {
      v8 = *MEMORY[0x1E69DE3A0];
      [v6 contentOffset];
      v10 = v9;
      v12 = v11;
      v13 = [v7 panGestureRecognizer];
      [v13 velocityInView:v7];
      v15 = v14;
      v17 = v16;

      [(SBHLibrarySearchController *)self _rubberbandingOffsetForContentOffset:v10 - v8 * (v15 / 1000.0) / (1.0 - v8), v12 - v8 * (v17 / 1000.0) / (1.0 - v8)];
      [(SBHLibrarySearchController *)self _searchPresentationProgressForOffset:?];
      [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionActivationThreshold];
      v18 = BSFloatGreaterThanFloat();
      v19 = v18;
      if (v18)
      {
        [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
        [(UISearchTextField *)self->_searchField becomeFirstResponder];
        [(SBHLibrarySearchController *)self _didPresentSearch];
      }

      else
      {
        [(SBHLibrarySearchController *)self _willDismissSearchAnimated:1];
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __89__SBHLibrarySearchController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke_2;
      v20[3] = &unk_1E808B508;
      v21 = v19;
      v20[4] = self;
      [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:3 withCompletion:v20];
    }
  }
}

uint64_t __89__SBHLibrarySearchController_scrollViewWillEndDragging_withVelocity_targetContentOffset___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) searchState];
    if (!result)
    {
      v2 = *(v1 + 32);

      return [v2 _didDismissSearch];
    }
  }

  return result;
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  if (([(SBHLibrarySearchController *)self bs_isDisappearingOrDisappeared]& 1) != 0 || [(SBHLibrarySearchController *)self forcedSearchTextFieldNoneditable])
  {
    [(SBHLibrarySearchController *)self setForcedSearchTextFieldNoneditable:0];
    return 0;
  }

  else
  {
    v4 = 1;
    if (self->_searchState != 1)
    {
      [(SBHLibrarySearchController *)self _performPresentation:1];
    }
  }

  return v4;
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if (![(SBHLibrarySearchController *)self isTransitionInProgress]&& [(SBHLibrarySearchController *)self isActive])
  {

    [(SBHLibrarySearchController *)self _dismissPresentation:1];
  }
}

- (BOOL)searchBarShouldReturn:(id)a3
{
  v3 = self;
  v4 = [(SBHLibrarySearchController *)self searchResultsUpdater];
  LOBYTE(v3) = [v4 searchControllerShouldReturn:v3];

  return v3;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = [(SBHLibrarySearchController *)self searchResultsUpdater:a3];
  [v5 updateSearchResultsForSearchController:self];
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  v12 = v11;
  v13 = &stru_1F3D472A8;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if ([(__CFString *)v14 length]<= length)
  {
    v15 = 0;
  }

  else
  {
    v15 = [(__CFString *)v14 length]- length;
  }

  v16 = [v10 length] + v15;
  if (v16 >= 0x3E9 && v15 != 1000)
  {
    v17 = 1000 - v15;
    if ([v10 length] > v17)
    {
      v18 = [v10 rangeOfComposedCharacterSequenceAtIndex:v17];
      v19 = [v9 searchTextField];
      v20 = [v10 substringToIndex:v18];
      v21 = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:length, v20];
      [v19 setText:v21];

      v22 = [(SBHLibrarySearchController *)self searchResultsUpdater];
      [v22 updateSearchResultsForSearchController:self];
    }
  }

  return v16 < 0x3E9;
}

- (void)searchBarDidInvalidateIntrinsicContentSize:(id)a3
{
  [(SBHLibrarySearchController *)self _calculateSearchBarFrame:0];
  searchBar = self->_searchBar;
  BSRectWithSize();
  [(SBHSearchBar *)searchBar setBounds:?];
  v5 = self->_searchBar;
  UIRectGetCenter();

  [(SBHSearchBar *)v5 setCenter:?];
}

- (UIEdgeInsets)safeAreaInsetsForSearchBar:(id)a3
{
  if ([(SBHLibrarySearchController *)self needsToManageTopInset])
  {
    [(SBHLibrarySearchController *)self _windowSafeAreaInsets];
    UIEdgeInsetsMakeWithEdges();
  }

  else
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)_bottomLayoutInsetForSearchResultsView
{
  v3 = [(SBHLibrarySearchController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(SBHLibrarySearchController *)self _activeSearchConfiguration];
  v9 = v8;
  if (v7 <= v5)
  {
    [v8 textFieldLandscapeLayoutInsets];
  }

  else
  {
    [v8 textFieldPortraitLayoutInsets];
  }

  v11 = v10;
  v12 = 0.0;
  if ([(SBHLibrarySearchController *)self usesPlatterAppearance])
  {
    [(SBHLibrarySearchController *)self _windowSafeAreaInsets];
    v12 = v11 + v13 + -10.0;
  }

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  searchResultsController = self->_searchResultsController;
  v5 = a4;
  v6 = [(SBHIconLibraryTableViewController *)searchResultsController view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v5 locationInView:v6];
  v16 = v15;
  v18 = v17;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  v20.x = v16;
  v20.y = v18;
  LOBYTE(v5) = CGRectContainsPoint(v21, v20);

  return v5 ^ 1;
}

- (void)_setupSearchAnimationSettings
{
  v3 = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
  searchAnimationSettings = self->_searchAnimationSettings;
  self->_searchAnimationSettings = v3;

  v8 = [(SBHHomePullToSearchSettings *)self->_pullToSearchSettings pullTransitionAnimationSettings];
  v5 = self->_searchAnimationSettings;
  [v8 dampingRatio];
  [(SBFFluidBehaviorSettings *)v5 setDampingRatio:?];
  v6 = self->_searchAnimationSettings;
  [v8 response];
  [(SBFFluidBehaviorSettings *)v6 setResponse:?];
  v7 = self->_searchAnimationSettings;
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)v7 setFrameRateRange:1114128 highFrameRateReason:*&v10.minimum, *&v10.maximum, *&v10.preferred];
}

- (void)_performPresentation:(BOOL)a3
{
  v3 = a3;
  [(SBHLibrarySearchController *)self _willPresentSearchAnimated:?];
  if (v3)
  {
    [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:2 withCompletion:0];
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  [(SBHLibrarySearchController *)self _didPresentSearch];

  [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:v5 withCompletion:0];
}

- (void)_dismissPresentation:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SBHLibrarySearchController *)self searchField];
    [v4 setText:0];

    [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:2 withCompletion:0];
    [(SBHLibrarySearchController *)self _willDismissSearchAnimated:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__SBHLibrarySearchController__dismissPresentation___block_invoke;
    v5[3] = &unk_1E8088F40;
    v5[4] = self;
    [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:3 withCompletion:v5];
  }

  else
  {
    [(SBHLibrarySearchController *)self _willDismissSearchAnimated:?];
    [(SBHLibrarySearchController *)self _didDismissSearch];

    [(SBHLibrarySearchController *)self _layoutSearchViewsWithMode:4 withCompletion:0];
  }
}

uint64_t __51__SBHLibrarySearchController__dismissPresentation___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) searchState];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _didDismissSearch];
  }

  return result;
}

- (void)_willPresentSearchAnimated:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
  [v5 setAllowsGrouping:0];
  [v5 setFlexible:1];
  [v5 setHighlightsDisplayAngle:SBHPerformanceFlagEnabled(1) ^ 1];
  [(SBHSearchTextField *)self->_searchField _setBackground:v5];
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  v6 = [(UIView *)self->_searchResultsContainerView superview];

  if (v6)
  {
    [(SBHLibrarySearchController *)self bs_beginAppearanceTransitionForChildViewController:self->_searchResultsController toVisible:1 animated:v3];
    v7 = [(SBHIconLibraryTableViewController *)self->_searchResultsController contentScrollView];
    [v7 _scrollToTopIfPossible:0];
  }

  else
  {
    searchResultsContainerView = self->_searchResultsContainerView;
    [(UIView *)self->_containerView bounds];
    [(UIView *)searchResultsContainerView setFrame:?];
    [(SBHLibrarySearchController *)self bs_beginAppearanceTransitionForChildViewController:self->_searchResultsController toVisible:1 animated:v3];
    [(UIView *)self->_containerView addSubview:self->_searchResultsContainerView];
    [(UIView *)self->_searchResultsContainerView layoutIfNeeded];
  }

  v9 = MEMORY[0x1E69D3FA0];
  v10 = [(UIView *)self->_containerView window];
  v11 = [v9 matchMoveAnimationForPinningToView:v10];

  [v11 setAppliesX:1];
  v12 = [(UIView *)self->_searchBackgroundView layer];
  [v12 addAnimation:v11 forKey:@"SBLibrarySearchMatchMoveAnimation"];

  v13 = [(SBHLibrarySearchController *)self searchResultsUpdater];
  [v13 updateSearchResultsForSearchController:self];

  [(UIView *)self->_searchResultsContainerView bs_setHitTestingDisabled:0];
  [(UIView *)self->_searchResultsContainerView setHidden:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_searchResultsGradientMaskLayers;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * v18++) setHidden:{0, v21}];
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v19 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v19 postNotificationName:@"SBHLibraryViewControllerWillPresentSearchPPTNotification" object:self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained willPresentSearchController:self];
  }
}

- (void)_didPresentSearch
{
  self->_searchState = 2;
  [(SBHLibrarySearchController *)self bs_endAppearanceTransitionForChildViewController:self->_searchResultsController toVisible:1];
  [(SBHSearchTextField *)self->_searchField setAlignmentBehavior:1 animated:1];
  v5 = [SBHLegibilitySettings sharedInstanceForStyle:1];
  [(SBHSearchTextField *)self->_searchField setLegibilitySettings:?];
  v3 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v3 postNotificationName:@"SBHLibraryViewControllerDidPresentSearchPPTNotification" object:self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didPresentSearchController:self];
  }
}

- (void)_willDismissSearchAnimated:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  [(SBHLibrarySearchController *)self _searchBackgroundContentReplacedWithSnapshot:0];
  self->_searchState = 0;
  [(UIView *)self->_searchResultsContainerView bs_setHitTestingDisabled:1];
  [(SBHSearchBar *)self->_searchBar endEditing:1];
  [(SBHSearchBar *)self->_searchBar setShowsCancelButton:0 animated:v3];
  [(SBHLibrarySearchController *)self bs_beginAppearanceTransitionForChildViewController:self->_searchResultsController toVisible:0 animated:v3];
  [(SBHLibrarySearchController *)self resetSearchController:v3 clearSearchResults:0 resetSearchBarTransformAndAlpha:0];
  v5 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v5 postNotificationName:@"SBHLibraryViewControllerWillDismissSearchPPTNotification" object:self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained willDismissSearchController:self];
  }
}

- (void)_didDismissSearch
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
  [v3 setFlexible:1];
  [v3 setHighlightsDisplayAngle:SBHPerformanceFlagEnabled(1) ^ 1];
  [(SBHSearchTextField *)self->_searchField _setBackground:v3];
  [(UIView *)self->_searchResultsContainerView setHidden:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_searchResultsGradientMaskLayers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8++) setHidden:{1, v13}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [(SBHIconLibraryTableViewController *)self->_searchResultsController contentScrollView];
  [v9 _scrollToTopIfPossible:0];

  [(SBHLibrarySearchController *)self resetSearchController:0 clearSearchResults:1 resetSearchBarTransformAndAlpha:0];
  [(SBHLibrarySearchController *)self bs_endAppearanceTransitionForChildViewController:self->_searchResultsController toVisible:0];
  v10 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v10 postNotificationName:@"SBHLibraryViewControllerDidDismissSearchPPTNotification" object:self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didDismissSearchController:self];
  }

  v12 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:{self, v13}];
  [v12 _focusEnvironmentWillDisappear:self];
}

- (void)resetSearchController:(BOOL)a3 clearSearchResults:(BOOL)a4 resetSearchBarTransformAndAlpha:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [(SBHSearchTextField *)self->_searchField setAlignmentBehavior:0 animated:a3];
  [(UISearchTextField *)self->_searchField setText:0];
  if (v6)
  {
    v9 = [(SBHLibrarySearchController *)self searchResultsUpdater];
    [v9 updateSearchResultsForSearchController:self];
  }

  [(SBHSearchBar *)self->_searchBar endEditing:1];
  [(SBHSearchBar *)self->_searchBar setShowsCancelButton:0 animated:v7];
  if (v5)
  {
    searchBar = self->_searchBar;
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v14[0] = *MEMORY[0x1E695EFD0];
    v14[1] = v11;
    v14[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(SBHSearchBar *)searchBar setTransform:v14];
    [(SBHSearchBar *)self->_searchBar setAlpha:1.0];
  }

  searchField = self->_searchField;
  v13 = [(SBHLibrarySearchController *)self legibilitySettings];
  [(SBHSearchTextField *)searchField setLegibilitySettings:v13];
}

- (void)_searchBackgroundContentReplacedWithSnapshot:(BOOL)a3
{
  if (self->_searchBackgroundView)
  {
    v3 = a3;
    if (![(UIView *)self->_searchResultsContainerView isHidden])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchBackgroundView = self->_searchBackgroundView;

        [(UIView *)searchBackgroundView setContentReplacedWithSnapshot:v3];
      }
    }
  }
}

- (UIEdgeInsets)_windowSafeAreaInsets
{
  v2 = [(SBHLibrarySearchController *)self view];
  v3 = [v2 window];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (SBHSearchResultsUpdating)searchResultsUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_searchResultsUpdater);

  return WeakRetained;
}

- (SBHLibrarySearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_listLayoutProvider);

  return WeakRetained;
}

@end