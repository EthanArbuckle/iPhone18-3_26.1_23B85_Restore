@interface SBAppToAppWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (BOOL)_hasPostAnimationTasks;
- (BOOL)_hasPreAnimationTasks;
- (BOOL)_shouldResignActiveForAnimation;
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (SBAppToAppWorkspaceTransaction)initWithTransitionRequest:(id)a3;
- (id)_setupAnimation;
- (id)_setupAnimationFrom:(id)a3 to:(id)a4;
- (id)debugDescription;
- (unint64_t)_concurrentOverlayDismissalOptions;
- (unint64_t)_serialOverlayPreDismissalOptions;
- (void)_animationWillBegin:(BOOL)a3;
- (void)_begin;
- (void)_beginTransition;
- (void)_cleanUpAfterAnimation;
- (void)_clearAnimation;
- (void)_didComplete;
- (void)_handleApplicationDidNotChange:(id)a3;
- (void)_handleApplicationUpdateScenesTransactionFailed:(id)a3;
- (void)_performPostAnimationTasksWithCompletion:(id)a3;
- (void)_performPreAnimationTasksWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation SBAppToAppWorkspaceTransaction

- (void)_begin
{
  [(SBToAppsWorkspaceTransaction *)self activateApplications];
  v3.receiver = self;
  v3.super_class = SBAppToAppWorkspaceTransaction;
  [(SBAppToAppWorkspaceTransaction *)&v3 _begin];
}

- (BOOL)_shouldResignActiveForAnimation
{
  v5.receiver = self;
  v5.super_class = SBAppToAppWorkspaceTransaction;
  v3 = [(SBToAppsWorkspaceTransaction *)&v5 _shouldResignActiveForAnimation];
  if (v3)
  {
    LOBYTE(v3) = [(SBToAppsWorkspaceTransaction *)self toAndFromAppsDiffer];
  }

  return v3;
}

- (id)_setupAnimation
{
  v3 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
  v4 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v5 = [(SBAppToAppWorkspaceTransaction *)self _setupAnimationFrom:v3 to:v4];

  objc_storeStrong(&self->_animation, v5);

  return v5;
}

- (unint64_t)_serialOverlayPreDismissalOptions
{
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 applicationContext];
  v5 = [v4 retainsSiri];

  v6 = [(SBWorkspaceTransaction *)self windowScene];
  v7 = [v6 assistantController];
  v8 = [v7 presentationContext];
  v9 = [v8 hasVisionModality];

  if (v9 & 1 | ((v5 & 1) == 0))
  {
    v10 = -1;
  }

  else
  {
    v10 = -9;
  }

  if ([v3 shouldPreventEmergencyNotificationBannerDismissal])
  {
    v11 = [SBApp notificationDispatcher];
    v12 = [v11 bannerDestination];
    v13 = [v12 isPresentingEmergencyNotification];

    if (v13)
    {
      v10 &= ~0x20uLL;
    }
  }

  if ([v3 source] == 56 || objc_msgSend(v3, "source") == 69)
  {
    v10 &= ~0x20uLL;
  }

  v14 = [v3 source];
  v15 = [v3 source];
  if (v14 == 64 || v15 == 65)
  {
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v17 = v10;
  }

  v18 = [v3 source];
  v19 = [v3 source];
  if (v18 == 37 || v19 == 70)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  if ([v3 source] == 71)
  {
    v21 &= ~0x20uLL;
  }

  return v21;
}

- (unint64_t)_concurrentOverlayDismissalOptions
{
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 source];

  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [v5 source];

  v8 = v6 == 70 || v4 == 37;
  return v8 << 63 >> 63;
}

