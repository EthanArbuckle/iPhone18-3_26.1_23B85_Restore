@interface NCNotificationPresentableViewController
- (BNPanGestureProxy)_panGestureProxy;
- (BOOL)_isAppearingOrAppeared;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)isDragging;
- (BOOL)resignFirstResponder;
- (CGRect)_initialBannerFrame;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NCNotificationPresentableViewController)initWithNotificationViewController:(id)a3;
- (NCNotificationPresentableViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3;
- (id)presentableDescription;
- (void)draggingDidBeginWithGestureProxy:(id)a3;
- (void)longLookDidPresentForNotificationViewController:(id)a3;
- (void)longLookWillPresentForNotificationViewController:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NCNotificationPresentableViewController

- (NSString)requestIdentifier
{
  v2 = [(NCNotificationPresentableViewController *)self notificationViewController];
  v3 = [v2 notificationRequest];
  v4 = [v3 notificationIdentifier];

  return v4;
}

- (id)presentableDescription
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"logDigest";
  v3 = [(NCNotificationPresentableViewController *)self requestIdentifier];
  v4 = [v3 un_logDigest];
  v9[1] = @"bannerAppearState";
  v10[0] = v4;
  v5 = NCStringForAppearState(self->_bannerAppearState);
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = BNPresentableDescription();

  return v7;
}

