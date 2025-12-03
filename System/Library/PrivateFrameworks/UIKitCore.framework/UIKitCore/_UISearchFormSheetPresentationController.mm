@interface _UISearchFormSheetPresentationController
- (CGRect)_frameOfPresentedViewControllerViewInSuperview;
- (CGRect)finalFrameForContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (_UISearchFormSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (double)resultsControllerContentOffset;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (void)_horizontalSizeClassChanged;
- (void)_presentedView:(id)view enableFormSheetAccoutrements:(BOOL)accoutrements;
- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator;
- (void)_transitionToWillBegin;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setContentVisible:(BOOL)visible;
@end

@implementation _UISearchFormSheetPresentationController

- (_UISearchFormSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = _UISearchFormSheetPresentationController;
  v8 = [(UIPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v8)
  {
    v8->_assistant = [[_UISearchPresentationAssistant alloc] initWithSearchPresentationController:v8];
    v11[0] = 0x1EFE323F8;
    -[UIPresentationController _registerForTraitTokenChanges:withTarget:action:](v8, "_registerForTraitTokenChanges:withTarget:action:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1], v8, sel__horizontalSizeClassChanged);
  }

  return v8;
}

- (void)dealloc
{
  self->_assistant = 0;
  v3.receiver = self;
  v3.super_class = _UISearchFormSheetPresentationController;
  [(UIPresentationController *)&v3 dealloc];
}

- (void)presentationTransitionWillBegin
{
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [transitionCoordinator isAnimated]);
  [(_UISearchPresentationAssistant *)self->_assistant ensureAppropriatelySizedSearchBar:[(UIViewController *)[(UIPresentationController *)self presentedViewController] searchBar]];
  searchBarContainerView = [(_UISearchFormSheetPresentationController *)self searchBarContainerView];
  if ([(_UISearchFormSheetPresentationController *)self searchBarToBecomeTopAttached])
  {
    [(UIView *)searchBarContainerView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(_UISearchFormSheetPresentationController *)self statusBarAdjustment];
    [(UIView *)searchBarContainerView setFrame:v6, v8, v10, v13 + v12];
  }

  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationAssistant *)self->_assistant dimmingView]];
    if ([transitionCoordinator isAnimated])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke;
      v21[3] = &unk_1E711EC78;
      v21[4] = self;
      [transitionCoordinator animateAlongsideTransition:v21 completion:0];
    }

    else
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }
  }

  v14 = [UIView alloc];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  self->_wrapperView = [(UIView *)v14 initWithFrame:*MEMORY[0x1E695F058], v16, v17, v18];
  [[(UIViewController *)[(UIPresentationController *)self presentedViewController] view] setFrame:v15, v16, v17, v18];
  [[(UIViewController *)[(UIPresentationController *)self presentedViewController] view] setAutoresizingMask:18];
  [(UIView *)self->_wrapperView addSubview:[(UIViewController *)[(UIPresentationController *)self presentedViewController] view]];
  [(_UISearchFormSheetPresentationController *)self _presentedView:self->_wrapperView enableFormSheetAccoutrements:1];
  if ([transitionCoordinator isAnimated])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v20[3] = &unk_1E711EC78;
    v20[4] = self;
    [transitionCoordinator animateAlongsideTransition:v20 completion:0];
  }

  else
  {
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] _beginOcclusion:self];
  }

  [(_UISearchFormSheetPresentationController *)self setContentVisible:[(UIViewController *)[(UIPresentationController *)self presentedViewController] _showsSearchResultsController]];
  if ([(_UISearchFormSheetPresentationController *)self _shouldSubscribeToKeyboardNotifications])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:-[UIPresentationController presentedViewController](self selector:"presentedViewController") name:sel__keyboardWillShow_ object:{@"UIKeyboardPrivateWillShowNotification", 0}];
    [defaultCenter addObserver:-[UIPresentationController presentedViewController](self selector:"presentedViewController") name:sel__keyboardWillHide_ object:{@"UIKeyboardPrivateWillHideNotification", 0}];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }

    view = [(UIViewController *)[(UIPresentationController *)self presentingViewController] view];

    [(UIView *)view _endOcclusion:self];
  }
}

