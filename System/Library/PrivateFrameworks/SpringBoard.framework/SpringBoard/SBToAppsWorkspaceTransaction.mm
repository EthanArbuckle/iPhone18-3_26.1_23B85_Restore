@interface SBToAppsWorkspaceTransaction
+ (BOOL)canInterruptTransaction:(id)a3 forTransitionRequest:(id)a4;
- (BOOL)_beginAnimation;
- (BOOL)_canBeInterrupted;
- (BOOL)_isGoingToHomeScreenForTransitionRequest:(id)a3;
- (BOOL)_shouldFailForChildTransaction:(id)a3;
- (BOOL)_shouldResignActiveForAnimation;
- (BOOL)isGoingToCoverSheet;
- (BOOL)isGoingToLauncher;
- (BOOL)isGoingToMainSwitcher;
- (BOOL)shouldPerformToAppStateCleanupOnCompletion;
- (BOOL)shouldWatchdog:(id *)a3;
- (BOOL)transaction:(id)a3 shouldKeepSceneForeground:(id)a4 withReason:(id *)a5;
- (NSSet)allLayoutTransactions;
- (NSSet)allTransitionRequests;
- (SBToAppsWorkspaceTransaction)initWithTransitionRequest:(id)a3;
- (id)_customizedDescriptionProperties;
- (id)_homeScreenAppearanceController;
- (id)_iconManager;
- (id)createSceneEntityForHandle:(id)a3;
- (int64_t)_isGoingToHomeScreenInMainDisplayWindowScene;
- (void)_acquireResignActiveAssertion;
- (void)_beginAnimationIfNecessary;
- (void)_captureApplicationState;
- (void)_checkForAnimationCompletion;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_clearAnimation;
- (void)_completeCurrentTransition;
- (void)_configureAnimation;
- (void)_delayTransitionCompletionForRequester:(id)a3;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)a3;
- (void)_fireAndClearResultBlockIfNecessaryForFailure:(BOOL)a3;
- (void)_logForInterruptAttemptReason:(id)a3;
- (void)_noteAnimationFinished;
- (void)_stopDelayingTransitionCompletionForRequester:(id)a3;
- (void)_willBegin;
- (void)_willFailWithReason:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)activateApplications;
- (void)animationController:(id)a3 willBeginAnimation:(BOOL)a4;
- (void)animationControllerDidFinishAnimation:(id)a3;
- (void)animationControllerDidRevealApplication:(id)a3;
- (void)dealloc;
- (void)performToAppStateCleanup;
- (void)synchronizedTransactionReadyToCommit:(id)a3;
- (void)transaction:(id)a3 didEndLayoutTransitionWithContinuation:(id)a4;
- (void)transaction:(id)a3 performTransitionWithCompletion:(id)a4;
- (void)transactionWillBeginLayoutTransition:(id)a3;
@end

@implementation SBToAppsWorkspaceTransaction

- (void)_willBegin
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = self;
  obj = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v4 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v50;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = [v8 application];
        v10 = [SBApp privacyPreflightController];
        v11 = [v9 info];
        v12 = [v11 applicationIdentity];
        v13 = [v10 requiresPreflightForApplication:v12];

        v14 = [v9 processState];

        if (!v14 && (v13 & 1) == 0)
        {
          v15 = [v8 sceneHandle];
          v16 = [v15 _createProcessExecutionContextFromContext:v46 entity:v8];

          if (v16)
          {
            v17 = [(SBWorkspaceTransitionRequest *)v3->super.super._transitionRequest displayConfiguration];
            v18 = [v9 _prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:v17];

            v19 = [MEMORY[0x277D0AAC0] sharedInstance];
            [v19 launchProcessWithContext:v16];
          }

          goto LABEL_13;
        }

        if (v13 && [(SBToAppsWorkspaceTransaction *)v3 isAuditHistoryEnabled])
        {
          v16 = [v9 bundleIdentifier];
          [(SBToAppsWorkspaceTransaction *)v3 _addAuditHistoryItem:@"%@ requires preflight. Skipping prelaunch.", v16];
LABEL_13:
        }
      }

      v5 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v5);
  }

  v20 = [(SBWorkspaceTransaction *)v3 transitionRequest];
  v21 = [v20 isCrossingDisplays];

  if (v21)
  {
    v22 = [(SBToAppsWorkspaceTransaction *)v3 fromApplicationSceneEntities];
    v23 = [v22 valueForKey:@"displayItemRepresentation"];

    v24 = [(SBToAppsWorkspaceTransaction *)v3 toApplicationSceneEntities];
    v25 = [v24 valueForKey:@"displayItemRepresentation"];

    v26 = [v25 mutableCopy];
    [v26 minusSet:v23];
    if (![v26 count])
    {
      v27 = SBLogAppSwitcher();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v54 = v23;
        v55 = 2114;
        v56 = v25;
        _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Invalid cross display transition with no moving items. fromDisplayItems: %{public}@. toDisplayItems: %{public}@", buf, 0x16u);
      }
    }

    v28 = [(SBWorkspaceTransaction *)v3 windowScene];
    v29 = [v28 switcherController];

    v30 = [(SBWorkspaceTransaction *)v3 transitionRequest];
    v31 = [v30 applicationContext];
    v32 = [v31 layoutState];
    v33 = [v32 appLayout];

    v34 = +[SBApplicationController sharedInstance];
    v35 = [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v26 toSwitcherController:v29 toAppLayout:v33 withApplicationController:v34];
    coordinatedLayoutStateTransitionContext = v3->_coordinatedLayoutStateTransitionContext;
    v3->_coordinatedLayoutStateTransitionContext = v35;
  }

  if (v3->_coordinatedLayoutStateTransitionContext)
  {
    v37 = [(SBWorkspaceTransaction *)v3 windowScene];
    v38 = [v37 switcherController];

    v39 = [v38 switcherCoordinator];
    [v39 prepareForCoordinatedLayoutStateTransitionWithContext:v3->_coordinatedLayoutStateTransitionContext];
  }

  v48.receiver = v3;
  v48.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v48 _willBegin];
  v40 = [(SBWorkspaceTransaction *)v3 transitionRequest];
  v41 = [v40 workspace];

  if ([(SBToAppsWorkspaceTransaction *)v3 isGoingToLauncher])
  {
    v42 = [v41 transientOverlayPresentationManager];
    v43 = [v42 hasActivePresentation];

    if ((v43 & 1) == 0)
    {
      if (!v3->_gestureInitiated)
      {
        v44 = +[SBWallpaperController sharedInstance];
        [v44 activateOrientationSource:2];
      }

      v45 = [MEMORY[0x277CCAB98] defaultCenter];
      [v45 postNotificationName:*MEMORY[0x277D67A68] object:v3 userInfo:0];
    }
  }
}

