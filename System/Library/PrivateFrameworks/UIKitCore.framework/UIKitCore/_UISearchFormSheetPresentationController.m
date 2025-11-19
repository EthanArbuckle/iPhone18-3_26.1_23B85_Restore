@interface _UISearchFormSheetPresentationController
- (CGRect)_frameOfPresentedViewControllerViewInSuperview;
- (CGRect)finalFrameForContainerView;
- (CGRect)frameOfPresentedViewInContainerView;
- (_UISearchFormSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (double)resultsControllerContentOffset;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (void)_horizontalSizeClassChanged;
- (void)_presentedView:(id)a3 enableFormSheetAccoutrements:(BOOL)a4;
- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_transitionToWillBegin;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setContentVisible:(BOOL)a3;
@end

@implementation _UISearchFormSheetPresentationController

- (_UISearchFormSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = _UISearchFormSheetPresentationController;
  v8 = [(UIPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  -[_UISearchPresentationAssistant setPresentationWasAnimated:](self->_assistant, "setPresentationWasAnimated:", [v3 isAnimated]);
  [(_UISearchPresentationAssistant *)self->_assistant ensureAppropriatelySizedSearchBar:[(UIViewController *)[(UIPresentationController *)self presentedViewController] searchBar]];
  v4 = [(_UISearchFormSheetPresentationController *)self searchBarContainerView];
  if ([(_UISearchFormSheetPresentationController *)self searchBarToBecomeTopAttached])
  {
    [(UIView *)v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(_UISearchFormSheetPresentationController *)self statusBarAdjustment];
    [(UIView *)v4 setFrame:v6, v8, v10, v13 + v12];
  }

  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
  {
    [(UIView *)[(UIPresentationController *)self containerView] addSubview:[(_UISearchPresentationAssistant *)self->_assistant dimmingView]];
    if ([v3 isAnimated])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke;
      v21[3] = &unk_1E711EC78;
      v21[4] = self;
      [v3 animateAlongsideTransition:v21 completion:0];
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
  if ([v3 isAnimated])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75___UISearchFormSheetPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v20[3] = &unk_1E711EC78;
    v20[4] = self;
    [v3 animateAlongsideTransition:v20 completion:0];
  }

  else
  {
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] _beginOcclusion:self];
  }

  [(_UISearchFormSheetPresentationController *)self setContentVisible:[(UIViewController *)[(UIPresentationController *)self presentedViewController] _showsSearchResultsController]];
  if ([(_UISearchFormSheetPresentationController *)self _shouldSubscribeToKeyboardNotifications])
  {
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:-[UIPresentationController presentedViewController](self selector:"presentedViewController") name:sel__keyboardWillShow_ object:{@"UIKeyboardPrivateWillShowNotification", 0}];
    [v19 addObserver:-[UIPresentationController presentedViewController](self selector:"presentedViewController") name:sel__keyboardWillHide_ object:{@"UIKeyboardPrivateWillHideNotification", 0}];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }

    v5 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] view];

    [(UIView *)v5 _endOcclusion:self];
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(UIViewController *)[(UIPresentationController *)self presentingViewController] transitionCoordinator];
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
  {
    if ([v3 isAnimated])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke;
      v5[3] = &unk_1E711EC78;
      v5[4] = self;
      [v3 animateAlongsideTransition:v5 completion:0];
    }

    else
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }
  }

  if ([v3 isAnimated])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __72___UISearchFormSheetPresentationController_dismissalTransitionWillBegin__block_invoke_2;
    v4[3] = &unk_1E711EC78;
    v4[4] = self;
    [v3 animateAlongsideTransition:v4 completion:0];
  }

  else
  {
    [[(UIViewController *)[(UIPresentationController *)self presentingViewController] view] _endOcclusion:self];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] obscuresBackgroundDuringPresentation])
    {
      [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
    }

    [(UIView *)[(_UISearchFormSheetPresentationController *)self searchBarContainerView] removeFromSuperview];
    if ([(_UISearchFormSheetPresentationController *)self _shouldSubscribeToKeyboardNotifications])
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 removeObserver:-[UIPresentationController presentingViewController](self name:"presentingViewController") object:{@"UIKeyboardPrivateWillShowNotification", 0}];
      [v4 removeObserver:-[UIPresentationController presentingViewController](self name:"presentingViewController") object:{@"UIKeyboardPrivateWillHideNotification", 0}];
    }

    self->_wrapperView = 0;
    v5 = [(UIViewController *)[(UIPresentationController *)self presentedViewController] view];

    [(_UISearchFormSheetPresentationController *)self _presentedView:v5 enableFormSheetAccoutrements:0];
  }
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(UIViewController *)[(UIPresentationController *)self presentedViewController] searchBar];
  v4 = [(UIPresentationController *)self containerView];
  [-[UIView searchField](v3 "searchField")];
  v6 = v5;
  [-[UIView searchField](v3 "searchField")];
  Width = CGRectGetWidth(v20);
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _barPresentationStyle]== 3)
  {
    v8 = [(_UISearchFormSheetPresentationController *)self searchBarContainerView];
    v3 = v8;
    goto LABEL_3;
  }

  MaxY = 0.0;
  if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _barPresentationStyle]== 2)
  {
    objc_opt_class();
    if (v3)
    {
      v11 = v3;
      while ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [(UIView *)v11 superview];
        if (!v11)
        {
          objc_opt_class();
          v11 = v3;
          while ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = [(UIView *)v11 superview];
            if (!v11)
            {
              objc_opt_class();
              v12 = v3;
              while ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v12 = [(UIView *)v12 superview];
                if (!v12)
                {
                  goto LABEL_19;
                }
              }

              [(UIView *)v12 bounds];
              [(UIView *)v12 convertRect:v4 toView:?];
              MaxY = CGRectGetMaxY(v22);
              if ([(UIViewController *)[(UIPresentationController *)self presentedViewController] _hidesNavigationBarDuringPresentationRespectingInlineSearch])
              {
                [objc_msgSend(-[UIView navController](v12 "navController")];
                MaxY = MaxY - CGRectGetHeight(v23);
              }

              goto LABEL_22;
            }
          }

          break;
        }
      }

      [(UIView *)v11 bounds];
      v9 = v11;
      goto LABEL_4;
    }

    objc_opt_class();
    objc_opt_class();
