@interface _UISearchPresentationController
+ (BOOL)shouldExciseSearchBar:(id)a3 duringPresentationWithPresenter:(id)a4;
- (BOOL)_requiresDeferralToCoordinateWithNavigationTransitionAnimated:(BOOL)a3;
- (BOOL)_shouldAnchorSearchTextFieldToKeyboard;
- (BOOL)_shouldUsePassthroughInteractionForDismissal;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (CGRect)finalFrameForContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (_UISearchPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (double)_visibleRefreshControlHeightForTableView:(id)a3;
- (id)_constraintCopyOfConstraint:(id)a3 replaceItem:(id)a4 withItem:(id)a5;
- (id)_createVisualStyleForProvider:(id)a3;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (void)_dismissalTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)a3;
- (void)_dismissalTransitionWithSearchBarHostedByNavBarWillBegin;
- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)a3;
- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin;
- (void)_exciseSearchBarFromCurrentContext;
- (void)_layoutPresentationWithSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)_placeSearchBarBackIntoOriginalContext;
- (void)_presentationTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)a3;
- (void)_presentationTransitionWithSearchBarHostedByNavBarWillBegin;
- (void)_presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)a3;
- (void)_presentationTransitionWithSearchBarNotHostedByNavBarWillBegin;
- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_updateContainerFinalFrameForNonExcisedSearchBar;
- (void)_updatePresentingViewControllerContentScrollViewWithOffsets:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)containerViewWillLayoutSubviews;
- (void)contentSizeCategoryOrLegibilityWeightChanged;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)hideBackgroundObscuringView;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)showBackgroundObscuringView;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UISearchPresentationController

