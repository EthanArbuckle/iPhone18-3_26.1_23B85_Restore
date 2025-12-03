@interface SBBannerSourceListenerHostedPresentableViewController
- (BOOL)handleHomeButtonPress;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)shouldDisableTouchCancellationForTouch:(id)touch event:(id)event;
- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason;
- (SBPresentableSystemDragCancellationHandler)systemDragCancellationHandler;
- (SBUIPresentableHomeGestureContext)homeGestureContext;
- (UIEdgeInsets)bannerContentOutsets;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)transitioningDelegate;
- (void)_invalidateAllButtonEventActions;
- (void)_updateAppStatusBarSettingsAssertion;
- (void)dealloc;
- (void)homeGestureOwnershipDidChange:(BOOL)change;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBBannerSourceListenerHostedPresentableViewController

- (id)transitioningDelegate
{
  v7.receiver = self;
  v7.super_class = SBBannerSourceListenerHostedPresentableViewController;
  transitioningDelegate = [(SBBannerSourceListenerHostedPresentableViewController *)&v7 transitioningDelegate];
  if (!transitioningDelegate)
  {
    v4 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
    customTransitioningDelegate = self->_customTransitioningDelegate;
    self->_customTransitioningDelegate = v4;

    [(SBBannerSourceListenerHostedPresentableViewController *)self setTransitioningDelegate:self->_customTransitioningDelegate];
    transitioningDelegate = self->_customTransitioningDelegate;
  }

  return transitioningDelegate;
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
    isDraggingDismissalEnabled = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBBannerSourceListenerHostedPresentableViewController;
    isDraggingDismissalEnabled = [(BNBannerSourceListenerHostedPresentableViewController *)&v6 isDraggingDismissalEnabled];
  }

  return isDraggingDismissalEnabled;
}

- (BOOL)isDraggingInteractionEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  if ([WeakRetained ownsHomeGesture])
  {
    isDraggingInteractionEnabled = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBBannerSourceListenerHostedPresentableViewController;
    isDraggingInteractionEnabled = [(BNBannerSourceListenerHostedPresentableViewController *)&v6 isDraggingInteractionEnabled];
  }

  return isDraggingInteractionEnabled;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v14.receiver = self;
  v14.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v14 presentableWillAppearAsBanner:bannerCopy];
  if ([(SBBannerSourceListenerHostedPresentableViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained platterBarSwipeAffordanceViewForParticipant:self];
      barSwipeAffordanceView = self->_barSwipeAffordanceView;
      self->_barSwipeAffordanceView = v6;

      [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView addObserver:self];
      view = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
      [view addSubview:self->_barSwipeAffordanceView];
      v9 = self->_barSwipeAffordanceView;
      [view bounds];
      [(SBBarSwipeAffordanceView *)v9 setFrame:?];
      [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView setAutoresizingMask:18];
      v10 = self->_barSwipeAffordanceView;
      contentView = [(BNBannerSourceListenerPresentableViewController *)self contentView];
      [(SBBarSwipeAffordanceView *)v10 addSubview:contentView];

      selfCopy = self;
      objc_sync_enter(selfCopy);
      lastObject = [(NSMutableArray *)selfCopy->_wantsHomeAffordanceActionsAwaitingResponse lastObject];
      [WeakRetained setWantsHomeGesture:{objc_msgSend(lastObject, "wantsHomeGesture")}];

      objc_sync_exit(selfCopy);
    }

    [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  v4.receiver = self;
  v4.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 presentableDidAppearAsBanner:banner];
  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  v9.receiver = self;
  v9.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v9 presentableWillDisappearAsBanner:banner withReason:reason];
  if ([(SBBannerSourceListenerHostedPresentableViewController *)self isViewLoaded])
  {
    view = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
    contentView = [(BNBannerSourceListenerPresentableViewController *)self contentView];
    [view addSubview:contentView];

    [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView removeFromSuperview];
    barSwipeAffordanceView = self->_barSwipeAffordanceView;
    self->_barSwipeAffordanceView = 0;

    WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
    [WeakRetained setWantsHomeGesture:0];

    [(SBBannerSourceListenerHostedPresentableViewController *)self _invalidateAllButtonEventActions];
  }

  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v5 presentableDidDisappearAsBanner:banner withReason:reason];
  [(SBBannerSourceListenerHostedPresentableViewController *)self _updateAppStatusBarSettingsAssertion];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v52 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  v44 = [MEMORY[0x277CBEB58] set];
  v6 = [actionsCopy mutableCopy];
  v50.receiver = self;
  v50.super_class = SBBannerSourceListenerHostedPresentableViewController;
  v42 = [(BNBannerSourceListenerHostedPresentableViewController *)&v50 scene:sceneCopy handleActions:v6];
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
          wantsHomeGesture = [v13 wantsHomeGesture];
          WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
          if (wantsHomeGesture == [WeakRetained ownsHomeGesture])
          {
            [v13 setSuccessful:1];
          }

          else
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            wantsHomeAffordanceActionsAwaitingResponse = selfCopy->_wantsHomeAffordanceActionsAwaitingResponse;
            if (!wantsHomeAffordanceActionsAwaitingResponse)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v20 = selfCopy->_wantsHomeAffordanceActionsAwaitingResponse;
              selfCopy->_wantsHomeAffordanceActionsAwaitingResponse = v19;

              wantsHomeAffordanceActionsAwaitingResponse = selfCopy->_wantsHomeAffordanceActionsAwaitingResponse;
            }

            [(NSMutableArray *)wantsHomeAffordanceActionsAwaitingResponse addObject:v13, sceneCopy];
            objc_sync_exit(selfCopy);

            [WeakRetained setWantsHomeGesture:wantsHomeGesture];
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

          v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "presentableButtonEvent", sceneCopy)}];
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
          systemDragCancellationHandler = [(SBBannerSourceListenerHostedPresentableViewController *)self systemDragCancellationHandler];
          [systemDragCancellationHandler cancelSystemDragForPresentable:self];
        }

        else if (!v14)
        {
          goto LABEL_42;
        }

        [v44 addObject:{v35, sceneCopy}];
