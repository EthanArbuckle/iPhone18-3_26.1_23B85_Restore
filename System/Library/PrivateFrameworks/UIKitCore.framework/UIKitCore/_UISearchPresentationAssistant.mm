@interface _UISearchPresentationAssistant
- (BOOL)_currentTransitionIsRotating;
- (BOOL)_statusBarPreferredHidden;
- (BOOL)_statusBarPreferredHiddenForInterfaceOrientation:(int64_t)a3;
- (BOOL)presentationIsPopoverToOverFullScreenAdaptation;
- (BOOL)searchBarToBecomeTopAttached;
- (BOOL)searchBarWillResizeForScopeBar;
- (CGRect)_containerFrame;
- (CGRect)optimalFrameForSearchBar:(id)a3;
- (CGSize)updateSearchBarContainerFrame;
- (_UISearchPresentationAssistant)initWithSearchPresentationController:(id)a3;
- (double)_statusBarHeightChangeDueToRotation;
- (double)resultsControllerContentOffset;
- (double)statusBarAdjustment;
- (id)_outermostNavigationControllerForPresentingViewController:(id)a3;
- (id)_searchBarContainerSuperview;
- (id)_searchControllerPresenting;
- (id)dimmingView;
- (id)locateOriginNavigationController;
- (id)locatePresentingNavigationController;
- (id)searchBarContainerView;
- (void)dealloc;
- (void)dimmingViewWasTapped:(id)a3;
- (void)ensureAppropriatelySizedSearchBar:(id)a3;
@end

@implementation _UISearchPresentationAssistant

- (_UISearchPresentationAssistant)initWithSearchPresentationController:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UISearchPresentationAssistant;
  v4 = [(_UISearchPresentationAssistant *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_searchPresentationController = a3;
    objc_opt_class();
    v5->_isFormSheetPresentation = objc_opt_isKindOfClass() & 1;
  }

  return v5;
}

- (void)dealloc
{
  self->_searchBarContainerView = 0;

  self->_dimmingView = 0;
  v3.receiver = self;
  v3.super_class = _UISearchPresentationAssistant;
  [(_UISearchPresentationAssistant *)&v3 dealloc];
}

- (id)_searchControllerPresenting
{
  if ([(UIPresentationController *)self->_searchPresentationController conformsToProtocol:&unk_1F008A9B0])
  {
    return self->_searchPresentationController;
  }

  else
  {
    return 0;
  }
}

- (BOOL)presentationIsPopoverToOverFullScreenAdaptation
{
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v2 = [-[_UISearchPresentationAssistant presentingViewController](self "presentingViewController")];
  if (v2)
  {
    objc_opt_class();
    LOBYTE(v2) = objc_opt_isKindOfClass();
  }

  return v2 & 1;
}

- (CGRect)optimalFrameForSearchBar:(id)a3
{
  if ([(_UISearchPresentationAssistant *)self presentationIsPopoverToOverFullScreenAdaptation])
  {
    [a3 frame];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
    if (!v11)
    {
      v11 = +[UIWindow _applicationKeyWindow];
    }

    [v11 bounds];
    Width = CGRectGetWidth(v17);
    [a3 bounds];
    [a3 sizeThatFits:{Width, CGRectGetHeight(v18)}];
    v8 = v13;
    v10 = v14;
    [a3 frame];
  }

  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)ensureAppropriatelySizedSearchBar:(id)a3
{
  [(_UISearchPresentationAssistant *)self optimalFrameForSearchBar:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a3 _defaultHeightForOrientation:{objc_msgSend(a3, "_expectedInterfaceOrientation")}];
  v11 = v10;
  [a3 frame];
  v18.origin.x = v12;
  v18.origin.y = v13;
  v18.size.width = v14;
  v18.size.height = v15;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  if (!CGRectEqualToRect(v17, v18))
  {
    [a3 setFrame:{v5, v7, v9, v11}];

    [a3 layoutIfNeeded];
  }
}