- (BOOL)_hasPreAnimationTasks
{
  autoPIPTransaction = self->_autoPIPTransaction;
  if (!autoPIPTransaction)
  {
    return 0;
  }

  v4 = [(SBAutoPIPWorkspaceTransaction *)autoPIPTransaction entityToPIP];
  if (v4)
  {
    v5 = self->_autoPIPTransitionOrder == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_beginTransition
{
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 applicationContext];
  v5 = [v4 disablesAutoPIP];

  if ((v5 & 1) == 0)
  {
    v29 = 0;
    v6 = [(SBWorkspaceTransaction *)self transitionRequest];
    v7 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:v6 tetheringMode:&v29 reason:2];

    v8 = [(SBToAppsWorkspaceTransaction *)self isGoingToMainSwitcher];
    if ([(SBToAppsWorkspaceTransaction *)self isGoingToLauncher])
    {
      v9 = [(SBWorkspaceTransaction *)self transitionRequest];
      v10 = [v9 source];

      LOBYTE(v11) = 0;
      if (v10 == 11 && v29 != 1)
      {
        v11 = !SBReduceMotion();
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    if (!v8 && v7 && !v11)
    {
      [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];
      if ([(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction isRunning])
      {
        [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction interruptWithReason:@"NewTransition"];
      }

      v12 = [SBAutoPIPWorkspaceTransaction alloc];
      v13 = [(SBWorkspaceTransaction *)self transitionRequest];
      v14 = [(SBAutoPIPWorkspaceTransaction *)v12 initWithTransitionRequest:v13 includeActiveAppEntity:0 reason:2];
      autoPIPTransaction = self->_autoPIPTransaction;
      self->_autoPIPTransaction = v14;

      v16 = dispatch_group_create();
      pipDuringSwitchTransitionTasksGroup = self->_pipDuringSwitchTransitionTasksGroup;
      self->_pipDuringSwitchTransitionTasksGroup = v16;

      v18 = [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction transitionStyle];
      v19 = 1;
      if (v18 == 2)
      {
        v19 = 2;
      }

      self->_autoPIPTransitionOrder = v19;
    }
  }

  v20 = [(SBWorkspaceTransaction *)self transitionRequest];
  v21 = [v20 source];

  if (v21 == 53)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = -1;
    v22 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __50__SBAppToAppWorkspaceTransaction__beginTransition__block_invoke;
    v28[3] = &unk_2783A9D88;
    v28[4] = &v29;
    [v22 enumerateObjectsUsingBlock:v28];

    if (v30[3] != -1)
    {
      v23 = +[SBWorkspace mainWorkspace];
      v24 = [v23 pipControllerForType:v30[3]];

      v25 = MEMORY[0x277CBEB98];
      v26 = [v24 hostedAppSceneHandles];
      v27 = [v25 setWithArray:v26];

      [v24 handleDestructionRequestForSceneHandles:v27];
    }

    _Block_object_dispose(&v29, 8);
  }
}

- (void)_clearAnimation
{
  animation = self->_animation;
  self->_animation = 0;

  v4.receiver = self;
  v4.super_class = SBAppToAppWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 _clearAnimation];
}

- (BOOL)_hasPostAnimationTasks
{
  autoPIPTransaction = self->_autoPIPTransaction;
  if (!autoPIPTransaction || ([(SBAutoPIPWorkspaceTransaction *)autoPIPTransaction isComplete]& 1) != 0)
  {
    return 0;
  }

  v5 = [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction entityToPIP];
  if (v5)
  {
    v4 = self->_autoPIPTransitionOrder - 1 < 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = SBAppToAppWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v3 dealloc];
}

- (void)_didComplete
{
  [(SBAppToAppWorkspaceTransaction *)self _cleanUpAfterAnimation];
  v3 = [(SBWorkspaceTransaction *)self windowScene];
  v4 = [v3 homeScreenController];
  v5 = [v4 homeScreenViewController];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setAllowIconRotation:1 forReason:v7];

  [v5 setHomeScreenAutorotatesEvenWhenIconIsDragging:0];
  if (![(SBAppToAppWorkspaceTransaction *)self preventWhitePointAdaptationStrengthUpdateOnComplete])
  {
    v8 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
    [v8 updateWhitePointAdaptationStrength];
  }

  v9.receiver = self;
  v9.super_class = SBAppToAppWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v9 _didComplete];
}

- (void)_cleanUpAfterAnimation
{
  [(SBAppToAppWorkspaceTransaction *)self _clearAnimation];
  [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction setCompletionBlock:0];

  [(SBToAppsWorkspaceTransaction *)self performToAppStateCleanup];
}

- (SBAppToAppWorkspaceTransaction)initWithTransitionRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBAppToAppWorkspaceTransaction;
  v5 = [(SBToAppsWorkspaceTransaction *)&v16 initWithTransitionRequest:v4];
  if (v5 && SBMainWorkspaceTransitionSourceIsUserEventDriven([v4 source]))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(SBToAppsWorkspaceTransaction *)v5 allLayoutTransactions];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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

          [*(*(&v12 + 1) + 8 * v10) setOptions:{objc_msgSend(*(*(&v12 + 1) + 8 * v10), "options") | 2}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)debugDescription
{
  v10.receiver = self;
  v10.super_class = SBAppToAppWorkspaceTransaction;
  v3 = [(SBAppToAppWorkspaceTransaction *)&v10 debugDescription];
  v4 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"SpringBoard";
  }

  v7 = [(SBToAppsWorkspaceTransaction *)self animationController];
  v8 = [v3 stringByAppendingFormat:@"\n\tfromApps = %@\n\tanimation = %@", v6, v7];

  return v8;
}