LABEL_42:
      }

      v7 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v7);
  }

  return v44;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  v19.receiver = self;
  v19.super_class = SBBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v19 scene:sceneCopy didUpdateClientSettings:settings];
  scene = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  clientSettings = [scene clientSettings];

  if (![clientSettings conformsToExtension:objc_opt_class()])
  {
    goto LABEL_9;
  }

  wantsDefaultGesturePriorityReason = [clientSettings wantsDefaultGesturePriorityReason];
  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  if (wantsDefaultGesturePriorityReason)
  {
    if (!gestureRecognizerPriorityAssertion)
    {
      bannerManager = [SBApp bannerManager];
      v12 = [bannerManager acquireGestureRecognizerPriorityAssertionForPresentable:self priority:1 reason:wantsDefaultGesturePriorityReason];
      v13 = self->_gestureRecognizerPriorityAssertion;
      self->_gestureRecognizerPriorityAssertion = v12;

LABEL_7:
    }
  }

  else if (gestureRecognizerPriorityAssertion)
  {
    [(SBBannerGestureRecognizerPriorityAssertion *)gestureRecognizerPriorityAssertion invalidate];
    bannerManager = self->_gestureRecognizerPriorityAssertion;
    self->_gestureRecognizerPriorityAssertion = 0;
    goto LABEL_7;
  }

LABEL_9:
  clientSettings2 = [sceneCopy clientSettings];
  v15 = objc_opt_class();
  v16 = clientSettings2;
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