- (BOOL)isGoingToLauncher
{
  v2 = self;
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  LOBYTE(v2) = [(SBToAppsWorkspaceTransaction *)v2 _isGoingToHomeScreenForTransitionRequest:v3];

  return v2;
}

- (NSSet)allLayoutTransactions
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:self->_layoutTransaction];
  v4 = [v3 setByAddingObjectsFromSet:self->_ancillaryLayoutTransactions];

  return v4;
}

- (void)_captureApplicationState
{
  if (self->_applicationStateNeedsCapture)
  {
    v20[5] = v5;
    v20[6] = v4;
    v20[13] = v2;
    v20[14] = v3;
    self->_applicationStateNeedsCapture = 0;
    self->_underLockScreenInForeground = 0;
    v7 = [(SBWorkspaceTransaction *)self transitionRequest];
    self->_gestureInitiated = [v7 source] == 11;

    self->_preactivationForegroundRunningApplicationCount = 0;
    v8 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke;
    v20[3] = &unk_2783BAE80;
    v20[4] = self;
    [v8 enumerateObjectsUsingBlock:v20];

    self->_toAndFromApplicationsDiffer = 0;
    v9 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
    v10 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v11 = [v10 count];
    if ([v9 count] == v11)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke_2;
      v17[3] = &unk_2783BAEA8;
      v12 = v10;
      v18 = v12;
      v19 = self;
      [v9 enumerateObjectsUsingBlock:v17];
      if (self->_toAndFromApplicationsDiffer || [v12 count] != 1)
      {
        v15 = 0;
      }

      else
      {
        v13 = [v12 anyObject];
        v14 = [v13 sceneHandle];
        v15 = [v14 sceneIfExists];
      }

      v16 = [v15 uiSettings];
      self->_touchCancellationDisabled = [v16 deviceOrientationEventsEnabled];
    }

    else
    {
      self->_toAndFromApplicationsDiffer = 1;
    }
  }
}

void __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 application];
  v4 = [v3 processState];
  v5 = [v4 isRunning];

  if (v5)
  {
    ++*(*(a1 + 32) + 272);
  }

  if ((*(*(a1 + 32) + 264) & 1) == 0 && [v6 BOOLForActivationSetting:60])
  {
    *(*(a1 + 32) + 264) = 1;
  }
}

- (void)activateApplications
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:*(*(&v19 + 1) + 8 * v7)];
        [(SBToAppsWorkspaceTransaction *)self addMilestone:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v9 = [(SBToAppsWorkspaceTransaction *)self layoutTransaction];
  [(SBToAppsWorkspaceTransaction *)self addChildTransaction:v9];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(SBToAppsWorkspaceTransaction *)self ancillaryLayoutTransactions];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SBToAppsWorkspaceTransaction *)self addChildTransaction:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)_iconManager
{
  v2 = [(SBWorkspaceTransaction *)self windowScene];
  v3 = [v2 homeScreenController];

  v4 = [v3 iconManager];

  return v4;
}

- (void)_configureAnimation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  [(SBToAppsWorkspaceTransaction *)self _clearAnimation];
  if ([v3 animationDisabled])
  {
    if (![(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      goto LABEL_9;
    }

    v4 = @"Skipping animation.";
  }

  else
  {
    v5 = [(SBToAppsWorkspaceTransaction *)self _setupAnimation];
    animationController = self->_animationController;
    self->_animationController = v5;

    if (![(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      goto LABEL_9;
    }

    if (self->_animationController)
    {
      v7 = [MEMORY[0x277CF0C00] descriptionForObject:?];
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Subclass specified animation: %@.", v7];

      goto LABEL_9;
    }

    v22 = @"(none)";
    v4 = @"Subclass specified animation: %@.";
  }

  [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:v4, v22];
LABEL_9:
  if (!self->_dismissedOverlays)
  {
    self->_dismissedOverlays = 1;
    v8 = [(SBWorkspaceTransaction *)self windowScene];
    if (self->_shouldSerialDismissOverlays)
    {
      v9 = [(SBToAppsWorkspaceTransaction *)self _serialOverlayPreDismissalOptions];
      if ([SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:v9 windowScene:v8])
      {
        v10 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:self->super.super._transitionRequest options:v9];
        p_super = &v10->super;
        v12 = self->_animationController;
        if (v12)
        {
          [(SBUIAnimationController *)v10 addCoordinatingChildTransaction:v12 withSchedulingPolicy:1];
        }

        v13 = self->_animationController;
        self->_animationController = p_super;
      }
    }

    else
    {
      v9 = 0;
    }

    v14 = [(SBToAppsWorkspaceTransaction *)self _concurrentOverlayDismissalOptions]& ~v9;
    if (v14 && [SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:v14 windowScene:v8])
    {
      v15 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:self->super.super._transitionRequest options:v14];
      v16 = self->_animationController;
      if (v16)
      {
        [(SBUIAnimationController *)v16 addCoordinatingChildTransaction:v15 withSchedulingPolicy:0];
      }

      else
      {
        objc_storeStrong(&self->_animationController, v15);
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(SBUIAnimationController *)self->_animationController delayCleanupUntilTransactionFinishes:*(*(&v23 + 1) + 8 * i)];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }
}

- (void)_clearAnimation
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_animationController)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(SBUIAnimationController *)self->_animationController stopDelayingCleanupForTransaction:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(SBUIAnimationController *)self->_animationController removeObserver:self];
    animationController = self->_animationController;
    self->_animationController = 0;
  }
}

- (NSSet)allTransitionRequests
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:self->super.super._transitionRequest];
  v4 = [v3 setByAddingObjectsFromSet:self->_ancillaryTransitionRequests];

  return v4;
}

- (void)_beginAnimationIfNecessary
{
  animationController = self->_animationController;
  if (animationController)
  {
    [(SBUIAnimationController *)animationController addObserver:self];
    v4 = self->_animationController;

    [(SBToAppsWorkspaceTransaction *)self addChildTransaction:v4];
  }

  else if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {

    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"No animation specified."];
  }
}

- (BOOL)_shouldResignActiveForAnimation
{
  v3 = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  v4 = [v3 animationDisabled];

  if (v4)
  {
    return 0;
  }

  animationController = self->_animationController;

  return [(SBUIAnimationController *)animationController shouldResignActiveForAnimation];
}

- (BOOL)isGoingToMainSwitcher
{
  v3 = objc_opt_class();
  v4 = [(SBWorkspaceTransaction *)self transitionRequest];
  v5 = [v4 applicationContext];
  v6 = [v5 layoutState];
  v7 = SBSafeCast(v3, v6);

  LOBYTE(v4) = [v7 unlockedEnvironmentMode] == 2;
  return v4;
}

