@interface SBBannerManager
+ (id)_defaultAuthorizedBundleIDs;
- (BOOL)_handleButtonEventWithTest:(id)test handler:(id)handler;
- (BOOL)_handleButtonEventWithWindowScene:(id)scene test:(id)test handler:(id)handler;
- (BOOL)_isPresentableHUD:(id)d;
- (BOOL)_isPresentableNotice:(id)notice;
- (BOOL)_needsToAddExtensionForSceneWithUserInfo:(id)info;
- (BOOL)_shouldHideStatusBarForPresentable:(id)presentable;
- (BOOL)_shouldRevokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)bannerPanGestureRecognizer:(id)recognizer shouldCancelSystemDragGestureWithTouches:(id)touches event:(id)event;
- (BOOL)bannerPanGestureRecognizer:(id)recognizer shouldDisableTouchCancellationForTouch:(id)touch event:(id)event;
- (BOOL)bannerSourceListener:(id)listener recommendsSuspending:(BOOL)suspending forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)isDisplayingBannerInAnyWindowScene;
- (BOOL)isDisplayingBannerInWindowScene:(id)scene;
- (BOOL)isDisplayingFullScreenBannerInWindowScene:(id)scene;
- (BOOL)pointInsideBanner:(CGPoint)banner inWindowScene:(id)scene;
- (BOOL)postPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info error:(id *)error;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForEvent:(id)event inView:(id)view;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForTouch:(id)touch inView:(id)view;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer translationInView:(id)view;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer velocityInView:(id)view;
- (SBBannerManager)init;
- (SBPresentableIntercepting)presentableInterceptor;
- (double)presenterMinimumPreferredTopEdgeInset:(id)inset;
- (id)_acquireGestureRecognizerPriorityAssertionWithPriority:(int64_t)priority windowScene:(id)scene reason:(id)reason;
- (id)_bannerWindowForWindowScene:(id)scene creatingIfNecessary:(BOOL)necessary;
- (id)_contentViewControllerForWindowScene:(id)scene;
- (id)_homeGestureContextForPresentable:(id)presentable windowScene:(id)scene;
- (id)_layoutDescriptionWithBounds:(CGRect)bounds inWindowScene:(id)scene;
- (id)_panGestureInWindowScene:(id)scene creatingIfNecessary:(BOOL)necessary;
- (id)_platterHomeGestureManager;
- (id)_presenterForPresentable:(id)presentable;
- (id)_presenterForWindowScene:(id)scene;
- (id)_statusBarAssertionReasonForPresentable:(id)presentable;
- (id)_windowForPresenter:(id)presenter;
- (id)_windowSceneForBannerController:(id)controller;
- (id)_windowSceneForPresenter:(id)presenter;
- (id)_windowSceneForZStackParticipant:(id)participant;
- (id)_zStackParticipantForAssistant:(id)assistant;
- (id)_zStackParticipantForWindowScene:(id)scene;
- (id)_zStackPolicyAssistantForParticipant:(id)participant;
- (id)_zStackPolicyAssistantForWindowScene:(id)scene;
- (id)acquireBannerSuppressionAssertionForReason:(id)reason;
- (id)acquireGestureRecognizerPriorityAssertionForPresentable:(id)presentable priority:(int64_t)priority reason:(id)reason;
- (id)acquireWindowLevelAssertionWithPriority:(int64_t)priority windowLevel:(double)level windowScene:(id)scene reason:(id)reason;
- (id)bannerSourceListener:(id)listener layoutDescriptionWithError:(id *)error;
- (id)bannerSourceListener:(id)listener newBannerSourceListenerPresentableForBannerSpecification:(id)specification serviceDomain:(id)domain scene:(id)scene readyCompletion:(id)completion;
- (id)bannerSourceListener:(id)listener sceneSpecificationForBannerSceneWithIdentifier:(id)identifier forProcess:(id)process userInfo:(id)info;
- (id)layoutManagerInWindowScene:(id)scene;
- (id)newBannerControllerForWindowScene:(id)scene;
- (id)panGestureRecognizerForPresenter:(id)presenter;
- (id)platterHomeGestureManager:(id)manager gestureRecognizerPriorityAssertionForParticipant:(id)participant reason:(id)reason;
- (id)platterHomeGestureManager:(id)manager orderedParticipants:(id)participants;
- (id)platterHomeGestureManager:(id)manager windowForParticipant:(id)participant;
- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (id)windowSceneForPresentable:(id)presentable;
- (void)_acquirePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:(id)scene;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_hideStatusBarIfNecessaryForPresentable:(id)presentable;
- (void)_invalidatePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:(id)scene;
- (void)_revealStatusBarIfNecessaryForPresentable:(id)presentable;
- (void)_setWindowScene:(id)scene forGestureRecognizerPriorityAssertion:(id)assertion;
- (void)_systemApertureInsetsDidChange:(id)change;
- (void)_unregisterHomeGestureContextForPresentable:(id)presentable;
- (void)_updateGesturePriorityForGestureRecognizerInWindowScene:(id)scene;
- (void)_updatePolicyAssistantForWindowScene:(id)scene;
- (void)_updateWindowLevelForScene:(id)scene;
- (void)_updateZStackPolicyAssistantForWindowScene:(id)scene reasonSuffix:(id)suffix transitionCoordinator:(id)coordinator;
- (void)addTransitionObserver:(id)observer;
- (void)ambientPresentationController:(id)controller willUpdatePresented:(BOOL)presented;
- (void)bannerSourceListener:(id)listener addExtensionIfNeededForScene:(id)scene userInfo:(id)info;
- (void)bannerSourceListener:(id)listener didUpdateInitialSceneSettings:(id *)settings;
- (void)bannerSourceListener:(id)listener didUpdateInitialSceneSettingsWithParameters:(id)parameters;
- (void)bannerSourceListener:(id)listener presentationSize:(CGSize *)size containerSize:(CGSize *)containerSize error:(id *)error;
- (void)cancelSystemDragForPresentable:(id)presentable;
- (void)dismissAllBannersInAllWindowScenesAnimated:(BOOL)animated reason:(id)reason;
- (void)dismissAllBannersInWindowScene:(id)scene animated:(BOOL)animated reason:(id)reason;
- (void)foregroundSceneZStackPolicyAssistantDidChange:(id)change forReason:(id)reason;
- (void)menuBarDidBecomeVisible:(BOOL)visible forManager:(id)manager;
- (void)menuWillPresentForMenuBarManager:(id)manager;
- (void)platterHomeGestureManager:(id)manager participantOwningHomeGestureDidChange:(id)change;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presenter:(id)presenter presentable:(id)presentable willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)presenter:(id)presenter willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)presenter:(id)presenter willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)presenter:(id)presenter willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)presenterRelinquishesVisibility:(id)visibility;
- (void)presenterRequestsVisibility:(id)visibility;
- (void)registerAuthority:(id)authority forRequesterIdentifier:(id)identifier;
- (void)removeTransitionObserver:(id)observer;
- (void)setSuspended:(BOOL)suspended forReason:(id)reason;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBBannerManager

- (BOOL)isDisplayingBannerInAnyWindowScene
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = selfCopy->_windowScenesToBannerWindows;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([(SBBannerManager *)selfCopy isDisplayingBannerInWindowScene:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  return v4;
}

- (SBBannerManager)init
{
  v13.receiver = self;
  v13.super_class = SBBannerManager;
  v2 = [(SBBannerManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF0A98]);
    _defaultAuthorizedBundleIDs = [objc_opt_class() _defaultAuthorizedBundleIDs];
    v5 = [v3 initWithAuthorizedBundleIDs:_defaultAuthorizedBundleIDs];
    bannerSourceListener = v2->_bannerSourceListener;
    v2->_bannerSourceListener = v5;

    [(BNBannerSourceListener *)v2->_bannerSourceListener setDelegate:v2];
    v7 = objc_alloc_init(SBBannerAuthority);
    bannerAuthority = v2->_bannerAuthority;
    v2->_bannerAuthority = v7;

    v9 = objc_alloc_init(SBWindowLevelAssertionManager);
    windowLevelAssertionManager = v2->_windowLevelAssertionManager;
    v2->_windowLevelAssertionManager = v9;

    [(SBWindowLevelAssertionManager *)v2->_windowLevelAssertionManager setDelegate:v2];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__systemApertureInsetsDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
  }

  return v2;
}

- (id)layoutManagerInWindowScene:(id)scene
{
  v3 = [(SBBannerManager *)self _contentViewControllerForWindowScene:scene];
  layoutManager = [v3 layoutManager];

  return layoutManager;
}