- (BOOL)shouldDismissForReason:(id)reason outReason:(id *)outReason
{
  reasonCopy = reason;
  scene = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  clientSettings = [scene clientSettings];

  if ([clientSettings conformsToExtension:objc_opt_class()])
  {
    transitionDismissalPreventionReason = [clientSettings transitionDismissalPreventionReason];
    if (transitionDismissalPreventionReason && (([reasonCopy isEqualToString:@"dismissOverlays"] & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", @"mainScreenAnimationController")))
    {
      if (outReason)
      {
        scene2 = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
        clientHandle = [scene2 clientHandle];
        bundleIdentifier = [clientHandle bundleIdentifier];
        *outReason = [bundleIdentifier stringByAppendingFormat:@".%@", transitionDismissalPreventionReason];

        LOBYTE(outReason) = 0;
      }
    }

    else
    {
      LOBYTE(outReason) = 1;
    }
  }

  else
  {
    LOBYTE(outReason) = 1;
  }

  return outReason;
}

- (void)homeGestureOwnershipDidChange:(BOOL)change
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureContext);
  ownsHomeGesture = [WeakRetained ownsHomeGesture];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_wantsHomeAffordanceActionsAwaitingResponse;
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

        [*(*(&v11 + 1) + 8 * v10) setSuccessful:{ownsHomeGesture ^ objc_msgSend(*(*(&v11 + 1) + 8 * v10), "wantsHomeGesture", v11) ^ 1}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)selfCopy->_wantsHomeAffordanceActionsAwaitingResponse removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (BOOL)shouldDisableTouchCancellationForTouch:(id)touch event:(id)event
{
  if (!self->_supportsCancellingSystemDragGesture)
  {
    return 0;
  }

  eventCopy = event;
  touchCopy = touch;
  view = [touchCopy view];
  [touchCopy locationInView:view];
  v10 = v9;
  v12 = v11;

  view2 = [touchCopy view];
  window = [view2 window];
  windowScene = [window windowScene];
  coordinateSpace = [windowScene coordinateSpace];
  view3 = [touchCopy view];
  [coordinateSpace convertPoint:view3 fromCoordinateSpace:{v10, v12}];
  v19 = v18;
  v21 = v20;

  view4 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  window2 = [view4 window];
  windowScene2 = [window2 windowScene];
  coordinateSpace2 = [windowScene2 coordinateSpace];
  view5 = [touchCopy view];

  window3 = [view5 window];
  windowScene3 = [window3 windowScene];
  coordinateSpace3 = [windowScene3 coordinateSpace];
  [coordinateSpace2 convertPoint:coordinateSpace3 fromCoordinateSpace:{v19, v21}];
  v31 = v30;
  v33 = v32;

  view6 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  window4 = [view6 window];
  windowScene4 = [window4 windowScene];
  coordinateSpace4 = [windowScene4 coordinateSpace];
  view7 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  [coordinateSpace4 convertPoint:view7 toCoordinateSpace:{v31, v33}];
  v40 = v39;
  v42 = v41;

  view8 = [(SBBannerSourceListenerHostedPresentableViewController *)self view];
  LOBYTE(view6) = [view8 pointInside:eventCopy withEvent:{v40, v42}];

  return view6;
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view
{
  v4 = objc_alloc(MEMORY[0x277D67D68]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__SBBannerSourceListenerHostedPresentableViewController_homeGesturePerformedForBarSwipeAffordanceView___block_invoke;
  v8[3] = &unk_2783A9398;
  v8[4] = self;
  v5 = [v4 initWithHandler:v8];
  scene = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v5, 0}];
  [scene sendActions:v7];
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
  isValid = [v3 isValid];
  if (isValid)
  {
    [v3 handleButtonEvent];
    [(NSMutableDictionary *)self->_buttonEventsToActions removeObjectForKey:&unk_283370D90];
  }

  return isValid;
}

- (UIEdgeInsets)bannerContentOutsets
{
  scene = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
  clientSettings = [scene clientSettings];
  v4 = objc_opt_class();
  v5 = clientSettings;
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
    allValues = [(NSMutableDictionary *)buttonEventsToActions allValues];
    v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isValid])
          {
            [v9 invalidate];
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  preferredBackgroundActivitiesToSuppress = [(BNBannerSourceListenerHostedPresentableViewController *)self preferredBackgroundActivitiesToSuppress];
  if ([preferredBackgroundActivitiesToSuppress count] && -[SBBannerSourceListenerHostedPresentableViewController bs_isAppearingOrAppeared](self, "bs_isAppearingOrAppeared"))
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v6 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v6 setBackgroundActivitiesToSuppress:preferredBackgroundActivitiesToSuppress];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [assertionManager newSettingsAssertionWithSettings:v6 atLevel:8 reason:v8];
    appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = v9;

    v11 = self->_appStatusBarSettingsAssertion;
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v11 acquireWithAnimationParameters:initWithDefaultParameters];

LABEL_8:
    goto LABEL_9;
  }

  v13 = self->_appStatusBarSettingsAssertion;
  if (v13)
  {
    initWithDefaultParameters2 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v13 invalidateWithAnimationParameters:initWithDefaultParameters2];

    assertionManager = self->_appStatusBarSettingsAssertion;
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