@interface SBBannerSourceListenerHostedPresentableViewController
- (BOOL)handleHomeButtonPress;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)shouldDisableTouchCancellationForTouch:(id)a3 event:(id)a4;
- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4;
- (SBPresentableSystemDragCancellationHandler)systemDragCancellationHandler;
- (SBUIPresentableHomeGestureContext)homeGestureContext;
- (UIEdgeInsets)bannerContentOutsets;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)transitioningDelegate;
- (void)_invalidateAllButtonEventActions;
- (void)_updateAppStatusBarSettingsAssertion;
- (void)dealloc;
- (void)homeGestureOwnershipDidChange:(BOOL)a3;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation SBBannerSourceListenerHostedPresentableViewController

- (id)transitioningDelegate
{
  v7.receiver = self;
  v7.super_class = SBBannerSourceListenerHostedPresentableViewController;
  v3 = [(SBBannerSourceListenerHostedPresentableViewController *)&v7 transitioningDelegate];
  if (!v3)
  {
    v4 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = self->_customTransitioningDelegate;
    self->_customTransitioningDelegate = v4;

    [(SBBannerSourceListenerHostedPresentableViewController *)self setTransitioningDelegate:self->_customTransitioningDelegate];
    v3 = self->_customTransitioningDelegate;
  }

  return v3;
}

- (void)dealloc
{
  [(SBBannerGestureRecognizerPriorityAssertion *)self->_gestureRecognizerPriorityAssertion invalidate];
  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  self->_gestureRecognizerPriorityAssertion = 0;

  [(SBBannerSourceListenerHostedPresentableViewController *)self _invalidateAllButtonEventActions];
  v4.receiver = self;
  v4.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 dealloc];
}

- (BOOL)isDraggingDismissalEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if ([WeakRetained ownsHomeGesture])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBBannerSourceListenerHostedPresentableViewController;
    v4 = [(BNBannerSourceListenerHostedPresentableViewController *)&v6 isDraggingDismissalEnabled];
  }

  return v4;
}