- (int64_t)_isGoingToHomeScreenInMainDisplayWindowScene
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(SBToAppsWorkspaceTransaction *)self allTransitionRequests];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 displayIdentity];
        if ([v9 isMainDisplay])
        {

LABEL_13:
          [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenForTransitionRequest:v8];
          v12 = BSSettingFlagForBool();
          goto LABEL_14;
        }

        v10 = [v8 displayIdentity];
        v11 = [v10 isContinuityDisplay];

        if (v11)
        {
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_14:

  return v12;
}

- (BOOL)_beginAnimation
{
  if ([(SBToAppsWorkspaceTransaction *)self _hasPreAnimationTasks])
  {
    [(SBToAppsWorkspaceTransaction *)self addMilestone:@"SBWaitingForPreAnimationTasksMilestone"];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__SBToAppsWorkspaceTransaction__beginAnimation__block_invoke;
    v6[3] = &unk_2783A8C18;
    v6[4] = self;
    [(SBToAppsWorkspaceTransaction *)self _performPreAnimationTasksWithCompletion:v6];
  }

  else
  {
    [(SBToAppsWorkspaceTransaction *)self removeMilestone:@"SBWaitingForPreAnimationTasksMilestone"];
  }

  v3 = [(SBToAppsWorkspaceTransaction *)self isWaitingForMilestone:@"SBWaitingForPreAnimationTasksMilestone"];
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__SBToAppsWorkspaceTransaction__beginAnimation__block_invoke_2;
    v5[3] = &unk_2783A8C18;
    v5[4] = self;
    [(SBToAppsWorkspaceTransaction *)self listenForSatisfiedMilestone:@"SBWaitingForPreAnimationTasksMilestone" withBlock:v5];
  }

  else
  {
    [(SBToAppsWorkspaceTransaction *)self _beginAnimationIfNecessary];
  }

  return v3 ^ 1;
}

- (void)_checkForAnimationCompletion
{
  if (!self->_animationController)
  {
    [(SBToAppsWorkspaceTransaction *)self _noteAnimationFinished];
  }
}

- (void)_noteAnimationFinished
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SBToAppsWorkspaceTransaction__noteAnimationFinished__block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  v3 = MEMORY[0x223D6F7F0](v5, a2);
  if ([(SBToAppsWorkspaceTransaction *)self _hasPostAnimationTasks])
  {
    [(SBToAppsWorkspaceTransaction *)self addMilestone:@"SBWaitingForPostAnimationTasksMilestone"];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__SBToAppsWorkspaceTransaction__noteAnimationFinished__block_invoke_2;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [(SBToAppsWorkspaceTransaction *)self _performPostAnimationTasksWithCompletion:v4];
  }

  else
  {
    [(SBToAppsWorkspaceTransaction *)self removeMilestone:@"SBWaitingForPostAnimationTasksMilestone"];
  }

  if ([(SBToAppsWorkspaceTransaction *)self isWaitingForMilestone:@"SBWaitingForPostAnimationTasksMilestone"])
  {
    [(SBToAppsWorkspaceTransaction *)self listenForSatisfiedMilestone:@"SBWaitingForPostAnimationTasksMilestone" withBlock:v3];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __54__SBToAppsWorkspaceTransaction__noteAnimationFinished__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 256) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _completeCurrentTransition];
  }

  return result;
}

- (void)_completeCurrentTransition
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_layoutTransitionCompletions count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMutableSet *)self->_layoutTransitionCompletions copy];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableSet *)self->_layoutTransitionCompletions removeAllObjects];
  }
}

- (void)dealloc
{
  [(SBToAppsWorkspaceTransaction *)self _fireAndClearResultBlockIfNecessaryForFailure:1];
  [(SBToAppsWorkspaceTransaction *)self _clearAnimation];
  [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  v3 = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 dealloc];
}

