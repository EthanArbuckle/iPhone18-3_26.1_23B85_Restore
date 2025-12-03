@interface _UISearchPresentationController
+ (BOOL)shouldExciseSearchBar:(id)bar duringPresentationWithPresenter:(id)presenter;
- (BOOL)_requiresDeferralToCoordinateWithNavigationTransitionAnimated:(BOOL)animated;
- (BOOL)_shouldAnchorSearchTextFieldToKeyboard;
- (BOOL)_shouldUsePassthroughInteractionForDismissal;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (CGRect)finalFrameForContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (_UISearchPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (double)_visibleRefreshControlHeightForTableView:(id)view;
- (id)_constraintCopyOfConstraint:(id)constraint replaceItem:(id)item withItem:(id)withItem;
- (id)_createVisualStyleForProvider:(id)provider;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (void)_dismissalTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)end;
- (void)_dismissalTransitionWithSearchBarHostedByNavBarWillBegin;
- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)end;
- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin;
- (void)_exciseSearchBarFromCurrentContext;
- (void)_layoutPresentationWithSize:(CGSize)size transitionCoordinator:(id)coordinator;
- (void)_placeSearchBarBackIntoOriginalContext;
- (void)_presentationTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)end;
- (void)_presentationTransitionWithSearchBarHostedByNavBarWillBegin;
- (void)_presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)end;
- (void)_presentationTransitionWithSearchBarNotHostedByNavBarWillBegin;
- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator;
- (void)_updateContainerFinalFrameForNonExcisedSearchBar;
- (void)_updatePresentingViewControllerContentScrollViewWithOffsets:(CGSize)offsets transitionCoordinator:(id)coordinator;
- (void)containerViewWillLayoutSubviews;
- (void)contentSizeCategoryOrLegibilityWeightChanged;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)hideBackgroundObscuringView;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)showBackgroundObscuringView;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _UISearchPresentationController

- (_UISearchPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v11[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = _UISearchPresentationController;
  v8 = [(UIPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v8)
  {
    v8->_assistant = [[_UISearchPresentationAssistant alloc] initWithSearchPresentationController:v8];
    v8->_searchController = controller;
    v11[0] = 0x1EFE32440;
    v11[1] = 0x1EFE324A0;
    -[UIPresentationController _registerForTraitTokenChanges:withTarget:action:](v8, "_registerForTraitTokenChanges:withTarget:action:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2], v8, sel_contentSizeCategoryOrLegibilityWeightChanged);
  }

  return v8;
}

- (void)dealloc
{
  self->_placeholderView = 0;

  self->_assistant = 0;
  self->_excisedSearchBarConstraitMap = 0;

  self->_placeholderConstraitMap = 0;
  v3.receiver = self;
  v3.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v3 dealloc];
}

+ (BOOL)shouldExciseSearchBar:(id)bar duringPresentationWithPresenter:(id)presenter
{
  window = [bar window];
  if (window)
  {
    objc_opt_class();
    if (!bar)
    {
      objc_opt_class();
      objc_opt_class();
      if (presenter)
      {
LABEL_16:
        LODWORD(window) = [objc_msgSend(presenter "_existingView")];
        if (!window)
        {
          return window;
        }
      }

LABEL_17:
      LOBYTE(window) = 1;
      return window;
    }

    barCopy = bar;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      barCopy = [barCopy superview];
      if (!barCopy)
      {
        objc_opt_class();
        barCopy2 = bar;
        while ((objc_opt_isKindOfClass() & 1) == 0)
        {
          barCopy2 = [barCopy2 superview];
          if (!barCopy2)
          {
            objc_opt_class();
            barCopy3 = bar;
            while ((objc_opt_isKindOfClass() & 1) == 0)
            {
              barCopy3 = [barCopy3 superview];
              if (!barCopy3)
              {
                if (presenter)
                {
                  goto LABEL_16;
                }

                goto LABEL_17;
              }
            }

            goto LABEL_14;
          }
        }

        break;
      }
    }

LABEL_14:
    LOBYTE(window) = 0;
  }

  return window;
}

- (void)_updateContainerFinalFrameForNonExcisedSearchBar
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  objc_opt_class();
  if (searchBar)
  {
    superview = searchBar;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview = [(UIView *)superview superview];
      if (!superview)
      {
        goto LABEL_5;
      }
    }

    v5 = superview;
  }

  else
  {
LABEL_5:
    if (![(UISearchBar *)searchBar _containedInNavigationPalette])
    {
      return;
    }

    v5 = [-[_UISearchPresentationAssistant locatePresentingNavigationController](self->_assistant "locatePresentingNavigationController")];
  }

  [(UIView *)v5 frame];
  self->_finalFrameForContainerView.origin.x = v6;
  self->_finalFrameForContainerView.origin.y = v7;
  self->_finalFrameForContainerView.size.width = v8;
  self->_finalFrameForContainerView.size.height = v9;
}

- (void)showBackgroundObscuringView
{
  dimmingView = [(_UISearchPresentationAssistant *)self->_assistant dimmingView];

  [dimmingView display:1];
}

- (void)hideBackgroundObscuringView
{
  dimmingView = [(_UISearchPresentationAssistant *)self->_assistant dimmingView];

  [dimmingView display:0];
}

- (BOOL)_shouldAnchorSearchTextFieldToKeyboard
{
  _prefersSearchTextFieldAnchoredToKeyboard = [(UISearchController *)self->_searchController _prefersSearchTextFieldAnchoredToKeyboard];
  if (_prefersSearchTextFieldAnchoredToKeyboard)
  {
    LOBYTE(_prefersSearchTextFieldAnchoredToKeyboard) = [(UIPresentationController *)self presentationStyle]== UIModalPresentationCustom;
  }

  return _prefersSearchTextFieldAnchoredToKeyboard;
}