- (BOOL)isDraggingInteractionEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if ([WeakRetained ownsHomeGesture])
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBBannerSourceListenerHostedPresentableViewController;
    v4 = [(BNBannerSourceListenerHostedPresentableViewController *)&v6 isDraggingInteractionEnabled];
  }

  return v4;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v14 presentableWillAppearAsBanner:v4];
  if ([(SBBannerSourceListenerHostedPresentableViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained platterBarSwipeAffordanceViewForParticipant:self];
      barSwipeAffordanceView = self->_barSwipeAffordanceView;
      self->_barSwipeAffordanceView = v6;

      [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView addObserver:self];
      v8 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
      [v8 addSubview:self->_barSwipeAffordanceView];
      v9 = self->_barSwipeAffordanceView;
      [v8 bounds];
      [(SBBarSwipeAffordanceView *)v9 setFrame:?];
      [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView setAutoresizingMask:18];
      v10 = self->_barSwipeAffordanceView;
      v11 = [(BNBannerSourceListenerPresentableViewController *)self contentView];
      [(SBBarSwipeAffordanceView *)v10 addSubview:v11];

      v12 = self;
      objc_sync_enter(v12);
      v13 = [(NSMutableArray *)v12->_wantsHomeAffordanceActionsAwaitingResponse lastObject];
      [WeakRetained setWantsHomeGesture:{objc_msgSend(v13, "wantsHomeGesture")}];

      objc_sync_exit(v12);
    }

    [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 presentableDidAppearAsBanner:a3];
  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v9 presentableWillDisappearAsBanner:a3 withReason:a4];
  if ([(SBBannerSourceListenerHostedPresentableViewController *)self isViewLoaded])
  {
    v5 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
    v6 = [(BNBannerSourceListenerPresentableViewController *)self contentView];
    [v5 addSubview:v6];

    [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView removeFromSuperview];
    barSwipeAffordanceView = self->_barSwipeAffordanceView;
    self->_barSwipeAffordanceView = 0;

    WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
    [WeakRetained setWantsHomeGesture:0];

    [(SBBannerSourceListenerHostedPresentableViewController *)self _invalidateAllButtonEventActions];
  }

  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v5 presentableDidDisappearAsBanner:a3 withReason:a4];
  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v41 = a4;
  v44 = [MEMORY[0x277CBEB58] set];
  v6 = [v41 mutableCopy];
  v50.receiver = self;
  v50.super_class = SBBannerSourceListenerHostedPresentableViewController;
  v42 = [(BNBannerSourceListenerHostedPresentableViewController *)&v50 scene:v40 handleActions:v6];
  [v44 unionSet:v42];
  [v6 minusSet:v42];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v7)
  {
    v45 = *v47;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = v13 != 0;
        if (v13)
        {
          v15 = [v13 wantsHomeGesture];
          WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
          if (v15 == [WeakRetained ownsHomeGesture])
          {
            [v13 setSuccessful:1];
          }

          else
          {
            v17 = self;
            objc_sync_enter(v17);
            wantsHomeAffordanceActionsAwaitingResponse = v17->_wantsHomeAffordanceActionsAwaitingResponse;
            if (!wantsHomeAffordanceActionsAwaitingResponse)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v20 = v17->_wantsHomeAffordanceActionsAwaitingResponse;
              v17->_wantsHomeAffordanceActionsAwaitingResponse = v19;

              wantsHomeAffordanceActionsAwaitingResponse = v17->_wantsHomeAffordanceActionsAwaitingResponse;
            }

            [(NSMutableArray *)wantsHomeAffordanceActionsAwaitingResponse addObject:v13, v40];
            objc_sync_exit(v17);

            [WeakRetained setWantsHomeGesture:v15];
          }
        }

        v21 = objc_opt_class();
        v22 = v11;
        if (v21)
        {
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (v24)
        {
          buttonEventsToActions = self->_buttonEventsToActions;
          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "presentableButtonEvent")}];
          v27 = [(NSMutableDictionary *)buttonEventsToActions objectForKey:v26];

          [v27 invalidate];
          v28 = self->_buttonEventsToActions;
          if (!v28)
          {
            v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v30 = self->_buttonEventsToActions;
            self->_buttonEventsToActions = v29;

            v28 = self->_buttonEventsToActions;
          }

          v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "presentableButtonEvent", v40)}];
          [(NSMutableDictionary *)v28 setObject:v24 forKey:v31];

          v14 = 1;
        }

        v32 = objc_opt_class();
        v33 = v22;
        if (v32)
        {
          if (objc_opt_isKindOfClass())
          {
            v32 = v33;
          }

          else
          {
            v32 = 0;
          }
        }

        if (v32)
        {
          v14 = 1;
          self->_supportsCancellingSystemDragGesture = 1;
        }

        v34 = objc_opt_class();
        v35 = v33;
        if (v34)
        {
          if (objc_opt_isKindOfClass())
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (v37)
        {
          v38 = [(SBBannerSourceListenerHostedPresentableViewController *)self systemDragCancellationHandler];
          [v38 cancelSystemDragForPresentable:self];
        }

        else if (!v14)
        {
          goto LABEL_42;
        }

        [v44 addObject:{v35, v40}];
LABEL_42:
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v7);
  }

  return v44;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v19 scene:v6 didUpdateClientSettings:a4];
  v7 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  v8 = [v7 clientSettings];

  if (![v8 conformsToExtension:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v9 = [v8 wantsDefaultGesturePriorityReason];
  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  if (v9)
  {
    if (!gestureRecognizerPriorityAssertion)
    {
      v11 = [SBApp bannerManager];
      v12 = [v11 acquireGestureRecognizerPriorityAssertionForPresentable:self priority:1 reason:v9];
      v13 = self->_gestureRecognizerPriorityAssertion;
      self->_gestureRecognizerPriorityAssertion = v12;

LABEL_7:
    }
  }

  else if (gestureRecognizerPriorityAssertion)
  {
    [(SBBannerGestureRecognizerPriorityAssertion *)gestureRecognizerPriorityAssertion invalidate];
    v11 = self->_gestureRecognizerPriorityAssertion;
    self->_gestureRecognizerPriorityAssertion = 0;
    goto LABEL_7;
  }

LABEL_9:
  v14 = [v6 clientSettings];
  v15 = objc_opt_class();
  v16 = v14;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
  }
}

- (BOOL)shouldDismissForReason:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  v7 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  v8 = [v7 clientSettings];

  if ([v8 conformsToExtension:objc_opt_class()])
  {
    v9 = [v8 transitionDismissalPreventionReason];
    if (v9 && (([v6 isEqualToString:@"dismissOverlays"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"mainScreenAnimationController")))
    {
      if (a4)
      {
        v10 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
        v11 = [v10 clientHandle];
        v12 = [v11 bundleIdentifier];
        *a4 = [v12 stringByAppendingFormat:@".%@", v9];

        LOBYTE(a4) = 0;
      }
    }

    else
    {
      LOBYTE(a4) = 1;
    }
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

- (void)homeGestureOwnershipDidChange:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  v5 = [WeakRetained ownsHomeGesture];

  v6 = self;
  objc_sync_enter(v6);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6->_wantsHomeAffordanceActionsAwaitingResponse;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) setSuccessful:{v5 ^ objc_msgSend(*(*(&v11 + 1) + 8 * v10), "wantsHomeGesture", v11) ^ 1}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)v6->_wantsHomeAffordanceActionsAwaitingResponse removeAllObjects];
  objc_sync_exit(v6);
}

