@interface SBToAppsWorkspaceTransaction
+ (BOOL)canInterruptTransaction:(id)transaction forTransitionRequest:(id)request;
- (BOOL)_beginAnimation;
- (BOOL)_canBeInterrupted;
- (BOOL)_isGoingToHomeScreenForTransitionRequest:(id)request;
- (BOOL)_shouldFailForChildTransaction:(id)transaction;
- (BOOL)_shouldResignActiveForAnimation;
- (BOOL)isGoingToCoverSheet;
- (BOOL)isGoingToLauncher;
- (BOOL)isGoingToMainSwitcher;
- (BOOL)shouldPerformToAppStateCleanupOnCompletion;
- (BOOL)shouldWatchdog:(id *)watchdog;
- (BOOL)transaction:(id)transaction shouldKeepSceneForeground:(id)foreground withReason:(id *)reason;
- (NSSet)allLayoutTransactions;
- (NSSet)allTransitionRequests;
- (SBToAppsWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (id)_customizedDescriptionProperties;
- (id)_homeScreenAppearanceController;
- (id)_iconManager;
- (id)createSceneEntityForHandle:(id)handle;
- (int64_t)_isGoingToHomeScreenInMainDisplayWindowScene;
- (void)_acquireResignActiveAssertion;
- (void)_beginAnimationIfNecessary;
- (void)_captureApplicationState;
- (void)_checkForAnimationCompletion;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_clearAnimation;
- (void)_completeCurrentTransition;
- (void)_configureAnimation;
- (void)_delayTransitionCompletionForRequester:(id)requester;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)reason;
- (void)_fireAndClearResultBlockIfNecessaryForFailure:(BOOL)failure;
- (void)_logForInterruptAttemptReason:(id)reason;
- (void)_noteAnimationFinished;
- (void)_stopDelayingTransitionCompletionForRequester:(id)requester;
- (void)_willBegin;
- (void)_willFailWithReason:(id)reason;
- (void)_willInterruptWithReason:(id)reason;
- (void)activateApplications;
- (void)animationController:(id)controller willBeginAnimation:(BOOL)animation;
- (void)animationControllerDidFinishAnimation:(id)animation;
- (void)animationControllerDidRevealApplication:(id)application;
- (void)dealloc;
- (void)performToAppStateCleanup;
- (void)synchronizedTransactionReadyToCommit:(id)commit;
- (void)transaction:(id)transaction didEndLayoutTransitionWithContinuation:(id)continuation;
- (void)transaction:(id)transaction performTransitionWithCompletion:(id)completion;
- (void)transactionWillBeginLayoutTransition:(id)transition;
@end

@implementation SBToAppsWorkspaceTransaction

- (void)_willBegin
{
  v58 = *MEMORY[0x277D85DE8];
  applicationContext = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy = self;
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
        application = [v8 application];
        privacyPreflightController = [SBApp privacyPreflightController];
        info = [application info];
        applicationIdentity = [info applicationIdentity];
        v13 = [privacyPreflightController requiresPreflightForApplication:applicationIdentity];

        processState = [application processState];

        if (!processState && (v13 & 1) == 0)
        {
          sceneHandle = [v8 sceneHandle];
          bundleIdentifier = [sceneHandle _createProcessExecutionContextFromContext:applicationContext entity:v8];

          if (bundleIdentifier)
          {
            displayConfiguration = [(SBWorkspaceTransitionRequest *)selfCopy->super.super._transitionRequest displayConfiguration];
            v18 = [application _prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:displayConfiguration];

            mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
            [mEMORY[0x277D0AAC0] launchProcessWithContext:bundleIdentifier];
          }

          goto LABEL_13;
        }

        if (v13 && [(SBToAppsWorkspaceTransaction *)selfCopy isAuditHistoryEnabled])
        {
          bundleIdentifier = [application bundleIdentifier];
          [(SBToAppsWorkspaceTransaction *)selfCopy _addAuditHistoryItem:@"%@ requires preflight. Skipping prelaunch.", bundleIdentifier];
LABEL_13:
        }
      }

      v5 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v5);
  }

  transitionRequest = [(SBWorkspaceTransaction *)selfCopy transitionRequest];
  isCrossingDisplays = [transitionRequest isCrossingDisplays];

  if (isCrossingDisplays)
  {
    fromApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)selfCopy fromApplicationSceneEntities];
    v23 = [fromApplicationSceneEntities valueForKey:@"displayItemRepresentation"];

    toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)selfCopy toApplicationSceneEntities];
    v25 = [toApplicationSceneEntities valueForKey:@"displayItemRepresentation"];

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

    windowScene = [(SBWorkspaceTransaction *)selfCopy windowScene];
    switcherController = [windowScene switcherController];

    transitionRequest2 = [(SBWorkspaceTransaction *)selfCopy transitionRequest];
    applicationContext2 = [transitionRequest2 applicationContext];
    layoutState = [applicationContext2 layoutState];
    appLayout = [layoutState appLayout];

    v34 = +[SBApplicationController sharedInstance];
    v35 = [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v26 toSwitcherController:switcherController toAppLayout:appLayout withApplicationController:v34];
    coordinatedLayoutStateTransitionContext = selfCopy->_coordinatedLayoutStateTransitionContext;
    selfCopy->_coordinatedLayoutStateTransitionContext = v35;
  }

  if (selfCopy->_coordinatedLayoutStateTransitionContext)
  {
    windowScene2 = [(SBWorkspaceTransaction *)selfCopy windowScene];
    switcherController2 = [windowScene2 switcherController];

    switcherCoordinator = [switcherController2 switcherCoordinator];
    [switcherCoordinator prepareForCoordinatedLayoutStateTransitionWithContext:selfCopy->_coordinatedLayoutStateTransitionContext];
  }

  v48.receiver = selfCopy;
  v48.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v48 _willBegin];
  transitionRequest3 = [(SBWorkspaceTransaction *)selfCopy transitionRequest];
  workspace = [transitionRequest3 workspace];

  if ([(SBToAppsWorkspaceTransaction *)selfCopy isGoingToLauncher])
  {
    transientOverlayPresentationManager = [workspace transientOverlayPresentationManager];
    hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

    if ((hasActivePresentation & 1) == 0)
    {
      if (!selfCopy->_gestureInitiated)
      {
        v44 = +[SBWallpaperController sharedInstance];
        [v44 activateOrientationSource:2];
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277D67A68] object:selfCopy userInfo:0];
    }
  }
}