- (void)_presentationTransitionWithSearchBarNotHostedByNavBarWillBegin
{
  v55 = *MEMORY[0x1E69E9840];
  [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:1];
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(_UISearchPresentationController *)self _shouldAnchorSearchTextFieldToKeyboard])
  {
    [(UISearchController *)self->_searchController _setInlineSearchAccessoryEnabled:1];
  }

  if (![(_UINavigationControllerManagedSearchPalette *)[(UISearchController *)self->_searchController _managedPalette] _supportsSpecialSearchBarTransitions])
  {
    [(_UISearchPresentationAssistant *)self->_assistant ensureAppropriatelySizedSearchBar:[(UISearchController *)self->_searchController searchBar]];
  }

  searchBar = [(UISearchController *)self->_searchController searchBar];
  v5 = [_UISearchPresentationController shouldExciseSearchBar:searchBar duringPresentationWithPresenter:[(UIPresentationController *)self presentingViewController]];
  searchBarWillResizeForScopeBar = [(_UISearchPresentationAssistant *)self->_assistant searchBarWillResizeForScopeBar];
  if ([(UIView *)searchBar window])
  {
    v7 = !v5;
  }

  else
  {
    v7 = 1;
  }

  v8 = &OBJC_IVAR____UIPreviewActionSheetItemView__label;
  if (v7)
  {
    _refreshControl = 0;
    v9 = 0.0;
  }

  else
  {
    objc_opt_class();
    if (searchBar)
    {
      superview = searchBar;
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview = [(UIView *)superview superview];
      }

      while (superview);
    }

    else
    {
      superview = 0;
    }

    [(_UISearchPresentationController *)self _visibleRefreshControlHeightForTableView:superview];
    v9 = v11;
    v45 = transitionCoordinator;
    v43 = searchBarWillResizeForScopeBar;
    v44 = v5;
    if (fabs(v11) >= 2.22044605e-16)
    {
      _refreshControl = [(UISearchBar *)superview _refreshControl];
    }

    else
    {
      _refreshControl = 0;
    }

    superview2 = [(UIView *)searchBar superview];
    searchBarContainerView = [(_UISearchPresentationController *)self searchBarContainerView];
    view = [(UIViewController *)[(UIPresentationController *)self presentingViewController] view];
    if ([(UISearchController *)self->_searchController _searchbarWasTableHeaderView])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UISearchBar *)searchBar _setMaskActive:0];
        [(UIView *)view adjustedContentInset];
        [(UIView *)searchBarContainerView frame];
        [(UIView *)searchBarContainerView setFrame:?];
      }
    }

    if ([(UISearchBar *)searchBar isFirstResponder])
    {
      [UIView _setIsResponderAncestorOfFirstResponder:superview2 startingAtFirstResponder:?];
    }

    [(_UISearchPresentationController *)self _exciseSearchBarFromCurrentContext];
    [(UISearchBar *)searchBar _setTransplanting:1];
    [(UIView *)searchBar removeFromSuperview];
    [(UIView *)superview2 addSubview:self->_placeholderView];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    placeholderConstraitMap = self->_placeholderConstraitMap;
    v16 = [(NSMapTable *)placeholderConstraitMap countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(placeholderConstraitMap);
          }

          [*(*(&v50 + 1) + 8 * i) addConstraints:{-[NSMapTable objectForKey:](self->_placeholderConstraitMap, "objectForKey:", *(*(&v50 + 1) + 8 * i))}];
        }

        v17 = [(NSMapTable *)placeholderConstraitMap countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v17);
    }

    self->_placeholderConstraitMap = 0;
    if (superview)
    {
      transitionCoordinator = v45;
      searchBarWillResizeForScopeBar = v43;
      v5 = v44;
      v8 = &OBJC_IVAR____UIPreviewActionSheetItemView__label;
      if ([(UISearchBar *)superview tableHeaderView]== searchBar)
      {
        *&self->_controllerFlags |= 1u;
        [(UISearchBar *)superview setTableHeaderView:self->_placeholderView];
      }
    }

    else
    {
      transitionCoordinator = v45;
      searchBarWillResizeForScopeBar = v43;
      v5 = v44;
      v8 = &OBJC_IVAR____UIPreviewActionSheetItemView__label;
    }
  }

  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [transitionCoordinator isAnimated]);
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationController *)self backgroundObscuringView]];
    if ([transitionCoordinator isAnimated])
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __97___UISearchPresentationController__presentationTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke;
      v49[3] = &unk_1E711EC78;
      v49[4] = self;
      [transitionCoordinator animateAlongsideTransition:v49 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self showBackgroundObscuringView];
    }
  }

  if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
  {
    locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    if (locatePresentingNavigationController)
    {
      v21 = locatePresentingNavigationController;
      if (([locatePresentingNavigationController isNavigationBarHidden] & 1) == 0)
      {
        [v21 _setNavigationBarHidesCompletelyOffscreen:1];
        [v21 _setSearchHidNavigationBar:1];
        if ([(UISearchBar *)[(UISearchController *)self->_searchController searchBar] _containedInNavigationPalette])
        {
          v22 = [v21 existingPaletteForEdge:2];
          [v22 setVisibleWhenPinningBarIsHidden:1];
          [v22 frame];
          self->_finalFrameForContainerView.origin.x = v23;
          self->_finalFrameForContainerView.origin.y = v24;
          self->_finalFrameForContainerView.size.width = v25;
          self->_finalFrameForContainerView.size.height = v26;
          if ([v22 _supportsSpecialSearchBarTransitions])
          {
            _searchBar = [v22 _searchBar];
            [_searchBar _barHeightForBarMetrics:objc_msgSend(_searchBar barPosition:{"_barMetricsForOrientation:", objc_msgSend(_searchBar, "_expectedInterfaceOrientation")), 3}];
            self->_finalFrameForContainerView.size.height = v28;
          }

          [objc_msgSend(v21 "navigationBar")];
          self->_finalFrameForContainerView.origin.y = self->_finalFrameForContainerView.origin.y - CGRectGetHeight(v56);
        }

        v29 = *MEMORY[0x1E695F058];
        v30 = *(MEMORY[0x1E695F058] + 8);
        v32 = *(MEMORY[0x1E695F058] + 16);
        v31 = *(MEMORY[0x1E695F058] + 24);
        if (v5 && ![(_UISearchPresentationController *)self animatorShouldLayoutPresentationViews])
        {
          [objc_msgSend(v21 "navigationBar")];
          v37 = v36;
          [(UIView *)[(_UISearchPresentationController *)self searchBarContainerView] frame];
          v29 = v38;
          v32 = v39;
          v31 = v40;
          v30 = v41 - v37;
          if ([objc_msgSend(v21 "navigationBar")] == 3)
          {
            [(_UISearchPresentationAssistant *)self->_assistant statusBarAdjustment];
            v30 = v30 - v42;
            v31 = v31 + v42;
          }

          if (fabs(v9) >= 2.22044605e-16)
          {
            v30 = v30 - v9;
          }

          self->_finalFrameForContainerView.origin.x = v29;
          self->_finalFrameForContainerView.origin.y = v30;
          self->_finalFrameForContainerView.size.width = v32;
          self->_finalFrameForContainerView.size.height = v31;
          v33 = 1;
        }

        else
        {
          v33 = 0;
        }

        if ([transitionCoordinator isAnimated])
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __97___UISearchPresentationController__presentationTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_2;
          v47[3] = &unk_1E711ECA0;
          v47[4] = v21;
          v47[5] = self;
          v48 = v33;
          *&v47[7] = v29;
          *&v47[8] = v30;
          *&v47[9] = v32;
          *&v47[10] = v31;
          v47[6] = _refreshControl;
          [transitionCoordinator animateAlongsideTransition:v47 completion:0];
        }

        else
        {
          [v21 setNavigationBarHidden:1 animated:0];
          if (v33)
          {
            [(UIView *)[(_UISearchPresentationController *)self searchBarContainerView] setFrame:v29, v30, v32, v31];
          }
        }
      }
    }
  }

  else
  {
    [(_UISearchPresentationController *)self _updateContainerFinalFrameForNonExcisedSearchBar];
  }

  if (searchBarWillResizeForScopeBar)
  {
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] _scopeBarHeight];
    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:transitionCoordinator transitionCoordinator:0.0, v34];
  }

  if (v5)
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

  *(&self->super.super.isa + v8[488]) = *(&self->super.super.isa + v8[488]) & 0xFD | v35;
}