- (void)performToAppStateCleanup
{
  v15 = [(SBToAppsWorkspaceTransaction *)self _homeScreenAppearanceController];
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  if ([v3 source] == 8)
  {
    v4 = [(SBWorkspaceTransaction *)self transitionRequest];
    v5 = [v4 applicationContext];
    v6 = [v5 retainsSiri];

    if (v6)
    {
      goto LABEL_5;
    }

    v3 = +[SBAssistantController sharedInstance];
    [v3 dismissAssistantViewInEverySceneIfNecessaryWithAnimation:0];
  }

LABEL_5:
  v7 = [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenInMainDisplayWindowScene];
  if (v7)
  {
    if (v7 == 1)
    {
      [v15 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
      v8 = [(SBToAppsWorkspaceTransaction *)self shouldAnimateOrientationChangeOnCompletion];
      if ([(SBWorkspaceTransaction *)self isMainDisplayTransaction])
      {
        v9 = SBApp;
        v10 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
        v11 = [v10 layoutState];
        [v9 updateNativeOrientationWithOrientation:objc_msgSend(v11 updateMirroredDisplays:"interfaceOrientation") animated:1 logMessage:{v8, @"ToApps -performToAppStateCleanup"}];
      }

      v12 = [(SBToAppsWorkspaceTransaction *)self _iconManager];
      v13 = [v12 iconToReveal];

      if (v13)
      {
        [v12 tryScrollToIconToRevealAnimated:1];
      }
    }
  }

  else
  {
    [v15 endRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  }

  v14 = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
  [v14 invalidate];

  [(SBToAppsWorkspaceTransaction *)self setFloatingDockBehaviorAssertion:0];
}

- (id)_homeScreenAppearanceController
{
  v2 = [(SBWorkspaceTransaction *)self windowScene];
  v3 = [v2 homeScreenController];

  return v3;
}

- (void)_didComplete
{
  v44 = *MEMORY[0x277D85DE8];
  [(SBToAppsWorkspaceTransaction *)self _relinquishResignActiveAssertion];
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 workspace];

  if (-[SBToAppsWorkspaceTransaction isGoingToLauncher](self, "isGoingToLauncher") && ([v4 transientOverlayPresentationManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasActivePresentation"), v5, (v6 & 1) == 0))
  {
    v8 = +[SBPasscodeController sharedInstance];
    [v8 checkPasscodeCompliance];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:*MEMORY[0x277D67A60] object:self userInfo:0];

    pid_hibernate();
  }

  else
  {
    v7 = [MEMORY[0x277D66210] sharedInstance];
    [v7 dismissAppIconForceTouchControllers:0];
  }

  v10 = +[SBSetupManager sharedInstance];
  if (([v10 isInSetupMode] & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = +[SBSetupManager sharedInstance];
  v12 = [v11 updateInSetupMode];

  if (v12)
  {
    v13 = +[SBSetupManager sharedInstance];
    v14 = [v13 isInSetupModeReadyToExit];

    if ((v14 & 1) == 0)
    {
      v15 = [(SBWorkspaceTransaction *)self windowScene];
      v10 = [v15 switcherController];

      v16 = [v10 layoutState];
      v17 = [v16 elementWithRole:1];

      v18 = [v17 workspaceEntity];
      v19 = [v18 deviceApplicationSceneEntity];
      v20 = [v19 sceneHandle];

      v21 = [(SBWorkspaceTransaction *)self transitionRequest];
      v22 = [v21 workspace];

      v23 = [v22 transientOverlayPresentationManager];
      v24 = [v23 hasActivePresentation];

      if ((v24 & 1) == 0)
      {
        v25 = [v20 application];
        v26 = [v25 info];
        v27 = [v26 isLaunchableDuringSetup];

        if ((v27 & 1) == 0)
        {
          v28 = SBLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v20 sceneIdentifier];
            *buf = 138412802;
            v39 = self;
            v40 = 1024;
            v41 = 0;
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Activating setup because in setup mode at end of transaction %@. hasActiveTransientOverlayPresentation = %{BOOL}u activeApplicationSceneHandle = %@. Forcibly launching setup.", buf, 0x1Cu);
          }

          v30 = +[SBApplicationController sharedInstance];
          v31 = [v30 setupApplication];
          SBWorkspaceActivateApplication(v31);
        }
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v32 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v33 = [v32 bs_containsObjectPassingTest:&__block_literal_global_350];

  if (v33)
  {
    [SBApp _performBlockAfterCATransactionCommits:&__block_literal_global_145_1];
  }

  v37.receiver = self;
  v37.super_class = SBToAppsWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v37 _didComplete];
  if (self->_coordinatedLayoutStateTransitionContext)
  {
    v34 = [(SBWorkspaceTransaction *)self windowScene];
    v35 = [v34 switcherController];

    v36 = [v35 switcherCoordinator];
    [v36 cleanUpAfterCoordinatedLayoutStateTransitionWithContext:self->_coordinatedLayoutStateTransitionContext];
  }
}

uint64_t __44__SBToAppsWorkspaceTransaction__didComplete__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 application];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.purplebuddy"];

  return v4;
}

void __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke_3;
  v9[3] = &unk_2783BFB30;
  v7 = v5;
  v10 = v7;
  v8 = [v6 objectsPassingTest:v9];
  if (![v8 count])
  {
    *(*(a1 + 40) + 280) = 1;
    *a3 = 1;
  }
}

- (BOOL)isGoingToCoverSheet
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 isUILocked];

  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [v5 transientOverlayContext];

  if (v6)
  {
    v7 = [v6 transitionType] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v4 & v7;
}

- (SBToAppsWorkspaceTransaction)initWithTransitionRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 applicationContext];
  if (!v5)
  {
    [SBToAppsWorkspaceTransaction initWithTransitionRequest:];
  }

  if ([v5 isBackground])
  {
    [SBToAppsWorkspaceTransaction initWithTransitionRequest:];
  }

  v6 = [v4 copyMainWorkspaceTransitionRequest];
  v7 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:v6];

  if ([v7 count])
  {
    if (([v4 isFinalized] & 1) == 0)
    {
      [v4 setCrossingDisplays:1];
      [v4 finalize];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          [v13 setCrossingDisplays:1];
          [v13 finalize];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }

  v26.receiver = self;
  v26.super_class = SBToAppsWorkspaceTransaction;
  v14 = [(SBMainWorkspaceTransaction *)&v26 initWithTransitionRequest:v4];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    layoutTransitionCompletions = v14->_layoutTransitionCompletions;
    v14->_layoutTransitionCompletions = v15;

    v17 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:v4 delegate:v14];
    layoutTransaction = v14->_layoutTransaction;
    v14->_layoutTransaction = v17;

    [(SBSceneLayoutWorkspaceTransaction *)v14->_layoutTransaction setSynchronizationDelegate:v14];
    [(SBSceneLayoutWorkspaceTransaction *)v14->_layoutTransaction addObserver:v14];
    objc_storeStrong(&v14->_ancillaryTransitionRequests, v7);
    ancillaryTransitionRequests = v14->_ancillaryTransitionRequests;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__SBToAppsWorkspaceTransaction_initWithTransitionRequest___block_invoke;
    v24[3] = &unk_2783BFB08;
    v20 = v14;
    v25 = v20;
    v21 = [(NSSet *)ancillaryTransitionRequests bs_map:v24];
    ancillaryLayoutTransactions = v20->_ancillaryLayoutTransactions;
    v20->_ancillaryLayoutTransactions = v21;

    v20->_applicationStateNeedsCapture = 1;
    [(SBToAppsWorkspaceTransaction *)v20 _captureApplicationState];
    v20->_shouldSerialDismissOverlays = 1;
  }

  return v14;
}

SBSceneLayoutWorkspaceTransaction *__58__SBToAppsWorkspaceTransaction_initWithTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:v3 delegate:*(a1 + 32)];

  [(SBSceneLayoutWorkspaceTransaction *)v4 setSynchronizationDelegate:*(a1 + 32)];

  return v4;
}

- (BOOL)shouldPerformToAppStateCleanupOnCompletion
{
  v3 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(SBToAppsWorkspaceTransaction *)self isGoingToLauncher];
  }

  return v4;
}

- (BOOL)_isGoingToHomeScreenForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 applicationContext];

  v7 = [v6 layoutState];
  v8 = SBSafeCast(v5, v7);

  v9 = [v8 unlockedEnvironmentMode];
  IsValid = SBPeekConfigurationIsValid([v8 peekConfiguration]);
  if (v9 != 1 && !IsValid)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = ![(SBToAppsWorkspaceTransaction *)self isGoingToCoverSheet];
  }

  return v12;
}

- (void)_acquireResignActiveAssertion
{
  resignActiveAssertion = self->_resignActiveAssertion;
  if (!resignActiveAssertion)
  {
    v4 = +[SBSceneManagerCoordinator sharedInstance];
    v5 = [v4 sceneDeactivationManager];
    v6 = [v5 newAssertionWithReason:5];
    v7 = self->_resignActiveAssertion;
    self->_resignActiveAssertion = v6;

    resignActiveAssertion = self->_resignActiveAssertion;
  }

  v9 = [(SBWorkspaceTransaction *)self transitionRequest];
  v8 = [v9 displayIdentity];
  [(UIApplicationSceneDeactivationAssertion *)resignActiveAssertion sb_acquireForDisplayIdentity:v8];
}

- (void)_delayTransitionCompletionForRequester:(id)a3
{
  v4 = a3;
  completionDelayRequesters = self->_completionDelayRequesters;
  v8 = v4;
  if (!completionDelayRequesters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_completionDelayRequesters;
    self->_completionDelayRequesters = v6;

    v4 = v8;
    completionDelayRequesters = self->_completionDelayRequesters;
  }

  [(NSCountedSet *)completionDelayRequesters addObject:v4];
}