- (BOOL)isDisplayingBannerInWindowScene:(id)scene
{
  v3 = [(SBBannerManager *)self bannerWindowInWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isDisplayingFullScreenBannerInWindowScene:(id)scene
{
  v28 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = [(SBBannerManager *)self _bannerWindowForWindowScene:sceneCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(SBBannerManager *)self _presenterForWindowScene:sceneCopy, 0, 0];
  presentedPresentables = [v6 presentedPresentables];

  v8 = [presentedPresentables countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(presentedPresentables);
        }

        v11 = UIViewControllerFromPresentable();
        viewIfLoaded = [v11 viewIfLoaded];

        [viewIfLoaded frame];
        v14 = v13;
        v16 = v15;
        [v5 frame];
        v18 = v17;
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {
          LOBYTE(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [presentedPresentables countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (BOOL)pointInsideBanner:(CGPoint)banner inWindowScene:(id)scene
{
  y = banner.y;
  x = banner.x;
  v27 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(SBBannerManager *)self _presenterForWindowScene:sceneCopy, 0, 0];
  presentedPresentables = [v8 presentedPresentables];

  v10 = [presentedPresentables countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(presentedPresentables);
        }

        v13 = UIViewControllerFromPresentable();
        viewIfLoaded = [v13 viewIfLoaded];

        screen = [sceneCopy screen];
        fixedCoordinateSpace = [screen fixedCoordinateSpace];
        [viewIfLoaded convertPoint:fixedCoordinateSpace fromCoordinateSpace:{x, y}];
        v18 = v17;
        v20 = v19;

        [viewIfLoaded bounds];
        v28.x = v18;
        v28.y = v20;
        LOBYTE(screen) = CGRectContainsPoint(v29, v28);

        if (screen)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [presentedPresentables countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (id)windowSceneForPresentable:(id)presentable
{
  v4 = [(SBBannerManager *)self _presenterForPresentable:presentable];
  v5 = [(SBBannerManager *)self _windowSceneForPresenter:v4];

  return v5;
}

- (void)registerAuthority:(id)authority forRequesterIdentifier:(id)identifier
{
  authorityCopy = authority;
  identifierCopy = identifier;
  if (!authorityCopy)
  {
    [SBBannerManager registerAuthority:forRequesterIdentifier:];
  }

  if (![identifierCopy length])
  {
    [SBBannerManager registerAuthority:forRequesterIdentifier:];
  }

  [(SBBannerAuthority *)self->_bannerAuthority registerAuthority:authorityCopy forRequesterIdentifier:identifierCopy];
}

- (id)acquireGestureRecognizerPriorityAssertionForPresentable:(id)presentable priority:(int64_t)priority reason:(id)reason
{
  presentableCopy = presentable;
  reasonCopy = reason;
  v10 = reasonCopy;
  v11 = 0;
  if (presentableCopy && reasonCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    weakObjectsHashTable = [(NSMapTable *)selfCopy->_presentablesToGesturePriorityAssertions objectForKey:presentableCopy];
    v14 = [(SBBannerManager *)selfCopy _presenterForPresentable:presentableCopy];
    v15 = [(SBBannerManager *)selfCopy _windowSceneForPresenter:v14];
    v11 = [(SBBannerManager *)selfCopy _acquireGestureRecognizerPriorityAssertionWithPriority:priority windowScene:v15 reason:v10];

    if (([weakObjectsHashTable containsObject:v11] & 1) == 0)
    {
      if (!weakObjectsHashTable)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        presentablesToGesturePriorityAssertions = selfCopy->_presentablesToGesturePriorityAssertions;
        if (!presentablesToGesturePriorityAssertions)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          v18 = selfCopy->_presentablesToGesturePriorityAssertions;
          selfCopy->_presentablesToGesturePriorityAssertions = weakToStrongObjectsMapTable;

          presentablesToGesturePriorityAssertions = selfCopy->_presentablesToGesturePriorityAssertions;
        }

        [(NSMapTable *)presentablesToGesturePriorityAssertions setObject:weakObjectsHashTable forKey:presentableCopy];
      }

      [weakObjectsHashTable addObject:v11];
      topPresentables = [v14 topPresentables];
      lastObject = [topPresentables lastObject];

      if (lastObject != presentableCopy)
      {
        [v11 setEnabled:0];
      }
    }

    objc_sync_exit(selfCopy);
  }

  return v11;
}

- (id)acquireBannerSuppressionAssertionForReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (reasonCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_suppressionAssertions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      suppressionAssertions = selfCopy->_suppressionAssertions;
      selfCopy->_suppressionAssertions = weakObjectsHashTable;
    }

    objc_initWeak(&location, selfCopy);
    v8 = SBLogBanners();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Instantiating banner suppression assertion for reason: %{public}@", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CF0CE8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__SBBannerManager_acquireBannerSuppressionAssertionForReason___block_invoke;
    v23[3] = &unk_2783AEA48;
    objc_copyWeak(&v24, &location);
    v23[4] = selfCopy;
    v12 = [v9 initWithIdentifier:uUIDString forReason:reasonCopy invalidationBlock:v23];

    [(NSHashTable *)selfCopy->_suppressionAssertions addObject:v12];
    if ([(NSHashTable *)selfCopy->_suppressionAssertions count]== 1)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = selfCopy->_windowScenesToBannerControllers;
      v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v14)
      {
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [(SBBannerManager *)selfCopy _bannerControllerForWindowScene:*(*(&v19 + 1) + 8 * i), v19];
            [v17 setSuspended:1 forReason:@"Banner manager suppression assertion" revokingCurrent:0 error:0];
          }

          v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v19 objects:v26 count:16];
        }

        while (v14);
      }
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __62__SBBannerManager_acquireBannerSuppressionAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogBanners();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 reason];
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Banner suppression assertion did invalidate with reason: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[14] removeObject:v3];
    if (![v7[14] count])
    {
      v8 = v7[14];
      v7[14] = 0;

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = *(*(a1 + 32) + 16);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(a1 + 32) _bannerControllerForWindowScene:{*(*(&v15 + 1) + 8 * v13), v15}];
            [v14 setSuspended:0 forReason:@"Banner manager suppression assertion" revokingCurrent:0 error:0];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)setSuspended:(BOOL)suspended forReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_clientSuppressionAssertions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        reason = [v11 reason];
        v13 = [reason isEqualToString:reasonCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v8 || !suspended)
  {
    suspendedCopy = suspended;
    if (!v8)
    {
      suspendedCopy = 1;
    }

    if (!suspendedCopy)
    {
      [(NSMutableSet *)self->_clientSuppressionAssertions removeObject:v8];
      [v8 invalidate];
    }
  }

  else
  {
    clientSuppressionAssertions = self->_clientSuppressionAssertions;
    if (!clientSuppressionAssertions)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v16 = self->_clientSuppressionAssertions;
      self->_clientSuppressionAssertions = v15;

      clientSuppressionAssertions = self->_clientSuppressionAssertions;
    }

    v17 = [(SBBannerManager *)self acquireBannerSuppressionAssertionForReason:reasonCopy, v19];
    [(NSMutableSet *)clientSuppressionAssertions addObject:v17];
  }
}

- (void)dismissAllBannersInWindowScene:(id)scene animated:(BOOL)animated reason:(id)reason
{
  animatedCopy = animated;
  v44 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  reasonCopy = reason;
  v8 = SBLogBanners();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"without";
    *buf = 138543874;
    v39 = sceneCopy;
    if (animatedCopy)
    {
      v9 = @"with";
    }

    v40 = 2114;
    v41 = v9;
    v42 = 2114;
    v43 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Asked by system to dismiss all banners in window scene '%{public}@' %{public}@ animation for reason: %{public}@", buf, 0x20u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = sceneCopy;
  v10 = [(SBBannerManager *)self _presenterForWindowScene:sceneCopy];
  presentedPresentables = [v10 presentedPresentables];

  obj = presentedPresentables;
  v12 = [presentedPresentables countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v32 = 0;
          v17 = [v16 shouldDismissForReason:reasonCopy outReason:&v32];
          v18 = v32;
          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v18 = 0;
LABEL_19:
            v22 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v16];
            v31 = 0;
            v23 = [(SBBannerManager *)self revokePresentablesWithIdentification:v22 reason:reasonCopy options:1 animated:animatedCopy userInfo:0 error:&v31];
            v19 = v31;

            if (!v23)
            {
              v24 = SBLogBanners();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = BNEffectivePresentableDescription();
                *buf = 138543874;
                v39 = v25;
                v40 = 2114;
                v41 = reasonCopy;
                v42 = 2114;
                v43 = v19;
                _os_log_error_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_ERROR, "Failed to revoke presentable '%{public}@' for reason '%{public}@': %{public}@", buf, 0x20u);
              }
            }

            goto LABEL_27;
          }

          v18 = 0;
          if ([v16 shouldDismissForReason:reasonCopy])
          {
            goto LABEL_19;
          }
        }

        v19 = SBLogBanners();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = BNEffectivePresentableDescription();
          if (v18)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@" (reason: '%@')", v18];
            v21 = v27;
          }

          else
          {
            v21 = &stru_283094718;
          }

          *buf = 138543874;
          v39 = reasonCopy;
          v40 = 2114;
          v41 = v20;
          v42 = 2114;
          v43 = v21;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Presentable denied system dismissal for reason '%{public}@': %{public}@%{public}@", buf, 0x20u);
          if (v18)
          {
          }
        }

LABEL_27:

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }
}

- (void)dismissAllBannersInAllWindowScenesAnimated:(BOOL)animated reason:(id)reason
{
  animatedCopy = animated;
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = SBLogBanners();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"without";
    if (animatedCopy)
    {
      v8 = @"with";
    }

    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Asked by system to dismiss all banners in all window scenes %{public}@ animation for reason: %{public}@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = selfCopy->_windowScenesToBannerControllers;
  v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(SBBannerManager *)selfCopy dismissAllBannersInWindowScene:*(*(&v14 + 1) + 8 * v13++) animated:animatedCopy reason:reasonCopy, v14];
      }

      while (v11 != v13);
      v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
}

- (void)addTransitionObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    transitionObservers = self->_transitionObservers;
    v8 = observerCopy;
    if (!transitionObservers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_transitionObservers;
      self->_transitionObservers = weakObjectsHashTable;

      transitionObservers = self->_transitionObservers;
    }

    [(NSHashTable *)transitionObservers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeTransitionObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    [(NSHashTable *)self->_transitionObservers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_transitionObservers count];
    observerCopy = v7;
    if (!v5)
    {
      transitionObservers = self->_transitionObservers;
      self->_transitionObservers = 0;

      observerCopy = v7;
    }
  }
}

- (BOOL)postPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  infoCopy = info;
  [(SBBannerSourceListenerTemplatePresentableViewController *)presentableCopy ensurePresentableIsUniquelyIdentifiable];
  if (objc_opt_respondsToSelector())
  {
    [(SBBannerSourceListenerTemplatePresentableViewController *)presentableCopy setSystemDragCancellationHandler:self];
  }

  if (objc_opt_respondsToSelector())
  {
    if ([(SBBannerSourceListenerTemplatePresentableViewController *)presentableCopy providesTemplateContent])
    {
      v12 = UIViewControllerFromPresentable();

      if (!v12)
      {
        v13 = SBLogBanners();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = BNEffectivePresentableDescription();
          *buf = 138543362;
          v35 = v14;
          _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Providing host-side view controller for template presentable': %{public}@", buf, 0xCu);
        }

        v15 = [[SBBannerSourceListenerTemplatePresentableViewController alloc] initWithPresentable:presentableCopy];
        presentableCopy = v15;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentableInterceptor);
  v17 = [WeakRetained willInterceptPresentable:presentableCopy userInfo:infoCopy];

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    if (SBFEffectiveHomeButtonType() == 2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v21 = [(SBBannerManager *)self _homeGestureContextForPresentable:presentableCopy windowScene:activeDisplayWindowScene];
      [(SBBannerSourceListenerTemplatePresentableViewController *)presentableCopy setHomeGestureContext:v21];
    }

    v22 = UIViewControllerFromPresentable();
    transitioningDelegate = [v22 transitioningDelegate];
    v24 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:presentableCopy];
    if (!transitioningDelegate)
    {
      optionsCopy = options;
      errorCopy = error;
      if (!self->_presentableVCsToCustomTransitioningDelegates)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        presentableVCsToCustomTransitioningDelegates = self->_presentableVCsToCustomTransitioningDelegates;
        self->_presentableVCsToCustomTransitioningDelegates = dictionary;
      }

      v27 = objc_alloc_init(SBBannerCustomTransitioningDelegate);
      v28 = self->_presentableVCsToCustomTransitioningDelegates;
      requestIdentifier = [v24 requestIdentifier];
      [(NSMutableDictionary *)v28 setObject:v27 forKey:requestIdentifier];

      [v22 setTransitioningDelegate:v27];
      options = optionsCopy;
      error = errorCopy;
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNBannerSourceListenerPresentableViewController *)presentableCopy addPresentableObserver:self];
    }

    errorCopy = [(SBBannerManager *)self _bannerControllerForWindowScene:activeDisplayWindowScene, optionsCopy, errorCopy];
    v18 = [errorCopy postPresentable:presentableCopy withOptions:options userInfo:infoCopy error:error];

    if ((v18 & 1) == 0)
    {
      [(SBBannerManager *)self _unregisterHomeGestureContextForPresentable:presentableCopy];
    }
  }

  return v18;
}