- (CGRect)_containerFrame
{
  v3 = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
  if (self)
  {
    v4 = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(UIViewController *)v4 searchBar];
  v7 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v41 = v9;
  v43 = v8;
  v45 = v6;
  v47 = *MEMORY[0x1E695F058];
  if ([v5 window])
  {
    if (![(UIView *)v3 window])
    {
      v3 = [[(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController] view] superview];
    }

    if ([v5 superview] == v3)
    {
      [v5 frame];
    }

    else
    {
      [v5 bounds];
      [v5 convertRect:v3 toView:?];
    }

    v7 = v10;
    v6 = v11;
    v8 = v12;
    v9 = v13;
  }

  [v5 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UISearchPresentationAssistant *)self ensureAppropriatelySizedSearchBar:v5];
  [v5 frame];
  v52.origin.x = v22;
  v52.origin.y = v23;
  v52.size.width = v24;
  v52.size.height = v25;
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  v26 = CGRectEqualToRect(v49, v52);
  v50.origin.x = v7;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v9;
  v53.origin.y = v46;
  v53.origin.x = v48;
  v53.size.height = v42;
  v53.size.width = v44;
  if (CGRectEqualToRect(v50, v53) || !v26)
  {
    v7 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    [v5 bounds];
    v8 = v32;
    v31 = v33;
  }

  else
  {
    if (self)
    {
      v27 = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
    }

    else
    {
      v27 = 0;
    }

    v28 = [[(UIViewController *)v27 view] window];
    v29 = [(UIWindow *)v28 interfaceOrientation];
    if ([(_UISearchPresentationAssistant *)self _currentTransitionIsRotating])
    {
      v29 = [(UIWindow *)v28 _toWindowOrientation];
    }

    [v5 _barHeightForBarMetrics:{objc_msgSend(v5, "_barMetricsForOrientation:", v29)}];
    v31 = v30;
  }

  if ([(_UISearchPresentationAssistant *)self searchBarWillResizeForScopeBar])
  {
    [v5 _scopeBarHeight];
    v31 = v31 + v34;
  }

  if ([v5 barPosition] == 3)
  {
    [(_UISearchPresentationAssistant *)self statusBarAdjustment];
    v36 = v35;
    if (fabs(v35) >= 2.22044605e-16)
    {
      v36 = ((v6 - v35) & ~((v6 - v35) >> 31));
    }

    v31 = v31 + v35;
    v6 = v36;
  }

  v37 = v7;
  v38 = v6;
  v39 = v8;
  v40 = v31;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (id)_searchBarContainerSuperview
{
  isFormSheetPresentation = self->_isFormSheetPresentation;
  searchPresentationController = self->_searchPresentationController;
  if (isFormSheetPresentation)
  {
    v4 = [(UIPresentationController *)searchPresentationController containerView];

    return [(UIView *)v4 superview];
  }

  else
  {
    v6 = [(UIPresentationController *)searchPresentationController presentedViewController];

    return [(UIViewController *)v6 view];
  }
}

