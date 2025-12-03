@interface _UISearchPresentationAssistant
- (BOOL)_currentTransitionIsRotating;
- (BOOL)_statusBarPreferredHidden;
- (BOOL)_statusBarPreferredHiddenForInterfaceOrientation:(int64_t)orientation;
- (BOOL)presentationIsPopoverToOverFullScreenAdaptation;
- (BOOL)searchBarToBecomeTopAttached;
- (BOOL)searchBarWillResizeForScopeBar;
- (CGRect)_containerFrame;
- (CGRect)optimalFrameForSearchBar:(id)bar;
- (CGSize)updateSearchBarContainerFrame;
- (_UISearchPresentationAssistant)initWithSearchPresentationController:(id)controller;
- (double)_statusBarHeightChangeDueToRotation;
- (double)resultsControllerContentOffset;
- (double)statusBarAdjustment;
- (id)_outermostNavigationControllerForPresentingViewController:(id)controller;
- (id)_searchBarContainerSuperview;
- (id)_searchControllerPresenting;
- (id)dimmingView;
- (id)locateOriginNavigationController;
- (id)locatePresentingNavigationController;
- (id)searchBarContainerView;
- (void)dealloc;
- (void)dimmingViewWasTapped:(id)tapped;
- (void)ensureAppropriatelySizedSearchBar:(id)bar;
@end

@implementation _UISearchPresentationAssistant