- (BOOL)canBecomeFirstResponder
{
  if (self->_notificationViewController)
  {
    notificationViewController = self->_notificationViewController;

    return [(NCNotificationViewController *)notificationViewController canBecomeFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCNotificationPresentableViewController;
    return [(NCNotificationPresentableViewController *)&v6 canBecomeFirstResponder];
  }
}

- (BOOL)becomeFirstResponder
{
  if (self->_notificationViewController)
  {
    notificationViewController = self->_notificationViewController;

    return [(NCNotificationViewController *)notificationViewController becomeFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCNotificationPresentableViewController;
    return [(NCNotificationPresentableViewController *)&v6 becomeFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = NCNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 viewWillLayoutSubviews];
  if (!self->_presentationState)
  {
    v3 = [(NCNotificationViewController *)self->_notificationViewController view];
    v4 = [(NCNotificationPresentableViewController *)self view];
    [v4 bounds];
    [v3 setFrame:?];
  }
}

- (BOOL)isDragging
{
  WeakRetained = objc_loadWeakRetained(&self->_panGestureProxy);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state] < 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NCNotificationPresentableViewController)initWithNotificationViewController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = NCNotificationPresentableViewController;
  v6 = [(NCNotificationPresentableViewController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_readyForPanGestureProxy = 1;
    objc_storeStrong(&v6->_notificationViewController, a3);
    [(NCNotificationViewController *)v7->_notificationViewController addObserver:v7];
    [(NCNotificationViewController *)v7->_notificationViewController setDefinesPresentationContext:1];
    [(NCNotificationPresentableViewController *)v7 addChildViewController:v7->_notificationViewController];
    v8 = [(NCNotificationViewController *)v7->_notificationViewController notificationRequest];
    v9 = [v8 options];
    v10 = [v9 revealsAdditionalContentOnPresentation];

    notificationViewController = v7->_notificationViewController;
    if (v10)
    {
      v12 = [(NCNotificationViewController *)notificationViewController view];
      [v12 setHidden:1];
    }

    else
    {
      [(NCNotificationViewController *)notificationViewController preferredContentSize];
      [(NCNotificationPresentableViewController *)v7 setPreferredContentSize:?];
    }
  }

  return v7;
}

- (BOOL)canResignFirstResponder
{
  if (self->_notificationViewController)
  {
    notificationViewController = self->_notificationViewController;

    return [(NCNotificationViewController *)notificationViewController canResignFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCNotificationPresentableViewController;
    return [(NCNotificationPresentableViewController *)&v6 canResignFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if (self->_notificationViewController)
  {
    notificationViewController = self->_notificationViewController;

    return [(NCNotificationViewController *)notificationViewController resignFirstResponder];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = NCNotificationPresentableViewController;
    return [(NCNotificationPresentableViewController *)&v6 resignFirstResponder];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NCNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 viewDidLoad];
  v3 = [(NCNotificationPresentableViewController *)self view];
  v4 = [(NCNotificationViewController *)self->_notificationViewController view];
  [v3 addSubview:v4];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NCNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:v4];
  if (!self->_presentationState)
  {
    [v4 preferredContentSize];
    [(NCNotificationPresentableViewController *)self setPreferredContentSize:?];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = NCNotificationPresentableViewController;
  [(NCNotificationPresentableViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (self->_presentationState == 1)
  {
    self->_presentationState = 2;
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_278371238;
    objc_copyWeak(&v11, &location);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v8[3] = &unk_278371238;
    objc_copyWeak(&v9, &location);
    [v7 animateAlongsideTransition:v10 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v2[3] = &unk_27836F6A8;
  v2[4] = WeakRetained;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _initialBannerFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) _panGestureProxy];
  v11 = [*(a1 + 32) view];
  [v10 visualTranslationInCoordinateSpace:v11];
  v13 = v5 + v12;

  v15 = [*(a1 + 32) notificationViewController];
  v14 = [v15 view];
  [v14 setFrame:{v3, v13, v7, v9}];
}

void __94__NCNotificationPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isPanPresentation])
  {
    v1 = [WeakRetained notificationViewController];
    [v1 presentLongLookAnimated:1 trigger:6 completion:0];
  }
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  if (self->_presentationState < 1)
  {
    [(NCNotificationViewController *)self->_notificationViewController preferredContentSizeWithPresentationSize:a3.width containerSize:a3.height, a4.width, a4.height, v4, v5];
    a4.width = v6;
    a4.height = v7;
  }

  width = a4.width;
  height = a4.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)draggingDidBeginWithGestureProxy:(id)a3
{
  v4 = a3;
  if (self->_readyForPanGestureProxy)
  {
    objc_storeWeak(&self->_panGestureProxy, v4);
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__NCNotificationPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke;
    v5[3] = &unk_278371260;
    objc_copyWeak(&v6, &location);
    v5[4] = self;
    [v4 setActionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __76__NCNotificationPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 state];
  if (v5 > 3)
  {
    if ((v5 - 4) >= 2)
    {
      goto LABEL_41;
    }

LABEL_12:
    if ([WeakRetained _canPan] && objc_msgSend(WeakRetained, "_presentationState") >= 1)
    {
      if ([WeakRetained _presentationState] > 3)
      {
        v22 = WeakRetained;
        v23 = 0;
      }

      else
      {
        v22 = WeakRetained;
        v23 = 3;
      }

      [v22 _setPresentationState:v23];
    }

    goto LABEL_41;
  }

  if (v5 == 1)
  {
    if ([WeakRetained _presentationState] && (objc_msgSend(WeakRetained, "_isPanPresentation") & 1) != 0)
    {
      if ([WeakRetained _presentationState] != 3)
      {
        v29 = 0;
        goto LABEL_33;
      }

      v24 = [WeakRetained view];
      [v3 locationInCoordinateSpace:v24];
      v25 = [v24 hitTest:0 withEvent:?];
      v26 = [WeakRetained notificationViewController];
      v27 = [v26 presentedViewController];

      if (v27)
      {
        v28 = [v27 view];
        v29 = [v25 isDescendantOfView:v28];
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v24 = [WeakRetained view];
      v25 = [WeakRetained notificationViewController];
      v27 = [v25 view];
      [v27 frame];
      [v24 convertRect:0 toView:?];
      [WeakRetained _setInitialBannerFrame:?];
      v29 = 1;
    }

LABEL_33:
    [WeakRetained _setCanPan:v29];
    goto LABEL_41;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_41;
    }

    if ([WeakRetained _canPan] && (!objc_msgSend(WeakRetained, "_isPanPresentation") || objc_msgSend(WeakRetained, "_presentationState") == 3))
    {
      v7 = [*(a1 + 32) view];
      [v3 velocityInCoordinateSpace:v7];
      v9 = v8;

      v10 = [*(a1 + 32) view];
      [v10 contentScaleFactor];
      v12 = NCTranslationWithVelocityAndDefaultScrollViewAcceleration(v9, v11);

      v13 = [*(a1 + 32) view];
      [v3 visualTranslationInCoordinateSpace:v13];
      v15 = v12 + v14;

      v6 = v15 / 60.0;
      if (v15 / 60.0 > 1.0)
      {
        v16 = [WeakRetained notificationViewController];
        v17 = [v16 presentedViewController];

        v18 = [v17 expandedPlatterPresentationController];
        v19 = [v18 containerView];
        [v19 _removeAllRetargetableAnimations:1];

        if (objc_opt_respondsToSelector())
        {
          v20 = v17;
          v21 = [v20 dismisser];
          [v21 expandedPlatterPresentable:v20 requestsDismissalWithTrigger:1];

          goto LABEL_41;
        }
      }
    }

    goto LABEL_12;
  }

  if ([WeakRetained _canPan] && ((objc_msgSend(v3, "didCrossDefaultThreshold") & 1) != 0 || objc_msgSend(WeakRetained, "_presentationState") >= 1))
  {
    v30 = [WeakRetained delegate];
    if ([WeakRetained _presentationState] <= 0 && objc_msgSend(*(a1 + 32), "_isAppearingOrAppeared") && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(v30, "notificationPresentableViewControllerShouldPresentLongLook:", WeakRetained)))
    {
      v31 = [WeakRetained notificationViewController];
      v32 = [v31 shouldCommitToExpandedPlatterPresentationWithFeedback];

      if (v32)
      {
        [WeakRetained _setPanPresentation:1];
        [WeakRetained _setPresentationState:1];
        if (objc_opt_respondsToSelector())
        {
          v33 = *MEMORY[0x277CBF3A8];
          [v30 notificationPresentableViewController:WeakRetained presentationSize:0 containerSize:&v33];
          [WeakRetained setPreferredContentSize:v33];
        }
      }

      else
      {
        [WeakRetained _setPresentationState:4];
      }
    }
  }

LABEL_41:
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = a3;
  self->_bannerAppearState = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentableWillAppearAsBanner:v4];
  }

  v6 = [(NCNotificationPresentableViewController *)self notificationViewController];
  [v6 setGlassMode:2];
  [v6 setUnmanagedBackdropContrast:1];
  v7 = [v6 notificationRequest];
  v8 = [v7 options];
  if (![v8 revealsAdditionalContentOnPresentation] || !-[NCNotificationPresentableViewController _isAppearingOrAppeared](self, "_isAppearingOrAppeared"))
  {

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained notificationPresentableViewControllerShouldPresentLongLook:self];

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  self->_presentationState = 1;
  if (objc_opt_respondsToSelector())
  {
    v10 = *MEMORY[0x277CBF3A8];
    [WeakRetained notificationPresentableViewController:self presentationSize:0 containerSize:&v10];
    [(NCNotificationPresentableViewController *)self setPreferredContentSize:v10];
  }

LABEL_9:
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v9 = a3;
  self->_bannerAppearState = 2;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentableDidAppearAsBanner:v9];
  }

  v5 = [(NCNotificationPresentableViewController *)self notificationViewController];
  v6 = [v5 notificationRequest];
  v7 = [v6 options];
  v8 = [v7 revealsAdditionalContentOnPresentation];

  if (v8)
  {
    [v5 presentLongLookAnimated:1 trigger:7 completion:0];
  }
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v8 = a3;
  v6 = a4;
  self->_bannerAppearState = 3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentableWillDisappearAsBanner:v8 withReason:v6];
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v8 = a3;
  v6 = a4;
  self->_bannerAppearState = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentableDidDisappearAsBanner:v8 withReason:v6];
  }
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentableWillNotAppearAsBanner:v8 withReason:v6];
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained userInteractionWillBeginForBannerForPresentable:v5];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained userInteractionDidEndForBannerForPresentable:v5];
  }

  if ((self->_presentationState - 1) <= 2)
  {
    objc_storeWeak(&self->_panGestureProxy, 0);
    self->_readyForPanGestureProxy = 0;
  }
}