- (BOOL)isGoingToLauncher
{
  selfCopy = self;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  LOBYTE(selfCopy) = [(SBToAppsWorkspaceTransaction *)selfCopy _isGoingToHomeScreenForTransitionRequest:transitionRequest];

  return selfCopy;
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
    transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
    self->_gestureInitiated = [transitionRequest source] == 11;

    self->_preactivationForegroundRunningApplicationCount = 0;
    toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke;
    v20[3] = &unk_2783BAE80;
    v20[4] = self;
    [toApplicationSceneEntities enumerateObjectsUsingBlock:v20];

    self->_toAndFromApplicationsDiffer = 0;
    fromApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
    toApplicationSceneEntities2 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v11 = [toApplicationSceneEntities2 count];
    if ([fromApplicationSceneEntities count] == v11)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__SBToAppsWorkspaceTransaction__captureApplicationState__block_invoke_2;
      v17[3] = &unk_2783BAEA8;
      v12 = toApplicationSceneEntities2;
      v18 = v12;
      selfCopy = self;
      [fromApplicationSceneEntities enumerateObjectsUsingBlock:v17];
      if (self->_toAndFromApplicationsDiffer || [v12 count] != 1)
      {
        sceneIfExists = 0;
      }

      else
      {
        anyObject = [v12 anyObject];
        sceneHandle = [anyObject sceneHandle];
        sceneIfExists = [sceneHandle sceneIfExists];
      }

      uiSettings = [sceneIfExists uiSettings];
      self->_touchCancellationDisabled = [uiSettings deviceOrientationEventsEnabled];
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
  allLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v4 = [allLayoutTransactions countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(allLayoutTransactions);
        }

        v8 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:*(*(&v19 + 1) + 8 * v7)];
        [(SBToAppsWorkspaceTransaction *)self addMilestone:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allLayoutTransactions countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  layoutTransaction = [(SBToAppsWorkspaceTransaction *)self layoutTransaction];
  [(SBToAppsWorkspaceTransaction *)self addChildTransaction:layoutTransaction];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  ancillaryLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self ancillaryLayoutTransactions];
  v11 = [ancillaryLayoutTransactions countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(ancillaryLayoutTransactions);
        }

        [(SBToAppsWorkspaceTransaction *)self addChildTransaction:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [ancillaryLayoutTransactions countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)_iconManager
{
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  homeScreenController = [windowScene homeScreenController];

  iconManager = [homeScreenController iconManager];

  return iconManager;
}

- (void)_configureAnimation
{
  v28 = *MEMORY[0x277D85DE8];
  transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  [(SBToAppsWorkspaceTransaction *)self _clearAnimation];
  if ([transitionContext animationDisabled])
  {
    if (![(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      goto LABEL_9;
    }

    v4 = @"Skipping animation.";
  }

  else
  {
    _setupAnimation = [(SBToAppsWorkspaceTransaction *)self _setupAnimation];
    animationController = self->_animationController;
    self->_animationController = _setupAnimation;

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
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    if (self->_shouldSerialDismissOverlays)
    {
      _serialOverlayPreDismissalOptions = [(SBToAppsWorkspaceTransaction *)self _serialOverlayPreDismissalOptions];
      if ([SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:_serialOverlayPreDismissalOptions windowScene:windowScene])
      {
        v10 = [[SBDismissOverlaysAnimationController alloc] initWithTransitionContextProvider:self->super.super._transitionRequest options:_serialOverlayPreDismissalOptions];
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
      _serialOverlayPreDismissalOptions = 0;
    }

    v14 = [(SBToAppsWorkspaceTransaction *)self _concurrentOverlayDismissalOptions]& ~_serialOverlayPreDismissalOptions;
    if (v14 && [SBDismissOverlaysAnimationController willDismissOverlaysForDismissOptions:v14 windowScene:windowScene])
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
  allLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v18 = [allLayoutTransactions countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(allLayoutTransactions);
        }

        [(SBUIAnimationController *)self->_animationController delayCleanupUntilTransactionFinishes:*(*(&v23 + 1) + 8 * i)];
      }

      v19 = [allLayoutTransactions countByEnumeratingWithState:&v23 objects:v27 count:16];
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
    allLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
    v4 = [allLayoutTransactions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(allLayoutTransactions);
          }

          [(SBUIAnimationController *)self->_animationController stopDelayingCleanupForTransaction:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [allLayoutTransactions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  animationDisabled = [transitionContext animationDisabled];

  if (animationDisabled)
  {
    return 0;
  }

  animationController = self->_animationController;

  return [(SBUIAnimationController *)animationController shouldResignActiveForAnimation];
}

- (BOOL)isGoingToMainSwitcher
{
  v3 = objc_opt_class();
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];
  layoutState = [applicationContext layoutState];
  v7 = SBSafeCast(v3, layoutState);

  LOBYTE(transitionRequest) = [v7 unlockedEnvironmentMode] == 2;
  return transitionRequest;
}

- (int64_t)_isGoingToHomeScreenInMainDisplayWindowScene
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allTransitionRequests = [(SBToAppsWorkspaceTransaction *)self allTransitionRequests];
  v4 = [allTransitionRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allTransitionRequests);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        displayIdentity = [v8 displayIdentity];
        if ([displayIdentity isMainDisplay])
        {

LABEL_13:
          [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenForTransitionRequest:v8];
          v12 = BSSettingFlagForBool();
          goto LABEL_14;
        }

        displayIdentity2 = [v8 displayIdentity];
        isContinuityDisplay = [displayIdentity2 isContinuityDisplay];

        if (isContinuityDisplay)
        {
          goto LABEL_13;
        }
      }

      v5 = [allTransitionRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  floatingDockBehaviorAssertion = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
  [floatingDockBehaviorAssertion invalidate];

  v4.receiver = self;
  v4.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 dealloc];
}

- (void)performToAppStateCleanup
{
  _homeScreenAppearanceController = [(SBToAppsWorkspaceTransaction *)self _homeScreenAppearanceController];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  if ([transitionRequest source] == 8)
  {
    transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
    applicationContext = [transitionRequest2 applicationContext];
    retainsSiri = [applicationContext retainsSiri];

    if (retainsSiri)
    {
      goto LABEL_5;
    }

    transitionRequest = +[SBAssistantController sharedInstance];
    [transitionRequest dismissAssistantViewInEverySceneIfNecessaryWithAnimation:0];
  }

LABEL_5:
  _isGoingToHomeScreenInMainDisplayWindowScene = [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenInMainDisplayWindowScene];
  if (_isGoingToHomeScreenInMainDisplayWindowScene)
  {
    if (_isGoingToHomeScreenInMainDisplayWindowScene == 1)
    {
      [_homeScreenAppearanceController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
      shouldAnimateOrientationChangeOnCompletion = [(SBToAppsWorkspaceTransaction *)self shouldAnimateOrientationChangeOnCompletion];
      if ([(SBWorkspaceTransaction *)self isMainDisplayTransaction])
      {
        v9 = SBApp;
        _transitionContext = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
        layoutState = [_transitionContext layoutState];
        [v9 updateNativeOrientationWithOrientation:objc_msgSend(layoutState updateMirroredDisplays:"interfaceOrientation") animated:1 logMessage:{shouldAnimateOrientationChangeOnCompletion, @"ToApps -performToAppStateCleanup"}];
      }

      _iconManager = [(SBToAppsWorkspaceTransaction *)self _iconManager];
      iconToReveal = [_iconManager iconToReveal];

      if (iconToReveal)
      {
        [_iconManager tryScrollToIconToRevealAnimated:1];
      }
    }
  }

  else
  {
    [_homeScreenAppearanceController endRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  }

  floatingDockBehaviorAssertion = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
  [floatingDockBehaviorAssertion invalidate];

  [(SBToAppsWorkspaceTransaction *)self setFloatingDockBehaviorAssertion:0];
}

- (id)_homeScreenAppearanceController
{
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  homeScreenController = [windowScene homeScreenController];

  return homeScreenController;
}

- (void)_didComplete
{
  v44 = *MEMORY[0x277D85DE8];
  [(SBToAppsWorkspaceTransaction *)self _relinquishResignActiveAssertion];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  if (-[SBToAppsWorkspaceTransaction isGoingToLauncher](self, "isGoingToLauncher") && ([workspace transientOverlayPresentationManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasActivePresentation"), v5, (v6 & 1) == 0))
  {
    v8 = +[SBPasscodeController sharedInstance];
    [v8 checkPasscodeCompliance];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D67A60] object:self userInfo:0];

    pid_hibernate();
  }

  else
  {
    mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
    [mEMORY[0x277D66210] dismissAppIconForceTouchControllers:0];
  }

  switcherController = +[SBSetupManager sharedInstance];
  if (([switcherController isInSetupMode] & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = +[SBSetupManager sharedInstance];
  updateInSetupMode = [v11 updateInSetupMode];

  if (updateInSetupMode)
  {
    v13 = +[SBSetupManager sharedInstance];
    isInSetupModeReadyToExit = [v13 isInSetupModeReadyToExit];

    if ((isInSetupModeReadyToExit & 1) == 0)
    {
      windowScene = [(SBWorkspaceTransaction *)self windowScene];
      switcherController = [windowScene switcherController];

      layoutState = [switcherController layoutState];
      v17 = [layoutState elementWithRole:1];

      workspaceEntity = [v17 workspaceEntity];
      deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
      sceneHandle = [deviceApplicationSceneEntity sceneHandle];

      transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
      workspace2 = [transitionRequest2 workspace];

      transientOverlayPresentationManager = [workspace2 transientOverlayPresentationManager];
      hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

      if ((hasActivePresentation & 1) == 0)
      {
        application = [sceneHandle application];
        info = [application info];
        isLaunchableDuringSetup = [info isLaunchableDuringSetup];

        if ((isLaunchableDuringSetup & 1) == 0)
        {
          v28 = SBLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            sceneIdentifier = [sceneHandle sceneIdentifier];
            *buf = 138412802;
            selfCopy = self;
            v40 = 1024;
            v41 = 0;
            v42 = 2112;
            v43 = sceneIdentifier;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Activating setup because in setup mode at end of transaction %@. hasActiveTransientOverlayPresentation = %{BOOL}u activeApplicationSceneHandle = %@. Forcibly launching setup.", buf, 0x1Cu);
          }

          v30 = +[SBApplicationController sharedInstance];
          setupApplication = [v30 setupApplication];
          SBWorkspaceActivateApplication(setupApplication);
        }
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v33 = [toApplicationSceneEntities bs_containsObjectPassingTest:&__block_literal_global_350];

  if (v33)
  {
    [SBApp _performBlockAfterCATransactionCommits:&__block_literal_global_145_1];
  }

  v37.receiver = self;
  v37.super_class = SBToAppsWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v37 _didComplete];
  if (self->_coordinatedLayoutStateTransitionContext)
  {
    windowScene2 = [(SBWorkspaceTransaction *)self windowScene];
    switcherController2 = [windowScene2 switcherController];

    switcherCoordinator = [switcherController2 switcherCoordinator];
    [switcherCoordinator cleanUpAfterCoordinatedLayoutStateTransitionWithContext:self->_coordinatedLayoutStateTransitionContext];
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
  isUILocked = [v3 isUILocked];

  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];

  if (transientOverlayContext)
  {
    v7 = [transientOverlayContext transitionType] == 1;
  }

  else
  {
    v7 = 0;
  }

  return isUILocked & v7;
}

- (SBToAppsWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  applicationContext = [requestCopy applicationContext];
  if (!applicationContext)
  {
    [SBToAppsWorkspaceTransaction initWithTransitionRequest:];
  }

  if ([applicationContext isBackground])
  {
    [SBToAppsWorkspaceTransaction initWithTransitionRequest:];
  }

  copyMainWorkspaceTransitionRequest = [requestCopy copyMainWorkspaceTransitionRequest];
  v7 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:copyMainWorkspaceTransitionRequest];

  if ([v7 count])
  {
    if (([requestCopy isFinalized] & 1) == 0)
    {
      [requestCopy setCrossingDisplays:1];
      [requestCopy finalize];
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
  v14 = [(SBMainWorkspaceTransaction *)&v26 initWithTransitionRequest:requestCopy];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    layoutTransitionCompletions = v14->_layoutTransitionCompletions;
    v14->_layoutTransitionCompletions = v15;

    v17 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:requestCopy delegate:v14];
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
  toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  if ([toApplicationSceneEntities count])
  {
    isGoingToLauncher = 1;
  }

  else
  {
    isGoingToLauncher = [(SBToAppsWorkspaceTransaction *)self isGoingToLauncher];
  }

  return isGoingToLauncher;
}

- (BOOL)_isGoingToHomeScreenForTransitionRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  applicationContext = [requestCopy applicationContext];

  layoutState = [applicationContext layoutState];
  v8 = SBSafeCast(v5, layoutState);

  unlockedEnvironmentMode = [v8 unlockedEnvironmentMode];
  IsValid = SBPeekConfigurationIsValid([v8 peekConfiguration]);
  if (unlockedEnvironmentMode != 1 && !IsValid)
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
    sceneDeactivationManager = [v4 sceneDeactivationManager];
    v6 = [sceneDeactivationManager newAssertionWithReason:5];
    v7 = self->_resignActiveAssertion;
    self->_resignActiveAssertion = v6;

    resignActiveAssertion = self->_resignActiveAssertion;
  }

  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  displayIdentity = [transitionRequest displayIdentity];
  [(UIApplicationSceneDeactivationAssertion *)resignActiveAssertion sb_acquireForDisplayIdentity:displayIdentity];
}

- (void)_delayTransitionCompletionForRequester:(id)requester
{
  requesterCopy = requester;
  completionDelayRequesters = self->_completionDelayRequesters;
  v8 = requesterCopy;
  if (!completionDelayRequesters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_completionDelayRequesters;
    self->_completionDelayRequesters = v6;

    requesterCopy = v8;
    completionDelayRequesters = self->_completionDelayRequesters;
  }

  [(NSCountedSet *)completionDelayRequesters addObject:requesterCopy];
}

- (void)_stopDelayingTransitionCompletionForRequester:(id)requester
{
  [(NSCountedSet *)self->_completionDelayRequesters removeObject:requester];
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

- (void)_logForInterruptAttemptReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = SBLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:reasonCopy arguments:&v12];
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

+ (BOOL)canInterruptTransaction:(id)transaction forTransitionRequest:(id)request
{
  v83 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  requestCopy = request;
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, requestCopy);
  copyMainWorkspaceTransitionRequest = [v8 copyMainWorkspaceTransitionRequest];
  if (![transactionCopy isInterrupted])
  {
    applicationContext = [copyMainWorkspaceTransitionRequest applicationContext];
    isBackground = [applicationContext isBackground];

    if (isBackground)
    {
      v14 = objc_opt_class();
      v11 = NSStringFromClass(v14);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  request is for background activation", v11, transactionCopy}];
      goto LABEL_15;
    }

    v15 = +[SBSetupManager sharedInstance];
    if ([v15 isInSetupMode])
    {
      v16 = +[SBSetupManager sharedInstance];
      isInSetupModeReadyToExit = [v16 isInSetupModeReadyToExit];

      if ((isInSetupModeReadyToExit & 1) == 0)
      {
        v18 = objc_opt_class();
        v11 = NSStringFromClass(v18);
        [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: we are in setup mode", v11, transactionCopy}];
        goto LABEL_15;
      }
    }

    else
    {
    }

    transitionRequest = [transactionCopy transitionRequest];
    source = [transitionRequest source];

    if (source == 31)
    {
      v21 = objc_opt_class();
      v11 = NSStringFromClass(v21);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: we are in a startup transition", v11, transactionCopy}];
      goto LABEL_15;
    }

    if ([copyMainWorkspaceTransitionRequest source] == 44)
    {
      v22 = objc_opt_class();
      v11 = NSStringFromClass(v22);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: transitions from app clip placeholders must be pended", v11, transactionCopy}];
      goto LABEL_15;
    }

    transitionRequest2 = [transactionCopy transitionRequest];
    source2 = [transitionRequest2 source];

    if (source2 == 45)
    {
      v25 = objc_opt_class();
      v11 = NSStringFromClass(v25);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: view morph animations are not interruptible", v11, transactionCopy}];
      goto LABEL_15;
    }

    animationController = [transactionCopy animationController];
    v29 = animationController;
    if (transactionCopy && animationController)
    {
      if (([animationController isInterruptible] & 1) == 0)
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  transaction animation isn't interruptible : animationController=<%@:%p>", v35, transactionCopy, v37, v29}];

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
          [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  transaction animation isnt switcher animation and doesn't have switcher animation as a child", v52, transactionCopy}];

          _Block_object_dispose(&v78, 8);
          goto LABEL_43;
        }

        _Block_object_dispose(&v78, 8);
      }
    }

    if (copyMainWorkspaceTransitionRequest && [copyMainWorkspaceTransitionRequest source] == 14)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  rotation", v31, transactionCopy}];

LABEL_43:
      v26 = 0;
LABEL_44:

      goto LABEL_16;
    }

    if ([copyMainWorkspaceTransitionRequest source] == 75)
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for Non Interactive Scene Resize update requests", v33, transactionCopy}];

      goto LABEL_43;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    _childWorkspaceTransactions = [transactionCopy _childWorkspaceTransactions];
    v39 = [_childWorkspaceTransactions countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v39)
    {
      v40 = *v74;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v74 != v40)
          {
            objc_enumerationMutation(_childWorkspaceTransactions);
          }

          v42 = *(*(&v73 + 1) + 8 * i);
          if (([v42 canInterruptForTransitionRequest:requestCopy] & 1) == 0)
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> NOT Interruptible due to child transaction not being interruptible: <%@:%p>", v46, transactionCopy, v48, v42}];

            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  children aren't interruptible", v50, transactionCopy}];

            goto LABEL_43;
          }
        }

        v39 = [_childWorkspaceTransactions countByEnumeratingWithState:&v73 objects:v82 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    if ([copyMainWorkspaceTransitionRequest source] == 27)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for drag and drop requests", v44, transactionCopy}];

      goto LABEL_43;
    }

    if ([copyMainWorkspaceTransitionRequest source] == 48)
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  cannot interrupt for InCall scene update requests", v54, transactionCopy}];

      goto LABEL_43;
    }

    transitionRequest3 = [transactionCopy transitionRequest];
    applicationContext2 = [transitionRequest3 applicationContext];

    previousLayoutState = [applicationContext2 previousLayoutState];
    layoutState = [applicationContext2 layoutState];
    if ([previousLayoutState unlockedEnvironmentMode] == 3 && objc_msgSend(layoutState, "unlockedEnvironmentMode") == 1)
    {
      applicationContext3 = [copyMainWorkspaceTransitionRequest applicationContext];
      layoutState2 = [applicationContext3 layoutState];
      if ([layoutState2 unlockedEnvironmentMode] == 2)
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  zoom down animation cannot be interrupted by home -> switcher transition", v60, transactionCopy}];

LABEL_52:
        v26 = 0;
LABEL_59:

        goto LABEL_44;
      }
    }

    transientOverlayContext = [copyMainWorkspaceTransitionRequest transientOverlayContext];

    if (transientOverlayContext)
    {
      v62 = objc_opt_class();
      applicationContext3 = NSStringFromClass(v62);
      [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because: The transition request contains a transient overlay context ", applicationContext3, transactionCopy}];
      goto LABEL_52;
    }

    workspace = [copyMainWorkspaceTransitionRequest workspace];
    applicationContext3 = [workspace transactionForTransitionRequest:copyMainWorkspaceTransitionRequest];

    v64 = objc_opt_class();
    v65 = SBSafeCast(v64, applicationContext3);
    v66 = v65;
    if (v65)
    {
      _setupAnimation = [v65 _setupAnimation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> interruptible because:  next request is switcher-controllable", v69, transactionCopy}];

        v26 = 1;
LABEL_58:

        goto LABEL_59;
      }
    }

    v70 = objc_opt_class();
    _setupAnimation = NSStringFromClass(v70);
    [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  other", _setupAnimation, transactionCopy}];
    v26 = 0;
    goto LABEL_58;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [transactionCopy _logForInterruptAttemptReason:{@"<%@:%p> not interruptible because:  already interrupted", v11, transactionCopy}];
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
    isInSetupModeReadyToExit = [v3 isInSetupModeReadyToExit];
  }

  else
  {
    isInSetupModeReadyToExit = 1;
  }

  return isInSetupModeReadyToExit;
}

void __44__SBToAppsWorkspaceTransaction__didComplete__block_invoke_2()
{
  v0 = +[SBSetupManager sharedInstance];
  [v0 postLaunchCompleteNotificationForSetup];
}

- (void)_childTransactionDidComplete:(id)complete
{
  v44 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = completeCopy;
  if (self->_appRepairTransaction != completeCopy)
  {
    allLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
    v7 = [allLayoutTransactions containsObject:v5];

    if (v7)
    {
      v8 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:v5];
      [(SBToAppsWorkspaceTransaction *)self removeMilestone:v8];
    }

    goto LABEL_35;
  }

  if (([(SBAppRepairTransaction *)completeCopy isFailed]& 1) != 0)
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

  transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
  v12 = transitionContext;
  if ((v9 & 1) == 0)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    appInfos = [(SBAppRepairTransaction *)self->_appRepairTransaction appInfos];
    v17 = [appInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(appInfos);
          }

          bundleIdentifier = [*(*(&v39 + 1) + 8 * i) bundleIdentifier];
          v22 = [v12 applicationSceneEntityForBundleID:bundleIdentifier];

          if (v22)
          {
            [v15 addObject:v22];
          }
        }

        v18 = [appInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    v23 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
    transitionContext2 = [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction transitionContext];
    v14 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v23 transitionContextForLayoutContext:transitionContext2 failedEntities:v15];

    error = [(SBAppRepairTransaction *)v5 error];
    domain = [error domain];
    if ([domain isEqualToString:*MEMORY[0x277CF0B40]])
    {
      code = [error code];

      if (code == 1)
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
    if ([v15 count] && (objc_msgSend(error, "userInfo"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectForKeyedSubscript:", *MEMORY[0x277CF0B48]), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"appRepairRequiresNetwork"), v30, v29, v31))
    {
      v32 = [SBVPPAppRequiresHealingAlertItem alloc];
      anyObject = [v15 anyObject];
      application = [anyObject application];
      v13 = [(SBVPPAppRequiresHealingAlertItem *)v32 initWithApplication:application];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_30;
  }

  [transitionContext setAnimationDisabled:1];
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

- (void)_willFailWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBToAppsWorkspaceTransaction;
  reasonCopy = reason;
  [(SBToAppsWorkspaceTransaction *)&v5 _willFailWithReason:reasonCopy];
  [(SBAppRepairTransaction *)self->_appRepairTransaction failWithReason:reasonCopy, v5.receiver, v5.super_class];
}

- (void)_willInterruptWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBToAppsWorkspaceTransaction;
  reasonCopy = reason;
  [(SBToAppsWorkspaceTransaction *)&v5 _willInterruptWithReason:reasonCopy];
  [(SBAppRepairTransaction *)self->_appRepairTransaction failWithReason:reasonCopy, v5.receiver, v5.super_class];

  [(SBToAppsWorkspaceTransaction *)self _delayTransitionCompletionForRequester:@"SBDelayForInterruptionReason"];
}

- (BOOL)_shouldFailForChildTransaction:(id)transaction
{
  if (self->_appRepairTransaction == transaction)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBToAppsWorkspaceTransaction;
  return [(SBToAppsWorkspaceTransaction *)&v6 _shouldFailForChildTransaction:?];
}

- (void)_didInterruptWithReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBToAppsWorkspaceTransaction;
  [(SBToAppsWorkspaceTransaction *)&v4 _didInterruptWithReason:reason];
  [(SBToAppsWorkspaceTransaction *)self _fireAndClearResultBlockIfNecessaryForFailure:1];
  [(SBToAppsWorkspaceTransaction *)self _stopDelayingTransitionCompletionForRequester:@"SBDelayForInterruptionReason"];
}

- (id)_customizedDescriptionProperties
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBToAppsWorkspaceTransaction;
  _customizedDescriptionProperties = [(SBWorkspaceTransaction *)&v29 _customizedDescriptionProperties];
  if (!_customizedDescriptionProperties)
  {
    _customizedDescriptionProperties = [MEMORY[0x277CBEB38] dictionary];
  }

  toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v5 = [toApplicationSceneEntities count];

  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    toApplicationSceneEntities2 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v8 = [toApplicationSceneEntities2 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(toApplicationSceneEntities2);
          }

          succinctDescription = [*(*(&v25 + 1) + 8 * i) succinctDescription];
          [(__CFString *)array addObject:succinctDescription];
        }

        v9 = [toApplicationSceneEntities2 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = @"(SpringBoard)";
  }

  [_customizedDescriptionProperties setObject:array forKey:@"To Application Scene Entities"];
  array2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  fromApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self fromApplicationSceneEntities];
  v15 = [fromApplicationSceneEntities countByEnumeratingWithState:&v21 objects:v30 count:16];
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
          objc_enumerationMutation(fromApplicationSceneEntities);
        }

        succinctDescription2 = [*(*(&v21 + 1) + 8 * j) succinctDescription];
        [array2 addObject:succinctDescription2];
      }

      v16 = [fromApplicationSceneEntities countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v16);
  }

  if ([array2 count])
  {
    [_customizedDescriptionProperties setObject:array2 forKey:@"From Application Scene Entities"];
  }

  return _customizedDescriptionProperties;
}