- (void)_presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)end
{
  if (!end)
  {
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
      if (locatePresentingNavigationController)
      {
        v5 = locatePresentingNavigationController;
        if ([locatePresentingNavigationController _searchHidNavigationBar])
        {
          [v5 setNavigationBarHidden:0 animated:0];
        }
      }
    }
  }

  v6 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v6;
}

- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin
{
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  if ([(UISearchBar *)searchBar _scopeBarIsVisible])
  {
    v5 = ![(UISearchBar *)searchBar _shouldCombineLandscapeBars];
  }

  else
  {
    v5 = 0;
  }

  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    if ([transitionCoordinator isAnimated])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke;
      v29[3] = &unk_1E711EC78;
      v29[4] = self;
      [transitionCoordinator animateAlongsideTransition:v29 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self hideBackgroundObscuringView];
    }
  }

  if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
  {
    locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    if (locatePresentingNavigationController)
    {
      v7 = locatePresentingNavigationController;
      if ([locatePresentingNavigationController _searchHidNavigationBar])
      {
        if ([(UISearchBar *)searchBar _containedInNavigationPalette])
        {
          v8 = [v7 existingPaletteForEdge:2];
          [v8 frame];
          self->_finalFrameForContainerView.origin.x = v9;
          self->_finalFrameForContainerView.origin.y = v10;
          self->_finalFrameForContainerView.size.width = v11;
          self->_finalFrameForContainerView.size.height = v12;
          if ([v8 _supportsSpecialSearchBarTransitions])
          {
            _searchBar = [v8 _searchBar];
            [_searchBar _barHeightForBarMetrics:objc_msgSend(_searchBar barPosition:{"_barMetricsForOrientation:", objc_msgSend(_searchBar, "_expectedInterfaceOrientation")), 2}];
            self->_finalFrameForContainerView.size.height = v14;
          }

          [objc_msgSend(v7 "navigationBar")];
          self->_finalFrameForContainerView.origin.y = CGRectGetHeight(v30) + self->_finalFrameForContainerView.origin.y;
        }

        if ((*&self->_controllerFlags & 2) != 0)
        {
          [objc_msgSend(v7 "navigationBar")];
          v21 = v20;
          [(UIView *)[(_UISearchPresentationController *)self searchBarContainerView] frame];
          v15 = v22;
          v18 = v23;
          v17 = v24;
          v16 = v21 + v25;
          if ([objc_msgSend(v7 "navigationBar")] == 3)
          {
            [(_UISearchPresentationAssistant *)self->_assistant statusBarAdjustment];
            v16 = v16 + v26;
            v17 = v17 - v26;
          }

          self->_finalFrameForContainerView.origin.x = v15;
          self->_finalFrameForContainerView.origin.y = v16;
          self->_finalFrameForContainerView.size.width = v18;
          self->_finalFrameForContainerView.size.height = v17;
        }

        else
        {
          v15 = *MEMORY[0x1E695F058];
          v16 = *(MEMORY[0x1E695F058] + 8);
          v18 = *(MEMORY[0x1E695F058] + 16);
          v17 = *(MEMORY[0x1E695F058] + 24);
        }

        if ([transitionCoordinator isAnimated])
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_2;
          v28[3] = &unk_1E711ECC8;
          v28[4] = v7;
          v28[5] = self;
          *&v28[6] = v15;
          *&v28[7] = v16;
          *&v28[8] = v18;
          *&v28[9] = v17;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke_3;
          v27[3] = &unk_1E711EC78;
          v27[4] = v7;
          [transitionCoordinator animateAlongsideTransition:v28 completion:v27];
        }

        else
        {
          [v7 setNavigationBarHidden:0 animated:0];
          if ((*&self->_controllerFlags & 2) != 0)
          {
            [(UIView *)[(_UISearchPresentationController *)self searchBarContainerView] setFrame:v15, v16, v18, v17];
          }

          [v7 _setNavigationBarHidesCompletelyOffscreen:0];
          [v7 _setSearchHidNavigationBar:0];
        }
      }
    }
  }

  else
  {
    [(_UISearchPresentationController *)self _updateContainerFinalFrameForNonExcisedSearchBar];
  }

  if (v5)
  {
    [(UISearchBar *)searchBar _scopeBarHeight];
    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:transitionCoordinator transitionCoordinator:0.0, -v19];
  }
}

- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)end
{
  if (end)
  {
    transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
    searchController = self->_searchController;
    searchBar = [(UISearchController *)searchController searchBar];
    [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:0];
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    [(_UISearchPresentationAssistant *)self->_assistant removeContainerViewFromSuperview];
    if ([(UISearchBar *)searchBar _containedInNavigationPalette]&& [(UISearchController *)searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      [objc_msgSend(-[_UISearchPresentationAssistant locatePresentingNavigationController](self->_assistant "locatePresentingNavigationController")];
    }

    if (([transitionCoordinator isAnimated] & 1) == 0)
    {
      if ([(UISearchController *)searchController _previousSearchBarPosition]!= -1)
      {
        [(UISearchBar *)searchBar _setBarPosition:[(UISearchController *)searchController _previousSearchBarPosition]];
        v7 = [(UISearchBar *)searchBar barPosition]== 3 && [(UISearchController *)searchController _previousSearchBarPosition]!= 3;
        [(UISearchBar *)searchBar _setMaskActive:v7];
        [(UISearchController *)searchController set_previousSearchBarPosition:-1];
      }

      [(UISearchBar *)searchBar _setScopeBarHidden:1];
    }
  }

  if ([(UISearchController *)self->_searchController _isSearchTextFieldBorrowed])
  {
    [(UISearchController *)self->_searchController _setInlineSearchAccessoryEnabled:0];
  }

  v8 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v8;
}

- (void)_presentationTransitionWithSearchBarHostedByNavBarWillBegin
{
  v47 = *MEMORY[0x1E69E9840];
  [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:1];
  [(_UISearchPresentationAssistant *)self->_assistant searchBarWillResizeForScopeBar];
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [transitionCoordinator isAnimated]);
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationController *)self backgroundObscuringView]];
    if ([transitionCoordinator isAnimated])
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke;
      v40[3] = &unk_1E711EC78;
      v40[4] = self;
      [transitionCoordinator animateAlongsideTransition:v40 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self showBackgroundObscuringView];
    }
  }

  if (!self->_passthroughInteraction && [(_UISearchPresentationController *)self _shouldUsePassthroughInteractionForDismissal])
  {
    v4 = objc_alloc_init(_UIPassthroughScrollInteraction);
    self->_passthroughInteraction = v4;
    [(_UIPassthroughScrollInteraction *)v4 setDelegate:self];
    [(UIView *)[(UIPresentationController *)self containerView] addInteraction:self->_passthroughInteraction];
  }

  locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
  v6 = [-[_UISearchPresentationAssistant locateOriginNavigationController](self->_assistant "locateOriginNavigationController")];
  topItem = [v6 topItem];
  [objc_msgSend(locatePresentingNavigationController "navigationBar")];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2;
  v35 = &unk_1E711ECF0;
  v36 = transitionCoordinator;
  selfCopy = self;
  v38 = v6;
  v39 = locatePresentingNavigationController;
  _searchControllerIfAllowed = [(UINavigationItem *)topItem _searchControllerIfAllowed];
  searchController = self->_searchController;
  if (_searchControllerIfAllowed == searchController)
  {
    isSearchActive = [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)topItem _stackEntry] isSearchActive];
    searchController = self->_searchController;
    if (!isSearchActive)
    {
      if (topItem != [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v30 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            v31 = self->_searchController;
            _navigationItemCurrentlyDisplayingSearchController = [(UISearchController *)v31 _navigationItemCurrentlyDisplayingSearchController];
            *buf = 138412802;
            v42 = v31;
            v43 = 2112;
            v44 = _navigationItemCurrentlyDisplayingSearchController;
            v45 = 2112;
            v46 = topItem;
            _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "SearchController and navigation top item aren't correctly associated. Will assign the item to the search controller. \n\tSearchController=%@\n\tSearchController's navigation item=%@\n\tTop navigation item = %@", buf, 0x20u);
          }
        }

        else
        {
          v21 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_27_2) + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = self->_searchController;
            _navigationItemCurrentlyDisplayingSearchController2 = [(UISearchController *)v22 _navigationItemCurrentlyDisplayingSearchController];
            *buf = 138412802;
            v42 = v22;
            v43 = 2112;
            v44 = _navigationItemCurrentlyDisplayingSearchController2;
            v45 = 2112;
            v46 = topItem;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "SearchController and navigation top item aren't correctly associated. Will assign the item to the search controller. \n\tSearchController=%@\n\tSearchController's navigation item=%@\n\tTop navigation item = %@", buf, 0x20u);
          }
        }

        [(UINavigationItem *)topItem setSearchController:self->_searchController];
      }

      goto LABEL_30;
    }
  }

  _navigationItemCurrentlyDisplayingSearchController3 = [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController];
  _navigationItemCurrentlyDisplayingSearchBar = [(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar];
  v13 = _navigationItemCurrentlyDisplayingSearchBar;
  if (!topItem)
  {
    if ([(UIViewController *)[(UIPresentationController *)self presentingViewController] _tabBarControllerEnforcingClass:1])
    {
      goto LABEL_18;
    }

    if (!os_variant_has_internal_diagnostics())
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A498) + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v16 = "Unexpectedly activating a search controller without either a containing tab bar controller or a top item from the navigation bar";
      v17 = v20;
      v18 = 2;
      goto LABEL_35;
    }

    v29 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v26 = "Unexpectedly activating a search controller without either a containing tab bar controller or a top item from the navigation bar";
      v27 = v29;
      v28 = 2;
      goto LABEL_44;
    }

LABEL_18:
    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (!_navigationItemCurrentlyDisplayingSearchBar || _navigationItemCurrentlyDisplayingSearchBar != topItem)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A490) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      items = [v6 items];
      *buf = 138412546;
      v42 = items;
      v43 = 2112;
      v44 = v13;
      v16 = "Surprise! Activating a search controller whose navigation item for the search bar is not at the top of the stack. This case needs examination in UIKit. items = %@,\nsearch bar hosting item = %@";
      v17 = v14;
      v18 = 22;
LABEL_35:
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      goto LABEL_18;
    }

    v24 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      items2 = [v6 items];
      *buf = 138412546;
      v42 = items2;
      v43 = 2112;
      v44 = v13;
      v26 = "Surprise! Activating a search controller whose navigation item for the search bar is not at the top of the stack. This case needs examination in UIKit. items = %@,\nsearch bar hosting item = %@";
      v27 = v24;
      v28 = 22;
LABEL_44:
      _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, v26, buf, v28);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v13 == _navigationItemCurrentlyDisplayingSearchController3)
  {
    [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)_navigationItemCurrentlyDisplayingSearchController3 _stackEntry] setSearchActive:1];