- (void)longLookWillPresentForNotificationViewController:(id)a3
{
  v4 = a3;
  if (!self->_panPresentation && self->_presentationState <= 0)
  {
    self->_presentationState = 1;
    v5 = [(NCNotificationPresentableViewController *)self view];
    v6 = [(NCNotificationViewController *)self->_notificationViewController view];
    [v6 frame];
    [v5 convertRect:0 toView:?];
    self->_initialBannerFrame.origin.x = v7;
    self->_initialBannerFrame.origin.y = v8;
    self->_initialBannerFrame.size.width = v9;
    self->_initialBannerFrame.size.height = v10;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v12 = *MEMORY[0x277CBF3A8];
      [WeakRetained notificationPresentableViewController:self presentationSize:0 containerSize:&v12];
      [(NCNotificationPresentableViewController *)self setPreferredContentSize:v12];
    }
  }
}

- (void)longLookDidPresentForNotificationViewController:(id)a3
{
  if (!self->_panPresentation)
  {
    self->_presentationState = 3;
  }
}

- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3
{
  v4 = [a3 presentingViewController];
  if (v4 == self->_notificationViewController)
  {
    v5 = [(NCNotificationPresentableViewController *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isAppearingOrAppeared
{
  v3 = [(NCNotificationPresentableViewController *)self bs_isAppearingOrAppeared];
  if (v3)
  {
    LOBYTE(v3) = (self->_bannerAppearState - 1) < 2;
  }

  return v3;
}

- (NCNotificationPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BNPanGestureProxy)_panGestureProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_panGestureProxy);

  return WeakRetained;
}

- (CGRect)_initialBannerFrame
{
  x = self->_initialBannerFrame.origin.x;
  y = self->_initialBannerFrame.origin.y;
  width = self->_initialBannerFrame.size.width;
  height = self->_initialBannerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end