- (void)_stopDelayingTransitionCompletionForRequester:(id)a3
{
  [(NSCountedSet *)self->_completionDelayRequesters removeObject:a3];
  if (![(NSCountedSet *)self->_completionDelayRequesters count])
  {
    completionDelayRequesters = self->_completionDelayRequesters;
    self->_completionDelayRequesters = 0;

    [(SBToAppsWorkspaceTransaction *)self _completeCurrentTransition];
  }
}

uint64_t __47__SBToAppsWorkspaceTransaction__beginAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _beginAnimationIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _checkForAnimationCompletion];
}

- (void)_logForInterruptAttemptReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v12];
    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"%@", v7];
    }

    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }
  }
}

+ (BOOL)canInterruptTransaction:(id)a3 forTransitionRequest:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, v6);
  v9 = [v8 copyMainWorkspaceTransitionRequest];
  if (![v5 isInterrupted])
  {
    v12 = [v9 applicationContext];
    v13 = [v12 isBackground];

    if (v13)
    {
      v14 = objc_opt_class();
      v11 = NSStringFromClass(v14);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  request is for background activation", v11, v5}];
      goto LABEL_15;
    }

    v15 = +[SBSetupManager sharedInstance];
    if ([v15 isInSetupMode])
    {
      v16 = +[SBSetupManager sharedInstance];
      v17 = [v16 isInSetupModeReadyToExit];

      if ((v17 & 1) == 0)
      {
        v18 = objc_opt_class();
        v11 = NSStringFromClass(v18);
        [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: we are in setup mode", v11, v5}];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v19 = [v5 transitionRequest];
    v20 = [v19 source];

    if (v20 == 31)
    {
      v21 = objc_opt_class();
      v11 = NSStringFromClass(v21);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: we are in a startup transition", v11, v5}];
      goto LABEL_15;
    }

    if ([v9 source] == 44)
    {
      v22 = objc_opt_class();
      v11 = NSStringFromClass(v22);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: transitions from app clip placeholders must be pended", v11, v5}];
      goto LABEL_15;
    }

    v23 = [v5 transitionRequest];
    v24 = [v23 source];

    if (v24 == 45)
    {
      v25 = objc_opt_class();
      v11 = NSStringFromClass(v25);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: view morph animations are not interruptible", v11, v5}];
      goto LABEL_15;
    }

    v28 = [v5 animationController];
    v29 = v28;
    if (v5 && v28)
    {
      if (([v28 isInterruptible] & 1) == 0)
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  transaction animation isn't interruptible : animationController=<%@:%p>", v35, v5, v37, v29}];

        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v78 = 0;
        v79 = &v78;
        v80 = 0x2020000000;
        v81 = 0;
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __77__SBToAppsWorkspaceTransaction_canInterruptTransaction_forTransitionRequest___block_invoke;
        v77[3] = &unk_2783A8D30;
        v77[4] = &v78;
        [v29 _enumerateCoordinatingAnimationsWithBlock:v77];
        if ((v79[3] & 1) == 0)
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  transaction animation isnt switcher animation and doesn't have switcher animation as a child", v52, v5}];

          _Block_object_dispose(&v78, 8);
          goto LABEL_43;
        }

        _Block_object_dispose(&v78, 8);
      }
    }

    if (v9 && [v9 source] == 14)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  rotation", v31, v5}];

LABEL_43:
      v26 = 0;
LABEL_44:

      goto LABEL_16;
    }

    if ([v9 source] == 75)
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for Non Interactive Scene Resize update requests", v33, v5}];

      goto LABEL_43;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v38 = [v5 _childWorkspaceTransactions];
    v39 = [v38 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v39)
    {
      v40 = *v74;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v74 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v73 + 1) + 8 * i);
          if (([v42 canInterruptForTransitionRequest:v6] & 1) == 0)
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            [v5 _logForInterruptAttemptReason:{@"<%@:%p> NOT Interruptible due to child transaction not being interruptible: <%@:%p>", v46, v5, v48, v42}];

            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  children aren't interruptible", v50, v5}];

            goto LABEL_43;
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v73 objects:v82 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    if ([v9 source] == 27)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for drag and drop requests", v44, v5}];

      goto LABEL_43;
    }

    if ([v9 source] == 48)
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for InCall scene update requests", v54, v5}];

      goto LABEL_43;
    }

    v55 = [v5 transitionRequest];
    v56 = [v55 applicationContext];

    v72 = [v56 previousLayoutState];
    v71 = [v56 layoutState];
    if ([v72 unlockedEnvironmentMode] == 3 && objc_msgSend(v71, "unlockedEnvironmentMode") == 1)
    {
      v57 = [v9 applicationContext];
      v58 = [v57 layoutState];
      if ([v58 unlockedEnvironmentMode] == 2)
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  zoom down animation cannot be interrupted by home -> switcher transition", v60, v5}];

LABEL_52:
        v26 = 0;
LABEL_59:

        goto LABEL_44;
      }
    }

    v61 = [v9 transientOverlayContext];

    if (v61)
    {
      v62 = objc_opt_class();
      v57 = NSStringFromClass(v62);
      [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: The transition request contains a transient overlay context ", v57, v5}];
      goto LABEL_52;
    }

    v63 = [v9 workspace];
    v57 = [v63 transactionForTransitionRequest:v9];

    v64 = objc_opt_class();
    v65 = SBSafeCast(v64, v57);
    v66 = v65;
    if (v65)
    {
      v67 = [v65 _setupAnimation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        [v5 _logForInterruptAttemptReason:{@"<%@:%p> interruptible because:  next request is switcher-controllable", v69, v5}];

        v26 = 1;
LABEL_58:

        goto LABEL_59;
      }
    }

    v70 = objc_opt_class();
    v67 = NSStringFromClass(v70);
    [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  other", v67, v5}];
    v26 = 0;
    goto LABEL_58;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v5 _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  already interrupted", v11, v5}];
LABEL_15:

  v26 = 0;
LABEL_16:

  return v26;
}

void __77__SBToAppsWorkspaceTransaction_canInterruptTransaction_forTransitionRequest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (BOOL)_canBeInterrupted
{
  v2 = +[SBSetupManager sharedInstance];
  if ([v2 isInSetupMode])
  {
    v3 = +[SBSetupManager sharedInstance];
    v4 = [v3 isInSetupModeReadyToExit];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __44__SBToAppsWorkspaceTransaction__didComplete__block_invoke_2()
{
  v0 = +[SBSetupManager sharedInstance];
  [v0 postLaunchCompleteNotificationForSetup];
}

- (void)_childTransactionDidComplete:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_appRepairTransaction != v4)
  {
    v6 = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:v5];
      [(SBToAppsWorkspaceTransaction *)self removeMilestone:v8];
    }

    goto LABEL_35;
  }

  if (([(SBAppRepairTransaction *)v4 isFailed]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBAppRepairTransaction *)v5 isInterrupted]^ 1;
  }

  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v10 = NSStringFromBOOL();
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"App repair completed. Success = %@.", v10];
  }

  v11 = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  v12 = v11;
  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [(SBAppRepairTransaction *)self->_appRepairTransaction appInfos];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v39 + 1) + 8 * i) bundleIdentifier];
          v22 = [v12 applicationSceneEntityForBundleID:v21];

          if (v22)
          {
            [v15 addObject:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    v23 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
    v24 = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
    v14 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v23 transitionContextForLayoutContext:v24 failedEntities:v15];

    v25 = [(SBAppRepairTransaction *)v5 error];
    v26 = [v25 domain];
    if ([v26 isEqualToString:*MEMORY[0x277CF0B40]])
    {
      v27 = [v25 code];

      if (v27 == 1)
      {
        v28 = 0;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v28 = 1;
LABEL_25:
    [v14 setAnimationDisabled:v28];
    if ([v15 count] && (objc_msgSend(v25, "userInfo"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectForKeyedSubscript:", *MEMORY[0x277CF0B48]), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"appRepairRequiresNetwork"), v30, v29, v31))
    {
      v32 = [SBVPPAppRequiresHealingAlertItem alloc];
      v33 = [v15 anyObject];
      v34 = [v33 application];
      v13 = [(SBVPPAppRequiresHealingAlertItem *)v32 initWithApplication:v34];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_30;
  }

  [v11 setAnimationDisabled:1];
  v13 = 0;
  v14 = v12;
LABEL_30:
  if (self->_layoutTransitionContinuation)
  {
    v35 = MEMORY[0x223D6F7F0]();
    layoutTransitionContinuation = self->_layoutTransitionContinuation;
    self->_layoutTransitionContinuation = 0;

    (v35)[2](v35, v14, 2);
  }

  if (v13)
  {
    v37 = +[SBAlertItemsController sharedInstance];
    [v37 activateAlertItem:v13];
  }

LABEL_35:
  v38.receiver = self;
  v38.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v38 _childTransactionDidComplete:v5];
}

- (void)_willFailWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBToAppsWorkspaceTransaction;
  v4 = a3;
  [(SBToAppsWorkspaceTransaction *)&v5 _willFailWithReason:v4];
  [(SBAppRepairTransaction *)self->_appRepairTransaction failWithReason:v4, v5.receiver, v5.super_class];
}

- (void)_willInterruptWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBToAppsWorkspaceTransaction;
  v4 = a3;
  [(SBToAppsWorkspaceTransaction *)&v5 _willInterruptWithReason:v4];
  [(SBAppRepairTransaction *)self->_appRepairTransaction failWithReason:v4, v5.receiver, v5.super_class];

  [(SBToAppsWorkspaceTransaction *)self _delayTransitionCompletionForRequester:@"SBDelayForInterruptionReason"];
}

- (BOOL)_shouldFailForChildTransaction:(id)a3
{
  if (self->_appRepairTransaction == a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBToAppsWorkspaceTransaction;
  return [(SBToAppsWorkspaceTransaction *)&v6 _shouldFailForChildTransaction:?];
}

- (void)_didInterruptWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 _didInterruptWithReason:a3];
  [(SBToAppsWorkspaceTransaction *)self _fireAndClearResultBlockIfNecessaryForFailure:1];
  [(SBToAppsWorkspaceTransaction *)self _stopDelayingTransitionCompletionForRequester:@"SBDelayForInterruptionReason"];
}

- (id)_customizedDescriptionProperties
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBToAppsWorkspaceTransaction;
  v3 = [(SBWorkspaceTransaction *)&v29 _customizedDescriptionProperties];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) succinctDescription];
          [(__CFString *)v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = @"(SpringBoard)";
  }

  [v3 setObject:v6 forKey:@"To Application Scene Entities"];
  v13 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * j) succinctDescription];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    [v3 setObject:v13 forKey:@"From Application Scene Entities"];
  }

  return v3;
}