LABEL_28:
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] _driveTransitionToSearchLayoutState:3];
    goto LABEL_31;
  }

  if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v13 _stackEntry] isSearchActive]|| ![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)_navigationItemCurrentlyDisplayingSearchController3 _stackEntry] isSearchActive])
  {
    navigationBar = [locatePresentingNavigationController navigationBar];
    if ([navigationBar topItem] == _navigationItemCurrentlyDisplayingSearchController3)
    {
      if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)_navigationItemCurrentlyDisplayingSearchController3 _stackEntry] isSearchActive])
      {
        v34(v33, navigationBar);
      }

      if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v13 _stackEntry] isSearchActive])
      {
LABEL_30:
        v34(v33, v6);
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

LABEL_31:
  *&self->_controllerFlags &= ~2u;
}

- (void)_presentationTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)end
{
  if (!end && [(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
  }

  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v4;
}

- (void)_dismissalTransitionWithSearchBarHostedByNavBarWillBegin
{
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    if ([transitionCoordinator isAnimated])
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke;
      v28[3] = &unk_1E711EC78;
      v28[4] = self;
      [transitionCoordinator animateAlongsideTransition:v28 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self hideBackgroundObscuringView];
    }
  }

  passthroughInteraction = self->_passthroughInteraction;
  if (passthroughInteraction)
  {
    [(UIView *)[(_UIPassthroughScrollInteraction *)passthroughInteraction view] removeInteraction:self->_passthroughInteraction];
    self->_passthroughInteraction = 0;
  }

  locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
  v6 = [-[_UISearchPresentationAssistant locateOriginNavigationController](self->_assistant "locateOriginNavigationController")];
  topItem = [v6 topItem];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2;
  v25 = &unk_1E711ED40;
  v26 = transitionCoordinator;
  v27 = locatePresentingNavigationController;
  _searchControllerIfAllowed = [topItem _searchControllerIfAllowed];
  searchController = self->_searchController;
  if (_searchControllerIfAllowed == searchController)
  {
    if ([objc_msgSend(topItem "_stackEntry")])
    {
      v24(v23, v6, 0);
      return;
    }

    searchController = self->_searchController;
  }

  _navigationItemCurrentlyDisplayingSearchController = [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController];
  _navigationItemCurrentlyDisplayingSearchBar = [(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_4;
  v19 = &unk_1E7105CC8;
  v20 = _navigationItemCurrentlyDisplayingSearchController;
  v21 = _navigationItemCurrentlyDisplayingSearchBar;
  selfCopy = self;
  if (_navigationItemCurrentlyDisplayingSearchBar == _navigationItemCurrentlyDisplayingSearchController)
  {
    v15 = _navigationItemCurrentlyDisplayingSearchController;
LABEL_19:
    if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v15 _stackEntry:v16] isSearchActive])
    {
      return;
    }

    goto LABEL_20;
  }

  v12 = _navigationItemCurrentlyDisplayingSearchBar;
  navigationBar = [locatePresentingNavigationController navigationBar];
  topItem2 = [navigationBar topItem];
  if (topItem2 == _navigationItemCurrentlyDisplayingSearchController && [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)topItem2 _stackEntry] isSearchActive])
  {
    v24(v23, navigationBar, v12);
    return;
  }

  if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)_navigationItemCurrentlyDisplayingSearchController _stackEntry] isSearchActive])
  {
    v15 = v12;
    goto LABEL_19;
  }

LABEL_20:
  v18(&v16);
}

- (void)_dismissalTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)end
{
  if (end)
  {
    transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
    searchController = self->_searchController;
    searchBar = [(UISearchController *)searchController searchBar];
    [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:0];
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    [(_UISearchPresentationAssistant *)self->_assistant removeContainerViewFromSuperview];
    if (([transitionCoordinator isAnimated] & 1) == 0)
    {
      if ([(UISearchController *)searchController _previousSearchBarPosition]!= -1)
      {
        [(UISearchBar *)searchBar _setBarPosition:[(UISearchController *)searchController _previousSearchBarPosition]];
        v7 = [(UISearchBar *)searchBar barPosition]== 3 && [(UISearchController *)searchController _previousSearchBarPosition]!= 3;
        [(UISearchBar *)searchBar _setMaskActive:v7];
        [(UISearchController *)searchController set_previousSearchBarPosition:-1];
      }

      if (!searchController)
      {
        goto LABEL_15;
      }

      v8 = (*&searchController->_controllerFlags >> 5) & 3;
      if (v8 != 1)
      {
        if (!v8)
        {
          dyld_program_sdk_at_least();
        }

LABEL_15:
        [(UISearchBar *)searchBar _setScopeBarHidden:1];
      }
    }
  }

  v9 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v9;
}

- (BOOL)_requiresDeferralToCoordinateWithNavigationTransitionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchController])
  {
    v6.receiver = self;
    v6.super_class = _UISearchPresentationController;
    LOBYTE(animatedCopy) = [(UIPresentationController *)&v6 _requiresDeferralToCoordinateWithNavigationTransitionAnimated:animatedCopy];
  }

  return animatedCopy;
}

- (void)presentationTransitionWillBegin
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchController])
  {
    *&self->_controllerFlags |= 8u;
LABEL_3:
    [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarHostedByNavBarWillBegin];
    return;
  }

  _forceSearchBarHostedInNavigationBar = [objc_opt_class() _forceSearchBarHostedInNavigationBar];
  controllerFlags = self->_controllerFlags;
  if (_forceSearchBarHostedInNavigationBar)
  {
    *&self->_controllerFlags = controllerFlags | 8;
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        searchController = self->_searchController;
        v9 = 138412290;
        v10 = searchController;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Attempting presentation of search bar hosted in navigation bar without knowledge of navigation item currently displaying the search controller.\n\tSearchController=%@", &v9, 0xCu);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &presentationTransitionWillBegin___s_category_0) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = self->_searchController;
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Attempting presentation of search bar hosted in navigation bar without knowledge of navigation item currently displaying the search controller.\n\tSearchController=%@", &v9, 0xCu);
      }
    }

    goto LABEL_3;
  }

  *&self->_controllerFlags = controllerFlags & 0xF7;

  [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarNotHostedByNavBarWillBegin];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarHostedByNavBarDidEnd:end];
  }

  else
  {
    [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:end];
  }
}

- (void)dismissalTransitionWillBegin
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarHostedByNavBarWillBegin];
  }

  else
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarHostedByNavBarDidEnd:end];
  }

  else
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:end];
  }
}

- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator
{
  v18.receiver = self;
  v18.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v18 _transitionToPresentationController:controller withTransitionCoordinator:coordinator];
  if ([(UIViewController *)self->_searchController modalPresentationStyle]!= UIModalPresentationPopover)
  {
    [objc_msgSend(controller "searchBarContainerView")];
    [controller resultsControllerContentOffset];
    v7 = v6;
    searchResultsController = [(UISearchController *)self->_searchController searchResultsController];
    v9 = [(UIViewController *)searchResultsController _contentOrObservableScrollViewForEdge:1];
    if (searchResultsController)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = v9;
      if ([(UIViewController *)searchResultsController automaticallyAdjustsScrollViewInsets])
      {
        [v11 contentOffset];
        v13 = v12;
        v15 = v14;
        [v11 contentInset];
        v17 = v15 + v16;
        [v11 setContentInset:{v7, 0.0, 0.0, 0.0}];
        [v11 setContentOffset:{v13, v17}];
      }
    }
  }
}

- (id)_constraintCopyOfConstraint:(id)constraint replaceItem:(id)item withItem:(id)withItem
{
  withItemCopy = [constraint firstItem];
  secondItem = [constraint secondItem];
  if (withItemCopy == item)
  {
    withItemCopy = withItem;
  }

  if (secondItem != item)
  {
    withItem = secondItem;
  }

  v10 = MEMORY[0x1E69977A0];
  firstAttribute = [constraint firstAttribute];
  relation = [constraint relation];
  secondAttribute = [constraint secondAttribute];
  [constraint multiplier];
  v15 = v14;
  [constraint constant];
  v17 = [v10 constraintWithItem:withItemCopy attribute:firstAttribute relatedBy:relation toItem:withItem attribute:secondAttribute multiplier:v15 constant:v16];
  [constraint priority];
  [v17 setPriority:?];
  return v17;
}

- (void)_exciseSearchBarFromCurrentContext
{
  v34 = *MEMORY[0x1E69E9840];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  *&self->_controllerFlags = *&self->_controllerFlags & 0xFB | (*&searchBar->super._viewFlags >> 55) & 4;
  v4 = [UIView alloc];
  [(UIView *)searchBar frame];
  v5 = [(UIView *)v4 initWithFrame:?];
  self->_placeholderView = v5;
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:[(UIView *)searchBar translatesAutoresizingMaskIntoConstraints]];
  if ([(UIView *)searchBar translatesAutoresizingMaskIntoConstraints])
  {
    autoresizingMask = [(UIView *)searchBar autoresizingMask];
    placeholderView = self->_placeholderView;

    [(UIView *)placeholderView setAutoresizingMask:autoresizingMask];
  }

  else
  {
    self->_excisedSearchBarConstraitMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
    v8 = [_UIViewBlockVisitor alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69___UISearchPresentationController__exciseSearchBarFromCurrentContext__block_invoke;
    v31[3] = &unk_1E711ED68;
    v31[4] = searchBar;
    v31[5] = self;
    v9 = [(_UIViewBlockVisitor *)v8 initWithTraversalDirection:1 visitorBlock:v31];
    [(UIView *)searchBar _receiveVisitor:v9];

    self->_placeholderConstraitMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_excisedSearchBarConstraitMap;
    v21 = [(NSMapTable *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v21)
    {
      v20 = *v28;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v10;
          v11 = *(*(&v27 + 1) + 8 * v10);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = [(NSMapTable *)self->_excisedSearchBarConstraitMap objectForKey:v11];
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v23 + 1) + 8 * i);
                array = [(NSMapTable *)self->_placeholderConstraitMap objectForKey:v11];
                if (!array)
                {
                  array = [MEMORY[0x1E695DF70] array];
                  [(NSMapTable *)self->_placeholderConstraitMap setObject:array forKey:v11];
                }

                [array addObject:{-[_UISearchPresentationController _constraintCopyOfConstraint:replaceItem:withItem:](self, "_constraintCopyOfConstraint:replaceItem:withItem:", v17, searchBar, self->_placeholderView)}];
              }

              v14 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
            }

            while (v14);
          }

          v10 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [(NSMapTable *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v21);
    }
  }
}