- (BOOL)_shouldRevokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  reasonCopy = reason;
  v12 = [info objectForKey:*MEMORY[0x277D68068]];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  bOOLValue = [v16 BOOLValue];
  if (!self->_presentableForActiveGesture || ((v18 = *MEMORY[0x277CF0A50], v19 = BNIsPresentableIdentifiedByIdentification(), v18 != reasonCopy) ? (v20 = bOOLValue) : (v20 = 0), v20 == 1 ? (v21 = v19 == 0) : (v21 = 1), v21))
  {
    v22 = 1;
  }

  else
  {
    v23 = SBLogBanners();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = BNEffectivePresentableDescription();
      v30 = 138543618;
      v31 = v25;
      v32 = 2114;
      v33 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "User interaction in progress, defer presentable revoke %{public}@ with reason '%{public}@' until user interaction ends", &v30, 0x16u);
    }

    presentablesToRevokeWhenUserInteractionEnd = self->_presentablesToRevokeWhenUserInteractionEnd;
    if (!presentablesToRevokeWhenUserInteractionEnd)
    {
      v27 = [MEMORY[0x277CBEB58] set];
      v28 = self->_presentablesToRevokeWhenUserInteractionEnd;
      self->_presentablesToRevokeWhenUserInteractionEnd = v27;

      presentablesToRevokeWhenUserInteractionEnd = self->_presentablesToRevokeWhenUserInteractionEnd;
    }

    [(NSMutableSet *)presentablesToRevokeWhenUserInteractionEnd addObject:self->_presentableForActiveGesture];
    v22 = 0;
  }

  return v22;
}

- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  reasonCopy = reason;
  infoCopy = info;
  v27 = identificationCopy;
  if ([SBBannerManager _shouldRevokePresentablesWithIdentification:"_shouldRevokePresentablesWithIdentification:reason:options:userInfo:error:" reason:identificationCopy options:reasonCopy userInfo:options error:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentableInterceptor);
    v15 = reasonCopy;
    v24 = [WeakRetained revocationRequestedForPresentablesWithIdentification:identificationCopy reason:reasonCopy];

    if (v24)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v16 addObjectsFromArray:v24];
    }

    else
    {
      v16 = 0;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = selfCopy->_windowScenesToBannerControllers;
    v18 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [(SBBannerManager *)selfCopy _bannerControllerForWindowScene:*(*(&v28 + 1) + 8 * i), v24];
          v22 = [v21 revokePresentablesWithIdentification:v27 reason:v15 options:options userInfo:infoCopy error:error];

          if (v22)
          {
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v16 addObjectsFromArray:v22];
          }
        }

        v18 = [(NSMapTable *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    objc_sync_exit(selfCopy);
    if (error && *error && [v24 isEqualToArray:v16])
    {
      *error = 0;
    }
  }

  else
  {
    v15 = reasonCopy;
    v16 = 0;
  }

  return v16;
}

- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v36 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  reasonCopy = reason;
  infoCopy = info;
  v29 = reasonCopy;
  v30 = identificationCopy;
  if ([SBBannerManager _shouldRevokePresentablesWithIdentification:"_shouldRevokePresentablesWithIdentification:reason:options:userInfo:error:" reason:identificationCopy options:reasonCopy userInfo:options error:?])
  {
    errorCopy = error;
    WeakRetained = objc_loadWeakRetained(&self->_presentableInterceptor);
    v25 = [WeakRetained revocationRequestedForPresentablesWithIdentification:identificationCopy reason:reasonCopy];

    if (v25)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v16 addObjectsFromArray:v25];
    }

    else
    {
      v16 = 0;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = selfCopy->_windowScenesToBannerControllers;
    v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [(SBBannerManager *)selfCopy _bannerControllerForWindowScene:*(*(&v31 + 1) + 8 * i), v25];
          if (objc_opt_respondsToSelector())
          {
            v23 = [v22 revokePresentablesWithIdentification:v30 reason:v29 options:options animated:animatedCopy userInfo:infoCopy error:errorCopy];
            if (v23)
            {
              if (!v16)
              {
                v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v16 addObjectsFromArray:v23];
            }
          }
        }

        v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }

    objc_sync_exit(selfCopy);
    if (errorCopy && *errorCopy && [v25 isEqualToArray:v16])
    {
      *errorCopy = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)presenter:(id)presenter willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  presenterCopy = presenter;
  v11 = [(SBBannerManager *)self _windowSceneForPresenter:presenterCopy];
  bannerSourceListener = self->_bannerSourceListener;
  BSRectWithSize();
  v13 = [(SBBannerManager *)self _layoutDescriptionWithBounds:v11 inWindowScene:?];
  [(BNBannerSourceListener *)bannerSourceListener layoutDescriptionDidChange:v13];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __76__SBBannerManager_presenter_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v27 = &unk_2783C12B0;
  selfCopy = self;
  v30 = width;
  v31 = height;
  v14 = coordinatorCopy;
  v29 = v14;
  [(SBBannerManager *)self _enumerateObserversRespondingToSelector:sel_bannerManager_containerWillTransitionToSize_withTransitionCoordinator_ usingBlock:&v24];
  selfCopy = [(SBBannerManager *)self _windowForPresenter:presenterCopy, v24, v25, v26, v27, selfCopy];

  [selfCopy bounds];
  top = self->_additionalEdgeInsets.top;
  left = self->_additionalEdgeInsets.left;
  v32.origin.x = v18 + left;
  v32.origin.y = top + v19;
  v32.size.width = v20 - (left + self->_additionalEdgeInsets.right);
  v32.size.height = v21 - (top + self->_additionalEdgeInsets.bottom);
  if (height > CGRectGetHeight(v32))
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v23 = [systemApertureControllerForMainDisplay restrictSystemApertureToDefaultLayoutWithReason:@"Transient restriction due to presentation of large banner"];
  }
}

- (void)presenter:(id)presenter willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  v52 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  infoCopy = info;
  objc_initWeak(&location, self);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __87__SBBannerManager_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v46[3] = &unk_2783BE8B8;
  objc_copyWeak(&v48, &location);
  v27 = presentableCopy;
  v47 = v27;
  [coordinatorCopy animateAlongsideTransition:v46 completion:0];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  topPresentables = [presenterCopy topPresentables];
  lastObject = [topPresentables lastObject];

  v14 = [(SBBannerManager *)selfCopy _windowSceneForPresenter:presenterCopy];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = selfCopy->_presentablesToGesturePriorityAssertions;
  v15 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v15)
  {
    v32 = *v43;
    do
    {
      v16 = 0;
      v33 = v15;
      do
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v18 = [(NSMapTable *)selfCopy->_presentablesToGesturePriorityAssertions objectForKey:v17];
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v19)
        {
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              [(SBBannerManager *)selfCopy _setWindowScene:v14 forGestureRecognizerPriorityAssertion:v22];
              [v22 setEnabled:v17 == lastObject];
            }

            v19 = [v18 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v19);
        }

        ++v16;
      }

      while (v16 != v33);
      v15 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v15);
  }

  objc_sync_exit(selfCopy);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__SBBannerManager_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke_2;
  v34[3] = &unk_2783C12D8;
  v34[4] = selfCopy;
  v23 = v27;
  v35 = v23;
  v24 = coordinatorCopy;
  v36 = v24;
  v25 = infoCopy;
  v37 = v25;
  [(SBBannerManager *)selfCopy _enumerateObserversRespondingToSelector:sel_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo_ usingBlock:v34];
  v26 = [(SBBannerManager *)selfCopy _windowSceneForPresenter:presenterCopy];
  [(SBBannerManager *)selfCopy _updateZStackPolicyAssistantForWindowScene:v26 reasonSuffix:@"present presentable" transitionCoordinator:v24];

  objc_destroyWeak(&v48);
  objc_destroyWeak(&location);
}

void __87__SBBannerManager_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _hideStatusBarIfNecessaryForPresentable:*(a1 + 32)];
}

- (void)presenter:(id)presenter willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  v53 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  infoCopy = info;
  objc_initWeak(&location, self);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __87__SBBannerManager_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v47[3] = &unk_2783BE8B8;
  objc_copyWeak(&v49, &location);
  v27 = presentableCopy;
  v48 = v27;
  [coordinatorCopy animateAlongsideTransition:v47 completion:0];
  topPresentables = [presenterCopy topPresentables];
  lastObject = [topPresentables lastObject];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = selfCopy->_presentablesToGesturePriorityAssertions;
  v14 = [(NSMapTable *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v14)
  {
    v15 = *v44;
    do
    {
      v16 = 0;
      do
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v18 = [(NSMapTable *)selfCopy->_presentablesToGesturePriorityAssertions objectForKey:v17];
        v19 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v19)
        {
          v20 = *v40;
          do
          {
            v21 = 0;
            do
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v39 + 1) + 8 * v21++) setEnabled:v17 == lastObject];
            }

            while (v19 != v21);
            v19 = [v18 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v19);
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [(NSMapTable *)obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v14);
  }

  objc_sync_exit(selfCopy);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __87__SBBannerManager_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke_2;
  v35[3] = &unk_2783C12D8;
  v35[4] = selfCopy;
  v22 = v27;
  v36 = v22;
  v23 = coordinatorCopy;
  v37 = v23;
  v24 = infoCopy;
  v38 = v24;
  [(SBBannerManager *)selfCopy _enumerateObserversRespondingToSelector:sel_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo_ usingBlock:v35];
  v25 = [(SBBannerManager *)selfCopy _windowSceneForPresenter:presenterCopy];
  [(SBBannerManager *)selfCopy _updateZStackPolicyAssistantForWindowScene:v25 reasonSuffix:@"dismiss presentable" transitionCoordinator:v23];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__SBBannerManager_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke_3;
  v32[3] = &unk_2783B6F60;
  v26 = v22;
  v33 = v26;
  v34 = selfCopy;
  [v23 animateAlongsideTransition:0 completion:v32];

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

void __87__SBBannerManager_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _revealStatusBarIfNecessaryForPresentable:*(a1 + 32)];
  [WeakRetained _unregisterHomeGestureContextForPresentable:*(a1 + 32)];
}

void __87__SBBannerManager_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke_3(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:*(a1 + 32)];
    if (v3)
    {
      v4 = *(*(a1 + 40) + 72);
      v6 = v3;
      v5 = [v3 requestIdentifier];
      [v4 removeObjectForKey:v5];

      v3 = v6;
    }
  }
}