- (id)createSceneEntityForHandle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)transactionWillBeginLayoutTransition:(id)a3
{
  v4 = a3;
  if (![(NSSet *)self->_ancillaryLayoutTransactions containsObject:v4])
  {
    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"------ Will begin layout transition."];
    }

    v5 = [v4 transitionContext];
    v6 = [v5 previousLayoutState];
    v7 = [v5 layoutState];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(SBToAppsWorkspaceTransaction *)self _iconManager];
      [v9 setEditing:0];
    }

    if ([(SBToAppsWorkspaceTransaction *)self _shouldResignActiveForAnimation])
    {
      [(SBToAppsWorkspaceTransaction *)self _acquireResignActiveAssertion];
    }

    [(SBToAppsWorkspaceTransaction *)self _captureApplicationState];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v10 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__SBToAppsWorkspaceTransaction_transactionWillBeginLayoutTransition___block_invoke;
    v38[3] = &unk_2783A9D88;
    v38[4] = &v39;
    [v10 enumerateObjectsUsingBlock:v38];

    v11.n128_u64[0] = v40[3];
    v11.n128_f32[0] = v11.n128_f64[0];
    SBSetMinimumBrightnessLevel(1, v11, v12);
    v13 = objc_opt_class();
    v14 = [v5 layoutState];
    v15 = SBSafeCast(v13, v14);

    v16 = objc_opt_class();
    v17 = [v5 previousLayoutState];
    v18 = SBSafeCast(v16, v17);

    v19 = [v15 elements];
    v20 = [v18 elements];
    v21 = BSEqualObjects();
    v37 = v19;
    v22 = [v15 unlockedEnvironmentMode];
    if (v22 == [v18 unlockedEnvironmentMode])
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v24 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v25 = [v24 count];

    if (v25 && !self->_underLockScreenInForeground && !self->_gestureInitiated && ((self->_touchCancellationDisabled | v23) & 1) == 0)
    {
      v26 = dispatch_get_global_queue(0, 0);
      dispatch_async(v26, &__block_literal_global_183);
    }

    v27 = v37;
    if ([v15 unlockedEnvironmentMode] == 3 && objc_msgSend(v18, "unlockedEnvironmentMode") == 3)
    {
      v28 = [v15 interfaceOrientation];
      v29 = [v18 interfaceOrientation];
    }

    else
    {
      v28 = [SBApp activeInterfaceOrientation];
      v29 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
    }

    if (!(v21 & 1 | (v28 == v29)))
    {
      v30 = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
      [v30 invalidate];

      v31 = [(SBWorkspaceTransaction *)self windowScene];
      v32 = [v31 floatingDockController];
      v33 = [SBFloatingDockBehaviorAssertion alloc];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [(SBFloatingDockBehaviorAssertion *)v33 initWithFloatingDockController:v32 visibleProgress:1 animated:0 gesturePossible:10 atLevel:v35 reason:0 withCompletion:0.0];

      [(SBToAppsWorkspaceTransaction *)self setFloatingDockBehaviorAssertion:v36];
      v27 = v37;
    }

    [(SBToAppsWorkspaceTransaction *)self _beginTransition];

    _Block_object_dispose(&v39, 8);
  }
}

