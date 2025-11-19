@interface SBInteractiveScreenshotGestureManager
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleRemoteTransientOverlayPresentationRequest:(id)a3 forSession:(id)a4;
- (SBInteractiveScreenshotGestureManager)initWithWindowScene:(id)a3 workspace:(id)a4 appInteractionEventSource:(id)a5;
- (SBInteractiveScreenshotGestureManagerDelegate)delegate;
- (id)_screenshotPresentationOptions;
- (id)acquireDisableGestureAssertionWithReason:(id)a3;
- (unint64_t)_touchTypeForGestureRecognizer:(id)a3;
- (void)_handleInteractiveScreenshotGesture:(id)a3;
- (void)_invalidateSessionID:(id)a3;
- (void)_performCommitWorkspaceTransactionBlock:(id)a3;
- (void)_performPendingCommitWorkspaceTransactionBlocksWithTransaction:(id)a3;
- (void)_updateFailureRequirements;
- (void)dealloc;
- (void)eventSource:(id)a3 userTouchedApplication:(id)a4;
- (void)interactiveScreenshotCommitWorkspaceTransactionRequestsGestureWindowInvalidation:(id)a3;
- (void)interactiveScreenshotCommitWorkspaceTransactionRequestsPlaceholderChromeRemoval:(id)a3;
- (void)interactiveScreenshotGestureRootViewController:(id)a3 gestureDidCompleteWithIntent:(int64_t)a4;
- (void)interactiveScreenshotGestureRootViewControllerRequestsGestureRecognizerCancellation:(id)a3;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBInteractiveScreenshotGestureManager

- (SBInteractiveScreenshotGestureManager)initWithWindowScene:(id)a3 workspace:(id)a4 appInteractionEventSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35.receiver = self;
  v35.super_class = SBInteractiveScreenshotGestureManager;
  v12 = [(SBInteractiveScreenshotGestureManager *)&v35 init];
  v13 = v12;
  if (v12)
  {
    v12->_lastApplicationTouchTime = -1.79769313e308;
    v14 = [v9 screen];
    screen = v13->_screen;
    v13->_screen = v14;

    objc_storeStrong(&v13->_appInteractionEventSource, a5);
    objc_storeStrong(&v13->_windowScene, a3);
    v16 = [v9 systemGestureManager];
    systemGestureManager = v13->_systemGestureManager;
    v13->_systemGestureManager = v16;

    objc_storeStrong(&v13->_workspace, a4);
    v18 = +[SBInteractiveScreenshotDomain rootSettings];
    settings = v13->_settings;
    v13->_settings = v18;

    v20 = [(SBInteractiveScreenshotSettings *)v13->_settings pencilGestureSettings];
    v21 = [SBCornerPencilPanGestureRecognizer interactiveCornerPanGestureRecognizerWithSettings:v20 corner:4 target:v13 action:sel__handleInteractiveScreenshotGesture_];
    bottomLeftPencilGestureRecognizer = v13->_bottomLeftPencilGestureRecognizer;
    v13->_bottomLeftPencilGestureRecognizer = v21;

    [(SBCornerPencilPanGestureRecognizer *)v13->_bottomLeftPencilGestureRecognizer setDelegate:v13];
    [(SBSystemGestureManager *)v13->_systemGestureManager addGestureRecognizer:v13->_bottomLeftPencilGestureRecognizer withType:105];
    v23 = [(SBInteractiveScreenshotSettings *)v13->_settings pencilGestureSettings];
    v24 = [SBCornerPencilPanGestureRecognizer interactiveCornerPanGestureRecognizerWithSettings:v23 corner:8 target:v13 action:sel__handleInteractiveScreenshotGesture_];
    bottomRightPencilGestureRecognizer = v13->_bottomRightPencilGestureRecognizer;
    v13->_bottomRightPencilGestureRecognizer = v24;

    [(SBCornerPencilPanGestureRecognizer *)v13->_bottomRightPencilGestureRecognizer setDelegate:v13];
    [(SBSystemGestureManager *)v13->_systemGestureManager addGestureRecognizer:v13->_bottomRightPencilGestureRecognizer withType:106];
    v26 = [(SBInteractiveScreenshotSettings *)v13->_settings fingerGestureSettings];
    v27 = [[SBCornerFingerGestureClassifier alloc] initWithSettings:v26];
    v28 = [[SBCornerFingerPanGestureRecognizer alloc] initWithTarget:v13 action:sel__handleInteractiveScreenshotGesture_ corner:4 classifier:v27];
    bottomLeftFingerGestureRecognizer = v13->_bottomLeftFingerGestureRecognizer;
    v13->_bottomLeftFingerGestureRecognizer = v28;

    [(SBCornerFingerPanGestureRecognizer *)v13->_bottomLeftFingerGestureRecognizer setDelegate:v13];
    [(SBSystemGestureManager *)v13->_systemGestureManager addGestureRecognizer:v13->_bottomLeftFingerGestureRecognizer withType:107];
    v30 = [[SBCornerFingerGestureClassifier alloc] initWithSettings:v26];
    v31 = [[SBCornerFingerPanGestureRecognizer alloc] initWithTarget:v13 action:sel__handleInteractiveScreenshotGesture_ corner:8 classifier:v30];
    bottomRightFingerGestureRecognizer = v13->_bottomRightFingerGestureRecognizer;
    v13->_bottomRightFingerGestureRecognizer = v31;

    [(SBCornerFingerPanGestureRecognizer *)v13->_bottomRightFingerGestureRecognizer setDelegate:v13];
    [(SBSystemGestureManager *)v13->_systemGestureManager addGestureRecognizer:v13->_bottomRightFingerGestureRecognizer withType:108];
    [(SBInteractiveScreenshotGestureManager *)v13 _updateFailureRequirements];
    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v13 selector:sel__springBoardBootCompleted_ name:@"SBBootCompleteNotification" object:0];

    [(SBDisplayAppInteractionEventSource *)v13->_appInteractionEventSource addObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self->_commitTransaction removeObserver:self];
  [(SBDisplayAppInteractionEventSource *)self->_appInteractionEventSource removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBInteractiveScreenshotGestureManager;
  [(SBInteractiveScreenshotGestureManager *)&v3 dealloc];
}