- (void)_placeSearchBarBackIntoOriginalContext
{
  v18 = *MEMORY[0x1E69E9840];
  placeholderView = self->_placeholderView;
  if (placeholderView)
  {
    superview = [(UIView *)placeholderView superview];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    if (*&self->_controllerFlags)
    {
      v6 = self->_placeholderView;
      objc_opt_class();
      for (; v6; v6 = [(UIView *)v6 superview])
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    [(UIView *)self->_placeholderView removeFromSuperview];
    controllerFlags = self->_controllerFlags;
    if ((controllerFlags & 4) == 0)
    {
      [(UIView *)searchBar removeFromSuperview];
      *&searchBar->super._viewFlags &= ~0x200000000000000uLL;
      controllerFlags = self->_controllerFlags;
    }

    if (controllerFlags)
    {
      [(UIView *)v6 setTableHeaderView:searchBar];
      *&self->_controllerFlags &= ~1u;
    }

    else
    {
      [(UIView *)superview addSubview:searchBar];
    }

    if ([(UIView *)self->_placeholderView translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->_placeholderView frame];
      [(UISearchBar *)searchBar setFrame:?];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      excisedSearchBarConstraitMap = self->_excisedSearchBarConstraitMap;
      v9 = [(NSMapTable *)excisedSearchBarConstraitMap countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(excisedSearchBarConstraitMap);
            }

            [*(*(&v13 + 1) + 8 * i) addConstraints:{-[NSMapTable objectForKey:](self->_excisedSearchBarConstraitMap, "objectForKey:", *(*(&v13 + 1) + 8 * i))}];
          }

          v10 = [(NSMapTable *)excisedSearchBarConstraitMap countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    self->_placeholderView = 0;
    self->_excisedSearchBarConstraitMap = 0;
  }
}

- (double)_visibleRefreshControlHeightForTableView:(id)view
{
  if (!view || ![view _refreshControl] || objc_msgSend(objc_msgSend(view, "_refreshControl"), "refreshControlState") != 2 && objc_msgSend(objc_msgSend(view, "_refreshControl"), "refreshControlState") != 3)
  {
    return 0.0;
  }

  _refreshControl = [view _refreshControl];

  [_refreshControl _visibleHeight];
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = v6;
  v8 = v5;
  MaxY = v4;
  v10 = *MEMORY[0x1E695F058];
  if ([(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    objc_opt_class();
    v7 = v6;
    v8 = v5;
    MaxY = v4;
    v10 = v3;
    if (objc_opt_isKindOfClass())
    {
      [[(UIViewController *)presentingViewController view] frame];
      v10 = v12;
      v8 = v13;
      v15 = v14;
      [-[UIViewController navigationBar](presentingViewController "navigationBar")];
      MaxY = CGRectGetMaxY(v31);
      [-[UIViewController navigationBar](presentingViewController "navigationBar")];
      v7 = v15 - CGRectGetHeight(v32);
    }
  }

  v33.origin.x = v10;
  v33.origin.y = MaxY;
  v33.size.width = v8;
  v33.size.height = v7;
  v35.origin.x = v3;
  v35.origin.y = v4;
  v35.size.width = v5;
  v35.size.height = v6;
  if (CGRectEqualToRect(v33, v35))
  {
    locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] frame];
    v10 = v17;
    MaxY = v18;
    v8 = v19;
    v7 = v20;
    v21 = [locatePresentingNavigationController _shouldNavigationBarInsetViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
    if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self->_searchController, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && [locatePresentingNavigationController _searchHidNavigationBar] && ((-[UIViewController edgesForExtendedLayout](-[UIPresentationController presentingViewController](self, "presentingViewController"), "edgesForExtendedLayout") & 1) == 0) | v21 & 1)
    {
      [locatePresentingNavigationController _frameForViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
      MaxY = MaxY - v22;
      v7 = v7 + v22;
    }

    else if (![(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch]&& [(_UISearchPresentationController *)self forceObeyNavigationBarInsets]&& v21)
    {
      [locatePresentingNavigationController _frameForViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
      v10 = v23;
      MaxY = v24;
      v8 = v25;
      v7 = v26;
    }
  }

  v27 = v10;
  v28 = MaxY;
  v29 = v8;
  v30 = v7;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v5 containerViewWillLayoutSubviews];
  [(UIView *)[(UIPresentationController *)self containerView] bounds];
  [(_UISearchPresentationController *)self _layoutPresentationWithSize:0 transitionCoordinator:v3, v4];
}

- (void)contentSizeCategoryOrLegibilityWeightChanged
{
  [(UIView *)[(UISearchController *)self->_searchController searchBar] layoutIfNeeded];
  containerView = [(UIPresentationController *)self containerView];

  [(UIView *)containerView setNeedsLayout];
}

- (void)_layoutPresentationWithSize:(CGSize)size transitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(_UISearchPresentationAssistant *)self->_assistant setTransitioningToSizeCoordinator:?];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  _scopeBarIsVisible = [(UISearchBar *)searchBar _scopeBarIsVisible];
  if (_scopeBarIsVisible)
  {
    [(UISearchBar *)searchBar _setScopeBarPosition:0];
    if ([(UISearchBar *)searchBar _wouldCombineLandscapeBarsForSize:width, height])
    {
      if ([(UISearchBar *)searchBar _shouldCombineLandscapeBarsForOrientation:[(UIWindow *)[(UIView *)[(UIPresentationController *)self containerView] window] _toWindowOrientation]])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 2;
    }

    [(UISearchBar *)searchBar _setScopeBarPosition:v10];
  }

  if ([(_UISearchPresentationController *)self searchBarToBecomeTopAttached])
  {
    [(UISearchController *)self->_searchController set_previousSearchBarPosition:[(UISearchBar *)searchBar barPosition]];
    [(UISearchBar *)searchBar _setBarPosition:3];
  }

  [(_UISearchPresentationAssistant *)self->_assistant updateSearchBarContainerFrame];
  v13 = v12;
  v14 = v11;
  if (v12 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
  {
    [(_UISearchPresentationAssistant *)self->_assistant statusBarAdjustment];
    v17 = v16;
    if (_scopeBarIsVisible)
    {
      [(UIView *)searchBar sizeToFit];
      [(UIView *)searchBar frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
      {
        v24 = v17;
      }

      else
      {
        v24 = 0.0;
      }

      [(UISearchBar *)searchBar setFrame:v19, v24, v21, v23];
    }

    [(UISearchController *)self->_searchController _updateSearchResultsControllerWithDelta:v13, v14];
    if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      [__UIStatusBarManagerForWindow(-[UIViewController _window](self->_searchController "_window"))];
      v14 = v14 + v25 - v17;
    }

    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:coordinator transitionCoordinator:v13, v14];
    if (self->_placeholderView)
    {
      [(UIView *)searchBar frame];
      v26 = CGRectGetHeight(v46);
      [(UIView *)self->_placeholderView frame];
      x = v47.origin.x;
      y = v47.origin.y;
      v29 = v47.size.width;
      if (CGRectGetHeight(v47) != v26)
      {
        [(UIView *)self->_placeholderView setFrame:x, y, v29, v26];
      }
    }
  }

  if ([(UISearchController *)self->_searchController _barPresentationStyle]== 2)
  {
    searchBar2 = [(UISearchController *)self->_searchController searchBar];
    objc_opt_class();
    if (searchBar2)
    {
      while ((objc_opt_isKindOfClass() & 1) == 0)
      {
        searchBar2 = [(UIView *)searchBar2 superview];
        if (!searchBar2)
        {
          goto LABEL_43;
        }
      }

      window = [(UIView *)[(UIPresentationController *)self containerView] window];
      if (!window)
      {
        window = [(UIViewController *)[(UIPresentationController *)self presentingViewController] _window];
      }

      _fromWindowOrientation = [(UIWindow *)window _fromWindowOrientation];
      _toWindowOrientation = [(UIWindow *)window _toWindowOrientation];
      [UINavigationBar defaultSizeForOrientation:_toWindowOrientation];
      v35 = v34;
      [(UIView *)searchBar2 frame];
      v36 = v35 - CGRectGetHeight(v48);
      if ((([__UIStatusBarManagerForWindow(window) isStatusBarHidden] & 1) != 0 || (objc_msgSend(__UIStatusBarManagerForWindow(window), "defaultStatusBarHeightInOrientation:", _toWindowOrientation), v37 == 0.0)) && (objc_msgSend(__UIStatusBarManagerForWindow(window), "isStatusBarHidden") & 1) == 0 && (objc_msgSend(__UIStatusBarManagerForWindow(window), "defaultStatusBarHeightInOrientation:", _fromWindowOrientation), v38 != 0.0))
      {
        [__UIStatusBarManagerForWindow(window) defaultStatusBarHeightInOrientation:_fromWindowOrientation];
        v36 = v36 - v42;
      }

      else if (([__UIStatusBarManagerForWindow(window) isStatusBarHidden] & 1) == 0)
      {
        [__UIStatusBarManagerForWindow(window) defaultStatusBarHeightInOrientation:_toWindowOrientation];
        if (v39 != 0.0)
        {
          if (([__UIStatusBarManagerForWindow(window) isStatusBarHidden] & 1) != 0 || (objc_msgSend(__UIStatusBarManagerForWindow(window), "defaultStatusBarHeightInOrientation:", _fromWindowOrientation), v40 == 0.0))
          {
            [__UIStatusBarManagerForWindow(window) defaultStatusBarHeightInOrientation:_toWindowOrientation];
            v36 = v36 + v41;
          }
        }
      }

      if (fabs(v36) >= 2.22044605e-16)
      {
        [(UISearchController *)self->_searchController _updateSearchResultsControllerWithDelta:0.0, v36];
      }
    }
  }

LABEL_43:
  [(UISearchController *)self->_searchController _resultsContentScrollViewPresentationOffset];
  if (fabs(v43) >= 2.22044605e-16)
  {
    [(_UISearchPresentationAssistant *)self->_assistant resultsControllerContentOffset];
  }

  assistant = self->_assistant;

  [(_UISearchPresentationAssistant *)assistant setTransitioningToSizeCoordinator:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [_UISearchPresentationController _layoutPresentationWithSize:"_layoutPresentationWithSize:transitionCoordinator:" transitionCoordinator:?];
  v8.receiver = self;
  v8.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
}

- (void)_updatePresentingViewControllerContentScrollViewWithOffsets:(CGSize)offsets transitionCoordinator:(id)coordinator
{
  height = offsets.height;
  width = offsets.width;
  v7 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] _contentOrObservableScrollViewForEdge:1];
  if (v7)
  {
    v8 = v7;
    if ([v7 _compatibleContentInsetAdjustmentBehavior] == 101)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v10 = __117___UISearchPresentationController__updatePresentingViewControllerContentScrollViewWithOffsets_transitionCoordinator___block_invoke;
      v11 = &unk_1E711ED90;
      v12 = v8;
      v13 = width;
      v14 = height;
      if ([coordinator isAnimated])
      {
        [coordinator animateAlongsideTransition:v9 completion:0];
      }

      else
      {
        (v10)(v9, 0);
      }
    }
  }
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  if (-[UIViewController modalPresentationStyle](-[UIPresentationController presentedViewController](self, "presentedViewController"), "modalPresentationStyle") != UIModalPresentationPopover || [collection horizontalSizeClass] != 2)
  {
    return self;
  }

  v5 = [[_UISearchPopoverPresentationController alloc] initWithPresentedViewController:[(UIPresentationController *)self presentedViewController] presentingViewController:[(UIPresentationController *)self presentingViewController]];

  return v5;
}