- (id)createSceneEntityForHandle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:handleCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)transactionWillBeginLayoutTransition:(id)transition
{
  transitionCopy = transition;
  if (![(NSSet *)self->_ancillaryLayoutTransactions containsObject:transitionCopy])
  {
    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"------ Will begin layout transition."];
    }

    transitionContext = [transitionCopy transitionContext];
    previousLayoutState = [transitionContext previousLayoutState];
    layoutState = [transitionContext layoutState];
    v8 = [previousLayoutState isEqual:layoutState];

    if ((v8 & 1) == 0)
    {
      _iconManager = [(SBToAppsWorkspaceTransaction *)self _iconManager];
      [_iconManager setEditing:0];
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
    toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __69__SBToAppsWorkspaceTransaction_transactionWillBeginLayoutTransition___block_invoke;
    v38[3] = &unk_2783A9D88;
    v38[4] = &v39;
    [toApplicationSceneEntities enumerateObjectsUsingBlock:v38];

    v11.n128_u64[0] = v40[3];
    v11.n128_f32[0] = v11.n128_f64[0];
    SBSetMinimumBrightnessLevel(1, v11, v12);
    v13 = objc_opt_class();
    layoutState2 = [transitionContext layoutState];
    v15 = SBSafeCast(v13, layoutState2);

    v16 = objc_opt_class();
    previousLayoutState2 = [transitionContext previousLayoutState];
    v18 = SBSafeCast(v16, previousLayoutState2);

    elements = [v15 elements];
    elements2 = [v18 elements];
    v21 = BSEqualObjects();
    v37 = elements;
    unlockedEnvironmentMode = [v15 unlockedEnvironmentMode];
    if (unlockedEnvironmentMode == [v18 unlockedEnvironmentMode])
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    toApplicationSceneEntities2 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v25 = [toApplicationSceneEntities2 count];

    if (v25 && !self->_underLockScreenInForeground && !self->_gestureInitiated && ((self->_touchCancellationDisabled | v23) & 1) == 0)
    {
      v26 = dispatch_get_global_queue(0, 0);
      dispatch_async(v26, &__block_literal_global_183);
    }

    v27 = v37;
    if ([v15 unlockedEnvironmentMode] == 3 && objc_msgSend(v18, "unlockedEnvironmentMode") == 3)
    {
      interfaceOrientation = [v15 interfaceOrientation];
      interfaceOrientation2 = [v18 interfaceOrientation];
    }

    else
    {
      interfaceOrientation = [SBApp activeInterfaceOrientation];
      interfaceOrientation2 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
    }

    if (!(v21 & 1 | (interfaceOrientation == interfaceOrientation2)))
    {
      floatingDockBehaviorAssertion = [(SBToAppsWorkspaceTransaction *)self floatingDockBehaviorAssertion];
      [floatingDockBehaviorAssertion invalidate];

      windowScene = [(SBWorkspaceTransaction *)self windowScene];
      floatingDockController = [windowScene floatingDockController];
      v33 = [SBFloatingDockBehaviorAssertion alloc];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [(SBFloatingDockBehaviorAssertion *)v33 initWithFloatingDockController:floatingDockController visibleProgress:1 animated:0 gesturePossible:10 atLevel:v35 reason:0 withCompletion:0.0];

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

- (void)transaction:(id)transaction performTransitionWithCompletion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  completionCopy = completion;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Performing layout transition now."];
  }

  v8 = [(NSSet *)self->_ancillaryLayoutTransactions containsObject:transactionCopy];
  layoutTransitionCompletions = self->_layoutTransitionCompletions;
  if (v8)
  {
    if ([(NSMutableSet *)self->_layoutTransitionCompletions count])
    {
      v10 = self->_layoutTransitionCompletions;
      transitionContext = [completionCopy copy];
      v12 = MEMORY[0x223D6F7F0]();
      [(NSMutableSet *)v10 addObject:v12];

      goto LABEL_35;
    }

    completionCopy[2](completionCopy);
    goto LABEL_36;
  }

  v13 = [completionCopy copy];
  v14 = MEMORY[0x223D6F7F0]();
  [(NSMutableSet *)layoutTransitionCompletions addObject:v14];

  toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v16 = [toApplicationSceneEntities count];

  if (!v16)
  {
    goto LABEL_26;
  }

  v43 = completionCopy;
  v44 = transactionCopy;
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  sceneManager = [windowScene sceneManager];
  toApplicationSceneEntities2 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
  v20 = [toApplicationSceneEntities2 bs_map:&__block_literal_global_190_0];

  switcherController = [windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

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

      [v33 setWantsEnhancedWindowingEnabled:isChamoisOrFlexibleWindowing];
      sceneManager2 = [v31 sceneManager];
      if (sceneManager2)
      {
        if (BSEqualObjects())
        {
          goto LABEL_23;
        }

        v35 = sceneManager2;
      }

      else
      {
        if (!v31)
        {
          goto LABEL_23;
        }

        v35 = sceneManager;
      }

      [v35 transferOwnershipOfSceneWithIdentity:v28 toSceneManager:sceneManager];
LABEL_23:
    }

    v25 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v25);