- (_UISearchPresentationAssistant)initWithSearchPresentationController:(id)controller
{
  v7.receiver = self;
  v7.super_class = _UISearchPresentationAssistant;
  v4 = [(_UISearchPresentationAssistant *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_searchPresentationController = controller;
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

- (CGRect)optimalFrameForSearchBar:(id)bar
{
  if ([(_UISearchPresentationAssistant *)self presentationIsPopoverToOverFullScreenAdaptation])
  {
    [bar frame];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    _searchBarContainerSuperview = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
    if (!_searchBarContainerSuperview)
    {
      _searchBarContainerSuperview = +[UIWindow _applicationKeyWindow];
    }

    [_searchBarContainerSuperview bounds];
    Width = CGRectGetWidth(v17);
    [bar bounds];
    [bar sizeThatFits:{Width, CGRectGetHeight(v18)}];
    v8 = v13;
    v10 = v14;
    [bar frame];
  }

  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)ensureAppropriatelySizedSearchBar:(id)bar
{
  [(_UISearchPresentationAssistant *)self optimalFrameForSearchBar:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [bar _defaultHeightForOrientation:{objc_msgSend(bar, "_expectedInterfaceOrientation")}];
  v11 = v10;
  [bar frame];
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
    [bar setFrame:{v5, v7, v9, v11}];

    [bar layoutIfNeeded];
  }
}

- (CGRect)_containerFrame
{
  _searchBarContainerSuperview = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
  if (self)
  {
    presentedViewController = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  else
  {
    presentedViewController = 0;
  }

  searchBar = [(UIViewController *)presentedViewController searchBar];
  v7 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v41 = v9;
  v43 = v8;
  v45 = v6;
  v47 = *MEMORY[0x1E695F058];
  if ([searchBar window])
  {
    if (![(UIView *)_searchBarContainerSuperview window])
    {
      _searchBarContainerSuperview = [[(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController] view] superview];
    }

    if ([searchBar superview] == _searchBarContainerSuperview)
    {
      [searchBar frame];
    }

    else
    {
      [searchBar bounds];
      [searchBar convertRect:_searchBarContainerSuperview toView:?];
    }

    v7 = v10;
    v6 = v11;
    v8 = v12;
    v9 = v13;
  }

  [searchBar frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UISearchPresentationAssistant *)self ensureAppropriatelySizedSearchBar:searchBar];
  [searchBar frame];
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
    [searchBar bounds];
    v8 = v32;
    v31 = v33;
  }

  else
  {
    if (self)
    {
      presentedViewController2 = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController2 = 0;
    }

    window = [[(UIViewController *)presentedViewController2 view] window];
    interfaceOrientation = [(UIWindow *)window interfaceOrientation];
    if ([(_UISearchPresentationAssistant *)self _currentTransitionIsRotating])
    {
      interfaceOrientation = [(UIWindow *)window _toWindowOrientation];
    }

    [searchBar _barHeightForBarMetrics:{objc_msgSend(searchBar, "_barMetricsForOrientation:", interfaceOrientation)}];
    v31 = v30;
  }

  if ([(_UISearchPresentationAssistant *)self searchBarWillResizeForScopeBar])
  {
    [searchBar _scopeBarHeight];
    v31 = v31 + v34;
  }

  if ([searchBar barPosition] == 3)
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
    containerView = [(UIPresentationController *)searchPresentationController containerView];

    return [(UIView *)containerView superview];
  }

  else
  {
    presentedViewController = [(UIPresentationController *)searchPresentationController presentedViewController];

    return [(UIViewController *)presentedViewController view];
  }
}

- (id)searchBarContainerView
{
  _searchBarContainerSuperview = [(_UISearchPresentationAssistant *)self _searchBarContainerSuperview];
  _searchControllerPresenting = [(_UISearchPresentationAssistant *)self _searchControllerPresenting];
  if (!self->_searchBarContainerView)
  {
    [(_UISearchPresentationAssistant *)self _containerFrame];
    v9 = [[_UISearchBarContainerView alloc] initWithFrame:v5, v6, v7, v8];
    self->_searchBarContainerView = &v9->super;
    [(UIView *)v9 setAutoresizingMask:2];
    if (!_searchControllerPresenting || [_searchControllerPresenting searchBarShouldClipToBounds])
    {
      [(UIView *)self->_searchBarContainerView setClipsToBounds:1];
    }
  }

  _viewToInsertSearchBarContainerViewUnder = [(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] _viewToInsertSearchBarContainerViewUnder];
  if (_viewToInsertSearchBarContainerViewUnder)
  {
    v11 = _viewToInsertSearchBarContainerViewUnder;
    if ([_viewToInsertSearchBarContainerViewUnder superview] == _searchBarContainerSuperview)
    {
      subviews = [(UIView *)_searchBarContainerSuperview subviews];
      v16 = [(NSArray *)subviews indexOfObject:self->_searchBarContainerView];
      if (v16 == [(NSArray *)subviews indexOfObject:v11]- 1)
      {
        return self->_searchBarContainerView;
      }

      searchBarContainerView = self->_searchBarContainerView;
      v18 = _searchBarContainerSuperview;
      v19 = v11;
      goto LABEL_17;
    }
  }

  v12 = [objc_msgSend(objc_msgSend(objc_msgSend(_searchControllerPresenting "presentedViewController")];
  if (v12)
  {
    v13 = v12;
    if ([v12 superview] == _searchBarContainerSuperview)
    {
      subviews2 = [(UIView *)_searchBarContainerSuperview subviews];
      v22 = [(NSArray *)subviews2 indexOfObject:v13];
      if (_searchBarContainerSuperview == [(UIView *)self->_searchBarContainerView superview]&& (!v22 || [(NSArray *)subviews2 indexOfObject:self->_searchBarContainerView]>= v22 - 1))
      {
        return self->_searchBarContainerView;
      }

      searchBarContainerView = self->_searchBarContainerView;
      v18 = _searchBarContainerSuperview;
      v19 = v13;
LABEL_17:
      [(UIView *)v18 insertSubview:searchBarContainerView belowSubview:v19];
      return self->_searchBarContainerView;
    }
  }

  if (_searchBarContainerSuperview != [(UIView *)self->_searchBarContainerView superview])
  {
    v14 = self->_searchBarContainerView;
LABEL_14:
    [(UIView *)_searchBarContainerSuperview addSubview:v14];
    return self->_searchBarContainerView;
  }

  lastObject = [(NSArray *)[(UIView *)_searchBarContainerSuperview subviews] lastObject];
  v14 = self->_searchBarContainerView;
  if (lastObject != v14)
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
    presentedViewController = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  else
  {
    presentedViewController = 0;
  }

  window = [[(UIViewController *)presentedViewController view] window];
  _toWindowOrientation = [(UIWindow *)window _toWindowOrientation];
  interfaceOrientation = [(UIWindow *)window interfaceOrientation];
  v8 = [(_UISearchPresentationAssistant *)self _statusBarPreferredHiddenForInterfaceOrientation:_toWindowOrientation];
  v9 = [(_UISearchPresentationAssistant *)self _statusBarPreferredHiddenForInterfaceOrientation:interfaceOrientation];
  if (!v9 || v8)
  {
    if (!v9 && v8)
    {
      [__UIStatusBarManagerForWindow(window) defaultStatusBarHeightInOrientation:interfaceOrientation];
      return -v12;
    }

    return v3;
  }

  v10 = __UIStatusBarManagerForWindow(window);

  [v10 defaultStatusBarHeightInOrientation:_toWindowOrientation];
  return result;
}

- (CGSize)updateSearchBarContainerFrame
{
  v2 = *MEMORY[0x1E695F060];
  if (self->_searchBarContainerView)
  {
    locatePresentingNavigationController = [(_UISearchPresentationAssistant *)self locatePresentingNavigationController];
    navigationBar = [locatePresentingNavigationController navigationBar];
    if (locatePresentingNavigationController)
    {
      v6 = navigationBar;
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
          window = [[(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] view] window];
          v26 = v24 ? [(UIWindow *)window _toWindowOrientation]: [(UIWindow *)window interfaceOrientation];
          v28 = v26;
          navigationBar2 = [locatePresentingNavigationController navigationBar];
          if ([navigationBar2 _heightDependentOnOrientation])
          {
            [navigationBar2 defaultSizeForOrientation:v28];
            v40.origin.y = v34;
            v40.origin.x = v35;
            v40.size.width = v36;
            v40.size.height = v13;
            CGRectGetHeight(v40);
          }
        }
      }
    }

    if (([(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentingViewController:*&v34] edgesForExtendedLayout]& 1) == 0 || locatePresentingNavigationController && ([(UIViewController *)[(UIPresentationController *)self->_searchPresentationController presentedViewController] _hidesNavigationBarDuringPresentationRespectingInlineSearch]& 1) == 0)
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
  selfCopy = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [objc_msgSend(-[_UISearchPresentationAssistant view](self "view")];

  return [(_UISearchPresentationAssistant *)selfCopy _statusBarPreferredHiddenForInterfaceOrientation:v3];
}

- (BOOL)_statusBarPreferredHiddenForInterfaceOrientation:(int64_t)orientation
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

  _currentTransitionIsRotating = [(_UISearchPresentationAssistant *)self _currentTransitionIsRotating];
  searchPresentationController = self->_searchPresentationController;
  if (_currentTransitionIsRotating)
  {
    _window = [(UIViewController *)[(UIPresentationController *)searchPresentationController presentedViewController] _window];
    _toWindowOrientation = [(UIWindow *)_window _toWindowOrientation];
    if ([__UIStatusBarManagerForWindow(_window) isStatusBarHidden])
    {
      return 0.0;
    }

    [__UIStatusBarManagerForWindow(_window) defaultStatusBarHeightInOrientation:_toWindowOrientation];
    if (v8 == 0.0 || [(_UISearchPresentationAssistant *)self _statusBarPreferredHidden])
    {
      return 0.0;
    }

    v9 = __UIStatusBarManagerForWindow(_window);

    [v9 defaultStatusBarHeightInOrientation:_toWindowOrientation];
  }

  else
  {
    presentingViewController = [(UIPresentationController *)searchPresentationController presentingViewController];

    [(UIViewController *)presentingViewController _statusBarHeightAdjustmentForCurrentOrientation];
  }

  return result;
}

- (id)_outermostNavigationControllerForPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (([controller _isNavigationController] & 1) == 0)
  {
    controllerCopy = [controllerCopy navigationController];
  }

  return [controllerCopy _outermostNavigationController];
}

- (id)locatePresentingNavigationController
{
  presentingViewController = [(UIPresentationController *)self->_searchPresentationController presentingViewController];

  return [(_UISearchPresentationAssistant *)self _outermostNavigationControllerForPresentingViewController:presentingViewController];
}

- (id)locateOriginNavigationController
{
  selfCopy = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  v3 = [-[_UISearchPresentationAssistant searchBar](self "searchBar")];
  if (!v3)
  {
    if (selfCopy)
    {
      presentedViewController = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController = 0;
    }

    if ([(UIViewController *)presentedViewController _isSearchTextFieldBorrowed])
    {
      v3 = [objc_msgSend(-[UIViewController _navigationItemCurrentlyDisplayingSearchBar](presentedViewController "_navigationItemCurrentlyDisplayingSearchBar")];
    }

    else
    {
      v3 = 0;
    }
  }

  return [(_UISearchPresentationAssistant *)selfCopy _outermostNavigationControllerForPresentingViewController:v3];
}

- (BOOL)searchBarToBecomeTopAttached
{
  selfCopy = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  _window = [(_UISearchPresentationAssistant *)self _window];
  if (_window)
  {
    if (([UIApp _sceneInterfaceOrientationFromWindow:_window] - 3) <= 1 && objc_msgSend(__UIStatusBarManagerForWindow(_window), "isStatusBarHidden") && (objc_msgSend(__UIStatusBarManagerForWindow(_window), "isStatusBarHidden") & 1) == 0)
    {
      [__UIStatusBarManagerForWindow(_window) defaultStatusBarHeightInOrientation:1];
      LODWORD(_window) = v9 != 0.0;
    }

    else
    {
      LODWORD(_window) = 0;
    }
  }

  if (!-[_UISearchPresentationAssistant shouldAccountForStatusBar](selfCopy, "shouldAccountForStatusBar") && !_window || (!selfCopy ? (v4 = 0) : (v4 = -[UIPresentationController presentedViewController](selfCopy->_searchPresentationController, "presentedViewController")), [-[UIViewController searchBar](v4 "searchBar")] && (!selfCopy ? (v5 = 0) : (v5 = -[UIPresentationController presentedViewController](selfCopy->_searchPresentationController, "presentedViewController")), objc_msgSend(-[UIViewController searchBar](v5, "searchBar"), "barPosition") != 2)))
  {
    LOBYTE(_hidesNavigationBarDuringPresentationRespectingInlineSearch) = 0;
    return _hidesNavigationBarDuringPresentationRespectingInlineSearch & 1;
  }

  if (selfCopy)
  {
    if ([(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController] _barPresentationStyle]== 1 || [(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController] _barPresentationStyle]== 2)
    {
      presentedViewController = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
      goto LABEL_20;
    }

LABEL_22:
    LOBYTE(_hidesNavigationBarDuringPresentationRespectingInlineSearch) = 1;
    return _hidesNavigationBarDuringPresentationRespectingInlineSearch & 1;
  }

  if ([0 _barPresentationStyle] != 1 && objc_msgSend(0, "_barPresentationStyle") != 2)
  {
    goto LABEL_22;
  }

  presentedViewController = 0;
LABEL_20:
  _hidesNavigationBarDuringPresentationRespectingInlineSearch = [(UIViewController *)presentedViewController _hidesNavigationBarDuringPresentationRespectingInlineSearch];
  if (_hidesNavigationBarDuringPresentationRespectingInlineSearch)
  {
    if (![(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentingViewController] navigationController])
    {
      [(UIPresentationController *)selfCopy->_searchPresentationController presentingViewController];
      objc_opt_class();
      LOBYTE(_hidesNavigationBarDuringPresentationRespectingInlineSearch) = objc_opt_isKindOfClass();
      return _hidesNavigationBarDuringPresentationRespectingInlineSearch & 1;
    }

    goto LABEL_22;
  }

  return _hidesNavigationBarDuringPresentationRespectingInlineSearch & 1;
}

- (double)resultsControllerContentOffset
{
  selfCopy = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  searchResultsController = [(_UISearchPresentationAssistant *)self searchResultsController];
  v4 = [searchResultsController _contentOrObservableScrollViewForEdge:1];
  Height = 0.0;
  if (searchResultsController && v4 && [searchResultsController automaticallyAdjustsScrollViewInsets])
  {
    if (selfCopy)
    {
      if (([(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController] _resultsControllerWillLayoutVisibleUnderContainerView]& 1) == 0)
      {
        return Height;
      }

      if ([(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController] _barPresentationStyle]== 3)
      {
        goto LABEL_9;
      }

      presentedViewController = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
    }

    else
    {
      if (([0 _resultsControllerWillLayoutVisibleUnderContainerView] & 1) == 0)
      {
        return Height;
      }

      _barPresentationStyle = [0 _barPresentationStyle];
      presentedViewController = 0;
      if (_barPresentationStyle == 3)
      {
LABEL_9:
        [-[_UISearchPresentationAssistant searchBarContainerView](selfCopy "searchBarContainerView")];
        Height = CGRectGetHeight(v33);
        if (selfCopy)
        {
          presentedViewController2 = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
        }

        else
        {
          presentedViewController2 = 0;
        }

        [(UIViewController *)presentedViewController2 set_resultsContentScrollViewPresentationOffset:Height];
        return Height;
      }
    }

    searchBar = [(UIViewController *)presentedViewController searchBar];
    [searchBar bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (selfCopy)
    {
      presentedViewController3 = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController3 = 0;
    }

    [searchBar convertRect:-[UIViewController view](presentedViewController3 toView:{"view"), v10, v12, v14, v16}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (selfCopy)
    {
      presentedViewController4 = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController4 = 0;
    }

    if ([(UIViewController *)presentedViewController4 _hidesNavigationBarDuringPresentationRespectingInlineSearch]&& [(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentingViewController] navigationController])
    {
      [[(UINavigationController *)[(UIViewController *)[(UIPresentationController *)selfCopy->_searchPresentationController presentingViewController] navigationController] navigationBar] frame];
      v21 = v21 - CGRectGetHeight(v34);
    }

    v35.origin.x = v19;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    v27 = CGRectGetHeight(v35);
    if (selfCopy)
    {
      presentedViewController5 = [(UIPresentationController *)selfCopy->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController5 = 0;
    }

    [(UIViewController *)presentedViewController5 set_resultsContentScrollViewPresentationOffset:v27];
    if ([(_UISearchPresentationAssistant *)selfCopy searchBarToBecomeTopAttached])
    {
      [(_UISearchPresentationAssistant *)selfCopy statusBarAdjustment];
      v21 = v21 - v29;
      v25 = v25 + v29;
    }

    v36.origin.x = v19;
    v36.origin.y = v21;
    v36.size.width = v23;
    v36.size.height = v25;
    Height = CGRectGetMaxY(v36);
    if ([(_UISearchPresentationAssistant *)selfCopy searchBarWillResizeForScopeBar])
    {
      [searchBar _scopeBarHeight];
      return Height + v30;
    }
  }

  return Height;
}

- (BOOL)searchBarWillResizeForScopeBar
{
  _searchControllerPresenting = [(_UISearchPresentationAssistant *)self _searchControllerPresenting];
  if (!_searchControllerPresenting || (_scopeBarIsVisible = [_searchControllerPresenting searchBarCanContainScopeBar]) != 0)
  {
    if (self)
    {
      presentedViewController = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
    }

    else
    {
      presentedViewController = 0;
    }

    searchBar = [(UIViewController *)presentedViewController searchBar];
    _scopeBarIsVisible = [searchBar _scopeBarIsVisible];
    if (_scopeBarIsVisible)
    {
      LOBYTE(_scopeBarIsVisible) = [searchBar _shouldCombineLandscapeBars] ^ 1;
    }
  }

  return _scopeBarIsVisible;
}

- (void)dimmingViewWasTapped:(id)tapped
{
  selfCopy = self;
  if (self)
  {
    self = [(UIPresentationController *)self->_searchPresentationController presentedViewController];
  }

  presentationWasAnimated = selfCopy->_presentationWasAnimated;

  [(_UISearchPresentationAssistant *)self _dismissPresentation:presentationWasAnimated];
}

@end