- (_UISearchPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = _UISearchPresentationController;
  v8 = [(UIPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v8)
  {
    v8->_assistant = [[_UISearchPresentationAssistant alloc] initWithSearchPresentationController:v8];
    v8->_searchController = a3;
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

+ (BOOL)shouldExciseSearchBar:(id)a3 duringPresentationWithPresenter:(id)a4
{
  v6 = [a3 window];
  if (v6)
  {
    objc_opt_class();
    if (!a3)
    {
      objc_opt_class();
      objc_opt_class();
      if (a4)
      {
LABEL_16:
        LODWORD(v6) = [objc_msgSend(a4 "_existingView")];
        if (!v6)
        {
          return v6;
        }
      }

LABEL_17:
      LOBYTE(v6) = 1;
      return v6;
    }

    v7 = a3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v7 superview];
      if (!v7)
      {
        objc_opt_class();
        v8 = a3;
        while ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = [v8 superview];
          if (!v8)
          {
            objc_opt_class();
            v9 = a3;
            while ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v9 = [v9 superview];
              if (!v9)
              {
                if (a4)
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
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_updateContainerFinalFrameForNonExcisedSearchBar
{
  v3 = [(UISearchController *)self->_searchController searchBar];
  objc_opt_class();
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [(UIView *)v4 superview];
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v5 = v4;
  }

  else
  {
LABEL_5:
    if (![(UISearchBar *)v3 _containedInNavigationPalette])
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
  v2 = [(_UISearchPresentationAssistant *)self->_assistant dimmingView];

  [v2 display:1];
}

- (void)hideBackgroundObscuringView
{
  v2 = [(_UISearchPresentationAssistant *)self->_assistant dimmingView];

  [v2 display:0];
}

- (BOOL)_shouldAnchorSearchTextFieldToKeyboard
{
  v3 = [(UISearchController *)self->_searchController _prefersSearchTextFieldAnchoredToKeyboard];
  if (v3)
  {
    LOBYTE(v3) = [(UIPresentationController *)self presentationStyle]== UIModalPresentationCustom;
  }

  return v3;
}

- (void)_presentationTransitionWithSearchBarNotHostedByNavBarWillBegin
{
  v55 = *MEMORY[0x1E69E9840];
  [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:1];
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(_UISearchPresentationController *)self _shouldAnchorSearchTextFieldToKeyboard])
  {
    [(UISearchController *)self->_searchController _setInlineSearchAccessoryEnabled:1];
  }

  if (![(_UINavigationControllerManagedSearchPalette *)[(UISearchController *)self->_searchController _managedPalette] _supportsSpecialSearchBarTransitions])
  {
    [(_UISearchPresentationAssistant *)self->_assistant ensureAppropriatelySizedSearchBar:[(UISearchController *)self->_searchController searchBar]];
  }

  v4 = [(UISearchController *)self->_searchController searchBar];
  v5 = [_UISearchPresentationController shouldExciseSearchBar:v4 duringPresentationWithPresenter:[(UIPresentationController *)self presentingViewController]];
  v6 = [(_UISearchPresentationAssistant *)self->_assistant searchBarWillResizeForScopeBar];
  if ([(UIView *)v4 window])
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
    v46 = 0;
    v9 = 0.0;
  }

  else
  {
    objc_opt_class();
    if (v4)
    {
      v10 = v4;
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v10 = [(UIView *)v10 superview];
      }

      while (v10);
    }

    else
    {
      v10 = 0;
    }

    [(_UISearchPresentationController *)self _visibleRefreshControlHeightForTableView:v10];
    v9 = v11;
    v45 = v3;
    v43 = v6;
    v44 = v5;
    if (fabs(v11) >= 2.22044605e-16)
    {
      v46 = [(UISearchBar *)v10 _refreshControl];
    }

    else
    {
      v46 = 0;
    }

    v12 = [(UIView *)v4 superview];
    v13 = [(_UISearchPresentationController *)self searchBarContainerView];
    v14 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] view];
    if ([(UISearchController *)self->_searchController _searchbarWasTableHeaderView])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UISearchBar *)v4 _setMaskActive:0];
        [(UIView *)v14 adjustedContentInset];
        [(UIView *)v13 frame];
        [(UIView *)v13 setFrame:?];
      }
    }

    if ([(UISearchBar *)v4 isFirstResponder])
    {
      [UIView _setIsResponderAncestorOfFirstResponder:v12 startingAtFirstResponder:?];
    }

    [(_UISearchPresentationController *)self _exciseSearchBarFromCurrentContext];
    [(UISearchBar *)v4 _setTransplanting:1];
    [(UIView *)v4 removeFromSuperview];
    [(UIView *)v12 addSubview:self->_placeholderView];
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
    if (v10)
    {
      v3 = v45;
      v6 = v43;
      v5 = v44;
      v8 = &OBJC_IVAR____UIPreviewActionSheetItemView__label;
      if ([(UISearchBar *)v10 tableHeaderView]== v4)
      {
        *&self->_controllerFlags |= 1u;
        [(UISearchBar *)v10 setTableHeaderView:self->_placeholderView];
      }
    }

    else
    {
      v3 = v45;
      v6 = v43;
      v5 = v44;
      v8 = &OBJC_IVAR____UIPreviewActionSheetItemView__label;
    }
  }

  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [v3 isAnimated]);
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationController *)self backgroundObscuringView]];
    if ([v3 isAnimated])
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __97___UISearchPresentationController__presentationTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke;
      v49[3] = &unk_1E711EC78;
      v49[4] = self;
      [v3 animateAlongsideTransition:v49 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self showBackgroundObscuringView];
    }
  }

  if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
  {
    v20 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    if (v20)
    {
      v21 = v20;
      if (([v20 isNavigationBarHidden] & 1) == 0)
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
            v27 = [v22 _searchBar];
            [v27 _barHeightForBarMetrics:objc_msgSend(v27 barPosition:{"_barMetricsForOrientation:", objc_msgSend(v27, "_expectedInterfaceOrientation")), 3}];
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

        if ([v3 isAnimated])
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
          v47[6] = v46;
          [v3 animateAlongsideTransition:v47 completion:0];
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

  if (v6)
  {
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] _scopeBarHeight];
    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:v3 transitionCoordinator:0.0, v34];
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