- (void)_updateFailureRequirements
{
  SBCornerFingerGestureUpdateFailureRequirements(self->_bottomLeftFingerGestureRecognizer, self->_systemGestureManager);
  bottomRightFingerGestureRecognizer = self->_bottomRightFingerGestureRecognizer;
  systemGestureManager = self->_systemGestureManager;

  SBCornerFingerGestureUpdateFailureRequirements(bottomRightFingerGestureRecognizer, systemGestureManager);
}

- (void)transactionDidComplete:(id)a3
{
  if (self->_commitTransaction == a3)
  {
    self->_hasInitiatedCommit = 0;
    [(BSInvalidatable *)self->_commitTransactionDisableGestureAssertion invalidate];
    commitTransactionDisableGestureAssertion = self->_commitTransactionDisableGestureAssertion;
    self->_commitTransactionDisableGestureAssertion = 0;

    commitTransaction = self->_commitTransaction;
    self->_commitTransaction = 0;
  }
}

- (void)interactiveScreenshotCommitWorkspaceTransactionRequestsPlaceholderChromeRemoval:(id)a3
{
  if (self->_commitTransaction == a3)
  {
    sessionIDToSession = self->_sessionIDToSession;
    v5 = [a3 gestureSessionID];
    v7 = [(NSMutableDictionary *)sessionIDToSession objectForKey:v5];

    v6 = [v7 rootViewController];
    [v6 removePlaceholderChrome];
  }
}

- (void)interactiveScreenshotCommitWorkspaceTransactionRequestsGestureWindowInvalidation:(id)a3
{
  if (self->_commitTransaction == a3)
  {
    v5 = [a3 gestureSessionID];
    [(SBInteractiveScreenshotGestureManager *)self _invalidateSessionID:v5];
  }
}

