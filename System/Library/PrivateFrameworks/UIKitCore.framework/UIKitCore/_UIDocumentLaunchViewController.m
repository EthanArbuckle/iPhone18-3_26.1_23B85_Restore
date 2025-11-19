@interface _UIDocumentLaunchViewController
- (BOOL)_isParentViewControllerDisappearedOrAppearing;
- (UIEdgeInsets)_minimumLayoutMarginsForView;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_dismissBrowserViewController;
- (void)_firstResponderDidChange:(id)a3;
- (void)_prepareDocumentAnimationInfoWithCompletion:(uint64_t *)a1;
- (void)_presentBrowserViewController;
- (void)_updateParentNavigationBarVisibility:(void *)a1;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)browserPresentationControllerDidInvalidateSheetDetentValues:(id)a3;
- (void)browserPresentationControllerDidInvalidateUntransformedFrame:(id)a3;
- (void)browserPresentationControllerDismissalTransitionDidEnd:(id)a3;
- (void)browserPresentationControllerDismissalTransitionWillBegin:(id)a3;
- (void)browserPresentationControllerPerformLayout:(id)a3;
- (void)browserPresentationControllerPresentationTransitionDidEnd:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)initWithConfiguration:(void *)a1;
- (void)loadView;
- (void)setConfiguration:(uint64_t)a1;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation _UIDocumentLaunchViewController

- (void)initWithConfiguration:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_initWithConfiguration_ object:v2 file:@"_UIDocumentLaunchViewController.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    v7.receiver = v2;
    v7.super_class = _UIDocumentLaunchViewController;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    v2 = v4;
    if (v4)
    {
      [(_UIDocumentLaunchViewController *)v4 setConfiguration:a2];
      [v2 setDefinesPresentationContext:1];
    }
  }

  return v2;
}

- (void)setConfiguration:(uint64_t)a1
{
  if (a1)
  {
    v2 = obj;
    if (!obj)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel_setConfiguration_ object:a1 file:@"_UIDocumentLaunchViewController.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong((a1 + 1120), v2);
    *(a1 + 1112) |= 0x10u;
    v4 = [a1 view];
    [v4 setNeedsLayout];

    if (v2)
    {
      v5 = *(a1 + 1112);
      if (*(v2 + 8) == 1)
      {
        if (*(v2 + 48))
        {
          v2 = *(a1 + 1112) & ((*(v2 + 48) & 8) != 0);
        }

        else
        {
          v2 = 1;
        }
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v5 = *(a1 + 1112);
    }

    v6 = [a1 view];
    [v6 setUserInteractionEnabled:v2];

    v17 = [a1 parentViewController];
    v7 = [a1 view];
    v8 = [v7 superview];
    v9 = [v17 view];

    if (v8 != v9)
    {
      v10 = [v17 view];
      v11 = [a1 view];
      v12 = [v17 view];
      v13 = [(UIView *)v12 _backing_clientLayer];
      if (v10)
      {
        [(UIView *)v10 _backing_addPrivateSubview:v11 positioned:-2 relativeTo:v13];
      }
    }

    if ((v5 & 1) != v2)
    {
      *(a1 + 1112) = *(a1 + 1112) & 0xFE | v2;
      v14 = [a1 _window];
      if (v14)
      {
        v15 = *(a1 + 1112);

        if ((v15 & 8) == 0)
        {
          if (v2)
          {
            [(_UIDocumentLaunchViewController *)a1 _presentBrowserViewController];
          }

          else
          {
            [(_UIDocumentLaunchViewController *)a1 _dismissBrowserViewController];
          }
        }
      }
    }
  }
}

- (void)_presentBrowserViewController
{
  if (a1)
  {
    v2 = *(a1 + 1040);
    v3 = *(a1 + 1120);
    if (v3)
    {
      v3 = v3[9];
    }

    v4 = v3;
    v5 = [v4 presentationController];
    v6 = [v5 delegate];
    [v2 setDelegate:v6];

    [v4 _setOverrideTransitioningDelegate:a1];
    [v4 _setOverrideUseCustomPresentation:1];
    v7 = [v4 presentationController];

    if (v7 != v2)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [v4 presentationController];
      [v9 handleFailureInMethod:sel__presentBrowserViewController object:a1 file:@"_UIDocumentLaunchViewController.m" lineNumber:520 description:{@"Attempted to present browser view controller with an unexpected presentation controller: %@", v10}];
    }

    v8 = _UIDocumentUnavailableBrowserViewController(*(a1 + 1120));
    [v8 _prepareForPresentingInUIPDocumentLanding];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64___UIDocumentLaunchViewController__presentBrowserViewController__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = a1;
    [UIView performWithoutAnimation:v11];
    [*(a1 + 1032) presentViewController:v4 animated:1 completion:0];
    v11[5] = MEMORY[0x1E69E9820];
    v11[6] = 3221225472;
    v11[7] = ___uip_documentBrowser_sendAnalyticsEvent_block_invoke;
    v11[8] = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v11[9] = 1;
    AnalyticsSendEventLazy();
  }
}