- (void)_presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)a3
{
  if (!a3)
  {
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      v4 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
      if (v4)
      {
        v5 = v4;
        if ([v4 _searchHidNavigationBar])
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
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  v4 = [(UISearchController *)self->_searchController searchBar];
  if ([(UISearchBar *)v4 _scopeBarIsVisible])
  {
    v5 = ![(UISearchBar *)v4 _shouldCombineLandscapeBars];
  }

  else
  {
    v5 = 0;
  }

  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    if ([v3 isAnimated])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __94___UISearchPresentationController__dismissalTransitionWithSearchBarNotHostedByNavBarWillBegin__block_invoke;
      v29[3] = &unk_1E711EC78;
      v29[4] = self;
      [v3 animateAlongsideTransition:v29 completion:0];
    }

    else
    {
      [(_UISearchPresentationController *)self hideBackgroundObscuringView];
    }
  }

  if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
  {
    v6 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    if (v6)
    {
      v7 = v6;
      if ([v6 _searchHidNavigationBar])
      {
        if ([(UISearchBar *)v4 _containedInNavigationPalette])
        {
          v8 = [v7 existingPaletteForEdge:2];
          [v8 frame];
          self->_finalFrameForContainerView.origin.x = v9;
          self->_finalFrameForContainerView.origin.y = v10;
          self->_finalFrameForContainerView.size.width = v11;
          self->_finalFrameForContainerView.size.height = v12;
          if ([v8 _supportsSpecialSearchBarTransitions])
          {
            v13 = [v8 _searchBar];
            [v13 _barHeightForBarMetrics:objc_msgSend(v13 barPosition:{"_barMetricsForOrientation:", objc_msgSend(v13, "_expectedInterfaceOrientation")), 2}];
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

        if ([v3 isAnimated])
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
          [v3 animateAlongsideTransition:v28 completion:v27];
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
    [(UISearchBar *)v4 _scopeBarHeight];
    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:v3 transitionCoordinator:0.0, -v19];
  }
}

- (void)_dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
    searchController = self->_searchController;
    v6 = [(UISearchController *)searchController searchBar];
    [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:0];
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    [(_UISearchPresentationAssistant *)self->_assistant removeContainerViewFromSuperview];
    if ([(UISearchBar *)v6 _containedInNavigationPalette]&& [(UISearchController *)searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      [objc_msgSend(-[_UISearchPresentationAssistant locatePresentingNavigationController](self->_assistant "locatePresentingNavigationController")];
    }

    if (([v4 isAnimated] & 1) == 0)
    {
      if ([(UISearchController *)searchController _previousSearchBarPosition]!= -1)
      {
        [(UISearchBar *)v6 _setBarPosition:[(UISearchController *)searchController _previousSearchBarPosition]];
        v7 = [(UISearchBar *)v6 barPosition]== 3 && [(UISearchController *)searchController _previousSearchBarPosition]!= 3;
        [(UISearchBar *)v6 _setMaskActive:v7];
        [(UISearchController *)searchController set_previousSearchBarPosition:-1];
      }

      [(UISearchBar *)v6 _setScopeBarHidden:1];
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
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [v3 isAnimated]);
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationController *)self backgroundObscuringView]];
    if ([v3 isAnimated])
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke;
      v40[3] = &unk_1E711EC78;
      v40[4] = self;
      [v3 animateAlongsideTransition:v40 completion:0];
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

  v5 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
  v6 = [-[_UISearchPresentationAssistant locateOriginNavigationController](self->_assistant "locateOriginNavigationController")];
  v7 = [v6 topItem];
  [objc_msgSend(v5 "navigationBar")];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __94___UISearchPresentationController__presentationTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2;
  v35 = &unk_1E711ECF0;
  v36 = v3;
  v37 = self;
  v38 = v6;
  v39 = v5;
  v8 = [(UINavigationItem *)v7 _searchControllerIfAllowed];
  searchController = self->_searchController;
  if (v8 == searchController)
  {
    v10 = [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v7 _stackEntry] isSearchActive];
    searchController = self->_searchController;
    if (!v10)
    {
      if (v7 != [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v30 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            v31 = self->_searchController;
            v32 = [(UISearchController *)v31 _navigationItemCurrentlyDisplayingSearchController];
            *buf = 138412802;
            v42 = v31;
            v43 = 2112;
            v44 = v32;
            v45 = 2112;
            v46 = v7;
            _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "SearchController and navigation top item aren't correctly associated. Will assign the item to the search controller. \n\tSearchController=%@\n\tSearchController's navigation item=%@\n\tTop navigation item = %@", buf, 0x20u);
          }
        }

        else
        {
          v21 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_27_2) + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = self->_searchController;
            v23 = [(UISearchController *)v22 _navigationItemCurrentlyDisplayingSearchController];
            *buf = 138412802;
            v42 = v22;
            v43 = 2112;
            v44 = v23;
            v45 = 2112;
            v46 = v7;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "SearchController and navigation top item aren't correctly associated. Will assign the item to the search controller. \n\tSearchController=%@\n\tSearchController's navigation item=%@\n\tTop navigation item = %@", buf, 0x20u);
          }
        }

        [(UINavigationItem *)v7 setSearchController:self->_searchController];
      }

      goto LABEL_30;
    }
  }

  v11 = [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController];
  v12 = [(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar];
  v13 = v12;
  if (!v7)
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

  if (!v12 || v12 != v7)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A490) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v15 = [v6 items];
      *buf = 138412546;
      v42 = v15;
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
      v25 = [v6 items];
      *buf = 138412546;
      v42 = v25;
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
  if (v13 == v11)
  {
    [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v11 _stackEntry] setSearchActive:1];