LABEL_19:
    v8 = v3;
LABEL_3:
    [(UIView *)v8 bounds];
    v9 = v3;
LABEL_4:
    [(UIView *)v9 convertRect:v4 toView:?];
    MaxY = CGRectGetMaxY(v21);
  }

LABEL_22:
  [[(UIView *)v4 window] bounds];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
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

- (void)_presentedView:(id)a3 enableFormSheetAccoutrements:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = 5.0;
  }

  else
  {
    v6 = 0.0;
  }

  [objc_msgSend(a3 "layer")];

  [a3 setClipsToBounds:v4];
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
    v11 = [(_UISearchFormSheetPresentationController *)self presentedView];

    [v11 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)_transitionToWillBegin
{
  [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:0];

  [(UIPresentationController *)self _presentationTransitionWillBegin];
}

- (void)_transitionToPresentationController:(id)a3 withTransitionCoordinator:(id)a4
{
  v15.receiver = self;
  v15.super_class = _UISearchFormSheetPresentationController;
  [(UIPresentationController *)&v15 _transitionToPresentationController:a3 withTransitionCoordinator:a4];
  [objc_msgSend(a3 "searchBarContainerView")];
  [a3 resultsControllerContentOffset];
  v7 = v6;
  v8 = [(UIViewController *)[(UIPresentationController *)self presentedViewController] searchResultsController];
  v9 = [v8 _contentOrObservableScrollViewForEdge:1];
  if (v8)
  {
    v10 = v9;
    if (v9)
    {
      if ([v8 automaticallyAdjustsScrollViewInsets])
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

- (id)_presentationControllerForTraitCollection:(id)a3
{
  if ([a3 horizontalSizeClass] == 1)
  {
    v4 = [[_UISearchPresentationController alloc] initWithPresentedViewController:[(UIPresentationController *)self presentedViewController] presentingViewController:[(UIPresentationController *)self presentingViewController]];
    [(_UISearchPresentationAssistant *)self->_assistant setAdaptivePresentationController:v4];
    return v4;
  }

  return self;
}

- (void)setContentVisible:(BOOL)a3
{
  v3 = a3;
  [-[_UISearchPresentationAssistant dimmingView](self->_assistant "dimmingView")];
  v5 = [(_UISearchFormSheetPresentationController *)self presentedView];

  [v5 setHidden:!v3];
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