- (void)presenter:(id)presenter presentable:(id)presentable willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__SBBannerManager_presenter_presentable_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_2783C1300;
  v14[4] = self;
  v15 = presentableCopy;
  v17 = width;
  v18 = height;
  v16 = coordinatorCopy;
  v12 = coordinatorCopy;
  v13 = presentableCopy;
  [(SBBannerManager *)self _enumerateObserversRespondingToSelector:sel_bannerManager_presentable_willTransitionToSize_withTransitionCoordinator_ usingBlock:v14];
}

- (id)panGestureRecognizerForPresenter:(id)presenter
{
  v4 = [(SBBannerManager *)self _windowSceneForPresenter:presenter];
  [(SBBannerManager *)self _updateGesturePriorityForGestureRecognizerInWindowScene:v4];
  v5 = [(SBBannerManager *)self _panGestureInWindowScene:v4];

  return v5;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForEvent:(id)event inView:(id)view
{
  presenterCopy = presenter;
  recognizerCopy = recognizer;
  eventCopy = event;
  viewCopy = view;
  if ([eventCopy type] == 10)
  {
    v14 = [(SBBannerManager *)self _windowSceneForPresenter:presenterCopy];
    v15 = [(SBBannerManager *)self _panGestureInWindowScene:v14];
    if (v15 != recognizerCopy)
    {
      [SBBannerManager presenter:gestureRecognizer:locationForEvent:inView:];
    }

    v16 = objc_opt_class();
    v17 = eventCopy;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    reachabilitySceneOffsetProvider = v18;

    if ([v15 sb_isInstalledAsSystemGesture])
    {
      _UISystemGestureLocationForScrollEventInView();
      v19 = v22;
      v24 = v23;

      reachabilitySceneOffsetProvider = [v14 reachabilitySceneOffsetProvider];
      [reachabilitySceneOffsetProvider effectiveReachabilityYOffset];
      v20 = v24 - v25;
    }

    else
    {
      [reachabilitySceneOffsetProvider locationInView:viewCopy];
      v19 = v26;
      v20 = v27;
    }
  }

  else
  {
    v19 = *MEMORY[0x277CBF348];
    v20 = *(MEMORY[0x277CBF348] + 8);
  }

  v28 = v19;
  v29 = v20;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForTouch:(id)touch inView:(id)view
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  viewCopy = view;
  v13 = [(SBBannerManager *)self _windowSceneForPresenter:presenter];
  v14 = [(SBBannerManager *)self _panGestureInWindowScene:v13];
  if (v14 != recognizerCopy)
  {
    [SBBannerManager presenter:gestureRecognizer:locationForTouch:inView:];
  }

  if ([v14 sb_isInstalledAsSystemGesture])
  {
    _UISystemGestureLocationForTouchInView();
    v16 = v15;
    v18 = v17;
    reachabilitySceneOffsetProvider = [v13 reachabilitySceneOffsetProvider];
    [reachabilitySceneOffsetProvider effectiveReachabilityYOffset];
    v21 = v18 - v20;
  }

  else
  {
    if (touchCopy)
    {
      v22 = touchCopy;
    }

    else
    {
      v22 = recognizerCopy;
    }

    [v22 locationInView:viewCopy];
    v16 = v23;
    v21 = v24;
  }

  v25 = v16;
  v26 = v21;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer velocityInView:(id)view
{
  recognizerCopy = recognizer;
  viewCopy = view;
  v10 = [(SBBannerManager *)self _windowSceneForPresenter:presenter];
  v11 = [(SBBannerManager *)self _panGestureInWindowScene:v10];
  if (v11 != recognizerCopy)
  {
    [SBBannerManager presenter:gestureRecognizer:velocityInView:];
  }

  if ([v11 sb_isInstalledAsSystemGesture])
  {
    _UISystemGestureVelocityInView();
  }

  else
  {
    [recognizerCopy velocityInView:viewCopy];
  }

  v14 = v12;
  v15 = v13;

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer translationInView:(id)view
{
  recognizerCopy = recognizer;
  viewCopy = view;
  v10 = [(SBBannerManager *)self _windowSceneForPresenter:presenter];
  v11 = [(SBBannerManager *)self _panGestureInWindowScene:v10];
  if (v11 != recognizerCopy)
  {
    [SBBannerManager presenter:gestureRecognizer:translationInView:];
  }

  if ([v11 sb_isInstalledAsSystemGesture])
  {
    _UISystemGestureTranslationInView();
  }

  else
  {
    [recognizerCopy translationInView:viewCopy];
  }

  v14 = v12;
  v15 = v13;

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)presenterRequestsVisibility:(id)visibility
{
  v5 = [(SBBannerManager *)self _windowSceneForPresenter:visibility];
  v4 = [(SBBannerManager *)self _bannerWindowForWindowScene:v5 creatingIfNecessary:1];
  [(SBBannerManager *)self _invalidatePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:v5];
  [v4 setHidden:0];
}

- (void)presenterRelinquishesVisibility:(id)visibility
{
  visibilityCopy = visibility;
  v10 = [(SBBannerManager *)self _windowSceneForPresenter:visibilityCopy];
  [(SBBannerManager *)self _acquirePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:?];
  v5 = [(SBBannerManager *)self _windowForPresenter:visibilityCopy];

  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 resignAsKeyWindow];
  [v7 setHidden:1];
}

- (double)presenterMinimumPreferredTopEdgeInset:(id)inset
{
  insetCopy = inset;
  v5 = [(SBBannerManager *)self _windowSceneForPresenter:insetCopy];
  ambientPresentationController = [v5 ambientPresentationController];
  isPresented = [ambientPresentationController isPresented];

  v8 = 0.0;
  if ((isPresented & 1) == 0)
  {
    v9 = [(SBBannerManager *)self _windowForPresenter:insetCopy];
    mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    [mEMORY[0x277D67E28] interSensorRegionInWindowSpace];
    v12 = v11;
    v14 = v13;

    if ([v9 interfaceOrientation] == 1 && objc_msgSend(v5, "isMainDisplayWindowScene"))
    {
      top = self->_additionalEdgeInsets.top;
      if (top > v12 + v14)
      {
        v8 = top + 12.0;
      }

      else
      {
        v8 = 0.0;
      }
    }

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_additionalEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
    {
      menuBarManager = [v5 menuBarManager];

      if (menuBarManager)
      {
        menuBarManager2 = [v5 menuBarManager];
        v18 = 0.0;
        if ([menuBarManager2 isMenuBarVisible])
        {
          menuBarManager3 = [v5 menuBarManager];
          [menuBarManager3 containerHeight];
          v18 = v20;
        }

        if (v18 >= v8)
        {
          v8 = v18;
        }
      }
    }
  }

  return v8;
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  if (objc_opt_respondsToSelector())
  {
    [bannerCopy removePresentableObserver:self];
  }
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v5 = presentableCopy;
  presentableForActiveGesture = self->_presentableForActiveGesture;
  if (presentableForActiveGesture)
  {
    v7 = presentableForActiveGesture == presentableCopy;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self->_presentableForActiveGesture = 0;

    if ([(NSMutableSet *)self->_presentablesToRevokeWhenUserInteractionEnd containsObject:v5])
    {
      [(NSMutableSet *)self->_presentablesToRevokeWhenUserInteractionEnd removeObject:v5];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __64__SBBannerManager_userInteractionDidEndForBannerForPresentable___block_invoke;
      v8[3] = &unk_2783A92D8;
      v8[4] = self;
      v9 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __64__SBBannerManager_userInteractionDidEndForBannerForPresentable___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CF0AC0];
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) requesterIdentifier];
  v3 = [v1 identificationWithRequesterIdentifier:v5];
  v4 = [v2 revokePresentablesWithIdentification:v3 reason:@"BNBannerRevocationReasonUserInteractionEndAfterPendingDismissal" options:0 userInfo:0 error:0];
}

- (BOOL)bannerPanGestureRecognizer:(id)recognizer shouldDisableTouchCancellationForTouch:(id)touch event:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  eventCopy = event;
  windowScene = [recognizer windowScene];
  v11 = [(SBBannerManager *)self _presenterForWindowScene:windowScene];

  [v11 allPresentables];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 shouldDisableTouchCancellationForTouch:touchCopy event:{eventCopy, v18}])
        {
          LOBYTE(v13) = 1;
          goto LABEL_12;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v13;
}

- (BOOL)bannerPanGestureRecognizer:(id)recognizer shouldCancelSystemDragGestureWithTouches:(id)touches event:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  eventCopy = event;
  windowScene = [recognizer windowScene];
  v11 = [(SBBannerManager *)self _presenterForWindowScene:windowScene];

  [v11 allPresentables];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 shouldCancelSystemDragGestureWithTouches:touchesCopy event:{eventCopy, v18}])
        {
          LOBYTE(v13) = 1;
          goto LABEL_12;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v13;
}

- (id)bannerSourceListener:(id)listener layoutDescriptionWithError:(id *)error
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v7 = [(SBBannerManager *)self _bannerWindowForWindowScene:activeDisplayWindowScene creatingIfNecessary:1];
  [v7 bounds];
  v8 = [(SBBannerManager *)self _layoutDescriptionWithBounds:activeDisplayWindowScene inWindowScene:?];

  return v8;
}

- (void)bannerSourceListener:(id)listener presentationSize:(CGSize *)size containerSize:(CGSize *)containerSize error:(id *)error
{
  if (containerSize)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v10 = [(SBBannerManager *)self _bannerWindowForWindowScene:activeDisplayWindowScene creatingIfNecessary:1];
    [v10 bounds];
    containerSize->width = v13;
    containerSize->height = v14;
    if (size)
    {
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      v19 = [(SBBannerManager *)self layoutManagerInWindowScene:activeDisplayWindowScene];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [v19 useableContainerFrameInContainerBounds:mainScreen onScreen:{v15, v16, v17, v18}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      [v19 presentedFrameForContentWithPreferredSize:v26 inUseableContainerFrame:v28 containerBounds:v22 scale:{v24, v26, v28, *&v15, *&v16, *&v17, *&v18, v30}];
      size->width = v31;
      size->height = v32;
    }
  }
}

- (BOOL)bannerSourceListener:(id)listener recommendsSuspending:(BOOL)suspending forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error
{
  currentCopy = current;
  suspendingCopy = suspending;
  v28 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = selfCopy->_windowScenesToBannerControllers;
  v14 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = *v24;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(obj);
      }

      listenerCopy = [(SBBannerManager *)selfCopy _bannerControllerForWindowScene:*(*(&v23 + 1) + 8 * v16), listenerCopy];
      v18 = [listenerCopy setSuspended:suspendingCopy forReason:reasonCopy revokingCurrent:currentCopy error:error];

      if ((v18 & 1) == 0)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        v19 = 1;
        goto LABEL_11;
      }
    }
  }

  v19 = 0;