LABEL_28:
    [(UISearchBar *)[(UISearchController *)self->_searchController searchBar] _driveTransitionToSearchLayoutState:3];
    goto LABEL_31;
  }

  if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v13 _stackEntry] isSearchActive]|| ![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v11 _stackEntry] isSearchActive])
  {
    v19 = [v5 navigationBar];
    if ([v19 topItem] == v11)
    {
      if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v11 _stackEntry] isSearchActive])
      {
        v34(v33, v19);
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

- (void)_presentationTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)a3
{
  if (!a3 && [(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
  }

  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v4;
}

- (void)_dismissalTransitionWithSearchBarHostedByNavBarWillBegin
{
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(UISearchController *)self->_searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
  {
    if ([v3 isAnimated])
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke;
      v28[3] = &unk_1E711EC78;
      v28[4] = self;
      [v3 animateAlongsideTransition:v28 completion:0];
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

  v5 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
  v6 = [-[_UISearchPresentationAssistant locateOriginNavigationController](self->_assistant "locateOriginNavigationController")];
  v7 = [v6 topItem];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_2;
  v25 = &unk_1E711ED40;
  v26 = v3;
  v27 = v5;
  v8 = [v7 _searchControllerIfAllowed];
  searchController = self->_searchController;
  if (v8 == searchController)
  {
    if ([objc_msgSend(v7 "_stackEntry")])
    {
      v24(v23, v6, 0);
      return;
    }

    searchController = self->_searchController;
  }

  v10 = [(UISearchController *)searchController _navigationItemCurrentlyDisplayingSearchController];
  v11 = [(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __91___UISearchPresentationController__dismissalTransitionWithSearchBarHostedByNavBarWillBegin__block_invoke_4;
  v19 = &unk_1E7105CC8;
  v20 = v10;
  v21 = v11;
  v22 = self;
  if (v11 == v10)
  {
    v15 = v10;
LABEL_19:
    if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v15 _stackEntry:v16] isSearchActive])
    {
      return;
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = [v5 navigationBar];
  v14 = [v13 topItem];
  if (v14 == v10 && [(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v14 _stackEntry] isSearchActive])
  {
    v24(v23, v13, v12);
    return;
  }

  if (![(_UINavigationBarItemStackEntry *)[(UINavigationItem *)v10 _stackEntry] isSearchActive])
  {
    v15 = v12;
    goto LABEL_19;
  }

LABEL_20:
  v18(&v16);
}

- (void)_dismissalTransitionWithSearchBarHostedByNavBarDidEnd:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
    searchController = self->_searchController;
    v6 = [(UISearchController *)searchController searchBar];
    [(UIPresentationController *)self _setContainerIgnoresDirectTouchEvents:0];
    [(_UISearchPresentationController *)self _placeSearchBarBackIntoOriginalContext];
    if ([(UISearchController *)searchController obscuresBackgroundDuringPresentation]&& ![(_UISearchPresentationAssistant *)self->_assistant presentationIsPopoverToOverFullScreenAdaptation])
    {
      [(UIView *)[(_UISearchPresentationController *)self backgroundObscuringView] removeFromSuperview];
    }

    [(_UISearchPresentationAssistant *)self->_assistant removeContainerViewFromSuperview];
    if (([v4 isAnimated] & 1) == 0)
    {
      if ([(UISearchController *)searchController _previousSearchBarPosition]!= -1)
      {
        [(UISearchBar *)v6 _setBarPosition:[(UISearchController *)searchController _previousSearchBarPosition]];
        v7 = [(UISearchBar *)v6 barPosition]== 3 && [(UISearchController *)searchController _previousSearchBarPosition]!= 3;
        [(UISearchBar *)v6 _setMaskActive:v7];
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
        [(UISearchBar *)v6 _setScopeBarHidden:1];
      }
    }
  }

  v9 = *(MEMORY[0x1E695F058] + 16);
  self->_finalFrameForContainerView.origin = *MEMORY[0x1E695F058];
  self->_finalFrameForContainerView.size = v9;
}

- (BOOL)_requiresDeferralToCoordinateWithNavigationTransitionAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchController])
  {
    v6.receiver = self;
    v6.super_class = _UISearchPresentationController;
    LOBYTE(v3) = [(UIPresentationController *)&v6 _requiresDeferralToCoordinateWithNavigationTransitionAnimated:v3];
  }

  return v3;
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

  v3 = [objc_opt_class() _forceSearchBarHostedInNavigationBar];
  controllerFlags = self->_controllerFlags;
  if (v3)
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

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarHostedByNavBarDidEnd:a3];
  }

  else
  {
    [(_UISearchPresentationController *)self _presentationTransitionWithSearchBarNotHostedByNavBarDidEnd:a3];
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

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if ((*&self->_controllerFlags & 8) != 0)
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarHostedByNavBarDidEnd:a3];
  }

  else
  {
    [(_UISearchPresentationController *)self _dismissalTransitionWithSearchBarNotHostedByNavBarDidEnd:a3];
  }
}

- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4
{
  v18.receiver = self;
  v18.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v18 _transitionToPresentationController:a3 withTransitionCoordinator:a4];
  if ([(UIViewController *)self->_searchController modalPresentationStyle]!= UIModalPresentationPopover)
  {
    [objc_msgSend(a3 "searchBarContainerView")];
    [a3 resultsControllerContentOffset];
    v7 = v6;
    v8 = [(UISearchController *)self->_searchController searchResultsController];
    v9 = [(UIViewController *)v8 _contentOrObservableScrollViewForEdge:1];
    if (v8)
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
      if ([(UIViewController *)v8 automaticallyAdjustsScrollViewInsets])
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

- (id)_constraintCopyOfConstraint:(id)a3 replaceItem:(id)a4 withItem:(id)a5
{
  v8 = [a3 firstItem];
  v9 = [a3 secondItem];
  if (v8 == a4)
  {
    v8 = a5;
  }

  if (v9 != a4)
  {
    a5 = v9;
  }

  v10 = MEMORY[0x1E69977A0];
  v11 = [a3 firstAttribute];
  v12 = [a3 relation];
  v13 = [a3 secondAttribute];
  [a3 multiplier];
  v15 = v14;
  [a3 constant];
  v17 = [v10 constraintWithItem:v8 attribute:v11 relatedBy:v12 toItem:a5 attribute:v13 multiplier:v15 constant:v16];
  [a3 priority];
  [v17 setPriority:?];
  return v17;
}

- (void)_exciseSearchBarFromCurrentContext
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(UISearchController *)self->_searchController searchBar];
  *&self->_controllerFlags = *&self->_controllerFlags & 0xFB | (*&v3->super._viewFlags >> 55) & 4;
  v4 = [UIView alloc];
  [(UIView *)v3 frame];
  v5 = [(UIView *)v4 initWithFrame:?];
  self->_placeholderView = v5;
  [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:[(UIView *)v3 translatesAutoresizingMaskIntoConstraints]];
  if ([(UIView *)v3 translatesAutoresizingMaskIntoConstraints])
  {
    v6 = [(UIView *)v3 autoresizingMask];
    placeholderView = self->_placeholderView;

    [(UIView *)placeholderView setAutoresizingMask:v6];
  }

  else
  {
    self->_excisedSearchBarConstraitMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:0];
    v8 = [_UIViewBlockVisitor alloc];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69___UISearchPresentationController__exciseSearchBarFromCurrentContext__block_invoke;
    v31[3] = &unk_1E711ED68;
    v31[4] = v3;
    v31[5] = self;
    v9 = [(_UIViewBlockVisitor *)v8 initWithTraversalDirection:1 visitorBlock:v31];
    [(UIView *)v3 _receiveVisitor:v9];

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
                v18 = [(NSMapTable *)self->_placeholderConstraitMap objectForKey:v11];
                if (!v18)
                {
                  v18 = [MEMORY[0x1E695DF70] array];
                  [(NSMapTable *)self->_placeholderConstraitMap setObject:v18 forKey:v11];
                }

                [v18 addObject:{-[_UISearchPresentationController _constraintCopyOfConstraint:replaceItem:withItem:](self, "_constraintCopyOfConstraint:replaceItem:withItem:", v17, v3, self->_placeholderView)}];
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
    v4 = [(UIView *)placeholderView superview];
    v5 = [(UISearchController *)self->_searchController searchBar];
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
      [(UIView *)v5 removeFromSuperview];
      *&v5->super._viewFlags &= ~0x200000000000000uLL;
      controllerFlags = self->_controllerFlags;
    }

    if (controllerFlags)
    {
      [(UIView *)v6 setTableHeaderView:v5];
      *&self->_controllerFlags &= ~1u;
    }

    else
    {
      [(UIView *)v4 addSubview:v5];
    }

    if ([(UIView *)self->_placeholderView translatesAutoresizingMaskIntoConstraints])
    {
      [(UIView *)self->_placeholderView frame];
      [(UISearchBar *)v5 setFrame:?];
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

- (double)_visibleRefreshControlHeightForTableView:(id)a3
{
  if (!a3 || ![a3 _refreshControl] || objc_msgSend(objc_msgSend(a3, "_refreshControl"), "refreshControlState") != 2 && objc_msgSend(objc_msgSend(a3, "_refreshControl"), "refreshControlState") != 3)
  {
    return 0.0;
  }

  v4 = [a3 _refreshControl];

  [v4 _visibleHeight];
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
    v11 = [(UIPresentationController *)self presentingViewController];
    objc_opt_class();
    v7 = v6;
    v8 = v5;
    MaxY = v4;
    v10 = v3;
    if (objc_opt_isKindOfClass())
    {
      [[(UIViewController *)v11 view] frame];
      v10 = v12;
      v8 = v13;
      v15 = v14;
      [-[UIViewController navigationBar](v11 "navigationBar")];
      MaxY = CGRectGetMaxY(v31);
      [-[UIViewController navigationBar](v11 "navigationBar")];
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
    v16 = [(_UISearchPresentationAssistant *)self->_assistant locatePresentingNavigationController];
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] frame];
    v10 = v17;
    MaxY = v18;
    v8 = v19;
    v7 = v20;
    v21 = [v16 _shouldNavigationBarInsetViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
    if (-[UISearchController _hidesNavigationBarDuringPresentationRespectingInlineSearch](self->_searchController, "_hidesNavigationBarDuringPresentationRespectingInlineSearch") && [v16 _searchHidNavigationBar] && ((-[UIViewController edgesForExtendedLayout](-[UIPresentationController presentingViewController](self, "presentingViewController"), "edgesForExtendedLayout") & 1) == 0) | v21 & 1)
    {
      [v16 _frameForViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
      MaxY = MaxY - v22;
      v7 = v7 + v22;
    }

    else if (![(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch]&& [(_UISearchPresentationController *)self forceObeyNavigationBarInsets]&& v21)
    {
      [v16 _frameForViewController:{-[UIPresentationController presentingViewController](self, "presentingViewController")}];
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
  v3 = [(UIPresentationController *)self containerView];

  [(UIView *)v3 setNeedsLayout];
}

- (void)_layoutPresentationWithSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(_UISearchPresentationAssistant *)self->_assistant setTransitioningToSizeCoordinator:?];
  v8 = [(UISearchController *)self->_searchController searchBar];
  v9 = [(UISearchBar *)v8 _scopeBarIsVisible];
  if (v9)
  {
    [(UISearchBar *)v8 _setScopeBarPosition:0];
    if ([(UISearchBar *)v8 _wouldCombineLandscapeBarsForSize:width, height])
    {
      if ([(UISearchBar *)v8 _shouldCombineLandscapeBarsForOrientation:[(UIWindow *)[(UIView *)[(UIPresentationController *)self containerView] window] _toWindowOrientation]])
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

    [(UISearchBar *)v8 _setScopeBarPosition:v10];
  }

  if ([(_UISearchPresentationController *)self searchBarToBecomeTopAttached])
  {
    [(UISearchController *)self->_searchController set_previousSearchBarPosition:[(UISearchBar *)v8 barPosition]];
    [(UISearchBar *)v8 _setBarPosition:3];
  }

  [(_UISearchPresentationAssistant *)self->_assistant updateSearchBarContainerFrame];
  v13 = v12;
  v14 = v11;
  if (v12 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
  {
    [(_UISearchPresentationAssistant *)self->_assistant statusBarAdjustment];
    v17 = v16;
    if (v9)
    {
      [(UIView *)v8 sizeToFit];
      [(UIView *)v8 frame];
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

      [(UISearchBar *)v8 setFrame:v19, v24, v21, v23];
    }

    [(UISearchController *)self->_searchController _updateSearchResultsControllerWithDelta:v13, v14];
    if ([(UISearchController *)self->_searchController _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      [__UIStatusBarManagerForWindow(-[UIViewController _window](self->_searchController "_window"))];
      v14 = v14 + v25 - v17;
    }

    [(_UISearchPresentationController *)self _updatePresentingViewControllerContentScrollViewWithOffsets:a4 transitionCoordinator:v13, v14];
    if (self->_placeholderView)
    {
      [(UIView *)v8 frame];
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
    v30 = [(UISearchController *)self->_searchController searchBar];
    objc_opt_class();
    if (v30)
    {
      while ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = [(UIView *)v30 superview];
        if (!v30)
        {
          goto LABEL_43;
        }
      }

      v31 = [(UIView *)[(UIPresentationController *)self containerView] window];
      if (!v31)
      {
        v31 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] _window];
      }

      v32 = [(UIWindow *)v31 _fromWindowOrientation];
      v33 = [(UIWindow *)v31 _toWindowOrientation];
      [UINavigationBar defaultSizeForOrientation:v33];
      v35 = v34;
      [(UIView *)v30 frame];
      v36 = v35 - CGRectGetHeight(v48);
      if ((([__UIStatusBarManagerForWindow(v31) isStatusBarHidden] & 1) != 0 || (objc_msgSend(__UIStatusBarManagerForWindow(v31), "defaultStatusBarHeightInOrientation:", v33), v37 == 0.0)) && (objc_msgSend(__UIStatusBarManagerForWindow(v31), "isStatusBarHidden") & 1) == 0 && (objc_msgSend(__UIStatusBarManagerForWindow(v31), "defaultStatusBarHeightInOrientation:", v32), v38 != 0.0))
      {
        [__UIStatusBarManagerForWindow(v31) defaultStatusBarHeightInOrientation:v32];
        v36 = v36 - v42;
      }

      else if (([__UIStatusBarManagerForWindow(v31) isStatusBarHidden] & 1) == 0)
      {
        [__UIStatusBarManagerForWindow(v31) defaultStatusBarHeightInOrientation:v33];
        if (v39 != 0.0)
        {
          if (([__UIStatusBarManagerForWindow(v31) isStatusBarHidden] & 1) != 0 || (objc_msgSend(__UIStatusBarManagerForWindow(v31), "defaultStatusBarHeightInOrientation:", v32), v40 == 0.0))
          {
            [__UIStatusBarManagerForWindow(v31) defaultStatusBarHeightInOrientation:v33];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  [_UISearchPresentationController _layoutPresentationWithSize:"_layoutPresentationWithSize:transitionCoordinator:" transitionCoordinator:?];
  v8.receiver = self;
  v8.super_class = _UISearchPresentationController;
  [(UIPresentationController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
}

- (void)_updatePresentingViewControllerContentScrollViewWithOffsets:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
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
      if ([a4 isAnimated])
      {
        [a4 animateAlongsideTransition:v9 completion:0];
      }

      else
      {
        (v10)(v9, 0);
      }
    }
  }
}

- (id)_presentationControllerForTraitCollection:(id)a3
{
  if (-[UIViewController modalPresentationStyle](-[UIPresentationController presentedViewController](self, "presentedViewController"), "modalPresentationStyle") != UIModalPresentationPopover || [a3 horizontalSizeClass] != 2)
  {
    return self;
  }

  v5 = [[_UISearchPopoverPresentationController alloc] initWithPresentedViewController:[(UIPresentationController *)self presentedViewController] presentingViewController:[(UIPresentationController *)self presentingViewController]];

  return v5;
}

- (id)_createVisualStyleForProvider:(id)a3
{
  result = [a3 styleForSearchPresentationController:self];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = _UISearchPresentationController;
    return [(UIPresentationController *)&v6 _createVisualStyleForProvider:a3];
  }

  return result;
}

- (BOOL)_shouldUsePassthroughInteractionForDismissal
{
  v2 = [(UIView *)[(UISearchController *)self->_searchController searchBar] traitCollection];
  v3 = _UISolariumEnabled();
  if (v3)
  {
    LOBYTE(v3) = [(UITraitCollection *)v2 userInterfaceIdiom]== UIUserInterfaceIdiomPad;
  }

  return v3;
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v32 = *MEMORY[0x1E69E9840];
  v10 = [(UISearchController *)self->_searchController searchBar];
  if ([(UISearchTextField *)[(UISearchBar *)v10 searchTextField] _hasContent])
  {
    goto LABEL_4;
  }

  v11 = [a3 view];
  [v11 convertPoint:v10 toView:{x, y}];
  if ([(UIView *)v10 pointInside:a5 withEvent:?]|| [(UISearchTextField *)[(UISearchBar *)[(UISearchController *)self->_searchController searchBar] searchTextField] _alwaysShowsClearButtonWhenEmptyAndActive])
  {
    goto LABEL_4;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(UIViewController *)self->_searchController childViewControllers];
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(v13);
      }

      v18 = [*(*(&v27 + 1) + 8 * v17) viewIfLoaded];
      [v11 convertPoint:v18 toView:{x, y}];
      v20 = v19;
      v22 = v21;
      if ([v18 isHidden] & 1) == 0 && (objc_msgSend(v18, "pointInside:withEvent:", a5, v20, v22))
      {
        goto LABEL_4;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v23 = [(UINavigationItem *)[(UISearchController *)self->_searchController _navigationItemCurrentlyDisplayingSearchBar] _navigationBar];
  [v11 convertPoint:v23 toView:{x, y}];
  if ([(UIView *)v23 pointInside:a5 withEvent:?])
  {
    v24 = [(UINavigationBar *)v23 _tabBarHostedView];
    [v11 convertPoint:v24 toView:{x, y}];
    if ([(_UITabContainerView *)v24 hitTest:a5 withEvent:?])
    {
LABEL_4:
      LOBYTE(v12) = 0;
      return v12;
    }
  }

  if (!-[UISearchController _hasVisibleSuggestionsMenu](self->_searchController, "_hasVisibleSuggestionsMenu") && !-[UISearchTextField _isPresentingEditMenu](-[UISearchBar searchTextField](v10, "searchTextField"), "_isPresentingEditMenu") || (v25 = -[UIView window](v10, "window"), [v11 convertPoint:0 toView:{x, y}], v12 = -[UIView isDescendantOfView:](-[UIView hitTest:withEvent:](v25, "hitTest:withEvent:", a5), "isDescendantOfView:", -[UIViewController view](-[UIWindow rootViewController](v25, "rootViewController"), "view"))))
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