- (void)dismissalTransitionWillBegin
{
  transitionCoordinator = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
  {
    if ([transitionCoordinator isAnimated])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke;
      v5[3] = &unk_1E711EC78;
      v5[4] = self;
      [transitionCoordinator animateAlongsideTransition:v5 completion:0];
    }

    else
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }
  }

  if ([transitionCoordinator isAnimated])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke_2;
    v4[3] = &unk_1E711EC78;
    v4[4] = self;
    [transitionCoordinator animateAlongsideTransition:v4 completion:0];
  }

  else
  {
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] _endOcclusion:self];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }

    [(UIView *)[(_UISearchFormSheetPresentationController *)self searchBarContainerView] removeFromSuperview];
    if ([(_UISearchFormSheetPresentationController *)self _shouldSubscribeToKeyboardNotifications])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:-[UIPresentationController presentingViewController](self name:"presentingViewController") object:{@"UIKeyboardPrivateWillShowNotification", 0}];
      [defaultCenter removeObserver:-[UIPresentationController presentingViewController](self name:"presentingViewController") object:{@"UIKeyboardPrivateWillHideNotification", 0}];
    }

    self->_wrapperView = 0;
    view = [(UIViewController *)[(UIPresentationController *)self presentedViewController] view];

    [(_UISearchFormSheetPresentationController *)self _presentedView:view enableFormSheetAccoutrements:0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  searchBar = [(UIViewController *)[(UIPresentationController *)self presentedViewController] searchBar];
  containerView = [(UIPresentationController *)self containerView];
  [-[UIView searchField](searchBar "searchField")];
  v6 = v5;
  [-[UIView searchField](searchBar "searchField")];
  Width = CGRectGetWidth(v20);
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _barPresentationStyle]== 3)
  {
    searchBarContainerView = [(_UISearchFormSheetPresentationController *)self searchBarContainerView];
    searchBar = searchBarContainerView;
    goto LABEL_3;
  }

  MaxY = 0.0;
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _barPresentationStyle]== 2)
  {
    objc_opt_class();
    if (searchBar)
    {
      superview = searchBar;
      while ((objc_opt_isKindOfClass() & 1) == 0)
      {
        superview = [(UIView *)superview superview];
        if (!superview)
        {
          objc_opt_class();
          superview = searchBar;
          while ((objc_opt_isKindOfClass() & 1) == 0)
          {
            superview = [(UIView *)superview superview];
            if (!superview)
            {
              objc_opt_class();
              superview2 = searchBar;
              while ((objc_opt_isKindOfClass() & 1) == 0)
              {
                superview2 = [(UIView *)superview2 superview];
                if (!superview2)
                {
                  goto LABEL_19;
                }
              }

              [(UIView *)superview2 bounds];
              [(UIView *)superview2 convertRect:containerView toView:?];
              MaxY = CGRectGetMaxY(v22);
              if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _hidesNavigationBarDuringPresentationRespectingInlineSearch])
              {
                [objc_msgSend(-[UIView navController](superview2 "navController")];
                MaxY = MaxY - CGRectGetHeight(v23);
              }

              goto LABEL_22;
            }
          }

          break;
        }
      }

      [(UIView *)superview bounds];
      v9 = superview;
      goto LABEL_4;
    }

    objc_opt_class();
    objc_opt_class();
LABEL_19:
    searchBarContainerView = searchBar;
LABEL_3:
    [(UIView *)searchBarContainerView bounds];
    v9 = searchBar;
LABEL_4:
    [(UIView *)v9 convertRect:containerView toView:?];
    MaxY = CGRectGetMaxY(v21);
  }