- (BOOL)_canBeInterrupted
{
  if ([(SBWorkspaceTransaction *)self _isInterruptingForTransitionRequest])
  {
    return 1;
  }

  v4 = [(SBToAppsWorkspaceTransaction *)self animationController];
  v3 = v4 == 0;

  return v3;
}

- (BOOL)canInterruptForTransitionRequest:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() canInterruptTransaction:self forTransitionRequest:v4];

  return self;
}

void __50__SBAppToAppWorkspaceTransaction__beginTransition__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 objectForActivationSetting:58];
  if (v5)
  {
    v6 = v5;
    *(*(*(a1 + 32) + 8) + 24) = [v5 integerValue];
    v5 = v6;
  }

  if (*(*(*(a1 + 32) + 8) + 24) != -1)
  {
    *a3 = 1;
  }
}

- (void)_performPreAnimationTasksWithCompletion:(id)a3
{
  v4 = a3;
  autoPIPTransaction = self->_autoPIPTransaction;
  if (autoPIPTransaction)
  {
    v6 = [(SBAutoPIPWorkspaceTransaction *)autoPIPTransaction entityToPIP];
    if (v6)
    {
      autoPIPTransitionOrder = self->_autoPIPTransitionOrder;

      if (!autoPIPTransitionOrder)
      {
        v8 = self->_autoPIPTransaction;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __74__SBAppToAppWorkspaceTransaction__performPreAnimationTasksWithCompletion___block_invoke;
        v9[3] = &unk_2783A9C70;
        v10 = v4;
        [(SBAutoPIPWorkspaceTransaction *)v8 setCompletionBlock:v9];
        [(SBAppToAppWorkspaceTransaction *)self addChildTransaction:self->_autoPIPTransaction];
      }
    }
  }
}

uint64_t __74__SBAppToAppWorkspaceTransaction__performPreAnimationTasksWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performPostAnimationTasksWithCompletion:(id)a3
{
  v4 = a3;
  autoPIPTransaction = self->_autoPIPTransaction;
  if (autoPIPTransaction)
  {
    v6 = [(SBAutoPIPWorkspaceTransaction *)autoPIPTransaction entityToPIP];
    if (v6)
    {
      autoPIPTransitionOrder = self->_autoPIPTransitionOrder;

      if (autoPIPTransitionOrder == 1)
      {
        pipDuringSwitchTransitionTasksGroup = self->_pipDuringSwitchTransitionTasksGroup;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__SBAppToAppWorkspaceTransaction__performPostAnimationTasksWithCompletion___block_invoke;
        block[3] = &unk_2783A9348;
        v19 = v4;
        dispatch_group_notify(pipDuringSwitchTransitionTasksGroup, MEMORY[0x277D85CD0], block);
        v9 = v19;
LABEL_8:

        goto LABEL_11;
      }
    }

    v10 = [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPTransaction entityToPIP];
    if (v10)
    {
      v11 = self->_autoPIPTransitionOrder;

      if (v11 == 2)
      {
        v12 = self->_autoPIPTransaction;
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __75__SBAppToAppWorkspaceTransaction__performPostAnimationTasksWithCompletion___block_invoke_2;
        v16 = &unk_2783A9C70;
        v17 = v4;
        [(SBAutoPIPWorkspaceTransaction *)v12 setCompletionBlock:&v13];
        [(SBAppToAppWorkspaceTransaction *)self addChildTransaction:self->_autoPIPTransaction, v13, v14, v15, v16];
        v9 = v17;
        goto LABEL_8;
      }
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_11:
}

uint64_t __75__SBAppToAppWorkspaceTransaction__performPostAnimationTasksWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __75__SBAppToAppWorkspaceTransaction__performPostAnimationTasksWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleApplicationDidNotChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 BOOLForActivationSetting:42] & 1) != 0 || (objc_msgSend(v10, "BOOLForActivationSetting:", 55))
        {
          v11 = [SBApp windowSceneManager];
          v12 = [v10 sceneHandle];
          v13 = [v11 windowSceneForSceneHandle:v12];

          v14 = [SBApp bannerManager];
          [v14 dismissAllBannersInWindowScene:v13 animated:1 reason:@"appToAppFromBanner"];

          v5 = v13;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15.receiver = self;
  v15.super_class = SBAppToAppWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v15 _handleApplicationDidNotChange:v4];
}

- (void)_handleApplicationUpdateScenesTransactionFailed:(id)a3
{
  v4 = [(SBToAppsWorkspaceTransaction *)self animationController];
  if ([v4 waitingToStart])
  {
    [v4 interrupt];
    [(SBAppToAppWorkspaceTransaction *)self _cleanUpAfterAnimation];
  }
}