void __69__SBToAppsWorkspaceTransaction_transactionWillBeginLayoutTransition___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 application];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = [v6 info];
  [v4 minimumBrightnessLevel];
  *(*(*(a1 + 32) + 8) + 24) = fmax(v3, v5);
}

- (void)transaction:(id)a3 performTransitionWithCompletion:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Performing layout transition now."];
  }

  v8 = [(NSSet *)self->_ancillaryLayoutTransactions containsObject:v6];
  layoutTransitionCompletions = self->_layoutTransitionCompletions;
  if (v8)
  {
    if ([(NSMutableSet *)self->_layoutTransitionCompletions count])
    {
      v10 = self->_layoutTransitionCompletions;
      v11 = [v7 copy];
      v12 = MEMORY[0x223D6F7F0]();
      [(NSMutableSet *)v10 addObject:v12];

      goto LABEL_35;
    }

    v7[2](v7);
    goto LABEL_36;
  }

  v13 = [v7 copy];
  v14 = MEMORY[0x223D6F7F0]();
  [(NSMutableSet *)layoutTransitionCompletions addObject:v14];

  v15 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v16 = [v15 count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v43 = v7;
  v44 = v6;
  v17 = [(SBWorkspaceTransaction *)self windowScene];
  v18 = [v17 sceneManager];
  v19 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v20 = [v19 bs_map:&__block_literal_global_190_0];

  v21 = [v17 switcherController];
  v22 = [v21 windowManagementContext];
  v23 = [v22 isChamoisOrFlexibleWindowing];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v20;
  v24 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24;
  v26 = *v48;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v48 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v47 + 1) + 8 * i);
      v29 = [SBSceneManager existingSceneHandleForSceneIdentity:v28];
      v30 = objc_opt_class();
      v31 = v29;
      if (v30)
      {
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      [v33 setWantsEnhancedWindowingEnabled:v23];
      v34 = [v31 sceneManager];
      if (v34)
      {
        if (BSEqualObjects())
        {
          goto LABEL_23;
        }

        v35 = v34;
      }

      else
      {
        if (!v31)
        {
          goto LABEL_23;
        }

        v35 = v18;
      }

      [v35 transferOwnershipOfSceneWithIdentity:v28 toSceneManager:v18];
LABEL_23:
    }

    v25 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v25);
LABEL_25:

  v7 = v43;
  v6 = v44;
LABEL_26:
  v11 = [v6 transitionContext];
  [(SBToAppsWorkspaceTransaction *)self _synchronizeWithSceneUpdates];
  [(SBToAppsWorkspaceTransaction *)self _configureAnimation];
  [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenInMainDisplayWindowScene];
  if (BSSettingFlagIsYes())
  {
    v36 = [(SBToAppsWorkspaceTransaction *)self _homeScreenAppearanceController];
    [v36 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  }

  v37 = [v11 previousLayoutState];
  v38 = [v11 layoutState];
  v39 = [v37 isEqual:v38];

  if (v39)
  {
    v40 = [(SBToAppsWorkspaceTransaction *)self _beginAnimation];
    v41 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __76__SBToAppsWorkspaceTransaction_transaction_performTransitionWithCompletion___block_invoke_2;
    v46[3] = &unk_2783BAE80;
    v46[4] = self;
    [v41 enumerateObjectsUsingBlock:v46];

    if (!v40)
    {
      goto LABEL_35;
    }

LABEL_34:
    [(SBToAppsWorkspaceTransaction *)self _checkForAnimationCompletion];
    goto LABEL_35;
  }

  v42 = [v11 interfaceOrientation];
  if (v42)
  {
    [SBApp noteInterfaceOrientationChanged:v42 duration:0 updateMirroredDisplays:@"ToApps performing transition" logMessage:0.0];
  }

  if ([(SBToAppsWorkspaceTransaction *)self _beginAnimation])
  {
    goto LABEL_34;
  }

LABEL_35:

LABEL_36:
}

id __76__SBToAppsWorkspaceTransaction_transaction_performTransitionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0ADC0];
  v3 = [a2 sceneHandle];
  v4 = [v3 sceneIdentifier];
  v5 = [v2 identityForIdentifier:v4];

  return v5;
}

- (void)transaction:(id)a3 didEndLayoutTransitionWithContinuation:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSSet *)self->_ancillaryLayoutTransactions containsObject:v6])
  {
    if (v7)
    {
      (v7[2])(v7, 0, 0);
    }
  }

  else
  {
    self->_applicationStateNeedsCapture = 1;
    v8 = [MEMORY[0x277CBEB58] set];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = [v6 sceneUpdateTransactions];
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          if ([v14 isFailed])
          {
            [v8 addObject:v14];
            [(SBToAppsWorkspaceTransaction *)self _handleApplicationUpdateScenesTransactionFailed:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v11);
    }

    if ([(SBToAppsWorkspaceTransaction *)self shouldPerformToAppStateCleanupOnCompletion])
    {
      [(SBToAppsWorkspaceTransaction *)self performToAppStateCleanup];
    }

    -[SBToAppsWorkspaceTransaction _fireAndClearResultBlockIfNecessaryForFailure:](self, "_fireAndClearResultBlockIfNecessaryForFailure:", [v8 count] != 0);
    [(SBToAppsWorkspaceTransaction *)self _endTransition];
    layoutTransitionContinuation = self->_layoutTransitionContinuation;
    self->_layoutTransitionContinuation = 0;

    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"------ Layout transition completed!"];
    }

    if ([v8 count] && (objc_msgSend(v6, "isInterrupted") & 1) == 0)
    {
      v40 = v6;
      v41 = v7;
      v44 = [MEMORY[0x277CBEB58] set];
      v43 = [MEMORY[0x277CBEB58] set];
      v42 = [MEMORY[0x277CBEB58] set];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v16 = v8;
      v17 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v46;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v45 + 1) + 8 * j);
            v22 = [v21 applicationSceneEntity];
            [v44 addObject:v22];

            v23 = [v21 process];
            v24 = [v23 exitContext];
            v25 = [v23 applicationInfo];
            v26 = v25;
            if (v24)
            {
              v27 = v25 == 0;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v28 = [v24 exitReason];
              v29 = v43;
              if ((v28 & 0x20) != 0 || (v28 & 1) != 0 && ([v24 terminationRequest], v30 = objc_claimAutoreleasedReturnValue(), v30, v29 = v42, !v30))
              {
                [v29 addObject:v26];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v18);
      }

      if ([v43 count] && !-[SBAppRepairTransaction isComplete](self->_appRepairTransaction, "isComplete"))
      {
        v6 = v40;
        if (self->_appRepairTransaction)
        {
          [SBToAppsWorkspaceTransaction transaction:didEndLayoutTransitionWithContinuation:];
        }

        v36 = [v41 copy];
        v37 = self->_layoutTransitionContinuation;
        self->_layoutTransitionContinuation = v36;

        v33 = self->_animationController;
        [(SBToAppsWorkspaceTransaction *)self _clearAnimation];
        [(SBUIAnimationController *)v33 failWithReason:@"App Repair"];
        v38 = [[SBAppRepairTransaction alloc] initWithApplicationInfos:v43];
        appRepairTransaction = self->_appRepairTransaction;
        self->_appRepairTransaction = v38;

        [(SBToAppsWorkspaceTransaction *)self addChildTransaction:self->_appRepairTransaction];
      }

      else
      {
        v6 = v40;
        if (self->_retriedAfterVoluntaryExit || ![v42 count])
        {
          v34 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
          v35 = [v40 transitionContext];
          v33 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v34 transitionContextForLayoutContext:v35 failedEntities:v44];
        }

        else
        {
          self->_retriedAfterVoluntaryExit = 1;
          if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            v31 = [v42 anyObject];
            v32 = [v31 bundleIdentifier];
            [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Retrying after voluntary exit of %@", v32];
          }

          v33 = +[(SBWorkspaceTransitionContext *)SBWorkspaceApplicationSceneTransitionContext];
        }

        if (!v33)
        {
          [SBToAppsWorkspaceTransaction transaction:didEndLayoutTransitionWithContinuation:];
        }

        [(SBUIAnimationController *)v33 setAnimationDisabled:1];
        if (v41)
        {
          v41[2]();
        }
      }

      v7 = v41;
    }

    else if (v7)
    {
      (v7[2])(v7, 0, 0);
    }
  }
}