LABEL_22:
  [[(UIView *)containerView window] bounds];
  v13 = CGRectGetHeight(v24) - MaxY + -25.0;
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _shouldRespectPreferredContentSize])
  {
    [(UIViewController *)[(UIPresentationController *)self presentedViewController] preferredContentSize];
    if (v14 != 0.0 && v14 <= v13)
    {
      v13 = v14;
    }
  }

  v16 = MaxY + 1.0;
  v17 = v6;
  v18 = Width;
  v19 = v13;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = _UISearchFormSheetPresentationController;
  [(UIPresentationController *)&v7 containerViewWillLayoutSubviews];
  [(_UISearchFormSheetPresentationController *)self frameOfPresentedViewInContainerView];
  [-[_UISearchFormSheetPresentationController presentedView](self "presentedView")];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  [(UIView *)[(UIPresentationController *)self containerView] setNeedsLayout];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98___UISearchFormSheetPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v4[3] = &unk_1E70F5CA0;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0 completion:0.4];
}

- (CGRect)_frameOfPresentedViewControllerViewInSuperview
{
  [(UIView *)self->_wrapperView bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_presentedView:(id)view enableFormSheetAccoutrements:(BOOL)accoutrements
{
  accoutrementsCopy = accoutrements;
  if (accoutrements)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = 0.0;
  }

  [objc_msgSend(view "layer")];

  [view setClipsToBounds:accoutrementsCopy];
}

- (void)_horizontalSizeClassChanged
{
  if ([(UIPresentationController *)self containerView]&& [(UITraitCollection *)[(UIPresentationController *)self traitCollection] horizontalSizeClass]== UIUserInterfaceSizeClassRegular)
  {
    [(_UISearchFormSheetPresentationController *)self frameOfPresentedViewInContainerView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    presentedView = [(_UISearchFormSheetPresentationController *)self presentedView];

    [presentedView setFrame:{v4, v6, v8, v10}];
  }
}

- (void)_transitionToWillBegin
{
  [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:0];

  [(UIPresentationController *)self _presentationTransitionWillBegin];
}

- (void)_transitionToPresentationController:(id)controller withTransitionCoordinator:(id)coordinator
{
  v15.receiver = self;
  v15.super_class = _UISearchFormSheetPresentationController;
  [(UIPresentationController *)&v15 _transitionToPresentationController:controller withTransitionCoordinator:coordinator];
  [objc_msgSend(controller "searchBarContainerView")];
  [controller resultsControllerContentOffset];
  v7 = v6;
  searchResultsController = [(UIViewController *)[(UIPresentationController *)self presentedViewController] searchResultsController];
  v9 = [searchResultsController _contentOrObservableScrollViewForEdge:1];
  if (searchResultsController)
  {
    v10 = v9;
    if (v9)
    {
      if ([searchResultsController automaticallyAdjustsScrollViewInsets])
      {
        [v10 contentOffset];
        v12 = v11;
        v14 = v13 - v7;
        [v10 setContentInset:{v7, 0.0, 0.0, 0.0}];
        [v10 setContentOffset:{v12, v14}];
      }
    }
  }
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 1)
  {
    v4 = [[_UISearchPresentationController alloc] initWithPresentedViewController:[(UIPresentationController *)self presentedViewController] presentingViewController:[(UIPresentationController *)self presentingViewController]];
    [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:v4];
    return v4;
  }

  return self;
}

- (void)setContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
  presentedView = [(_UISearchFormSheetPresentationController *)self presentedView];

  [presentedView setHidden:!visibleCopy];
}

- (double)resultsControllerContentOffset
{
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _barPresentationStyle]== 3)
  {
    return 0.0;
  }

  assistant = self->_assistant;

  [(_UISearchPresentationAssistant *)assistant resultsControllerContentOffset];
  return result;
}

- (CGRect)finalFrameForContainerView
{
  x = self->finalFrameForContainerView.origin.x;
  y = self->finalFrameForContainerView.origin.y;
  width = self->finalFrameForContainerView.size.width;
  height = self->finalFrameForContainerView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end