- (id)searchBarContainerView
{
  v3 = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
  v4 = [(_UISearchPresentationAssistant *)self _searchControllerPresenting];
  if (!self->_searchBarContainerView)
  {
    [(_UISearchPresentationAssistant *)self _containerFrame];
    v9 = [[_UISearchBarContainerView alloc] initWithFrame:v5, v6, v7, v8];
    self->_searchBarContainerView = &v9->super;
    [(UIView *)v9 setAutoresizingMask:2];
    if (!v4 || [v4 searchBarShouldClipToBounds])
    {
      [(UIView *)self->_searchBarContainerView setClipsToBounds:1];
    }
  }

  v10 = [(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] _viewToInsertSearchBarContainerViewUnder];
  if (v10)
  {
    v11 = v10;
    if ([v10 superview] == v3)
    {
      v15 = [(UIView *)v3 subviews];
      v16 = [(NSArray *)v15 indexOfObject:self->_searchBarContainerView];
      if (v16 == [(NSArray *)v15 indexOfObject:v11]- 1)
      {
        return self->_searchBarContainerView;
      }

      searchBarContainerView = self->_searchBarContainerView;
      v18 = v3;
      v19 = v11;
      goto LABEL_17;
    }
  }

  v12 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "presentedViewController")];
  if (v12)
  {
    v13 = v12;
    if ([v12 superview] == v3)
    {
      v21 = [(UIView *)v3 subviews];
      v22 = [(NSArray *)v21 indexOfObject:v13];
      if (v3 == [(UIView *)self->_searchBarContainerView superview]&& (!v22 || [(NSArray *)v21 indexOfObject:self->_searchBarContainerView]>= v22 - 1))
      {
        return self->_searchBarContainerView;
      }

      searchBarContainerView = self->_searchBarContainerView;
      v18 = v3;
      v19 = v13;
LABEL_17:
      [(UIView *)v18 insertSubview:searchBarContainerView belowSubview:v19];
      return self->_searchBarContainerView;
    }
  }

  if (v3 != [(UIView *)self->_searchBarContainerView superview])
  {
    v14 = self->_searchBarContainerView;
LABEL_14:
    [(UIView *)v3 addSubview:v14];
    return self->_searchBarContainerView;
  }

  v20 = [(NSArray *)[(UIView *)v3 subviews] lastObject];
  v14 = self->_searchBarContainerView;
  if (v20 != v14)
  {
    goto LABEL_14;
  }

  return self->_searchBarContainerView;
}

- (BOOL)_currentTransitionIsRotating
{
  transitioningToSizeCoordinator = self->_transitioningToSizeCoordinator;
  if (transitioningToSizeCoordinator)
  {
    [(UIViewControllerTransitionCoordinator *)transitioningToSizeCoordinator targetTransform];
    LOBYTE(transitioningToSizeCoordinator) = !CGAffineTransformIsIdentity(&v4);
  }

  return transitioningToSizeCoordinator;
}

- (double)_statusBarHeightChangeDueToRotation
{
  v3 = 0.0;
  if (![(_UISearchPresentationAssistant *)self _currentTransitionIsRotating])
  {
    return v3;
  }

  if (self)
  {
    v4 = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[(UIViewController *)v4 view] window];
  v6 = [(UIWindow *)v5 _toWindowOrientation];
  v7 = [(UIWindow *)v5 interfaceOrientation];
  v8 = [(_UISearchPresentationAssistant *)self _statusBarPreferredHiddenForInterfaceOrientation:v6];
  v9 = [(_UISearchPresentationAssistant *)self _statusBarPreferredHiddenForInterfaceOrientation:v7];
  if (!v9 || v8)
  {
    if (!v9 && v8)
    {
      [__UIStatusBarManagerForWindow(v5) defaultStatusBarHeightInOrientation:v7];
      return -v12;
    }

    return v3;
  }

  v10 = __UIStatusBarManagerForWindow(v5);

  [v10 defaultStatusBarHeightInOrientation:v6];
  return result;
}