LABEL_11:

  objc_sync_exit(selfCopy);
  return v19;
}

- (BOOL)_needsToAddExtensionForSceneWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:*MEMORY[0x277D680B0]];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  if (bOOLValue & 1) != 0 || (([infoCopy objectForKey:*MEMORY[0x277D680A0]], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_class(), v12 = v10, !v11) ? (v13 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v13 = 0) : (v13 = v12), (v14 = v13, v12, v12, v15 = objc_msgSend(v14, "BOOLValue"), v14, (v15) || ((objc_msgSend(infoCopy, "objectForKey:", *MEMORY[0x277D680A8]), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_class(), v18 = v16, !v17) ? (v19 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v19 = 0) : (v19 = v18), (v20 = v19, v18, v18, v21 = objc_msgSend(v20, "BOOLValue"), v20, (v21) || ((objc_msgSend(infoCopy, "objectForKey:", *MEMORY[0x277D68080]), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_class(), v24 = v22, !v23) ? (v25 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v25 = 0) : (v25 = v24), v26 = v25, v24, v24, v27 = objc_msgSend(v26, "BOOLValue"), v26, (v27))))
  {
    bOOLValue2 = 1;
  }

  else
  {
    v30 = [infoCopy objectForKey:*MEMORY[0x277D68060]];
    v31 = objc_opt_class();
    v32 = v30;
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    bOOLValue2 = [v34 BOOLValue];
  }

  return bOOLValue2;
}

- (id)bannerSourceListener:(id)listener sceneSpecificationForBannerSceneWithIdentifier:(id)identifier forProcess:(id)process userInfo:(id)info
{
  infoCopy = info;
  v8 = [infoCopy objectForKey:*MEMORY[0x277D68090]];
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  if ([(SBBannerManager *)self _needsToAddExtensionForSceneWithUserInfo:infoCopy]|| !bOOLValue)
  {
    v14 = [MEMORY[0x277D67C90] specificationAffectingAppLifecycleIfInternal:bOOLValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)bannerSourceListener:(id)listener addExtensionIfNeededForScene:(id)scene userInfo:(id)info
{
  v9[2] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if ([(SBBannerManager *)self _needsToAddExtensionForSceneWithUserInfo:info])
  {
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [sceneCopy addExtensions:v8];
  }
}

- (void)bannerSourceListener:(id)listener didUpdateInitialSceneSettingsWithParameters:(id)parameters
{
  listenerCopy = listener;
  parametersCopy = parameters;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBBannerManager_bannerSourceListener_didUpdateInitialSceneSettingsWithParameters___block_invoke;
  v9[3] = &unk_2783C1328;
  objc_copyWeak(&v11, &location);
  v8 = listenerCopy;
  v10 = v8;
  [parametersCopy updateSettingsWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __84__SBBannerManager_bannerSourceListener_didUpdateInitialSceneSettingsWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *(a1 + 32);
  v11 = v7;
  [WeakRetained bannerSourceListener:v9 didUpdateInitialSceneSettings:&v11];
  v10 = v11;
}

- (void)bannerSourceListener:(id)listener didUpdateInitialSceneSettings:(id *)settings
{
  v5 = *settings;
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v11 = [(SBBannerManager *)self _bannerWindowForWindowScene:activeDisplayWindowScene creatingIfNecessary:1];
  [v9 setInterfaceOrientation:{objc_msgSend(v11, "interfaceOrientation")}];
  _sbDisplayConfiguration = [activeDisplayWindowScene _sbDisplayConfiguration];
  [v9 setDisplayConfiguration:_sbDisplayConfiguration];

  v13 = [(SBBannerManager *)self _contentViewControllerForWindowScene:activeDisplayWindowScene];
  view = [v13 view];
  [v9 frame];
  [view convertRect:0 toView:?];
  [v11 _convertRectToSceneReferenceSpace:?];

  BSRectWithSize();
  [v9 setFrame:?];
  [v9 setClientContainerViewControllerClass:objc_opt_class()];
  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [sb_thisDeviceDisplayEdgeInfo sb_applyDisplayEdgeInfoToSceneSettings:v9];
}

- (id)bannerSourceListener:(id)listener newBannerSourceListenerPresentableForBannerSpecification:(id)specification serviceDomain:(id)domain scene:(id)scene readyCompletion:(id)completion
{
  specificationCopy = specification;
  domainCopy = domain;
  sceneCopy = scene;
  completionCopy = completion;
  if (![specificationCopy contentBehavior])
  {
    if (!sceneCopy)
    {
      [SBBannerManager bannerSourceListener:newBannerSourceListenerPresentableForBannerSpecification:serviceDomain:scene:readyCompletion:];
    }

    v14 = [(BNBannerSourceListenerHostedPresentableViewController *)[SBBannerSourceListenerHostedPresentableViewController alloc] initWithSpecification:specificationCopy serviceDomain:domainCopy scene:sceneCopy readyCompletion:completionCopy];
    goto LABEL_7;
  }

  if ([specificationCopy contentBehavior] == 1)
  {
    v14 = [[SBBannerSourceListenerTemplatePresentableViewController alloc] initWithSpecification:specificationCopy serviceDomain:domainCopy readyCompletion:completionCopy];
LABEL_7:
    v15 = v14;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (void)cancelSystemDragForPresentable:(id)presentable
{
  v6 = UIViewControllerFromPresentable();
  _sbWindowScene = [v6 _sbWindowScene];
  if (_sbWindowScene)
  {
    v5 = [(NSMapTable *)self->_windowScenesToPanGestures objectForKey:_sbWindowScene];
    if ([v5 isEnabled])
    {
      [v5 setEnabled:0];
      [v5 setEnabled:1];
    }
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  participantCopy = participant;
  v7 = [(SBBannerManager *)self _zStackPolicyAssistantForParticipant:participantCopy];
  physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)v7 physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  v9 = [(SBBannerManager *)self _windowSceneForZStackParticipant:participantCopy];

  if (v9)
  {
    [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:1];
    v10 = [SBKeyboardFocusTarget targetForSBWindowScene:v9];
    [preferencesCopy setOverrideKeyboardFocusTarget:v10];
  }
}

- (void)foregroundSceneZStackPolicyAssistantDidChange:(id)change forReason:(id)reason
{
  reasonCopy = reason;
  v7 = [(SBBannerManager *)self _zStackParticipantForAssistant:change];
  [v7 setNeedsUpdatePreferencesWithReason:reasonCopy];
}

- (BOOL)_handleButtonEventWithTest:(id)test handler:(id)handler
{
  v6 = SBApp;
  handlerCopy = handler;
  testCopy = test;
  windowSceneManager = [v6 windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  LOBYTE(self) = [(SBBannerManager *)self _handleButtonEventWithWindowScene:activeDisplayWindowScene test:testCopy handler:handlerCopy];
  return self;
}

- (BOOL)_handleButtonEventWithWindowScene:(id)scene test:(id)test handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  testCopy = test;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (testCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBBannerManager _handleButtonEventWithWindowScene:test:handler:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [SBBannerManager _handleButtonEventWithWindowScene:test:handler:];
LABEL_3:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(SBBannerManager *)self _presenterForWindowScene:sceneCopy, 0];
  topPresentables = [v12 topPresentables];

  v14 = [topPresentables countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(topPresentables);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (testCopy[2](testCopy, v17) && (v11[2](v11, v17) & 1) != 0)
        {
          LOBYTE(v14) = 1;
          goto LABEL_14;
        }
      }

      v14 = [topPresentables countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v14;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SBBannerManager_handleHeadsetButtonPress___block_invoke_2;
  v4[3] = &__block_descriptor_33_e25_B16__0___BNPresentable__8l;
  pressCopy = press;
  return [(SBBannerManager *)self _handleButtonEventWithTest:&__block_literal_global_388 handler:v4];
}

- (void)ambientPresentationController:(id)controller willUpdatePresented:(BOOL)presented
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = selfCopy->_windowScenesToBannerControllers;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        ambientPresentationController = [v11 ambientPresentationController];
        v13 = ambientPresentationController == controllerCopy;

        if (v13)
        {
          [(SBBannerManager *)selfCopy dismissAllBannersInWindowScene:v11 animated:1 reason:@"Ambient presenting"];
          goto LABEL_11;
        }
      }

      v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
}

- (void)menuBarDidBecomeVisible:(BOOL)visible forManager:(id)manager
{
  windowScene = [manager windowScene];
  v8 = [(SBBannerManager *)self _bannerControllerForWindowScene:windowScene];

  presenter = [v8 presenter];
  LOBYTE(windowScene) = objc_opt_respondsToSelector();

  if (windowScene)
  {
    presenter2 = [v8 presenter];
    [presenter2 preferredMinimumTopInsetDidInvalidate];
  }
}

- (void)menuWillPresentForMenuBarManager:(id)manager
{
  windowScene = [manager windowScene];
  [(SBBannerManager *)self dismissAllBannersInWindowScene:windowScene animated:1 reason:@"menu bar menu presentation"];
}

- (id)platterHomeGestureManager:(id)manager orderedParticipants:(id)participants
{
  v25 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  if ([participantsCopy count] < 2)
  {
    if ([participantsCopy count])
    {
      allObjects = [participantsCopy allObjects];
    }

    else
    {
      allObjects = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    v8 = [(SBBannerManager *)self _presenterForWindowScene:activeDisplayWindowScene];

    allPresentables = [v8 allPresentables];
    allObjects = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
    v11 = [participantsCopy mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = allPresentables;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          if ([v11 containsObject:{v17, v20}])
          {
            [allObjects addObject:v17];
            [v11 removeObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    allObjects2 = [v11 allObjects];
    [allObjects addObjectsFromArray:allObjects2];
  }

  return allObjects;
}

- (id)platterHomeGestureManager:(id)manager windowForParticipant:(id)participant
{
  participantCopy = participant;
  if (objc_opt_respondsToSelector())
  {
    viewController = [participantCopy viewController];
    view = [viewController view];
    window = [view window];
  }

  else
  {
    window = 0;
  }

  return window;
}

- (id)platterHomeGestureManager:(id)manager gestureRecognizerPriorityAssertionForParticipant:(id)participant reason:(id)reason
{
  participantCopy = participant;
  reasonCopy = reason;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SBBannerManager *)self acquireGestureRecognizerPriorityAssertionForPresentable:participantCopy priority:1 reason:reasonCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)platterHomeGestureManager:(id)manager participantOwningHomeGestureDidChange:(id)change
{
  managerCopy = manager;
  changeCopy = change;
  presentableHomeGestureContext = [changeCopy presentableHomeGestureContext];
  if (!presentableHomeGestureContext)
  {
    if (objc_opt_respondsToSelector())
    {
      presentableHomeGestureContext = [changeCopy homeGestureContext];
    }

    else
    {
      presentableHomeGestureContext = 0;
    }
  }

  ownsHomeGesture = [presentableHomeGestureContext ownsHomeGesture];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  presentableHomeGestureParticipantsToGesturePriorityAssertions = selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions;
  if (ownsHomeGesture)
  {
    v11 = [(NSMapTable *)presentableHomeGestureParticipantsToGesturePriorityAssertions objectForKey:changeCopy];
    [v11 invalidate];
    changeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"platter participant acquired home gesture: %@", changeCopy];
    v13 = [(SBBannerManager *)selfCopy _acquireGestureRecognizerPriorityAssertionWithPriority:1 windowScene:0 reason:changeCopy];

    v14 = selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions;
    if (!v14)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v16 = selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions;
      selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions = weakToStrongObjectsMapTable;

      v14 = selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions;
    }

    [(NSMapTable *)v14 setObject:v13 forKey:changeCopy];
  }

  else
  {
    v13 = [(NSMapTable *)presentableHomeGestureParticipantsToGesturePriorityAssertions objectForKey:changeCopy];
    [v13 invalidate];
    [(NSMapTable *)selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions removeObjectForKey:changeCopy];
    if (![(NSMapTable *)selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions count])
    {
      v17 = selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions;
      selfCopy->_presentableHomeGestureParticipantsToGesturePriorityAssertions = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)acquireWindowLevelAssertionWithPriority:(int64_t)priority windowLevel:(double)level windowScene:(id)scene reason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  reasonCopy = reason;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(SBBannerManager *)self _presenterForWindowScene:sceneCopy, 0];
  topPresentables = [v12 topPresentables];

  v14 = [topPresentables countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(topPresentables);
        }

        if (!v16)
        {
          v19 = *(*(&v21 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 shouldAcquireWindowLevelAssertion])
          {
            v16 = [(SBWindowLevelAssertionManager *)self->_windowLevelAssertionManager acquireWindowLevelAssertionWithPriority:priority windowLevel:sceneCopy windowScene:reasonCopy reason:level];
          }

          else
          {
            v16 = 0;
          }
        }
      }

      v15 = [topPresentables countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_defaultAuthorizedBundleIDs
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"BannersAuthorizedBundleIDs" withExtension:@"plist"];

  v4 = [MEMORY[0x277CBEB18] arrayWithContentsOfURL:v3];
  [v4 addObject:@"com.apple.SOSBuddy"];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (id)_presenterForWindowScene:(id)scene
{
  v3 = [(SBBannerManager *)self _bannerControllerForWindowScene:scene];
  presenter = [v3 presenter];

  return presenter;
}

- (id)_presenterForPresentable:(id)presentable
{
  v19 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_windowScenesToBannerControllers;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [(SBBannerManager *)selfCopy _presenterForWindowScene:*(*(&v14 + 1) + 8 * v9), v14];
      allPresentables = [v10 allPresentables];
      v12 = [allPresentables containsObject:presentableCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)_contentViewControllerForWindowScene:(id)scene
{
  v3 = [(SBBannerManager *)self _presenterForWindowScene:scene];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (id)_windowForPresenter:(id)presenter
{
  presenterCopy = presenter;
  v4 = objc_opt_class();
  v5 = presenterCopy;
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

  viewIfLoaded = [v7 viewIfLoaded];

  window = [viewIfLoaded window];

  return window;
}

- (id)_bannerWindowForWindowScene:(id)scene creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  sceneCopy = scene;
  if (sceneCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMapTable *)selfCopy->_windowScenesToBannerWindows objectForKey:sceneCopy];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = !necessaryCopy;
    }

    if (!v9)
    {
      v10 = SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleBanner");
      if (v10)
      {
        v8 = [[SBBannerWindow alloc] initWithWindowScene:sceneCopy];
        if (!selfCopy->_windowParticipantDelegate)
        {
          v11 = objc_alloc_init(SBTraitsWindowParticipantDelegate);
          windowParticipantDelegate = selfCopy->_windowParticipantDelegate;
          selfCopy->_windowParticipantDelegate = v11;
        }

        if (!selfCopy->_windowScenesToTraitsParticipant)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          windowScenesToTraitsParticipant = selfCopy->_windowScenesToTraitsParticipant;
          selfCopy->_windowScenesToTraitsParticipant = weakToStrongObjectsMapTable;
        }

        traitsArbiter = [sceneCopy traitsArbiter];
        v16 = [traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleBanner" delegate:selfCopy->_windowParticipantDelegate];

        [(SBTraitsWindowParticipantDelegate *)selfCopy->_windowParticipantDelegate setParticipant:v16 ownedByWindow:v8];
        [(SBTraitsWindowParticipantDelegate *)selfCopy->_windowParticipantDelegate windowDidUpdatePreferredWindowLevel:v16 ownedParticipant:*MEMORY[0x277D76EE8] + 40.0];
        [v16 setNeedsUpdatePreferencesWithReason:@"Setup"];
        [(NSMapTable *)selfCopy->_windowScenesToTraitsParticipant setObject:v16 forKey:sceneCopy];
      }

      else
      {
        v8 = [[SBOldBannerWindow alloc] initWithWindowScene:sceneCopy];
      }

      windowScenesToBannerWindows = selfCopy->_windowScenesToBannerWindows;
      if (!windowScenesToBannerWindows)
      {
        weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v19 = selfCopy->_windowScenesToBannerWindows;
        selfCopy->_windowScenesToBannerWindows = weakToStrongObjectsMapTable2;

        windowScenesToBannerWindows = selfCopy->_windowScenesToBannerWindows;
      }

      [(NSMapTable *)windowScenesToBannerWindows setObject:v8 forKey:sceneCopy];
      v20 = [(SBBannerManager *)selfCopy _presenterForWindowScene:sceneCopy];
      if (v10)
      {
        v21 = objc_opt_class();
        v22 = v20;
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

        v27 = v23;

        [(SBBannerWindow *)v8 setRootViewController:v27];
      }

      else
      {
        v24 = objc_opt_class();
        v25 = v8;
        if (v24)
        {
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        v28 = objc_opt_class();
        v29 = v20;
        if (v28)
        {
          if (objc_opt_isKindOfClass())
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        [(SBBannerWindow *)v27 setContentViewController:v31];
      }

      [(SBBannerManager *)selfCopy _updateWindowLevelForScene:sceneCopy];
      [(SBBannerManager *)selfCopy _acquirePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:sceneCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_windowSceneForBannerController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = selfCopy->_windowScenesToBannerControllers;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [(NSMapTable *)selfCopy->_windowScenesToBannerControllers objectForKey:v10, v14];
          v12 = v11 == controllerCopy;

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_windowSceneForPresenter:(id)presenter
{
  v20 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  if (presenterCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = selfCopy->_windowScenesToBannerControllers;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(NSMapTable *)selfCopy->_windowScenesToBannerControllers objectForKey:v10, v15];
          presenter = [v11 presenter];
          v13 = presenter == presenterCopy;

          if (v13)
          {
            v7 = v10;

            goto LABEL_12;
          }
        }

        v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_layoutDescriptionWithBounds:(CGRect)bounds inWindowScene:(id)scene
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sceneCopy = scene;
  v10 = [(SBBannerManager *)self layoutManagerInWindowScene:sceneCopy];
  screen = [sceneCopy screen];
  v33 = width;
  v34 = height;
  [v10 useableContainerFrameInContainerBounds:screen onScreen:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  screen2 = [sceneCopy screen];

  [screen2 scale];
  [v10 presentedFrameForContentWithPreferredSize:v17 inUseableContainerFrame:v19 containerBounds:v13 scale:{v15, v17, v19, *&x, *&y, *&width, *&height, v21}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v36.origin.x = v23;
  v36.origin.y = v25;
  v36.size.width = v27;
  v36.size.height = v29;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = v33;
  v37.size.height = v34;
  v31 = [MEMORY[0x277CF0A90] bannerSourceLayoutDescriptionWithPresentationSize:v27 containerSize:v29 offsetFromPresentationEdge:{v17, v19, MinY - CGRectGetMinY(v37)}];

  return v31;
}

- (void)_updateWindowLevelForScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = [(SBBannerManager *)self _bannerWindowForWindowScene:sceneCopy];
  v6 = [(SBWindowLevelAssertionManager *)self->_windowLevelAssertionManager highestPriorityWindowLevelAssertionForWindowScene:sceneCopy];

  [v5 windowLevel];
  v8 = v7;
  if (v6)
  {
    [v6 windowLevel];
  }

  else
  {
    v9 = *MEMORY[0x277D76EE8] + 40.0;
  }

  [v5 setWindowLevel:v9];
  [v5 windowLevel];
  if (v10 != v8)
  {
    v11 = SBLogBanners();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Updated banner window level using assertion: banner window: %{public}@; assertion: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__SBBannerManager__updateWindowLevelForScene___block_invoke;
    v13[3] = &unk_2783C1390;
    v13[4] = self;
    v14 = v5;
    [(SBBannerManager *)self _enumerateObserversRespondingToSelector:sel_bannerManager_didUpdateWindowLevelOfWindow_ usingBlock:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__SBBannerManager__updateWindowLevelForScene___block_invoke_2;
    v12[3] = &unk_2783C13B8;
    v12[4] = self;
    [(SBBannerManager *)self _enumerateObserversRespondingToSelector:sel_bannerManagerDidUpdateWindowLevel_ usingBlock:v12];
  }
}

- (id)_panGestureInWindowScene:(id)scene creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  sceneCopy = scene;
  if (sceneCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMapTable *)selfCopy->_windowScenesToPanGestures objectForKey:sceneCopy];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = !necessaryCopy;
    }

    if (!v9)
    {
      v10 = objc_alloc_init(SBBannerPanGestureRecognizer);
      [(SBBannerPanGestureRecognizer *)v10 setWindowScene:sceneCopy];
      v8 = v10;
      [(SBBannerPanGestureRecognizer *)v8 setSystemDragCancellingDelegate:selfCopy];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(SBBannerPanGestureRecognizer *)v8 setAllowedScrollTypesMask:3];
      }

      allowedTouchTypes = [(SBBannerPanGestureRecognizer *)v8 allowedTouchTypes];
      v14 = [allowedTouchTypes mutableCopy];

      [v14 removeObject:&unk_2833720F8];
      [(SBBannerPanGestureRecognizer *)v8 setAllowedTouchTypes:v14];
      [(SBBannerPanGestureRecognizer *)v8 setName:@"bannerPan"];
      windowScenesToPanGestures = selfCopy->_windowScenesToPanGestures;
      if (!windowScenesToPanGestures)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v17 = selfCopy->_windowScenesToPanGestures;
        selfCopy->_windowScenesToPanGestures = weakToStrongObjectsMapTable;

        windowScenesToPanGestures = selfCopy->_windowScenesToPanGestures;
      }

      [(NSMapTable *)windowScenesToPanGestures setObject:v8 forKey:sceneCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateGesturePriorityForGestureRecognizerInWindowScene:(id)scene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = [(NSMutableArray *)self->_gesturePriorityAssertions bs_firstObjectPassingTest:&__block_literal_global_218_0];
  priority = [v5 priority];
  v7 = [(SBBannerManager *)self _panGestureInWindowScene:sceneCopy creatingIfNecessary:0];
  v8 = v7;
  if (!v7)
  {
    v8 = [(SBBannerManager *)self _panGestureInWindowScene:sceneCopy creatingIfNecessary:1];
  }

  systemGestureManager = [sceneCopy systemGestureManager];
  if (v8 && (!v7 || (priority == 0) != [v8 sb_isInstalledAsSystemGesture]))
  {
    v10 = SBLogBanners();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (priority)
    {
      if (v11)
      {
        v14 = 138543618;
        v15 = v8;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizer priority to default using assertion: gestureRecognizer: %{public}@; assertion: %{public}@", &v14, 0x16u);
      }

      if ([v8 sb_isInstalledAsSystemGesture])
      {
        [systemGestureManager removeGestureRecognizer:v8];
      }

      v12 = [(SBBannerManager *)self _bannerWindowForWindowScene:sceneCopy];
      [v12 addGestureRecognizer:v8];

      goto LABEL_16;
    }

    if (v11)
    {
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Updating gesture recognizer priority to system using assertion: gestureRecognizer: %{public}@; assertion: %{public}@", &v14, 0x16u);
    }

    view = [v8 view];
    [view removeGestureRecognizer:v8];

    if ([systemGestureManager isValid])
    {
      [systemGestureManager addGestureRecognizer:v8 withType:113];
LABEL_16:
      [v8 sb_setInstalledAsSystemGesture:priority == 0];
    }
  }
}

- (void)_setWindowScene:(id)scene forGestureRecognizerPriorityAssertion:(id)assertion
{
  sceneCopy = scene;
  assertionCopy = assertion;
  if (sceneCopy && assertionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    gesturePriorityAssertionsToWindowScenes = selfCopy->_gesturePriorityAssertionsToWindowScenes;
    if (!gesturePriorityAssertionsToWindowScenes)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
      v10 = selfCopy->_gesturePriorityAssertionsToWindowScenes;
      selfCopy->_gesturePriorityAssertionsToWindowScenes = weakToWeakObjectsMapTable;

      gesturePriorityAssertionsToWindowScenes = selfCopy->_gesturePriorityAssertionsToWindowScenes;
    }

    [(NSMapTable *)gesturePriorityAssertionsToWindowScenes setObject:sceneCopy forKey:assertionCopy];
    [(SBBannerManager *)selfCopy _updateGesturePriorityForGestureRecognizerInWindowScene:sceneCopy];
    objc_sync_exit(selfCopy);
  }
}

- (id)_acquireGestureRecognizerPriorityAssertionWithPriority:(int64_t)priority windowScene:(id)scene reason:(id)reason
{
  sceneCopy = scene;
  reasonCopy = reason;
  if ([SBBannerGestureRecognizerPriorityAssertion isValidBannerGestureRecognizerPriority:priority])
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBBannerManager _acquireGestureRecognizerPriorityAssertionWithPriority:windowScene:reason:];
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  [SBBannerManager _acquireGestureRecognizerPriorityAssertionWithPriority:windowScene:reason:];
LABEL_3:
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__120;
  v39 = __Block_byref_object_dispose__120;
  v40 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  gesturePriorityAssertions = selfCopy->_gesturePriorityAssertions;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke;
  v32[3] = &unk_2783C1400;
  v12 = reasonCopy;
  v33 = v12;
  v34 = &v35;
  [(NSMutableArray *)gesturePriorityAssertions enumerateObjectsUsingBlock:v32];
  if (!v36[5])
  {
    objc_initWeak(&location, selfCopy);
    v13 = [SBBannerGestureRecognizerPriorityAssertion alloc];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_2;
    v29[3] = &unk_2783C1428;
    objc_copyWeak(&v30, &location);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_228;
    v27[3] = &unk_2783C1428;
    objc_copyWeak(&v28, &location);
    v14 = [(SBBannerGestureRecognizerPriorityAssertion *)v13 initWithPriority:priority reason:v12 enablementChangeHandler:v29 invalidationHandler:v27];
    v15 = v36[5];
    v36[5] = v14;

    v16 = selfCopy->_gesturePriorityAssertions;
    if (!v16)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = selfCopy->_gesturePriorityAssertions;
      selfCopy->_gesturePriorityAssertions = v17;

      v16 = selfCopy->_gesturePriorityAssertions;
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = [(NSMutableArray *)v16 count];
    v19 = selfCopy->_gesturePriorityAssertions;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_2_229;
    v22[3] = &unk_2783C1450;
    v22[4] = &v23;
    v22[5] = priority;
    [(NSMutableArray *)v19 enumerateObjectsUsingBlock:v22];
    [(NSMutableArray *)selfCopy->_gesturePriorityAssertions insertObject:v36[5] atIndex:v24[3]];
    if (sceneCopy)
    {
      [(SBBannerManager *)selfCopy _setWindowScene:sceneCopy forGestureRecognizerPriorityAssertion:v36[5]];
    }

    _Block_object_dispose(&v23, 8);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
  v20 = v36[5];
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 reason];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogBanners();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Gesture recognizer priority assertion enablement did change: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[11] objectForKey:v3];
    [v6 _updateGesturePriorityForGestureRecognizerInWindowScene:v7];
  }
}

void __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_228(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained[10] containsObject:v8])
  {
    [v4[10] removeObject:v8];
    if (![v4[10] count])
    {
      v5 = v4[10];
      v4[10] = 0;
    }

    v6 = [v4[11] objectForKey:v8];
    [v4[11] removeObjectForKey:v8];
    if (![v4[11] count])
    {
      v7 = v4[11];
      v4[11] = 0;
    }

    [v4 _updateGesturePriorityForGestureRecognizerInWindowScene:v6];
  }
}

uint64_t __93__SBBannerManager__acquireGestureRecognizerPriorityAssertionWithPriority_windowScene_reason___block_invoke_2_229(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = [a2 priority];
  if (v7 < result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)_invalidatePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v8 = sceneCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions objectForKey:v8];
    [v6 invalidate];
    if (![(NSMapTable *)selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions count])
    {
      windowScenesToPresenterVisibilityGesturePriorityAssertions = selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions;
      selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions = 0;
    }

    objc_sync_exit(selfCopy);
    sceneCopy = v8;
  }
}