- (void)_animationWillBegin:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    if ([v4 count])
    {
      v5 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
      v6 = [v5 count];

      if (!v6)
      {
        [SBApp _accessibilityActivationAnimationWillBegin];
      }
    }

    else
    {
    }

    v7 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
    if ([v7 count])
    {
      v8 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
      v9 = [v8 count];

      if (!v9)
      {
        [SBApp _accessibilityDeactivationAnimationWillBegin];
      }
    }

    else
    {
    }
  }

  autoPIPTransaction = self->_autoPIPTransaction;
  if (autoPIPTransaction)
  {
    v11 = [(SBAutoPIPWorkspaceTransaction *)autoPIPTransaction entityToPIP];
    if (v11)
    {
      autoPIPTransitionOrder = self->_autoPIPTransitionOrder;

      if (autoPIPTransitionOrder == 1)
      {
        v13 = self->_pipDuringSwitchTransitionTasksGroup;
        dispatch_group_enter(v13);
        v14 = self->_autoPIPTransaction;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __54__SBAppToAppWorkspaceTransaction__animationWillBegin___block_invoke;
        v16[3] = &unk_2783A9398;
        v17 = v13;
        v15 = v13;
        [(SBAutoPIPWorkspaceTransaction *)v14 setCompletionBlock:v16];
        [(SBAppToAppWorkspaceTransaction *)self addChildTransaction:self->_autoPIPTransaction];
      }
    }
  }
}

- (id)_setupAnimationFrom:(id)a3 to:(id)a4
{
  v5 = [(SBWorkspaceTransaction *)self suggestedAnimationController:a3];
  if (v5)
  {
    [(SBWorkspaceTransaction *)self setSuggestedAnimationController:0];
    v6 = v5;
  }

  else
  {
    v7 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
    v8 = [(SBWorkspaceTransaction *)self windowScene];
    v9 = [v8 homeScreenController];
    v10 = [v9 homeScreenViewController];

    if ([(SBToAppsWorkspaceTransaction *)self isGoingToLauncher])
    {
      [v10 setHomeScreenAutorotatesEvenWhenIconIsDragging:1];
      [SBApp updateNativeOrientationWithOrientation:objc_msgSend(v7 logMessage:{"interfaceOrientationOrPreferredOrientation"), @"AppToApp setting up animation to launcher / switcher"}];
      v11 = objc_opt_class();
      v12 = [v7 previousEntityForLayoutRole:1];
      v13 = SBSafeCast(v11, v12);

      v14 = [v13 objectForDeactivationSetting:2];
      v15 = v14;
      v16 = 0.0;
      if (v14)
      {
        [v14 doubleValue];
        v18 = v17;
        if (v17 <= 3.0)
        {
          v16 = v17;
        }

        else
        {
          v19 = SBLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(SBAppToAppWorkspaceTransaction *)v13 _setupAnimationFrom:v19 to:v18];
          }
        }
      }

      [SBApp _accessibilityDeactivationAnimationStartDelay];
      if (v16 + v21 > 0.0)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v13 setObject:v22 forDeactivationSetting:2];
      }
    }

    else
    {
      if ([(SBToAppsWorkspaceTransaction *)self isGoingToMainSwitcher])
      {
        [v10 setHomeScreenAutorotatesEvenWhenIconIsDragging:1];
        [SBApp updateNativeOrientationWithOrientation:objc_msgSend(v7 logMessage:{"interfaceOrientationOrPreferredOrientation"), @"AppToApp setting up animation to launcher / switcher"}];
      }

      v20 = objc_opt_class();
      v13 = NSStringFromClass(v20);
      [v10 setAllowIconRotation:0 forReason:v13];
    }

    v23 = [v8 switcherController];
    v24 = [v23 switcherCoordinator];

    v25 = [(SBWorkspaceTransaction *)self transitionRequest];
    v26 = [(SBToAppsWorkspaceTransaction *)self ancillaryTransitionRequests];
    v6 = [v24 animationControllerForTransitionRequest:v25 ancillaryTransitionRequests:v26];

    v27 = [(SBWorkspaceTransaction *)self transitionRequest];
    v28 = [v6 transitionCoordinator];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __57__SBAppToAppWorkspaceTransaction__setupAnimationFrom_to___block_invoke;
    v31[3] = &unk_2783BE428;
    v32 = v27;
    v29 = v27;
    [v28 animateAlongsideTransition:v31 completion:0];
  }

  return v6;
}

void __57__SBAppToAppWorkspaceTransaction__setupAnimationFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
  [v4 updateWhitePointAdaptationStrengthWithWorkspaceTransitionRequest:*(a1 + 32) animationTransitionContext:v3];
}

- (void)_setupAnimationFrom:(double)a3 to:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a3;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Ignoring too long suspension animation delay %f for %@", &v3, 0x16u);
}

@end