- (CGSize)updateSearchBarContainerFrame
{
  v2 = *MEMORY[0x1E695F060];
  if (self->_searchBarContainerView)
  {
    v4 = [(_UISearchPresentationAssistant *)self locatePresentingNavigationController];
    v5 = [v4 navigationBar];
    if (v4)
    {
      v6 = v5;
      if ((-[UIViewController _hidesNavigationBarDuringPresentationRespectingInlineSearch](-[UIPresentationController presentedViewController](self->_searchPresentationController, "presentedViewController"), "_hidesNavigationBarDuringPresentationRespectingInlineSearch") & 1) == 0 && ([v6 forceFullHeightInLandscape] & 1) == 0)
      {
        [v6 bounds];
        [v6 convertRect:0 toView:?];
        v8 = v7;
        v10 = v9;
        v36 = v11;
        v13 = v12;
        searchBarContainerView = self->_searchBarContainerView;
        [(UIView *)searchBarContainerView bounds];
        [(UIView *)searchBarContainerView convertRect:0 toView:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v34 = v10;
        v35 = v8;
        v38.origin.x = v8;
        v38.origin.y = v10;
        v38.size.width = v36;
        v38.size.height = v13;
        MaxY = CGRectGetMaxY(v38);
        v39.origin.x = v16;
        v39.origin.y = v18;
        v39.size.width = v20;
        v39.size.height = v22;
        if (vabdd_f64(MaxY, CGRectGetMinY(v39)) <= 1.0 || [(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] _searchbarWasTableHeaderView])
        {
          v24 = [(_UISearchPresentationAssistant *)self _currentTransitionIsRotating:*&v10];
          v25 = [[(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] view] window];
          v26 = v24 ? [(UIWindow *)v25 _toWindowOrientation]: [(UIWindow *)v25 interfaceOrientation];
          v28 = v26;
          v29 = [v4 navigationBar];
          if ([v29 _heightDependentOnOrientation])
          {
            [v29 defaultSizeForOrientation:v28];
            v40.origin.y = v34;
            v40.origin.x = v35;
            v40.size.width = v36;
            v40.size.height = v13;
            CGRectGetHeight(v40);
          }
        }
      }
    }

    if (([(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController:*&v34] edgesForExtendedLayout]& 1) == 0 || v4 && ([(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] _hidesNavigationBarDuringPresentationRespectingInlineSearch]& 1) == 0)
    {
      [(_UISearchPresentationAssistant *)self _statusBarHeightChangeDueToRotation];
    }

    [(_UISearchPresentationAssistant *)self _containerFrame];
    v30 = CGRectGetMaxY(v41);
    [(UIView *)self->_searchBarContainerView frame];
    v31 = CGRectGetMaxY(v42);
    v27 = v30 - v31;
    [(UIView *)self->_searchBarContainerView frame];
    [(UIView *)self->_searchBarContainerView setFrame:?];
    if (vabdd_f64(v30, v31) >= 2.22044605e-16)
    {
      [-[UIViewController searchBar](-[UIPresentationController presentedViewController](self->_searchPresentationController "presentedViewController")];
    }
  }

  else
  {
    v27 = *(MEMORY[0x1E695F060] + 8);
  }

  v32 = v2;
  v33 = v27;
  result.height = v33;
  result.width = v32;
  return result;
}

- (id)dimmingView
{
  if (!self->_dimmingView)
  {
    v3 = [UIDimmingView alloc];
    [(UIView *)[(UIPresentationController *)self->_searchPresentationController containerView] bounds];
    v4 = [(UIDimmingView *)v3 initWithFrame:?];
    self->_dimmingView = v4;
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIDimmingView *)self->_dimmingView setDelegate:self];
    if ([(UITraitCollection *)[(UIPresentationController *)self->_searchPresentationController traitCollection] userInterfaceIdiom]!= UIUserInterfaceIdiomVision)
    {
      [(UIDimmingView *)self->_dimmingView setDimmingColor:[UIColor colorWithWhite:0.0 alpha:0.15]];
    }
  }

  return self->_dimmingView;
}