- (void)interactiveScreenshotGestureRootViewController:(id)a3 gestureDidCompleteWithIntent:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBWorkspace *)self->_workspace eventQueue];
  [v7 cancelEventsWithName:@"BInteractiveScreenshotGestureCommit"];

  activeGestureSessionID = self->_activeGestureSessionID;
  if (activeGestureSessionID)
  {
    v9 = activeGestureSessionID;
    v10 = [(NSMutableDictionary *)self->_sessionIDToSession objectForKey:v9];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke;
    v31[3] = &unk_2783B5080;
    v31[4] = self;
    v11 = v6;
    v32 = v11;
    v12 = v9;
    v33 = v12;
    v13 = MEMORY[0x223D6F7F0](v31);
    screen = self->_screen;
    v15 = [MEMORY[0x277D759A0] mainScreen];
    if ([(UIScreen *)screen isEqual:v15])
    {
      v16 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    }

    else
    {
      v16 = 0;
    }

    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if (a4 == 1)
    {
      v19 = [v11 gestureStyle];
      v18 = v13[2];
      if (v19 != 1)
      {
        v20 = v13;
        v21 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      if (a4 == 2 && !self->_hasInitiatedCommit)
      {
        v22 = self->_activeGestureSessionID;
        self->_activeGestureSessionID = 0;

        *&self->_hasInitiatedCommit = 257;
        v23 = [(SBInteractiveScreenshotGestureManager *)self acquireDisableGestureAssertionWithReason:@"CommitTransaction"];
        commitTransactionDisableGestureAssertion = self->_commitTransactionDisableGestureAssertion;
        self->_commitTransactionDisableGestureAssertion = v23;

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_3;
        v25[3] = &unk_2783BD890;
        v25[4] = self;
        v29 = v13;
        v26 = v11;
        v30 = v17;
        v27 = v10;
        v28 = v12;
        [v26 captureScreenshotWithInterfaceOrientation:v17 completion:v25];

        goto LABEL_15;
      }

      v18 = v13[2];
    }

    v20 = v13;
    v21 = 0;
LABEL_14:
    v18(v20, v21);
LABEL_15:
  }
}

void __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _performPendingCommitWorkspaceTransactionBlocksWithTransaction:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_2;
  v5[3] = &unk_2783B5CD8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v4 cancelInteractionWithStyle:a2 settlingCompletionHandler:v5];
}

uint64_t __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_2(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return [*(result + 32) _invalidateSessionID:*(result + 40)];
  }

  return result;
}

void __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 89) = 0;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4BE58]);
    v5 = objc_alloc_init(MEMORY[0x277D4BE50]);
    [v5 setPreparedImage:v3];
    if (objc_opt_respondsToSelector())
    {
      [v5 setExternalFlashLayerRenderID:{objc_msgSend(*(a1 + 40), "flashViewLayerRenderID")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 setExternalFlashLayerContextID:{objc_msgSend(*(a1 + 40), "flashViewLayerContextID")}];
    }

    [v4 setScreenshotOptions:v5 forScreen:*(*(a1 + 32) + 112)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
    v7 = *(a1 + 32);
    v8 = [v7 _screenshotPresentationOptions];
    [WeakRetained interactiveScreenshotGestureManager:v7 requestsScreenshotWithOptionsCollection:v4 presentationOptions:v8];

    v9 = *(a1 + 72);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_4;
    v30[3] = &unk_2783AE4B8;
    v10 = *(a1 + 40);
    v31 = *(a1 + 32);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_6;
    v29[3] = &unk_2783AE4B8;
    v29[4] = v31;
    [v10 commitInteractionWithScreenshotImage:v3 screenshotInterfaceOrientation:v9 settlingCompletionHandler:v30 flashCompletionHandler:v29];
    v11 = [*(a1 + 48) hostWindow];

    if (!v11)
    {
      v12 = [[SBInteractiveScreenshotGestureHostRootViewController alloc] initWithScreen:*(*(a1 + 32) + 112)];
      v13 = [SBInteractiveScreenshotGestureHostWindow alloc];
      v14 = *(a1 + 32);
      v15 = v14[20];
      v16 = [v14 description];
      v17 = [(SBWindow *)v13 initWithWindowScene:v15 rootViewController:v12 role:@"SBTraitsParticipantRoleInteractiveScreenshotGesture" debugName:v16];

      [(SBInteractiveScreenshotGestureHostWindow *)v17 setWindowLevel:*MEMORY[0x277D76A38] + 2.0];
      [*(a1 + 48) setHostWindow:v17];
    }

    v18 = [*(a1 + 48) hostRootViewController];
    v19 = [*(a1 + 48) rootWindow];
    [v18 setHostingContextID:objc_msgSend(v19 pid:{"_contextId"), getpid()}];

    v20 = [*(a1 + 48) hostWindow];
    [v20 setHidden:0];

    v21 = *(*(a1 + 32) + 152);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_9;
    v26[3] = &unk_2783B3CF0;
    v22 = *(a1 + 56);
    v23 = *(a1 + 32);
    v27 = v22;
    v28 = v23;
    [v21 requestTransitionWithOptions:0 builder:&__block_literal_global_30_4 validator:v26];
  }

  else
  {
    [*(*(a1 + 32) + 72) invalidate];
    v24 = *(a1 + 32);
    v25 = *(v24 + 72);
    *(v24 + 72) = 0;

    *(*(a1 + 32) + 88) = 0;
    (*(*(a1 + 64) + 16))();
  }
}