- (void)_acquirePresenterVisibilityGestureRecognizerPriorityAssertionForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    windowScenesToPresenterVisibilityGesturePriorityAssertions = selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions;
    if (!windowScenesToPresenterVisibilityGesturePriorityAssertions)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
      v7 = selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions;
      selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions = weakToWeakObjectsMapTable;

      windowScenesToPresenterVisibilityGesturePriorityAssertions = selfCopy->_windowScenesToPresenterVisibilityGesturePriorityAssertions;
    }

    v8 = [(SBBannerManager *)selfCopy _acquireGestureRecognizerPriorityAssertionWithPriority:1 windowScene:sceneCopy reason:@"presenter relinquishes visibility"];
    [(NSMapTable *)windowScenesToPresenterVisibilityGesturePriorityAssertions setObject:v8 forKey:sceneCopy];

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)_isPresentableHUD:(id)d
{
  dCopy = d;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [dCopy presentableType] == 1;

  return v4;
}

- (BOOL)_isPresentableNotice:(id)notice
{
  noticeCopy = notice;
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [noticeCopy presentableBehavior] == 1 || -[SBBannerManager _isPresentableHUD:](self, "_isPresentableHUD:", noticeCopy);

  return v5;
}

- (BOOL)_shouldHideStatusBarForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (SBFEffectiveHomeButtonType() == 2)
  {
LABEL_2:
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v5 = ![(SBBannerManager *)self _isPresentableNotice:presentableCopy];
      goto LABEL_10;
    }

    goto LABEL_2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(SBBannerManager *)self _isPresentableNotice:presentableCopy];
  }