- (BOOL)_statusBarPreferredHidden
{
  v2 = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [objc_msgSend(-[_UISearchPresentationAssistant view](self "view")];

  return [(_UISearchPresentationAssistant *)v2 _statusBarPreferredHiddenForInterfaceOrientation:v3];
}

- (BOOL)_statusBarPreferredHiddenForInterfaceOrientation:(int64_t)a3
{
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v4 = [objc_msgSend(objc_msgSend(-[_UISearchPresentationAssistant view](self "view")];
  if (!v4)
  {
    return [objc_msgSend(objc_msgSend(objc_opt_self() "mainScreen")] == 1;
  }

  v5 = v4;
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__preferredStatusBarVisibility])
  {
    return [v5 _preferredStatusBarVisibility] == 1;
  }

  if (![objc_opt_class() doesOverrideViewControllerMethod:sel_prefersStatusBarHidden])
  {
    return [objc_msgSend(objc_msgSend(objc_opt_self() "mainScreen")] == 1;
  }

  return [v5 prefersStatusBarHidden];
}

- (double)statusBarAdjustment
{
  if (![(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController] _viewControllerUnderlapsStatusBar]|| ([(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController] edgesForExtendedLayout]& 1) == 0)
  {
    return 0.0;
  }

  v4 = [(_UISearchPresentationAssistant *)self _currentTransitionIsRotating];
  searchPresentationController = self->_searchPresentationController;
  if (v4)
  {
    v6 = [(UIViewController *)[(UIPresentationController *)searchPresentationController presentedViewController] _window];
    v7 = [(UIWindow *)v6 _toWindowOrientation];
    if ([__UIStatusBarManagerForWindow(v6) isStatusBarHidden])
    {
      return 0.0;
    }

    [__UIStatusBarManagerForWindow(v6) defaultStatusBarHeightInOrientation:v7];
    if (v8 == 0.0 || [(_UISearchPresentationAssistant *)self _statusBarPreferredHidden])
    {
      return 0.0;
    }

    v9 = __UIStatusBarManagerForWindow(v6);

    [v9 defaultStatusBarHeightInOrientation:v7];
  }

  else
  {
    v10 = [(UIPresentationController *)searchPresentationController presentingViewController];

    [(UIViewController *)v10 _statusBarHeightAdjustmentForCurrentOrientation];
  }

  return result;
}

- (id)_outermostNavigationControllerForPresentingViewController:(id)a3
{
  v3 = a3;
  if (([a3 _isNavigationController] & 1) == 0)
  {
    v3 = [v3 navigationController];
  }

  return [v3 _outermostNavigationController];
}

- (id)locatePresentingNavigationController
{
  v3 = [(UIPresentationController *)self->_searchPresentationController presentingViewController];

  return [(_UISearchPresentationAssistant *)self _outermostNavigationControllerForPresentingViewController:v3];
}

- (id)locateOriginNavigationController
{
  v2 = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [-[_UISearchPresentationAssistant searchBar](self "searchBar")];
  if (!v3)
  {
    if (v2)
    {
      v4 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
    }

    else
    {
      v4 = 0;
    }

    if ([(UIViewController *)v4 _isSearchTextFieldBorrowed])
    {
      v3 = [objc_msgSend(-[UIViewController _navigationItemCurrentlyDisplayingSearchBar](v4 "_navigationItemCurrentlyDisplayingSearchBar")];
    }

    else
    {
      v3 = 0;
    }
  }

  return [(_UISearchPresentationAssistant *)v2 _outermostNavigationControllerForPresentingViewController:v3];
}

- (BOOL)searchBarToBecomeTopAttached
{
  v2 = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [(_UISearchPresentationAssistant *)self _window];
  if (v3)
  {
    if (([UIApp _sceneInterfaceOrientationFromWindow:v3] - 3) <= 1 && objc_msgSend(__UIStatusBarManagerForWindow(v3), "isStatusBarHidden") && (objc_msgSend(__UIStatusBarManagerForWindow(v3), "isStatusBarHidden") & 1) == 0)
    {
      [__UIStatusBarManagerForWindow(v3) defaultStatusBarHeightInOrientation:1];
      LODWORD(v3) = v9 != 0.0;
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  if (!-[_UISearchPresentationAssistant shouldAccountForStatusBar](v2, "shouldAccountForStatusBar") && !v3 || (!v2 ? (v4 = 0) : (v4 = -[UIPresentationController presentedViewController](v2->_searchPresentationController, "presentedViewController")), [-[UIViewController searchBar](v4 "searchBar")] && (!v2 ? (v5 = 0) : (v5 = -[UIPresentationController presentedViewController](v2->_searchPresentationController, "presentedViewController")), objc_msgSend(-[UIViewController searchBar](v5, "searchBar"), "barPosition") != 2)))
  {
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v2)
  {
    if ([(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentedViewController] _barPresentationStyle]== 1 || [(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentedViewController] _barPresentationStyle]== 2)
    {
      v6 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
      goto LABEL_20;
    }

LABEL_22:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if ([0 _barPresentationStyle] != 1 && objc_msgSend(0, "_barPresentationStyle") != 2)
  {
    goto LABEL_22;
  }

  v6 = 0;
LABEL_20:
  v7 = [(UIViewController *)v6 _hidesNavigationBarDuringPresentationRespectingInlineSearch];
  if (v7)
  {
    if (![(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentingViewController] navigationController])
    {
      [(UIPresentationController *)v2->_searchPresentationController presentingViewController];
      objc_opt_class();
      LOBYTE(v7) = objc_opt_isKindOfClass();
      return v7 & 1;
    }

    goto LABEL_22;
  }

  return v7 & 1;
}

- (double)resultsControllerContentOffset
{
  v2 = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [(_UISearchPresentationAssistant *)self searchResultsController];
  v4 = [v3 _contentOrObservableScrollViewForEdge:1];
  Height = 0.0;
  if (v3 && v4 && [v3 automaticallyAdjustsScrollViewInsets])
  {
    if (v2)
    {
      if (([(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentedViewController] _resultsControllerWillLayoutVisibleUnderContainerView]& 1) == 0)
      {
        return Height;
      }

      if ([(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentedViewController] _barPresentationStyle]== 3)
      {
        goto LABEL_9;
      }

      v7 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
    }

    else
    {
      if (([0 _resultsControllerWillLayoutVisibleUnderContainerView] & 1) == 0)
      {
        return Height;
      }

      v32 = [0 _barPresentationStyle];
      v7 = 0;
      if (v32 == 3)
      {
LABEL_9:
        [-[_UISearchPresentationAssistant searchBarContainerView](v2 "searchBarContainerView")];
        Height = CGRectGetHeight(v33);
        if (v2)
        {
          v6 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
        }

        else
        {
          v6 = 0;
        }

        [(UIViewController *)v6 set_resultsContentScrollViewPresentationOffset:Height];
        return Height;
      }
    }

    v8 = [(UIViewController *)v7 searchBar];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (v2)
    {
      v17 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
    }

    else
    {
      v17 = 0;
    }

    [v8 convertRect:-[UIViewController view](v17 toView:{"view"), v10, v12, v14, v16}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (v2)
    {
      v26 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
    }

    else
    {
      v26 = 0;
    }

    if ([(UIViewController *)v26 _hidesNavigationBarDuringPresentationRespectingInlineSearch]&& [(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentingViewController] navigationController])
    {
      [[(UINavigationController *)[(UIViewController *)[(UIPresentationController *)v2->_searchPresentationController presentingViewController] navigationController] navigationBar] frame];
      v21 = v21 - CGRectGetHeight(v34);
    }

    v35.origin.x = v19;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    v27 = CGRectGetHeight(v35);
    if (v2)
    {
      v28 = [(UIPresentationController *)v2->_searchPresentationController presentedViewController];
    }

    else
    {
      v28 = 0;
    }

    [(UIViewController *)v28 set_resultsContentScrollViewPresentationOffset:v27];
    if ([(_UISearchPresentationAssistant *)v2 searchBarToBecomeTopAttached])
    {
      [(_UISearchPresentationAssistant *)v2 statusBarAdjustment];
      v21 = v21 - v29;
      v25 = v25 + v29;
    }

    v36.origin.x = v19;
    v36.origin.y = v21;
    v36.size.width = v23;
    v36.size.height = v25;
    Height = CGRectGetMaxY(v36);
    if ([(_UISearchPresentationAssistant *)v2 searchBarWillResizeForScopeBar])
    {
      [v8 _scopeBarHeight];
      return Height + v30;
    }
  }

  return Height;
}

- (BOOL)searchBarWillResizeForScopeBar
{
  v3 = [(_UISearchPresentationAssistant *)self _searchControllerPresenting];
  if (!v3 || (v4 = [v3 searchBarCanContainScopeBar]) != 0)
  {
    if (self)
    {
      v5 = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(UIViewController *)v5 searchBar];
    v4 = [v6 _scopeBarIsVisible];
    if (v4)
    {
      LOBYTE(v4) = [v6 _shouldCombineLandscapeBars] ^ 1;
    }
  }

  return v4;
}

- (void)dimmingViewWasTapped:(id)a3
{
  v3 = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  presentationWasAnimated = v3->_presentationWasAnimated;

  [(_UISearchPresentationAssistant *)self _dismissPresentation:presentationWasAnimated];
}

@end