void __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSource:11];
  [v2 setEventLabel:@"BInteractiveScreenshotGestureCommit"];
}

uint64_t __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_9(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_10;
  v7[3] = &unk_2783B40C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  [a2 setTransactionProvider:v7];

  return 1;
}

SBInteractiveScreenshotCommitWorkspaceTransaction *__117__SBInteractiveScreenshotGestureManager_interactiveScreenshotGestureRootViewController_gestureDidCompleteWithIntent___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBInteractiveScreenshotCommitWorkspaceTransaction alloc] initWithTransitionRequest:v3 gestureSessionID:*(a1 + 32)];

  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)v4 addObserver:*(a1 + 40)];
  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)v4 setInteractiveScreenshotCommitDelegate:*(a1 + 40)];
  objc_storeStrong((*(a1 + 40) + 64), v4);
  [*(a1 + 40) _performPendingCommitWorkspaceTransactionBlocksWithTransaction:*(*(a1 + 40) + 64)];

  return v4;
}

- (void)interactiveScreenshotGestureRootViewControllerRequestsGestureRecognizerCancellation:(id)a3
{
  [(SBCornerPencilPanGestureRecognizer *)self->_bottomLeftPencilGestureRecognizer setEnabled:0];
  [(SBCornerPencilPanGestureRecognizer *)self->_bottomRightPencilGestureRecognizer setEnabled:0];
  [(SBCornerFingerPanGestureRecognizer *)self->_bottomLeftFingerGestureRecognizer setEnabled:0];
  [(SBCornerFingerPanGestureRecognizer *)self->_bottomRightFingerGestureRecognizer setEnabled:0];
  [(SBCornerPencilPanGestureRecognizer *)self->_bottomLeftPencilGestureRecognizer setEnabled:1];
  [(SBCornerPencilPanGestureRecognizer *)self->_bottomRightPencilGestureRecognizer setEnabled:1];
  [(SBCornerFingerPanGestureRecognizer *)self->_bottomLeftFingerGestureRecognizer setEnabled:1];
  bottomRightFingerGestureRecognizer = self->_bottomRightFingerGestureRecognizer;

  [(SBCornerFingerPanGestureRecognizer *)bottomRightFingerGestureRecognizer setEnabled:1];
}