- (id)_createVisualStyleForProvider:(id)provider
{
  result = [provider styleForSearchPresentationController:self];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = _UISearchPresentationController;
    return [(UIPresentationController *)&v6 _createVisualStyleForProvider:provider];
  }

  return result;
}

- (BOOL)_shouldUsePassthroughInteractionForDismissal
{
  traitCollection = [(UIView *)[(UISearchController *)self->_searchController searchBar] traitCollection];
  v3 = _UISolariumEnabled();
  if (v3)
  {
    LOBYTE(v3) = [(UITraitCollection *)traitCollection userInterfaceIdiom]== UIUserInterfaceIdiomPad;
  }

  return v3;
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  v32 = *MEMORY[0x1E69E9840];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  if ([(UISearchTextField *)[(UISearchBar *)searchBar searchTextField] _hasContent])
  {
    goto LABEL_4;
  }

  view = [interaction view];
  [view convertPoint:searchBar toView:{x, y}];
  if ([(UIView *)searchBar pointInside:event withEvent:?]|| [(UISearchTextField *)[(UISearchBar *)[(UISearchController *)self->_searchController searchBar] searchTextField] _alwaysShowsClearButtonWhenEmptyAndActive])
  {
    goto LABEL_4;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  childViewControllers = [(UIViewController *)self->_searchController childViewControllers];
  v14 = [(NSArray *)childViewControllers countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(childViewControllers);
      }

      viewIfLoaded = [*(*(&v27 + 1) + 8 * v17) viewIfLoaded];
      [view convertPoint:viewIfLoaded toView:{x, y}];
      v20 = v19;
      v22 = v21;
      if ([viewIfLoaded isHidden] & 1) == 0 && (objc_msgSend(viewIfLoaded, "pointInside:withEvent:", event, v20, v22))
      {
        goto LABEL_4;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSArray *)childViewControllers countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  _navigationBar = [(UINavigationItem *)[(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar] _navigationBar];
  [view convertPoint:_navigationBar toView:{x, y}];
  if ([(UIView *)_navigationBar pointInside:event withEvent:?])
  {
    _tabBarHostedView = [(UINavigationBar *)_navigationBar _tabBarHostedView];
    [view convertPoint:_tabBarHostedView toView:{x, y}];
    if ([(_UITabContainerView *)_tabBarHostedView hitTest:event withEvent:?])
    {
LABEL_4:
      LOBYTE(v12) = 0;
      return v12;
    }
  }

  if (!-[UISearchController _hasVisibleSuggestionsMenu](self->_searchController, "_hasVisibleSuggestionsMenu") && !-[UISearchTextField _isPresentingEditMenu](-[UISearchBar searchTextField](searchBar, "searchTextField"), "_isPresentingEditMenu") || (v25 = -[UIView window](searchBar, "window"), [view convertPoint:0 toView:{x, y}], v12 = -[UIView isDescendantOfView:](-[UIView hitTest:withEvent:](v25, "hitTest:withEvent:", event), "isDescendantOfView:", -[UIViewController view](-[UIWindow rootViewController](v25, "rootViewController"), "view"))))
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (CGRect)finalFrameForContainerView
{
  x = self->_finalFrameForContainerView.origin.x;
  y = self->_finalFrameForContainerView.origin.y;
  width = self->_finalFrameForContainerView.size.width;
  height = self->_finalFrameForContainerView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end