- (void)_dismissBrowserViewController
{
  if (a1)
  {
    v2 = *(a1 + 1120);
    if (v2)
    {
      v2 = v2[9];
    }

    v3 = v2;
    v4 = [v3 presentingViewController];

    if (v4)
    {
      v5 = *(a1 + 1032);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __64___UIDocumentLaunchViewController__dismissBrowserViewController__block_invoke;
      v9[3] = &unk_1E70F3590;
      v10 = v5;
      v6 = v5;
      [(_UIDocumentLaunchViewController *)a1 _prepareDocumentAnimationInfoWithCompletion:v9];
    }

    else
    {
      [v3 _cancelDelayedPresentation:0];
      isParentViewControllerDisappearedOr = [(_UIDocumentLaunchViewController *)a1 _isParentViewControllerDisappearedOrAppearing];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64___UIDocumentLaunchViewController__dismissBrowserViewController__block_invoke_3;
      v8[3] = &unk_1E70F3590;
      v8[4] = a1;
      [UIView conditionallyAnimate:!isParentViewControllerDisappearedOr withAnimation:&__block_literal_global_599 layout:v8 completion:0];
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = ___uip_documentBrowser_sendAnalyticsEvent_block_invoke;
    v14 = &__block_descriptor_40_e19___NSDictionary_8__0l;
    v15 = 2;
    AnalyticsSendEventLazy();
  }
}

- (void)browserPresentationControllerDidInvalidateSheetDetentValues:(id)a3
{
  v3 = [(UIViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)browserPresentationControllerDidInvalidateUntransformedFrame:(id)a3
{
  v3 = [(UIViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)browserPresentationControllerPerformLayout:(id)a3
{
  v3 = [(UIViewController *)self view];
  [v3 layoutIfNeeded];
}

- (void)browserPresentationControllerPresentationTransitionDidEnd:(id)a3
{
  *&self->_flags &= ~8u;
  [(UIView *)self->_animationInteractionView setHidden:1];
  if (*&self->_flags)
  {
    *&self->_flags &= ~4u;
  }

  else
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __93___UIDocumentLaunchViewController_browserPresentationControllerPresentationTransitionDidEnd___block_invoke;
    v4[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)browserPresentationControllerDismissalTransitionWillBegin:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  *&self->_flags |= 8u;
  [(UIView *)self->_animationInteractionView setHidden:0];
  if (*&self->_flags)
  {
    *&self->_flags |= 4u;
    v5 = *(__UILogGetCategoryCachedImpl("UIDocument", &browserPresentationControllerDismissalTransitionWillBegin____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      configuration = self->_configuration;
      v7 = v5;
      if (configuration)
      {
        browserViewController = configuration->_browserViewController;
      }

      else
      {
        browserViewController = 0;
      }

      v9 = browserViewController;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "A visible UIDocumentBrowserViewController was asked to dismiss unexpectedly. Avoid calling [UIViewController dismissViewControllerAnimated:completion:] when this browser view controller is used within a UIDocumentViewControllerLaunchOptions context. Browser view controller: %@", &v10, 0xCu);
    }
  }

  else
  {

    [a3 _sendWillDismiss];
  }
}

- (void)browserPresentationControllerDismissalTransitionDidEnd:(id)a3
{
  *&self->_flags &= ~8u;
  [(UIView *)self->_animationInteractionView setHidden:1];
  if (*&self->_flags)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __90___UIDocumentLaunchViewController_browserPresentationControllerDismissalTransitionDidEnd___block_invoke;
    v5[3] = &unk_1E70F5A28;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    *&self->_flags &= 0xFAu;

    [a3 _sendDidDismiss];
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  configuration = self->_configuration;
  if (configuration)
  {
    configuration = configuration->_browserViewController;
  }

  v8 = configuration;

  if (v8 == a3)
  {
    v9 = self->_browserPresentationController;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  configuration = self->_configuration;
  if (configuration)
  {
    configuration = configuration->_browserViewController;
  }

  v8 = configuration;

  if (v8 == a3)
  {
    *&self->_flags |= 2u;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)animationControllerForDismissedController:(id)a3
{
  configuration = self->_configuration;
  if (configuration)
  {
    configuration = configuration->_browserViewController;
  }

  v6 = configuration;

  if (v6 == a3)
  {
    *&self->_flags &= ~2u;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)animateTransition:(id)a3
{
  v5 = [(_UIDocumentLaunchViewController *)self interruptibleAnimatorForTransition:?];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __53___UIDocumentLaunchViewController_animateTransition___block_invoke;
  v12 = &unk_1E7101A88;
  objc_copyWeak(&v15, &location);
  v13 = a3;
  v6 = v5;
  v14 = v6;
  v7 = _Block_copy(&v9);
  v8 = v7;
  if ((*&self->_flags & 2) != 0)
  {
    [v6 pauseAnimation];
    [(_UIDocumentLaunchViewController *)self _prepareDocumentAnimationInfoWithCompletion:v8];
  }

  else
  {
    (*(v7 + 2))(v7);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_prepareDocumentAnimationInfoWithCompletion:(uint64_t *)a1
{
  if (a1)
  {
    v4 = _UIDocumentUnavailableBrowserViewController(a1[140]);
    v5 = a1[140];
    if (v5)
    {
      v5 = v5[5];
    }

    v6 = v5;
    v7 = v6;
    if (v4)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_13;
    }

    v9 = a1[140];
    if (v9)
    {
      v9 = v9[13];
    }

    v10 = v9;

    v11 = a1[140];
    if (v11)
    {
      v12 = (*(v11 + 48) >> 2) & 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    if (_AXSReduceMotionEnabled() || (v13 = _AXSReduceMotionReduceSlideTransitionsEnabled(), (v10 == 0) | v12 & 1) || v13)
    {
LABEL_13:
      (*(a2 + 16))(a2);
    }

    else
    {
      objc_initWeak(&location, a1);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79___UIDocumentLaunchViewController__prepareDocumentAnimationInfoWithCompletion___block_invoke;
      v14[3] = &unk_1E7124EA8;
      objc_copyWeak(&v15, &location);
      v14[4] = a2;
      [v4 _requestAnimationInfoForDocumentAtURL:v7 completion:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v5 = self->_transitionAnimator;
  if (!v5)
  {
    v6 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 response:0.4];
    v7 = [UIViewPropertyAnimator alloc];
    [(_UIDocumentLaunchViewController *)self transitionDuration:a3];
    v5 = [(UIViewPropertyAnimator *)v7 initWithDuration:v6 timingParameters:?];
    transitionAnimator = self->_transitionAnimator;
    self->_transitionAnimator = v5;
  }

  return v5;
}

- (void)animationEnded:(BOOL)a3
{
  if ((*&self->_flags & 2) == 0)
  {
    [(UIView *)self->_backgroundView setAlpha:a3, 0.0];
    [(UIView *)self->_contentContainerView setAlpha:0.0];
  }

  morphAnimation = self->_morphAnimation;
  self->_morphAnimation = 0;

  documentAnimationInfo = self->_documentAnimationInfo;
  self->_documentAnimationInfo = 0;

  transitionAnimator = self->_transitionAnimator;
  self->_transitionAnimator = 0;
}

- (void)_updateParentNavigationBarVisibility:(void *)a1
{
  if (!a1)
  {
    return;
  }

  v7 = [a1 parentViewController];
  v3 = [v7 navigationController];
  if (v3)
  {

LABEL_5:
    v6 = [v7 navigationItem];
    [v6 _setPreferredNavigationBarVisibility:a2];

    goto LABEL_6;
  }

  v4 = [v7 navigationItem];
  v5 = [v4 _preferredNavigationBarVisibility];

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)_isParentViewControllerDisappearedOrAppearing
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 parentViewController];
  if (v1)
  {
    v2 = (v1[376] & 2) == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (void)_firstResponderDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"UIWindowFirstResponderUserInfoKey"];

  v6 = [(UIViewController *)self parentViewController];
  v7 = [v6 childModalViewController];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      v10 = configuration->_browserViewController;
      if (v5 == v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = 0;
    }

    if (![(UIResponder *)v10 _containsResponder:v5])
    {
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60___UIDocumentLaunchViewController__firstResponderDidChange___block_invoke;
    v11[3] = &unk_1E70F35B8;
    v12 = v5;
    v13 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)loadView
{
  v3 = objc_alloc_init(_UIDocumentLaunchView);
  [(UIViewController *)self setView:v3];

  v4 = [(UIViewController *)self traitOverrides];
  [v4 setUserInterfaceLevel:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];

  v6 = [_UISystemBackgroundView alloc];
  v7 = +[UIBackgroundConfiguration clearConfiguration];
  v8 = [(UIViewController *)self view];
  v9 = [(_UISystemBackgroundView *)v6 initWithConfiguration:v7 containerView:v8];

  [(UIView *)v9 setAlpha:0.0];
  [(UIView *)v9 setAutoresizingMask:18];
  v10 = [(UIViewController *)self view];
  [v10 insertSubview:v9 atIndex:0];

  backgroundView = self->_backgroundView;
  self->_backgroundView = v9;
  v58 = v9;

  v12 = [_UITouchPassthroughView alloc];
  v13 = [(UIViewController *)self view];
  [v13 bounds];
  v14 = [(UIView *)v12 initWithFrame:?];

  [(UIView *)v14 setAlpha:0.0];
  [(UIView *)v14 setAutoresizingMask:18];
  v15 = [(UIViewController *)self view];
  [v15 addSubview:v14];

  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v14;
  v17 = v14;

  v18 = [_UITouchPassthroughView alloc];
  [(UIView *)v17 bounds];
  v19 = [(UIView *)v18 initWithFrame:?];
  [(UIView *)v19 setAutoresizingMask:18];
  [(UIView *)v19 _setSafeAreaInsetsFrozen:1];
  [(UIView *)v17 addSubview:v19];
  pageContainerView = self->_pageContainerView;
  self->_pageContainerView = v19;
  v21 = v19;

  v22 = [_UITouchPassthroughView alloc];
  [(UIView *)v21 bounds];
  v23 = [(UIView *)v22 initWithFrame:?];
  [(UIView *)v23 setAutoresizingMask:18];
  [(UIView *)v21 addSubview:v23];
  backgroundAccessoryContainerView = self->_backgroundAccessoryContainerView;
  self->_backgroundAccessoryContainerView = v23;
  v25 = v23;

  v26 = objc_alloc_init(_UIDocumentUnavailableTitlePageView);
  [(UIView *)v21 addSubview:v26];
  titleView = self->_titleView;
  self->_titleView = v26;
  v28 = v26;

  v29 = [_UITouchPassthroughView alloc];
  [(UIView *)v21 bounds];
  v30 = [(UIView *)v29 initWithFrame:?];
  [(UIView *)v30 setAutoresizingMask:18];
  [(UIView *)v21 addSubview:v30];
  foregroundAccessoryContainerView = self->_foregroundAccessoryContainerView;
  self->_foregroundAccessoryContainerView = v30;
  v32 = v30;

  v33 = objc_alloc_init(_UIDocumentUnavailableBrowserContainerViewController);
  [(UIView *)v17 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = [(UIViewController *)v33 view];
  [v42 setFrame:{v35, v37, v39, v41}];

  v43 = [(UIViewController *)v33 view];
  [(UIView *)v17 addSubview:v43];

  [(UIViewController *)self addChildViewController:v33];
  [(UIViewController *)v33 didMoveToParentViewController:self];
  browserContainerViewController = self->_browserContainerViewController;
  self->_browserContainerViewController = v33;
  v45 = v33;

  v46 = [UIView alloc];
  v47 = [(UIViewController *)self view];
  [v47 bounds];
  v48 = [(UIView *)v46 initWithFrame:?];

  [(UIView *)v48 setAutoresizingMask:18];
  v49 = [(UIView *)v48 layer];
  [v49 setHitTestsAsOpaque:1];

  [(UIView *)v48 setHidden:1];
  animationInteractionView = self->_animationInteractionView;
  self->_animationInteractionView = v48;
  v51 = v48;

  v52 = [(UIViewController *)self view];
  [v52 addSubview:v51];

  v53 = [_UIDocumentUnavailableBrowserPresentationController alloc];
  configuration = self->_configuration;
  if (configuration)
  {
    configuration = configuration->_browserViewController;
  }

  v55 = configuration;
  v56 = [(_UIDocumentUnavailableBrowserPresentationController *)v53 initWithPresentedViewController:v55 presentingViewController:v45];

  if (v56)
  {
    objc_storeWeak(&v56->_browserDelegate, self);
  }

  browserPresentationController = self->_browserPresentationController;
  self->_browserPresentationController = v56;
}

- (void)viewWillLayoutSubviews
{
  v143.receiver = self;
  v143.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v143 viewWillLayoutSubviews];
  v3 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v4 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v5 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v6 = "_UIMonochromaticTreatment";
  if ((*&self->_flags & 0x10) == 0)
  {
    goto LABEL_68;
  }

  *&self->_flags &= ~0x10u;
  v7 = self->_configuration;
  v8 = self->_titleView;
  if (v7)
  {
    documentState = v7->_documentState;
  }

  else
  {
    LODWORD(documentState) = 0;
  }

  v10 = (documentState >> 1) & 1;
  v135 = documentState;
  v11 = (documentState >> 2) & 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke;
  aBlock[3] = &unk_1E7124EF8;
  v12 = v7;
  v161 = v12;
  v13 = _Block_copy(aBlock);
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v157 = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_31;
  v158 = &unk_1E7124F20;
  v14 = v13;
  v159 = v14;
  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v151 = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_33;
  v152 = &unk_1E7124F48;
  v154 = v10;
  v155 = v11;
  v15 = v12;
  v153 = v15;
  objc_initWeak(&location, self);
  v162 = MEMORY[0x1E69E9820];
  v163 = 3221225472;
  v164 = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_2_35;
  v165 = &unk_1E7124F90;
  objc_copyWeak(v168, &location);
  v16 = v14;
  v166 = self;
  v167 = v16;
  v17 = _Block_copy(&v162);
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_4;
  v146[3] = &unk_1E7124FE0;
  rect = v17;
  v147 = rect;
  v148 = v156;
  if (v7)
  {
    primaryMenu = v15->_primaryMenu;
  }

  else
  {
    primaryMenu = 0;
  }

  v19 = primaryMenu;
  v20 = [(UIMenu *)v19 children];
  v145[0] = MEMORY[0x1E69E9820];
  v145[1] = 3221225472;
  v145[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_6;
  v145[3] = &__block_descriptor_40_e38___UIMenuElement_16__0__UIMenuElement_8lu32l8;
  v145[4] = v146;
  v141 = [v20 bs_map:v145];

  v133 = v16;
  if (v7)
  {
    secondaryMenu = v15->_secondaryMenu;
  }

  else
  {
    secondaryMenu = 0;
  }

  v22 = secondaryMenu;
  v23 = [(UIMenu *)v22 children];
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __64___UIDocumentLaunchViewController__updateTitleViewConfiguration__block_invoke_7;
  v144[3] = &__block_descriptor_40_e38___UIMenuElement_16__0__UIMenuElement_8lu32l8;
  v144[4] = v146;
  v139 = [v23 bs_map:v144];

  if (v7)
  {
    tintColor = v15->_tintColor;
  }

  else
  {
    tintColor = 0;
  }

  v25 = tintColor;
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setPrimaryButtonTint:v25];

  if (v7)
  {
    primaryAction = v15->_primaryAction;
  }

  else
  {
    primaryAction = 0;
  }

  v27 = primaryAction;
  v28 = v157(v156, v27);
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setPrimaryAction:v28];

  v29 = [(UIMenu *)v19 menuByReplacingChildren:v141];
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setPrimaryMenu:v29];

  if (v7)
  {
    secondaryAction = v15->_secondaryAction;
  }

  else
  {
    secondaryAction = 0;
  }

  v31 = secondaryAction;
  v32 = v157(v156, v31);
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setSecondaryAction:v32];

  v33 = [(UIMenu *)v22 menuByReplacingChildren:v139];
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setSecondaryMenu:v33];

  if (v7)
  {
    title = v15->_title;
  }

  else
  {
    title = 0;
  }

  v35 = title;
  [(_UIDocumentUnavailableTitlePageView *)&v8->super.super.super.super.isa setTitle:v35];

  if (v7)
  {
    v36 = v15->_primaryAction;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  v38 = v151(v150, v37);
  if (v8 && v8->_hasPrimaryProgress != v38)
  {
    v8->_hasPrimaryProgress = v38;
    [(UIView *)v8 setNeedsLayout];
  }

  if (v7)
  {
    v39 = v15->_secondaryAction;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;
  v41 = v151(v150, v40);
  if (v8)
  {
    if (v8->_hasSecondaryProgress != v41)
    {
      v8->_hasSecondaryProgress = v41;
      [(UIView *)v8 setNeedsLayout];
    }

    v42 = (v135 & 3) == 0;
    if (v8->_actionsEnabled != v42)
    {
      v8->_actionsEnabled = v42;
      [(UIView *)v8 setNeedsLayout];
    }
  }

  else
  {
  }

  objc_destroyWeak(v168);
  objc_destroyWeak(&location);

  v3 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v43 = self->_configuration;
  v44 = v43;
  if (v43)
  {
    v45 = v43->_backgroundAccessoryView;
    foregroundAccessoryView = v44->_foregroundAccessoryView;
  }

  else
  {
    v45 = 0;
    foregroundAccessoryView = 0;
  }

  v5 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v4 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v47 = foregroundAccessoryView;
  if (!(v45 | v47))
  {
    v45 = self->_defaultBackgroundAccessoryView;
    if (!v45)
    {
      v45 = objc_alloc_init(_UIDocumentUnavailablePageBackgroundAccessoryView);
      objc_storeStrong(&self->_defaultBackgroundAccessoryView, v45);
    }
  }

  backgroundAccessoryView = self->_backgroundAccessoryView;
  if (backgroundAccessoryView != v45)
  {
    [(UIView *)backgroundAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_backgroundAccessoryView, v45);
  }

  v49 = self->_foregroundAccessoryView;
  if (v49 != v47)
  {
    [(UIView *)v49 removeFromSuperview];
    objc_storeStrong(&self->_foregroundAccessoryView, foregroundAccessoryView);
  }

  configuration = self->_configuration;
  if (!configuration)
  {
    v6 = "_UIMonochromaticTreatment";
LABEL_52:
    v53 = self->_configuration;
    if (v53 && (v54 = v53->_primaryMenu) != 0)
    {
      v52 = 0.5;
    }

    else
    {
      v55 = self->_configuration;
      if (v55 && (v56 = v55->_secondaryAction) != 0)
      {
        v52 = 0.5;
      }

      else
      {
        v57 = self->_configuration;
        if (v57)
        {
          v57 = v57->_secondaryMenu;
        }

        v58 = v57;
        if (v58)
        {
          v52 = 0.5;
        }

        else
        {
          v52 = 0.666666667;
        }

        v56 = 0;
      }

      v54 = 0;
    }

    v51 = 0;
    goto LABEL_66;
  }

  v51 = configuration->_primaryAction;
  v6 = "_UIMonochromaticTreatment";
  if (!v51)
  {
    goto LABEL_52;
  }

  v52 = 0.5;
LABEL_66:

  browserPresentationController = self->_browserPresentationController;
  if (browserPresentationController)
  {
    browserPresentationController->_mediumDetentFraction = v52;
  }

LABEL_68:
  v60 = self->_backgroundView;
  v61 = self->_configuration;
  if (v61)
  {
    v61 = v61->_background;
  }

  v62 = v61;
  v63 = [(_UIDocumentUnavailableConfiguration *)v62 _hasBackgroundFill];

  if (v63)
  {
    v64 = *(&self->super.super.super.isa + v3[775]);
    if (v64)
    {
      v64 = v64[14];
    }

    v65 = v64;
    [(_UISystemBackgroundView *)v60 setConfiguration:v65];

    v66 = +[UIColor clearColor];
    [(UIView *)v60 setBackgroundColor:v66];
  }

  else
  {
    v66 = +[UIBackgroundConfiguration clearConfiguration];
    v67 = +[UIColor quaternarySystemFillColor];
    [v66 setBackgroundColor:v67];

    [(_UISystemBackgroundView *)v60 setConfiguration:v66];
    v68 = +[UIColor systemBackgroundColor];
    [(UIView *)v60 setBackgroundColor:v68];
  }

  v69 = [(UIViewController *)self view];
  [(_UISystemBackgroundView *)v60 frameInContainerView:v69];
  [(_UISystemBackgroundView *)v60 setFrame:?];

  v70 = [(UIViewController *)self view];
  [v70 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v79 = [(UIViewController *)self view];
  [v79 layoutMargins];
  v81 = v80;
  v83 = v82;
  v128 = v85;
  v129 = v84;

  v86 = [(UIViewController *)self view];
  [v86 safeAreaInsets];
  v132 = v88;
  v134 = v87;
  v136 = v89;
  v131 = v90;

  v91 = [(UIViewController *)self traitCollection];
  v92 = [v91 horizontalSizeClass];

  v93 = [(UIViewController *)self traitCollection];
  v94 = [v93 verticalSizeClass];

  v95 = _UIDocumentUnavailableBrowserViewController(*(&self->super.super.super.isa + v3[775]));
  [v95 defaultDocumentAspectRatio];
  v97 = v96;

  v98 = v72;
  v169.origin.x = v72;
  v140 = v76;
  v142 = v74;
  v169.origin.y = v74;
  v169.size.width = v76;
  recta = v78;
  v169.size.height = v78;
  Width = CGRectGetWidth(v169);
  if (v92 == 1)
  {
    v100 = 36.0;
  }

  else
  {
    v100 = 72.0;
  }

  if (v92 == 1)
  {
    v101 = 36.0;
  }

  else
  {
    v101 = 56.0;
  }

  v102 = Width - v83 - v128 - (v100 + v100);
  v103 = v102;
  if (v92 != 1)
  {
    v104 = v97 * 200.0 + 600.0;
    if (v97 <= 0.0)
    {
      v104 = 733.333333;
    }

    if (v102 >= v104)
    {
      v103 = v104;
    }

    else
    {
      v103 = v102;
    }
  }

  v170.origin.x = v98;
  v170.size.width = v140;
  v170.origin.y = v142;
  v170.size.height = recta;
  v105 = CGRectGetHeight(v170) - v81 - v129 - (v101 + v101);
  v106 = [(UIViewController *)self view];
  [v106 _currentScreenScale];
  v108 = UIRectRoundToScale(v83 + v100 + (v102 - v103) * 0.5, v81 + v101, v103, v105, v107);
  v110 = v109;
  v112 = v111;
  v114 = v113;

  v115 = [(_UIDocumentUnavailableBrowserPresentationController *)*(&self->super.super.super.isa + v4[778]) smallestDetentValue];
  v130 = v115;
  if (v94 == 2)
  {
    v116 = v115;
    v171.origin.x = v98;
    v171.size.width = v140;
    v171.origin.y = v142;
    v171.size.height = recta;
    v117 = CGRectGetHeight(v171) - v116 - *&v136;
    v172.origin.x = v108;
    *&v172.origin.y = v110;
    *&v172.size.width = v112;
    *&v172.size.height = v114;
    v118 = fmax(CGRectGetMaxY(v172) - v117, 0.0);
  }

  else
  {
    v118 = 0.0;
  }

  v119 = self->_titleView;
  v173.origin.x = v108;
  *&v173.origin.y = v110;
  *&v173.size.width = v112;
  *&v173.size.height = v114;
  MidX = CGRectGetMidX(v173);
  v174.origin.x = v108;
  *&v174.origin.y = v110;
  *&v174.size.width = v112;
  *&v174.size.height = v114;
  [(UIView *)v119 setCenter:MidX, CGRectGetMidY(v174)];
  [(UIView *)v119 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *&v112, *&v114];
  if (v119 && vabdd_f64(v119->_bottomInset, v118) > 2.22044605e-16)
  {
    v119->_bottomInset = v118;
    [(UIView *)v119 setNeedsLayout];
  }

  v121 = *(&self->super.super.super.isa + v5[788]);
  if (v121)
  {
    if (v121[54] != *&v112 || v121[55] != *&v114)
    {
      v121[54] = *&v112;
      v121[55] = *&v114;
      [v121 setNeedsLayout];
    }
  }

  v162 = MEMORY[0x1E69E9820];
  v163 = *(v6 + 235);
  v164 = __54___UIDocumentLaunchViewController__layoutContentViews__block_invoke;
  v165 = &__block_descriptor_104_e27_v24__0__UIView_8__UIView_16l;
  v166 = v134;
  v167 = v132;
  v168[0] = v136;
  v168[1] = v131;
  v168[2] = *&v108;
  v168[3] = v110;
  v168[4] = v112;
  v168[5] = v114;
  v168[6] = *&v130;
  v175.origin.x = v98;
  v175.origin.y = v142;
  v175.size.width = v140;
  v175.size.height = recta;
  Height = CGRectGetHeight(v175);
  [(UISheetPresentationController *)self->_browserPresentationController _currentPresentedViewFrame];
  MinY = CGRectGetMinY(v176);
  if (vabdd_f64(Height, MinY) <= 2.22044605e-16)
  {
    v125 = *&v136 + v130;
  }

  else
  {
    v125 = Height - MinY;
  }

  v126 = (*&v136 + v130 - v125) / 3.5;
  v177.origin.x = v98;
  v177.origin.y = v142;
  v177.size.width = v140;
  v177.size.height = recta;
  v127 = CGRectGetMidX(v177);
  v178.origin.x = v98;
  v178.origin.y = v142;
  v178.size.width = v140;
  v178.size.height = recta;
  [(UIView *)self->_pageContainerView setCenter:v127, CGRectGetMidY(v178) + v126];
  [(UIView *)self->_pageContainerView setBounds:v98, v142, v140, recta];
  v164(&v162, self->_backgroundAccessoryView, self->_backgroundAccessoryContainerView);
  v164(&v162, self->_foregroundAccessoryView, self->_foregroundAccessoryContainerView);
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v4 viewLayoutMarginsDidChange];
  v3 = [(UIViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v6 viewSafeAreaInsetsDidChange];
  v3 = self->_pageContainerView;
  v4 = [(UIView *)v3 _safeAreaInsetsFrozen];
  [(UIView *)v3 _setSafeAreaInsetsFrozen:0];
  v5 = [(UIViewController *)self view];
  [v5 safeAreaInsets];
  [(UIView *)v3 setSafeAreaInsets:?];

  [(UIView *)v3 _setSafeAreaInsetsFrozen:v4];
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v6 willMoveToParentViewController:?];
  v5 = [(UIViewController *)self parentViewController];

  if (v5 != a3)
  {
    [(_UIDocumentLaunchViewController *)self _updateParentNavigationBarVisibility:?];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v9 didMoveToParentViewController:?];
  if (!a3)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      configuration = configuration->_browserViewController;
    }

    v6 = configuration;
    v7 = [(_UIDocumentUnavailableConfiguration *)v6 _overrideTransitioningDelegate];

    if (v7 == self)
    {
      [(_UIDocumentUnavailableConfiguration *)v6 _setOverrideTransitioningDelegate:0];
      [(_UIDocumentUnavailableConfiguration *)v6 _setOverrideUseCustomPresentation:0];
    }

    [(UIViewController *)self->_browserContainerViewController dismissViewControllerAnimated:0 completion:0];
    browserPresentationController = self->_browserPresentationController;
    self->_browserPresentationController = 0;
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = _UIDocumentLaunchViewController;
  [(UIViewController *)&v9 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if ((*&self->_flags & 1) != 0 && a3 && (*&self->_flags & 8) == 0)
  {
    configuration = self->_configuration;
    if (configuration)
    {
      configuration = configuration->_browserViewController;
    }

    v7 = configuration;
    v8 = [(_UIDocumentUnavailableConfiguration *)v7 presentingViewController];

    if (!v8)
    {
      [(_UIDocumentLaunchViewController *)self _presentBrowserViewController];
    }
  }
}

- (UIEdgeInsets)_minimumLayoutMarginsForView
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end