- (void)eventSource:(id)a3 userTouchedApplication:(id)a4
{
  if (a4)
  {
    BSContinuousMachTimeNow();
    self->_lastApplicationTouchTime = v5;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 cornerGestureDefaults];

  v7 = objc_opt_class();
  v8 = v4;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(SBWindowScene *)self->_windowScene switcherController];
    v12 = [v11 windowManagementContext];
    v13 = [v12 isChamoisOrFlexibleWindowing] ^ 1;

    v14 = [v10 corner];
  }

  else
  {
    v15 = objc_opt_class();
    v16 = v8;
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

    v14 = [v18 corner];
    v13 = 2;
  }

  if ([v6 bottomLeftCornerGestureFeature])
  {
    v19 = 0;
  }

  else
  {
    v19 = ([v6 bottomLeftCornerGestureTouchTypes] & v13) != 0;
  }

  if ([v6 bottomRightCornerGestureFeature])
  {
    v20 = 0;
  }

  else
  {
    v20 = ([v6 bottomRightCornerGestureTouchTypes] & v13) != 0;
  }

  if (v14 != 8)
  {
    if (v14 == 4)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        if (!v20)
        {
          goto LABEL_24;
        }
      }

      else if (!v19)
      {
        goto LABEL_24;
      }

      v21 = 1;
      goto LABEL_30;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_30;
  }

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

LABEL_30:

  return v21;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBInteractiveScreenshotSettings *)self->_settings isEnabled]&& !self->_isCapturingScreenshot && (self->_lastApplicationTouchTime == -1.79769313e308 || (BSContinuousMachTimeNow(), v9 = v8 - self->_lastApplicationTouchTime, [(SBInteractiveScreenshotSettings *)self->_settings applicationTouchDelayHysteresis], v9 > v10)))
  {
    v11 = objc_opt_class();
    v12 = v6;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = v13;

    if (v16 && ![v16 shouldReceiveTouch:v7])
    {
      v14 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v18 = [WeakRetained interactiveScreenshotGestureManagerShouldPreventGestureRecognition:self];

      v14 = v18 ^ 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)handleRemoteTransientOverlayPresentationRequest:(id)a3 forSession:(id)a4
{
  v5 = a3;
  if ([v5 isScreenshotMarkup] && self->_hasInitiatedCommit)
  {
    v6 = [v5 viewController];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __100__SBInteractiveScreenshotGestureManager_handleRemoteTransientOverlayPresentationRequest_forSession___block_invoke;
    v10[3] = &unk_2783BD8B8;
    v11 = v6;
    v7 = v6;
    [(SBInteractiveScreenshotGestureManager *)self _performCommitWorkspaceTransactionBlock:v10];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)acquireDisableGestureAssertionWithReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__SBInteractiveScreenshotGestureManager_acquireDisableGestureAssertionWithReason___block_invoke;
  v15 = &unk_2783A9070;
  objc_copyWeak(&v16, &location);
  v6 = [v5 initWithIdentifier:@"com.apple.SpringBoard.SBInteractiveScreenshotGestureManager.disableGesture" forReason:v4 invalidationBlock:&v12];
  disableGestureAssertions = self->_disableGestureAssertions;
  if (!disableGestureAssertions)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    v9 = [v8 initWithCapacity:{1, v12, v13, v14, v15}];
    v10 = self->_disableGestureAssertions;
    self->_disableGestureAssertions = v9;

    disableGestureAssertions = self->_disableGestureAssertions;
  }

  [(NSMutableSet *)disableGestureAssertions addObject:v6, v12, v13, v14, v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v6;
}

void __82__SBInteractiveScreenshotGestureManager_acquireDisableGestureAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[10] removeObject:v6];
    if (![v4[10] count])
    {
      v5 = v4[10];
      v4[10] = 0;
    }
  }
}