LABEL_25:

  completionCopy = v43;
  transactionCopy = v44;
LABEL_26:
  transitionContext = [transactionCopy transitionContext];
  [(SBToAppsWorkspaceTransaction *)self _synchronizeWithSceneUpdates];
  [(SBToAppsWorkspaceTransaction *)self _configureAnimation];
  [(SBToAppsWorkspaceTransaction *)self _isGoingToHomeScreenInMainDisplayWindowScene];
  if (BSSettingFlagIsYes())
  {
    _homeScreenAppearanceController = [(SBToAppsWorkspaceTransaction *)self _homeScreenAppearanceController];
    [_homeScreenAppearanceController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  }

  previousLayoutState = [transitionContext previousLayoutState];
  layoutState = [transitionContext layoutState];
  v39 = [previousLayoutState isEqual:layoutState];

  if (v39)
  {
    _beginAnimation = [(SBToAppsWorkspaceTransaction *)self _beginAnimation];
    toApplicationSceneEntities3 = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __76__SBToAppsWorkspaceTransaction_transaction_performTransitionWithCompletion___block_invoke_2;
    v46[3] = &unk_2783BAE80;
    v46[4] = self;
    [toApplicationSceneEntities3 enumerateObjectsUsingBlock:v46];

    if (!_beginAnimation)
    {
      goto LABEL_35;
    }

LABEL_34:
    [(SBToAppsWorkspaceTransaction *)self _checkForAnimationCompletion];
    goto LABEL_35;
  }

  interfaceOrientation = [transitionContext interfaceOrientation];
  if (interfaceOrientation)
  {
    [SBApp noteInterfaceOrientationChanged:interfaceOrientation duration:0 updateMirroredDisplays:@"ToApps performing transition" logMessage:0.0];
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

- (void)transaction:(id)transaction didEndLayoutTransitionWithContinuation:(id)continuation
{
  v55 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  continuationCopy = continuation;
  if ([(NSSet *)self->_ancillaryLayoutTransactions containsObject:transactionCopy])
  {
    if (continuationCopy)
    {
      (continuationCopy[2])(continuationCopy, 0, 0);
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
    sceneUpdateTransactions = [transactionCopy sceneUpdateTransactions];
    v10 = [sceneUpdateTransactions countByEnumeratingWithState:&v49 objects:v54 count:16];
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
            objc_enumerationMutation(sceneUpdateTransactions);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          if ([v14 isFailed])
          {
            [v8 addObject:v14];
            [(SBToAppsWorkspaceTransaction *)self _handleApplicationUpdateScenesTransactionFailed:v14];
          }
        }

        v11 = [sceneUpdateTransactions countByEnumeratingWithState:&v49 objects:v54 count:16];
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

    if ([v8 count] && (objc_msgSend(transactionCopy, "isInterrupted") & 1) == 0)
    {
      v40 = transactionCopy;
      v41 = continuationCopy;
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
            applicationSceneEntity = [v21 applicationSceneEntity];
            [v44 addObject:applicationSceneEntity];

            process = [v21 process];
            exitContext = [process exitContext];
            applicationInfo = [process applicationInfo];
            v26 = applicationInfo;
            if (exitContext)
            {
              v27 = applicationInfo == 0;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              exitReason = [exitContext exitReason];
              v29 = v43;
              if ((exitReason & 0x20) != 0 || (exitReason & 1) != 0 && ([exitContext terminationRequest], v30 = objc_claimAutoreleasedReturnValue(), v30, v29 = v42, !v30))
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
        transactionCopy = v40;
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
        transactionCopy = v40;
        if (self->_retriedAfterVoluntaryExit || ![v42 count])
        {
          v34 = objc_alloc_init(SBMainWorkspaceLayoutStateContingencyPlan);
          transitionContext = [v40 transitionContext];
          v33 = [(SBMainWorkspaceLayoutStateContingencyPlan *)v34 transitionContextForLayoutContext:transitionContext failedEntities:v44];
        }

        else
        {
          self->_retriedAfterVoluntaryExit = 1;
          if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            anyObject = [v42 anyObject];
            bundleIdentifier = [anyObject bundleIdentifier];
            [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Retrying after voluntary exit of %@", bundleIdentifier];
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

      continuationCopy = v41;
    }

    else if (continuationCopy)
    {
      (continuationCopy[2])(continuationCopy, 0, 0);
    }
  }
}

- (BOOL)transaction:(id)transaction shouldKeepSceneForeground:(id)foreground withReason:(id *)reason
{
  foregroundCopy = foreground;
  _transitionContext = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  layoutState = [_transitionContext layoutState];
  elements = [layoutState elements];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke;
  v23[3] = &unk_2783AC4F8;
  v11 = foregroundCopy;
  v24 = v11;
  v12 = [elements bs_containsObjectPassingTest:v23];
  _transitionContext2 = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  applicationSceneEntities = [_transitionContext2 applicationSceneEntities];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__SBToAppsWorkspaceTransaction_transaction_shouldKeepSceneForeground_withReason___block_invoke_2;
  v21[3] = &unk_2783A9EA0;
  v15 = v11;
  v22 = v15;
  v16 = [applicationSceneEntities bs_firstObjectPassingTest:v21];

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
  identifier = [v15 identifier];
  *reason = [v17 stringWithFormat:@"Keeping %@ foreground because it's part of the transition request", identifier];

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

- (BOOL)shouldWatchdog:(id *)watchdog
{
  if (!self->_appRepairTransaction)
  {
    processInfo = &v15;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__108;
    v19 = __Block_byref_object_dispose__108;
    v20 = 0;
    toApplicationSceneEntities = [(SBToAppsWorkspaceTransaction *)self toApplicationSceneEntities];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__SBToAppsWorkspaceTransaction_shouldWatchdog___block_invoke;
    v14[3] = &unk_2783A9D88;
    v14[4] = &v15;
    [toApplicationSceneEntities enumerateObjectsUsingBlock:v14];

    v13.receiver = self;
    v13.super_class = SBToAppsWorkspaceTransaction;
    if ([(SBToAppsWorkspaceTransaction *)&v13 shouldWatchdog:watchdog])
    {
      v4 = v16[5] == 0;
      if (!watchdog)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 0;
      if (!watchdog)
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
        uniqueIdentifier = [v8 uniqueIdentifier];
        processName = uniqueIdentifier;
        if (!uniqueIdentifier)
        {
          processInfo = [MEMORY[0x277CCAC38] processInfo];
          processName = [processInfo processName];
        }

        *watchdog = [v9 stringWithFormat:@"%@ is being debugged", processName];
        if (!uniqueIdentifier)
        {
        }
      }
    }

    goto LABEL_15;
  }

  v4 = 0;
  if (watchdog)
  {
    *watchdog = @"performing app repair";
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

- (void)synchronizedTransactionReadyToCommit:(id)commit
{
  commitCopy = commit;
  allLayoutTransactions = [(SBToAppsWorkspaceTransaction *)self allLayoutTransactions];
  v5 = [allLayoutTransactions containsObject:commitCopy];

  if (v5)
  {
    [commitCopy performSynchronizedCommit];
    v6 = [(SBToAppsWorkspaceTransaction *)self _milestoneForLayoutTransaction:commitCopy];
    [(SBToAppsWorkspaceTransaction *)self removeMilestone:v6];
  }
}

- (void)animationController:(id)controller willBeginAnimation:(BOOL)animation
{
  animationCopy = animation;
  controllerCopy = controller;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v6 = [MEMORY[0x277CF0C00] descriptionForObject:controllerCopy];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Animation will begin: %@", v6];
  }

  if (self->_animationController == controllerCopy)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationWillBegin:animationCopy];
  }

  else if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v7 = [MEMORY[0x277CF0C00] descriptionForObject:controllerCopy];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"!!!! Animation began that we weren't tracking: %@", v7];
  }
}

- (void)animationControllerDidFinishAnimation:(id)animation
{
  animationCopy = animation;
  if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v4 = [MEMORY[0x277CF0C00] descriptionForObject:animationCopy];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Animation did finish: %@", v4];
  }

  if (self->_animationController == animationCopy)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationDidFinish];
    [(SBToAppsWorkspaceTransaction *)self _noteAnimationFinished];
  }

  else if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v5 = [MEMORY[0x277CF0C00] descriptionForObject:animationCopy];
    [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"!!!! Animation completed that we weren't tracking: %@", v5];
  }
}

- (void)animationControllerDidRevealApplication:(id)application
{
  if (self->_animationController == application)
  {
    [(SBToAppsWorkspaceTransaction *)self _animationDidRevealApplication];
  }
}

- (void)_fireAndClearResultBlockIfNecessaryForFailure:(BOOL)failure
{
  failureCopy = failure;
  _transitionContext = [(SBToAppsWorkspaceTransaction *)self _transitionContext];
  if ([_transitionContext needsToSendActivationResult])
  {
    if (failureCopy)
    {
      v5 = SBWTErrorCreate(self, 1, 0);
      [_transitionContext sendActivationResultError:v5];
    }

    else
    {
      [_transitionContext sendActivationResultError:0];
    }

    if ([(SBToAppsWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBToAppsWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; success = %d", !failureCopy];
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