LABEL_10:
  return v5;
}

- (id)_statusBarAssertionReasonForPresentable:(id)presentable
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (presentable)
  {
    presentableCopy = presentable;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    requesterIdentifier = [presentableCopy requesterIdentifier];
    v11[1] = requesterIdentifier;
    requestIdentifier = [presentableCopy requestIdentifier];

    v11[2] = requestIdentifier;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    v9 = [v8 componentsJoinedByString:@"."];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_hideStatusBarIfNecessaryForPresentable:(id)presentable
{
  v26 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  if (presentableCopy && [(SBBannerManager *)self _shouldHideStatusBarForPresentable:presentableCopy])
  {
    v5 = [(SBBannerManager *)self _statusBarAssertionReasonForPresentable:presentableCopy];
    if (([(NSMutableSet *)self->_statusBarAssertionReasons containsObject:v5]& 1) == 0)
    {
      v6 = SBLogBanners();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = BNEffectivePresentableDescription();
        v24 = 138543362;
        v25 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Hiding status bar for presentable: %{public}@", &v24, 0xCu);
      }

      if (![(NSMutableSet *)self->_statusBarAssertionReasons count])
      {
        if (!self->_statusBarAssertionReasons)
        {
          v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
          statusBarAssertionReasons = self->_statusBarAssertionReasons;
          self->_statusBarAssertionReasons = v8;
        }

        if (self->_systemStatusBarAssertion)
        {
          [SBBannerManager _hideStatusBarIfNecessaryForPresentable:];
        }

        if (self->_appsStatusBarAssertion)
        {
          [SBBannerManager _hideStatusBarIfNecessaryForPresentable:];
        }

        v10 = SBLogBanners();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Hiding status bar", &v24, 2u);
        }

        v11 = [(SBBannerManager *)self windowSceneForPresentable:presentableCopy];
        statusBarManager = [v11 statusBarManager];
        assertionManager = [statusBarManager assertionManager];

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:13 reason:v15];

        [v16 acquire];
        systemStatusBarAssertion = self->_systemStatusBarAssertion;
        self->_systemStatusBarAssertion = v16;
        v18 = v16;

        switcherController = [v11 switcherController];
        v20 = [switcherController requestInAppStatusBarHiddenAssertionForReason:@"SBNotificationBannerDestination" animated:0];
        appsStatusBarAssertion = self->_appsStatusBarAssertion;
        self->_appsStatusBarAssertion = v20;
      }

      v22 = SBLogBanners();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_statusBarAssertionReasons;
        v24 = 138543362;
        v25 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Status bar hidden: %{public}@", &v24, 0xCu);
      }

      [(NSMutableSet *)self->_statusBarAssertionReasons addObject:v5];
    }
  }
}