- (BOOL)shouldDisableTouchCancellationForTouch:(id)a3 event:(id)a4
{
  if (!self->_supportsCancellingSystemDragGesture)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 view];
  v14 = [v13 window];
  v15 = [v14 windowScene];
  v16 = [v15 coordinateSpace];
  v17 = [v7 view];
  [v16 convertPoint:v17 fromCoordinateSpace:{v10, v12}];
  v19 = v18;
  v21 = v20;

  v22 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  v23 = [v22 window];
  v24 = [v23 windowScene];
  v25 = [v24 coordinateSpace];
  v26 = [v7 view];

  v27 = [v26 window];
  v28 = [v27 windowScene];
  v29 = [v28 coordinateSpace];
  [v25 convertPoint:v29 fromCoordinateSpace:{v19, v21}];
  v31 = v30;
  v33 = v32;

  v34 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  v35 = [v34 window];
  v36 = [v35 windowScene];
  v37 = [v36 coordinateSpace];
  v38 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  [v37 convertPoint:v38 toCoordinateSpace:{v31, v33}];
  v40 = v39;
  v42 = v41;

  v43 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  LOBYTE(v34) = [v43 pointInside:v6 withEvent:{v40, v42}];

  return v34;
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D67D68]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__SBBannerSourceListenerHostedPresentableViewController_homeGesturePerformedForBarSwipeAffordanceView___block_invoke;
  v8[3] = &unk_2783A9398;
  v8[4] = self;
  v5 = [v4 initWithHandler:v8];
  v6 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v5, 0}];
  [v6 sendActions:v7];
}

void __103__SBBannerSourceListenerHostedPresentableViewController_homeGesturePerformedForBarSwipeAffordanceView___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __103__SBBannerSourceListenerHostedPresentableViewController_homeGesturePerformedForBarSwipeAffordanceView___block_invoke_2;
  v2[3] = &unk_2783A9F58;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __103__SBBannerSourceListenerHostedPresentableViewController_homeGesturePerformedForBarSwipeAffordanceView___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1240));
    [WeakRetained setWantsHomeGesture:0];
  }
}

- (BOOL)handleHomeButtonPress
{
  v3 = [(NSMutableDictionary *)self->_buttonEventsToActions objectForKey:&unk_283370D90];
  v4 = [v3 isValid];
  if (v4)
  {
    [v3 handleButtonEvent];
    [(NSMutableDictionary *)self->_buttonEventsToActions removeObjectForKey:&unk_283370D90];
  }

  return v4;
}

- (UIEdgeInsets)bannerContentOutsets
{
  v2 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  v3 = [v2 clientSettings];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 bannerContentOutsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)_invalidateAllButtonEventActions
{
  v16 = *MEMORY[0x277D85DE8];
  buttonEventsToActions = self->_buttonEventsToActions;
  if (buttonEventsToActions)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSMutableDictionary *)buttonEventsToActions allValues];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isValid])
          {
            [v9 invalidate];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(NSMutableDictionary *)self->_buttonEventsToActions removeAllObjects];
    v10 = self->_buttonEventsToActions;
    self->_buttonEventsToActions = 0;
  }
}

- (void)_updateAppStatusBarSettingsAssertion
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  v15 = [(BNBannerSourceListenerHostedPresentableViewController *)self preferredBackgroundActivitiesToSuppress];
  if ([v15 count] && -[SBBannerSourceListenerHostedPresentableViewController bs_isAppearingOrAppeared](self, "bs_isAppearingOrAppeared"))
  {
    v3 = [(UIViewController *)self _sbWindowScene];
    v4 = [v3 statusBarManager];
    v5 = [v4 assertionManager];

    v6 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v6 setBackgroundActivitiesToSuppress:v15];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 newSettingsAssertionWithSettings:v6 atLevel:8 reason:v8];
    appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = v9;

    v11 = self->_appStatusBarSettingsAssertion;
    v12 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v11 acquireWithAnimationParameters:v12];

LABEL_8:
    goto LABEL_9;
  }

  v13 = self->_appStatusBarSettingsAssertion;
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v13 invalidateWithAnimationParameters:v14];

    v5 = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (SBPresentableSystemDragCancellationHandler)systemDragCancellationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_systemDragCancellationHandler);

  return WeakRetained;
}

- (SBUIPresentableHomeGestureContext)homeGestureContext
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);

  return WeakRetained;
}

@end