- (BOOL)transaction:(id)a3 shouldKeepSceneForeground:(id)a4 withReason:(id *)a5
{
  v7 = a4;
  v8 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  v9 = [v8 layoutState];
  v10 = [v9 elements];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke;
  v23[3] = &unk_2783AC4F8;
  v11 = v7;
  v24 = v11;
  v12 = [v10 bs_containsObjectPassingTest:v23];
  v13 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  v14 = [v13 applicationSceneEntities];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke_2;
  v21[3] = &unk_2783A9EA0;
  v15 = v11;
  v22 = v15;
  v16 = [v14 bs_firstObjectPassingTest:v21];

  if (!v16)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  if ((([v16 isFrozen] ^ 1) & v12 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = MEMORY[0x277CCACA8];
  v18 = [v15 identifier];
  *a5 = [v17 stringWithFormat:@"Keeping %@ foreground because it's part of the transition request", v18];

  v19 = 1;
LABEL_6:

  return v19;
}

uint64_t __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)shouldWatchdog:(id *)a3
{
  if (!self->_appRepairTransaction)
  {
    v6 = &v15;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__108;
    v19 = __Block_byref_object_dispose__108;
    v20 = 0;
    v7 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__SBToAppsWorkspaceTransaction_shouldWatchdog___block_invoke;
    v14[3] = &unk_2783A9D88;
    v14[4] = &v15;
    [v7 enumerateObjectsUsingBlock:v14];

    v13.receiver = self;
    v13.super_class = SBToAppsWorkspaceTransaction;
    if ([(SBToAppsWorkspaceTransaction *)&v13 shouldWatchdog:a3])
    {
      v4 = v16[5] == 0;
      if (!a3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 0;
      if (!a3)
      {
LABEL_15:
        _Block_object_dispose(&v15, 8);

        return v4;
      }
    }

    if (!v4)
    {
      v8 = v16[5];
      if (v8)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [v8 uniqueIdentifier];
        v11 = v10;
        if (!v10)
        {
          v6 = [MEMORY[0x277CCAC38] processInfo];
          v11 = [v6 processName];
        }

        *a3 = [v9 stringWithFormat:@"%@ is being debugged", v11];
        if (!v10)
        {
        }
      }
    }

    goto LABEL_15;
  }

  v4 = 0;
  if (a3)
  {
    *a3 = @"performing app repair";
  }

  return v4;
}

void __47__SBToAppsWorkspaceTransaction_shouldWatchdog___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = v4;
    v5 = [v4 application];
    v6 = [v5 processState];
    v7 = [v6 isBeingDebugged];

    v4 = v8;
    if (v7)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v4 = v8;
    }
  }
}

- (void)synchronizedTransactionReadyToCommit:(id)a3
{
  v7 = a3;
  v4 = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    [v7 performSynchronizedCommit];
    v6 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:v7];
    [(SBToAppsWorkspaceTransaction *)self removeMilestone:v6];
  }
}

- (void)animationController:(id)a3 willBeginAnimation:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v6 = [MEMORY[0x277CF0C00] descriptionForObject:v8];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Animation will begin: %@", v6];
  }

  if (self->_animationController == v8)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationWillBegin:v4];
  }

  else if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v7 = [MEMORY[0x277CF0C00] descriptionForObject:v8];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"!!!! Animation began that we weren't tracking: %@", v7];
  }
}

- (void)animationControllerDidFinishAnimation:(id)a3
{
  v6 = a3;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v4 = [MEMORY[0x277CF0C00] descriptionForObject:v6];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Animation did finish: %@", v4];
  }

  if (self->_animationController == v6)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationDidFinish];
    [(SBToAppsWorkspaceTransaction *)self _noteAnimationFinished];
  }

  else if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v5 = [MEMORY[0x277CF0C00] descriptionForObject:v6];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"!!!! Animation completed that we weren't tracking: %@", v5];
  }
}

- (void)animationControllerDidRevealApplication:(id)a3
{
  if (self->_animationController == a3)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationDidRevealApplication];
  }
}

- (void)_fireAndClearResultBlockIfNecessaryForFailure:(BOOL)a3
{
  v3 = a3;
  v6 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  if ([v6 needsToSendActivationResult])
  {
    if (v3)
    {
      v5 = SBWTErrorCreate(self, 1, 0);
      [v6 sendActivationResultError:v5];
    }

    else
    {
      [v6 sendActivationResultError:0];
    }

    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; success = %d", !v3];
    }
  }
}

- (void)initWithTransitionRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"context != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionRequest:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"![context isBackground]" object:? file:? lineNumber:? description:?];
}

- (void)transaction:didEndLayoutTransitionWithContinuation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transaction:didEndLayoutTransitionWithContinuation:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end