- (void)_handleInteractiveScreenshotGesture:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = +[SBDefaults localDefaults];
  v7 = [v6 cornerGestureDefaults];

  v8 = [(SBInteractiveScreenshotGestureManager *)self _touchTypeForGestureRecognizer:v4];
  if (([v7 cornerGestureRequiresEducation] & v8) != 0)
  {
    if (v5 == 1)
    {
      v9 = [v4 corner];
      v10 = SBLogSystemGesture();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 134217984;
        v42 = v9;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Interactive screenshot gesture recognized for corner %lu that requires education", &v41, 0xCu);
      }

      if (v9 == 8)
      {
        v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v12 = 9;
        v13 = 7;
      }

      else
      {
        if (v9 != 4)
        {
          v22 = 0;
LABEL_24:
          v23 = [SBApp productivityGestureEducationController];
          [v23 gestureActivatedForType:v22];

          goto LABEL_45;
        }

        v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v12 = 7;
        v13 = 9;
      }

      if (v11)
      {
        v22 = v13;
      }

      else
      {
        v22 = v12;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (!self->_asynchronousRenderingAssertion && [(SBInteractiveScreenshotSettings *)self->_settings shouldAsynchronouslyRender])
      {
        v14 = [[SBAsynchronousRenderingAssertion alloc] initWithReason:@"SBInteractiveScreenshotGestureManager"];
        asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
        self->_asynchronousRenderingAssertion = v14;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (!self->_activeGestureSessionID && ([MEMORY[0x277CCAD78] UUID], v17 = objc_claimAutoreleasedReturnValue(), activeGestureSessionID = self->_activeGestureSessionID, self->_activeGestureSessionID = v17, activeGestureSessionID, !self->_activeGestureSessionID) || (-[NSMutableDictionary objectForKey:](self->_sessionIDToSession, "objectForKey:"), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v20 = [(NSHashTable *)self->_weakReusableGestureRootWindows anyObject];
        if (v20)
        {
          [(NSHashTable *)self->_weakReusableGestureRootWindows removeObject:v20];
          v21 = v20;
        }

        else
        {
          v21 = [(_UIRootWindow *)[SBInteractiveScreenshotGestureRootWindow alloc] initWithScreen:self->_screen];
        }

        v24 = v21;
        if (![(NSHashTable *)self->_weakReusableGestureRootWindows count])
        {
          weakReusableGestureRootWindows = self->_weakReusableGestureRootWindows;
          self->_weakReusableGestureRootWindows = 0;
        }

        v26 = [(SBInteractiveScreenshotGestureRootWindow *)v24 rootViewController];

        if (!v26)
        {
          v27 = [[SBInteractiveScreenshotGestureRootViewController alloc] initWithWindowScene:self->_windowScene];
          [(SBInteractiveScreenshotGestureRootViewController *)v27 setDelegate:self];
          [(SBInteractiveScreenshotGestureRootWindow *)v24 setRootViewController:v27];
        }

        v19 = [[_SBInteractiveScreenshotGestureSession alloc] initWithSessionID:self->_activeGestureSessionID];
        [(_SBInteractiveScreenshotGestureSession *)v19 setRootWindow:v24];
        sessionIDToSession = self->_sessionIDToSession;
        if (!sessionIDToSession)
        {
          v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
          v30 = self->_sessionIDToSession;
          self->_sessionIDToSession = v29;

          sessionIDToSession = self->_sessionIDToSession;
        }

        [(NSMutableDictionary *)sessionIDToSession setObject:v19 forKey:self->_activeGestureSessionID];
      }

      v31 = [(NSMutableSet *)self->_disableGestureAssertions count];
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v33 = 2;
      if (v31)
      {
        v33 = 3;
        v34 = IsReduceMotionEnabled;
      }

      else
      {
        v34 = 1;
      }

      if (IsReduceMotionEnabled)
      {
        v35 = v33;
      }

      else
      {
        v35 = v31 != 0;
      }

      v36 = [(_SBInteractiveScreenshotGestureSession *)v19 rootViewController];
      [v36 setGestureStyle:v35];

      v37 = [(_SBInteractiveScreenshotGestureSession *)v19 rootWindow];
      [v37 setHidden:0];
      [v37 layoutIfNeeded];
      v38 = [(SBInteractiveScreenshotSettings *)self->_settings shouldPreheat];
      if (v34 == 1 && v38)
      {
        v39 = [(SBInteractiveScreenshotGestureManager *)self _screenshotPresentationOptions];
        [WeakRetained interactiveScreenshotGestureManager:self requestsScreenshotPreheatWithPresentationOptions:v39];
      }
    }

    else if (self->_activeGestureSessionID)
    {
      v19 = [(NSMutableDictionary *)self->_sessionIDToSession objectForKey:?];
    }

    else
    {
      v19 = 0;
    }

    v40 = [(_SBInteractiveScreenshotGestureSession *)v19 rootViewController];
    [v40 handlePanGestureRecognizerAction:v4];
  }

LABEL_45:
}

- (void)_invalidateSessionID:(id)a3
{
  if (a3)
  {
    activeGestureSessionID = self->_activeGestureSessionID;
    v5 = a3;
    if ([(NSUUID *)activeGestureSessionID isEqual:v5])
    {
      v6 = self->_activeGestureSessionID;
      self->_activeGestureSessionID = 0;
    }

    v18 = [(NSMutableDictionary *)self->_sessionIDToSession objectForKey:v5];
    [(NSMutableDictionary *)self->_sessionIDToSession removeObjectForKey:v5];

    v7 = [v18 rootViewController];
    [v7 invalidate];

    v8 = [v18 hostRootViewController];
    [v8 invalidate];

    v9 = [v18 rootWindow];
    v10 = v9;
    if (v9)
    {
      [v9 setHidden:1];
      [v10 setRootViewController:0];
      weakReusableGestureRootWindows = self->_weakReusableGestureRootWindows;
      if (!weakReusableGestureRootWindows)
      {
        v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v13 = self->_weakReusableGestureRootWindows;
        self->_weakReusableGestureRootWindows = v12;

        weakReusableGestureRootWindows = self->_weakReusableGestureRootWindows;
      }

      [(NSHashTable *)weakReusableGestureRootWindows addObject:v10];
    }

    v14 = [v18 hostWindow];
    v15 = v14;
    if (v14)
    {
      [v14 setHidden:1];
      [v15 setRootViewController:0];
    }

    if (![(NSMutableDictionary *)self->_sessionIDToSession count])
    {
      sessionIDToSession = self->_sessionIDToSession;
      self->_sessionIDToSession = 0;

      [(BSSimpleAssertion *)self->_asynchronousRenderingAssertion invalidate];
      asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
      self->_asynchronousRenderingAssertion = 0;
    }
  }
}

- (void)_performCommitWorkspaceTransactionBlock:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!self->_hasInitiatedCommit)
  {
    v5 = v4[2];
    goto LABEL_5;
  }

  if (self->_commitTransaction)
  {
    v5 = v4[2];
LABEL_5:
    v5();
    goto LABEL_6;
  }

  pendingCommitWorkspaceTransactionBlocks = self->_pendingCommitWorkspaceTransactionBlocks;
  if (!pendingCommitWorkspaceTransactionBlocks)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v8 = self->_pendingCommitWorkspaceTransactionBlocks;
    self->_pendingCommitWorkspaceTransactionBlocks = v7;

    pendingCommitWorkspaceTransactionBlocks = self->_pendingCommitWorkspaceTransactionBlocks;
  }

  v9 = MEMORY[0x223D6F7F0]();
  [(NSMutableArray *)pendingCommitWorkspaceTransactionBlocks addObject:v9];

LABEL_6:
}

- (void)_performPendingCommitWorkspaceTransactionBlocksWithTransaction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_pendingCommitWorkspaceTransactionBlocks copy];
  pendingCommitWorkspaceTransactionBlocks = self->_pendingCommitWorkspaceTransactionBlocks;
  self->_pendingCommitWorkspaceTransactionBlocks = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)_screenshotPresentationOptions
{
  v2 = objc_alloc_init(MEMORY[0x277D4BE48]);
  [v2 setPresentationMode:3];

  return v2;
}

- (unint64_t)_touchTypeForGestureRecognizer:(id)a3
{
  v3 = a3;
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

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = v5;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }
    }

    v8 = 2 * (v9 != 0);
  }

  return v8;
}

- (SBInteractiveScreenshotGestureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end