- (void)_revealStatusBarIfNecessaryForPresentable:(id)presentable
{
  v16 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  if (presentableCopy && [(SBBannerManager *)self _shouldHideStatusBarForPresentable:presentableCopy])
  {
    v5 = [(SBBannerManager *)self _statusBarAssertionReasonForPresentable:presentableCopy];
    if ([(NSMutableSet *)self->_statusBarAssertionReasons containsObject:v5])
    {
      v6 = SBLogBanners();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = BNEffectivePresentableDescription();
        v14 = 138543362;
        v15 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Revealing status bar for presentable: %{public}@", &v14, 0xCu);
      }

      [(NSMutableSet *)self->_statusBarAssertionReasons removeObject:v5];
      if ([(NSMutableSet *)self->_statusBarAssertionReasons count])
      {
        v8 = SBLogBanners();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          statusBarAssertionReasons = self->_statusBarAssertionReasons;
          v14 = 138543362;
          v15 = statusBarAssertionReasons;
          _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Status bar hidden: %{public}@", &v14, 0xCu);
        }
      }

      else
      {
        p_systemStatusBarAssertion = &self->_systemStatusBarAssertion;
        if (!self->_systemStatusBarAssertion)
        {
          [SBBannerManager _revealStatusBarIfNecessaryForPresentable:];
        }

        p_appsStatusBarAssertion = &self->_appsStatusBarAssertion;
        if (!self->_appsStatusBarAssertion)
        {
          [SBBannerManager _revealStatusBarIfNecessaryForPresentable:];
        }

        v12 = SBLogBanners();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Revealing status bar", &v14, 2u);
        }

        [(BSInvalidatable *)*p_systemStatusBarAssertion invalidate];
        v13 = *p_systemStatusBarAssertion;
        *p_systemStatusBarAssertion = 0;

        [(BSInvalidatable *)*p_appsStatusBarAssertion invalidate];
        v8 = *p_appsStatusBarAssertion;
        *p_appsStatusBarAssertion = 0;
      }
    }
  }
}

- (id)_platterHomeGestureManager
{
  if (SBFEffectiveHomeButtonType() == 2 && !self->_platterHomeGestureManager)
  {
    v3 = [[SBPlatterHomeGestureManager alloc] initWithDelegate:self];
    platterHomeGestureManager = self->_platterHomeGestureManager;
    self->_platterHomeGestureManager = v3;
  }

  v5 = self->_platterHomeGestureManager;

  return v5;
}

- (id)_homeGestureContextForPresentable:(id)presentable windowScene:(id)scene
{
  presentableCopy = presentable;
  sceneCopy = scene;
  if (objc_opt_respondsToSelector())
  {
    _platterHomeGestureManager = [(SBBannerManager *)self _platterHomeGestureManager];
    v9 = [_platterHomeGestureManager registerParticipant:presentableCopy windowScene:sceneCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_unregisterHomeGestureContextForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    [(SBPlatterHomeGestureManager *)self->_platterHomeGestureManager unregisterParticipant:presentableCopy];
  }
}

- (id)_windowSceneForZStackParticipant:(id)participant
{
  v20 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_windowScenesToZStackParticipants;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_windowScenesToZStackParticipants objectForKey:v10, v15];
        v12 = v11;
        if (v11 == participantCopy)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_zStackParticipantForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v5 = [(NSMapTable *)self->_windowScenesToZStackParticipants objectForKey:sceneCopy];
    if (!v5)
    {
      if (!self->_windowScenesToZStackParticipants)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        windowScenesToZStackParticipants = self->_windowScenesToZStackParticipants;
        self->_windowScenesToZStackParticipants = weakToStrongObjectsMapTable;
      }

      zStackResolver = [sceneCopy zStackResolver];
      v5 = [zStackResolver acquireParticipantWithIdentifier:23 delegate:self];

      [(NSMapTable *)self->_windowScenesToZStackParticipants setObject:v5 forKey:sceneCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_zStackPolicyAssistantForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    v5 = [(NSMapTable *)self->_windowScenesToPhysicalButtonAssistants objectForKey:sceneCopy];
    if (!v5)
    {
      if (!self->_windowScenesToPhysicalButtonAssistants)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        windowScenesToPhysicalButtonAssistants = self->_windowScenesToPhysicalButtonAssistants;
        self->_windowScenesToPhysicalButtonAssistants = weakToStrongObjectsMapTable;
      }

      v5 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithDelegate:self];
      [(NSMapTable *)self->_windowScenesToPhysicalButtonAssistants setObject:v5 forKey:sceneCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_zStackPolicyAssistantForParticipant:(id)participant
{
  v18 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMapTable *)self->_windowScenesToPhysicalButtonAssistants keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_windowScenesToZStackParticipants objectForKey:v9];

        if (v10 == participantCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [(SBBannerManager *)self _zStackPolicyAssistantForWindowScene:v6];

  return v11;
}

- (id)_zStackParticipantForAssistant:(id)assistant
{
  v18 = *MEMORY[0x277D85DE8];
  assistantCopy = assistant;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMapTable *)self->_windowScenesToPhysicalButtonAssistants keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_windowScenesToPhysicalButtonAssistants objectForKey:v9];

        if (v10 == assistantCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [(SBBannerManager *)self _zStackParticipantForWindowScene:v6];

  return v11;
}

- (void)_updatePolicyAssistantForWindowScene:(id)scene
{
  v22 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v5 = [(SBBannerManager *)self _zStackParticipantForWindowScene:sceneCopy];
  if (v5)
  {
    v16 = v5;
    v15 = [(SBBannerManager *)self _zStackPolicyAssistantForWindowScene:sceneCopy];
    [(SBBannerManager *)self _presenterForWindowScene:sceneCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v20 = 0u;
    topPresentables = [v14 topPresentables];
    v7 = [topPresentables countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      array = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(topPresentables);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            targetSceneForPhysicalButtonInteraction = [v12 targetSceneForPhysicalButtonInteraction];
            if (targetSceneForPhysicalButtonInteraction)
            {
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:targetSceneForPhysicalButtonInteraction];
            }
          }
        }

        v8 = [topPresentables countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    else
    {
      array = 0;
    }

    [v15 setForegroundScenes:array];
    v5 = v16;
  }
}

- (void)_updateZStackPolicyAssistantForWindowScene:(id)scene reasonSuffix:(id)suffix transitionCoordinator:(id)coordinator
{
  sceneCopy = scene;
  coordinatorCopy = coordinator;
  v9 = [(SBBannerManager *)self _zStackParticipantForWindowScene:sceneCopy];
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__SBBannerManager__updateZStackPolicyAssistantForWindowScene_reasonSuffix_transitionCoordinator___block_invoke;
    v12[3] = &unk_2783B6F60;
    v12[4] = self;
    v13 = sceneCopy;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __97__SBBannerManager__updateZStackPolicyAssistantForWindowScene_reasonSuffix_transitionCoordinator___block_invoke_2;
    v10[3] = &unk_2783B6F60;
    v10[4] = self;
    v11 = v13;
    [coordinatorCopy animateAlongsideTransition:v12 completion:v10];
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if ([(NSHashTable *)self->_transitionObservers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_transitionObservers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_systemApertureInsetsDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SBSystemApertureEdgeInsets"];

  [v5 UIEdgeInsetsValue];
  if (self->_additionalEdgeInsets.top != v6)
  {
    self->_additionalEdgeInsets.top = v6;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    keyEnumerator = [(NSMapTable *)self->_windowScenesToBannerControllers keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 isMainDisplayWindowScene])
          {
            v13 = [(SBBannerManager *)self _bannerControllerForWindowScene:v12];
            presenter = [v13 presenter];
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              presenter2 = [v13 presenter];
              [presenter2 preferredMinimumTopInsetDidInvalidate];
            }

            goto LABEL_14;
          }
        }

        v9 = [keyEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (SBPresentableIntercepting)presentableInterceptor
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableInterceptor);

  return WeakRetained;
}

- (id)newBannerControllerForWindowScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSMapTable *)selfCopy->_windowScenesToBannerControllers objectForKey:sceneCopy];
    if (v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SBBannerManager.m" lineNumber:1559 description:{@"Already have a banner controller for this scene: bannerController: %@; scene: %@", v7, sceneCopy}];
    }

    v8 = [objc_alloc(MEMORY[0x277CF0AA8]) initWithAuthority:selfCopy->_bannerAuthority];
    [v8 setDelegate:selfCopy];
    v9 = [objc_alloc(MEMORY[0x277CF0A68]) initWithAuthority:selfCopy->_bannerAuthority pender:0 presenter:v8];

    [v8 setPoster:v9];
    windowScenesToBannerControllers = selfCopy->_windowScenesToBannerControllers;
    if (!windowScenesToBannerControllers)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v12 = selfCopy->_windowScenesToBannerControllers;
      selfCopy->_windowScenesToBannerControllers = weakToStrongObjectsMapTable;

      windowScenesToBannerControllers = selfCopy->_windowScenesToBannerControllers;
    }

    [(NSMapTable *)windowScenesToBannerControllers setObject:v9 forKey:sceneCopy];
    if ([(NSHashTable *)selfCopy->_suppressionAssertions count])
    {
      [v9 setSuspended:1 forReason:@"Banner manager suppression assertion" revokingCurrent:0 error:0];
    }

    ambientPresentationController = [sceneCopy ambientPresentationController];
    [ambientPresentationController addObserver:selfCopy];

    menuBarManager = [sceneCopy menuBarManager];
    [menuBarManager addObserver:selfCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)registerAuthority:forRequesterIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"authority" object:? file:? lineNumber:? description:?];
}

- (void)registerAuthority:forRequesterIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[requesterIdentifier length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)presenter:gestureRecognizer:locationForEvent:inView:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)presenter:gestureRecognizer:locationForTouch:inView:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)presenter:gestureRecognizer:velocityInView:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)presenter:gestureRecognizer:translationInView:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)bannerSourceListener:newBannerSourceListenerPresentableForBannerSpecification:serviceDomain:scene:readyCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_handleButtonEventWithWindowScene:test:handler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"test" object:? file:? lineNumber:? description:?];
}

- (void)_handleButtonEventWithWindowScene:test:handler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"handler" object:? file:? lineNumber:? description:?];
}

- (void)_acquireGestureRecognizerPriorityAssertionWithPriority:windowScene:reason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[SBBannerGestureRecognizerPriorityAssertion isValidBannerGestureRecognizerPriority:priority]" object:? file:? lineNumber:? description:?];
}

- (void)_acquireGestureRecognizerPriorityAssertionWithPriority:windowScene:reason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_hideStatusBarIfNecessaryForPresentable:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_hideStatusBarIfNecessaryForPresentable:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_revealStatusBarIfNecessaryForPresentable:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_revealStatusBarIfNecessaryForPresentable:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end