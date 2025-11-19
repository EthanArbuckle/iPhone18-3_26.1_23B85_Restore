@interface SBSystemNotesInteractionManager
- (BOOL)_gestureIsActive;
- (BOOL)_panRecognizerOverFlickThreshold:(id)a3;
- (BOOL)_shouldEdgeProtectGestureRecognizer:(id)a3;
- (BOOL)canHandlePresentationRequests:(id *)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_convertReferenceVelocity:(CGPoint)a3 toOrientation:(int64_t)a4;
- (CGPoint)_orientedLocationForReferenceLocation:(CGPoint)a3;
- (CGPoint)_pointForGestureCorner:(unint64_t)a3;
- (SBSystemNotesInteractionManager)initWithWorkspace:(id)a3 systemGestureManager:(id)a4 systemPointerInteractionManager:(id)a5 dataSource:(id)a6 delegate:(id)a7;
- (UIEdgeInsets)interactionController:(id)a3 edgeInsetsForWindowScene:(id)a4;
- (UIEdgeInsets)interactionController:(id)a3 stashedPaddingForWindowScene:(id)a4;
- (double)_absoluteScaleForInteractiveSystemNotesGesture:(id)a3;
- (double)_absoluteScaleThresholdBeforeFullSizeForGestureRecognizer:(id)a3;
- (double)_cornerDistanceBeforeScalingForDismissGestureRecognizer:(id)a3;
- (double)_flickVelocityThresholdForGestureRecognizer:(id)a3;
- (double)_panDistanceBeforeScalingForGestureRecognizer:(id)a3;
- (double)_panDistancePer1xScalingForGestureRecognizer:(id)a3;
- (double)_panInitialThumbnailScaleForGestureRecognizer:(id)a3;
- (double)_scaleThresholdBeforeFullSizeForGestureRecognizer:(id)a3;
- (id)defaultPositionHyperregionComposers;
- (id)interactionControllerConnectedWindowScenes:(id)a3;
- (int64_t)_presentationModeForGestureBegin;
- (unint64_t)_cornerForGestureRecognizer:(id)a3;
- (unint64_t)_cornersForAllSwipes;
- (unint64_t)_cornersForTouchType:(int64_t)a3;
- (unint64_t)_touchTypeForGestureRecognizer:(id)a3;
- (unint64_t)startingPositionForExternalPresentationRequest;
- (void)_cancelGestureIfNecessary:(id)a3 reason:(id)a4;
- (void)_handleInteractiveSwipeInGesture:(id)a3;
- (void)_handleInteractiveSystemNotesGesture:(id)a3;
- (void)_handleNonInteractiveSwipeInGesture:(id)a3;
- (void)_interactionController:(id)a3 updateScaleInteractorForSwipeToDismiss:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6;
- (void)_interactionController:(id)a3 updateScaleInteractorForSwipeToPresent:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6;
- (void)_setupFingerGestureRecognizers;
- (void)_setupForInteractiveDismissal;
- (void)_setupPencilGestureRecognizers;
- (void)_springBoardBootCompleted:(id)a3;
- (void)_updateFailureRequirements;
- (void)_updateFingerGestureEnablement;
- (void)_updateStashPadding;
- (void)collapseAnimated:(BOOL)a3;
- (void)contentContainerAdapter:(id)a3 handleDestructionRequestForSceneHandle:(id)a4;
- (void)contentContainerAdapter:(id)a3 willBeginInteractionWithGestureRecognizer:(id)a4;
- (void)contentContainerAdapter:(id)a3 willUpdateStashState:(BOOL)a4;
- (void)contentContainerAdapterDidEndInteraction:(id)a3 targetWindowScene:(id)a4;
- (void)contentContainerAdapterPanGestureDidEnd:(id)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)expandAnimated:(BOOL)a3;
- (void)interactionController:(id)a3 updateScaleInteractor:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6;
- (void)peepAnimated:(BOOL)a3;
- (void)startingPositionForExternalPresentationRequest;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBSystemNotesInteractionManager

- (SBSystemNotesInteractionManager)initWithWorkspace:(id)a3 systemGestureManager:(id)a4 systemPointerInteractionManager:(id)a5 dataSource:(id)a6 delegate:(id)a7
{
  v47[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v46.receiver = self;
  v46.super_class = SBSystemNotesInteractionManager;
  v17 = [(SBSystemNotesInteractionManager *)&v46 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_systemGestureManager, a4);
    objc_storeStrong(&v18->_systemPointerInteractionManager, a5);
    objc_storeStrong(&v18->_dataSource, a6);
    objc_storeStrong(&v18->_delegate, a7);
    v19 = [v12 pipCoordinator];
    pipCoordinator = v18->_pipCoordinator;
    v18->_pipCoordinator = v19;

    v21 = [SBApp windowSceneManager];
    v40 = [v21 embeddedDisplayWindowScene];

    v39 = [v40 zStackResolver];
    v22 = [v39 acquireParticipantWithIdentifier:4 delegate:v18];
    zStackParticipant = v18->_zStackParticipant;
    v18->_zStackParticipant = v22;

    [(SBFZStackParticipant *)v18->_zStackParticipant setNeedsUpdatePreferencesWithReason:@"init"];
    v24 = +[SBSystemNotesSettingsDomain rootSettings];
    pipSettings = v18->_pipSettings;
    v18->_pipSettings = v24;

    [(SBSystemNotesInteractionManager *)v18 _setupPencilGestureRecognizers];
    [(SBSystemNotesInteractionManager *)v18 _setupFingerGestureRecognizers];
    [(SBSystemNotesInteractionManager *)v18 _updateFingerGestureEnablement];
    [(SBSystemNotesInteractionManager *)v18 _updateFailureRequirements];
    [(SBSystemNotesInteractionManager *)v18 _updateStashPadding];
    v26 = +[SBDefaults localDefaults];
    [v26 cornerGestureDefaults];
    v27 = v42 = v15;

    v43 = v12;
    [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomLeftCornerGestureFeature"];
    v28 = v41 = v16;
    v47[0] = v28;
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomLeftCornerGestureTouchTypes"];
    v47[1] = v29;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomRightCornerGestureFeature"];
    v47[2] = v30;
    [MEMORY[0x277CCACA8] stringWithUTF8String:"bottomRightCornerGestureTouchTypes"];
    v31 = v14;
    v33 = v32 = v13;
    v47[3] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __126__SBSystemNotesInteractionManager_initWithWorkspace_systemGestureManager_systemPointerInteractionManager_dataSource_delegate___block_invoke;
    v44[3] = &unk_2783A8C18;
    v35 = v18;
    v45 = v35;
    v36 = [v27 observeDefaults:v34 onQueue:MEMORY[0x277D85CD0] withBlock:v44];

    v13 = v32;
    v14 = v31;

    v16 = v41;
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v35 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
    [v37 addObserver:v35 selector:sel__springBoardBootCompleted_ name:@"SBBootCompleteNotification" object:0];

    v12 = v43;
    v15 = v42;
  }

  return v18;
}

- (void)_springBoardBootCompleted:(id)a3
{
  [(SBSystemNotesInteractionManager *)self _updateFingerGestureEnablement];

  [(SBSystemNotesInteractionManager *)self _updateFailureRequirements];
}

- (void)peepAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = SBLogSystemNotes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBSystemNotesInteractionManager peepAnimated:];
  }

  [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForSwipesFromCorners:[(SBSystemNotesInteractionManager *)self _cornersForAllSwipes] animated:v3];
  [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
}

- (void)expandAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
  v6 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
  v7 = v6;
  if (v5 != -1 && v6 != 0)
  {
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStartSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionExpandNotes"];
    v9 = [v7 interactionController];
    v10 = [SBPIPContentViewLayoutMetrics systemNotesMetricsForPresentationMode:0];
    v11 = SBSystemNotesDefaultWindowSize();
    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [v9 setPlatformMetrics:v10 contentSize:v12 animationBehavior:v11];

    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsUpdatePresentationMode:0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__SBSystemNotesInteractionManager_expandAnimated___block_invoke;
    v14[3] = &unk_2783A8C18;
    v14[4] = self;
    [v7 performAfterInFlightAnimationsComplete:v14];
    v13 = SBLogSystemNotes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesInteractionManager peepAnimated:];
    }
  }
}

- (void)collapseAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
  v6 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
  v7 = v6;
  if (v5 != -1 && v6 != 0)
  {
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStartSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionDismiss"];
    v9 = [v7 interactionController];
    v10 = [SBPIPContentViewLayoutMetrics systemNotesMetricsForPresentationMode:1];
    v11 = SBSystemNotesThumbnailSize();
    if (v3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [v9 setPlatformMetrics:v10 contentSize:v12 animationBehavior:v11];

    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsUpdatePresentationMode:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SBSystemNotesInteractionManager_collapseAnimated___block_invoke;
    v13[3] = &unk_2783A8C18;
    v13[4] = self;
    [v7 performAfterInFlightAnimationsComplete:v13];
  }
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
  v9 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedPIPContentViewControllerForInteractionManager:self];
  self->_edgeProtectState = 0;
  if (([v8 isStashed] & 1) != 0 || !v4)
  {
    v14 = SBLogSystemNotes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesInteractionManager dismissAnimated:completion:];
    }

    v7[2](v7);
    self->_cornerDismissState = 0;
    [(BSInvalidatable *)self->_edgeProtectStashAssertion invalidate];
    edgeProtectStashAssertion = self->_edgeProtectStashAssertion;
    self->_edgeProtectStashAssertion = 0;

    v13 = SBLogSystemNotes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SBSystemNotesInteractionManager dismissAnimated:completion:];
    }
  }

  else if (v8 && v9)
  {
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStartSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionDismiss"];
    self->_isDismissingNonInteractively = 1;
    v10 = self->_nonInteractiveDismissGenCount + 1;
    self->_nonInteractiveDismissGenCount = v10;
    v11 = SBLogSystemNotes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v25 = v16;
      v26 = 1024;
      v27 = v10;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture][%u][Begin] animated dismiss", buf, 0x12u);
    }

    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForSwipesFromCorners:[(SBSystemNotesInteractionManager *)self _cornersForAllSwipes] animated:1];
    [v8 setInteractionsEnabled:0];
    v12 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke;
    v22[3] = &unk_2783A8C18;
    v23 = v9;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_2;
    v17[3] = &unk_2783C3EC8;
    v17[4] = self;
    v20 = a2;
    v21 = v10;
    v18 = v8;
    v19 = v7;
    [v12 animateWithDuration:0 delay:v22 options:v17 animations:0.5 completion:0.0];

    v13 = v23;
  }

  else if (v8)
  {
    if (v9)
    {
      goto LABEL_13;
    }

    v13 = SBLogSystemNotes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBSystemNotesInteractionManager dismissAnimated:completion:];
    }
  }

  else
  {
    v13 = SBLogSystemNotes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBSystemNotesInteractionManager dismissAnimated:completion:];
    }
  }

LABEL_13:
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) view];
  [v3 setAlpha:0.0];
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogSystemNotes();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_2_cold_1();
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25;
  v6[3] = &unk_2783C3EA0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v3 performAfterInFlightAnimationsComplete:v6];
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25(uint64_t a1)
{
  v2 = SBLogSystemNotes();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25_cold_1();
  }

  v3 = (a1 + 32);
  [*(*(a1 + 32) + 8) interactionManager:*(a1 + 32) requestsStopSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionDismiss"];
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  if (*(v4 + 108) == 1 && *(a1 + 56) == *(v4 + 112))
  {
    *(v4 + 108) = 0;
    v4 = *v3;
  }

  [*(v4 + 152) invalidate];
  v5 = *(*v3 + 152);
  *(*v3 + 152) = 0;

  v6 = SBLogSystemNotes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25_cold_2();
  }
}

- (BOOL)canHandlePresentationRequests:(id *)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([(SBSystemNotesInteractionManager *)self _isSystemNotesForegroundActive])
  {
    v4 = +[SBSetupManager sharedInstance];
    v5 = [v4 isInSetupMode];

    if (v5)
    {
      if (a3)
      {
        v6 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CCA450];
        v17 = @"cannot handle presentation as we're in buddy";
        v7 = MEMORY[0x277CBEAC0];
        v8 = &v17;
        v9 = &v16;
LABEL_7:
        v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
        *a3 = [v6 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:7 userInfo:v10];
      }
    }

    else
    {
      v12 = +[SBLockScreenManager sharedInstance];
      v13 = [v12 isUILocked];

      if (!v13)
      {
        return 1;
      }

      if (a3)
      {
        v6 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277CCA450];
        v15 = @"cannot handle presentation as we're UI locked";
        v7 = MEMORY[0x277CBEAC0];
        v8 = &v15;
        v9 = &v14;
        goto LABEL_7;
      }
    }
  }

  else if (a3)
  {
    v6 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"cannot handle presentation as we're currently obscured";
    v7 = MEMORY[0x277CBEAC0];
    v8 = v19;
    v9 = &v18;
    goto LABEL_7;
  }

  return 0;
}

- (void)zStackParticipantDidChange:(id)a3
{
  if (![(SBSystemNotesInteractionManager *)self _isSystemNotesForegroundActive])
  {
    [(SBSystemNotesInteractionManager *)self _cancelGestureIfNecessary:self->_leftFingerSystemCornerGestureRecognizer reason:@"canceling system notes gesture as zStack has marked us as not foreground active"];
    [(SBSystemNotesInteractionManager *)self _cancelGestureIfNecessary:self->_rightFingerSystemCornerGestureRecognizer reason:@"canceling system notes gesture as zStack has marked us as not foreground active"];
    [(SBSystemNotesInteractionManager *)self _cancelGestureIfNecessary:self->_leftPencilSystemCornerGestureRecognizer reason:@"canceling system notes gesture as zStack has marked us as not foreground active"];
    rightPencilSystemCornerGestureRecognizer = self->_rightPencilSystemCornerGestureRecognizer;

    [(SBSystemNotesInteractionManager *)self _cancelGestureIfNecessary:rightPencilSystemCornerGestureRecognizer reason:@"canceling system notes gesture as zStack has marked us as not foreground active"];
  }
}

- (void)contentContainerAdapter:(id)a3 willUpdateStashState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v9 = v6;
    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
  }

  else
  {
    edgeProtectStashAssertion = self->_edgeProtectStashAssertion;
    if (!edgeProtectStashAssertion)
    {
      goto LABEL_8;
    }

    v9 = v6;
    ++self->_edgeProtectGenCount;
    if (self->_edgeProtectState == 2)
    {
      [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
      edgeProtectStashAssertion = self->_edgeProtectStashAssertion;
    }

    self->_edgeProtectState = 0;
    [(BSInvalidatable *)edgeProtectStashAssertion invalidate];
    v8 = self->_edgeProtectStashAssertion;
    self->_edgeProtectStashAssertion = 0;
  }

  v6 = v9;
LABEL_8:
}

- (void)contentContainerAdapterDidEndInteraction:(id)a3 targetWindowScene:(id)a4
{
  cornerDismissState = self->_cornerDismissState;
  if ([(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self, a4]== 1)
  {
    v6 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
    v7 = [v6 isStashed];

    if ((v7 & 1) == 0 && cornerDismissState <= 1)
    {
LABEL_4:
      positionRegionsComposer = self->_positionRegionsComposer;

      [(SBSystemNotesPositionHyperregionComposer *)positionRegionsComposer setupForStandardBehavior];
      return;
    }
  }

  else if (cornerDismissState < 2)
  {
    goto LABEL_4;
  }

  delegate = self->_delegate;

  [(SBSystemNotesInteractionManagerDelegate *)delegate interactionManager:self requestsNotesDismissalForSource:cornerDismissState > 1 animated:cornerDismissState < 2];
}

- (void)contentContainerAdapterPanGestureDidEnd:(id)a3
{
  if ([(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self]== 1)
  {
    v6 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
    if ([v6 isStashed])
    {
    }

    else
    {
      panGestureIsSystemGesture = self->_panGestureIsSystemGesture;

      if (panGestureIsSystemGesture)
      {
        delegate = self->_delegate;

        [(SBSystemNotesInteractionManagerDelegate *)delegate interactionManager:self requestsNotesDismissalForSource:2 animated:1];
      }
    }
  }
}

- (void)contentContainerAdapter:(id)a3 willBeginInteractionWithGestureRecognizer:(id)a4
{
  v8 = a3;
  v6 = a4;
  ++self->_edgeProtectGenCount;
  if (self->_edgeProtectState == 2)
  {
    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
  }

  self->_edgeProtectState = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_initialInteractorPanPresentationMode = [(SBSystemNotesInteractionManager *)self _presentationModeForGestureBegin];
    v7 = self->_leftFingerSystemCornerGestureRecognizer == v6 || self->_rightFingerSystemCornerGestureRecognizer == v6 || self->_leftPencilSystemCornerGestureRecognizer == v6 || self->_rightPencilSystemCornerGestureRecognizer == v6;
    self->_panGestureIsSystemGesture = v7;
  }
}

- (void)contentContainerAdapter:(id)a3 handleDestructionRequestForSceneHandle:(id)a4
{
  dataSource = self->_dataSource;
  v6 = a4;
  v7 = [(SBSystemNotesInteractionManagerDataSource *)dataSource presentedContainerViewControllerForInteractionManager:self];
  v8 = [v7 hostedAppSceneHandle];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    delegate = self->_delegate;

    [(SBSystemNotesInteractionManagerDelegate *)delegate interactionManager:self requestsNotesDismissalForSource:4 animated:1];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 shouldReceiveTouch:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemNotesInteractionManager *)self _cornerForGestureRecognizer:v4];
  v6 = [(SBSystemNotesInteractionManager *)self _touchTypeForGestureRecognizer:v4];

  v7 = +[SBDefaults localDefaults];
  v8 = [v7 cornerGestureDefaults];

  v9 = [v8 bottomLeftCornerGestureFeature] == 1 && (v6 & ~objc_msgSend(v8, "bottomLeftCornerGestureTouchTypes")) == 0;
  v10 = [v8 bottomRightCornerGestureFeature] == 1 && (v6 & ~objc_msgSend(v8, "bottomRightCornerGestureTouchTypes")) == 0;
  if (v5 == 8)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v5 != 4)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_22;
  }

  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
  {
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_16:
  v12 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource launchApplicationIdentityForInteractionManager:self];
  v13 = [SBApp privacyPreflightController];
  v14 = [v13 requiresPreflightForApplication:v12];

  v15 = (v14 & 1) == 0 && [(SBSystemNotesInteractionManager *)self canHandlePresentationRequests:0];
LABEL_22:

  return v15;
}

- (unint64_t)_cornersForAllSwipes
{
  v3 = [(SBSystemNotesInteractionManager *)self _cornersForTouchType:0];
  v4 = [(SBSystemNotesInteractionManager *)self _cornersForTouchType:2]| v3;
  if (!v4)
  {
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 cornerGestureDefaults];

    v7 = [v6 bottomLeftCornerGestureTouchTypes];
    if ([v6 bottomRightCornerGestureTouchTypes])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1) != v9)
    {
      v4 = 4;
    }

    else
    {
      v4 = 8;
    }
  }

  return v4;
}

- (unint64_t)_cornersForTouchType:(int64_t)a3
{
  if (a3)
  {
    v3 = 2 * (a3 == 2);
  }

  else
  {
    v3 = 1;
  }

  v4 = +[SBDefaults localDefaults];
  v5 = [v4 cornerGestureDefaults];

  if ([v5 bottomLeftCornerGestureFeature] != 1 || (~objc_msgSend(v5, "bottomLeftCornerGestureTouchTypes") & v3) != 0)
  {
    v6 = 0;
  }

  else if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  if ([v5 bottomRightCornerGestureFeature] == 1 && (~objc_msgSend(v5, "bottomRightCornerGestureTouchTypes") & v3) == 0)
  {
    v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v8 = 8;
    if (v7 == 1)
    {
      v8 = 4;
    }

    v6 |= v8;
  }

  return v6;
}

- (double)_panDistanceBeforeScalingForGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 panDistanceBeforeScaling];
  v5 = v4;

  return v5;
}

- (double)_cornerDistanceBeforeScalingForDismissGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 cornerDistanceBeforeScalingForDismiss];
  v5 = v4;

  return v5;
}

- (double)_panInitialThumbnailScaleForGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 panInitialThumbnailScale];
  v5 = v4;

  return v5;
}

- (double)_panDistancePer1xScalingForGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 panDistancePer1xScaling];
  v5 = v4;

  return v5;
}

- (double)_scaleThresholdBeforeFullSizeForGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 scaleThresholdBeforeFullSize];
  v5 = v4;

  return v5;
}

- (double)_absoluteScaleForInteractiveSystemNotesGesture:(id)a3
{
  systemGestureManager = self->_systemGestureManager;
  v5 = a3;
  v6 = [(SBSystemGestureManager *)systemGestureManager windowForSystemGestures];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [(SBSystemNotesInteractionManager *)self _orientedLocationForReferenceLocation:v8, v10];
  [(SBSystemNotesInteractionManager *)self _pointForGestureCorner:[(SBSystemNotesInteractionManager *)self _cornerForGestureRecognizer:v5]];
  UIDistanceBetweenPoints();
  v12 = v11;
  [(SBSystemNotesInteractionManager *)self _panDistanceBeforeScalingForGestureRecognizer:v5];
  v14 = v12 - v13;
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  [(SBSystemNotesInteractionManager *)self _panDistancePer1xScalingForGestureRecognizer:v5];
  v17 = v15 / v16;
  [(SBSystemNotesInteractionManager *)self _panInitialThumbnailScaleForGestureRecognizer:v5];
  v19 = v18;

  return v19 + v17;
}

- (double)_absoluteScaleThresholdBeforeFullSizeForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = SBSystemNotesDefaultWindowSize();
  v6 = v5 / SBSystemNotesThumbnailSize();
  [(SBSystemNotesInteractionManager *)self _scaleThresholdBeforeFullSizeForGestureRecognizer:v4];
  v8 = v7;

  return v8 * v6;
}

- (double)_flickVelocityThresholdForGestureRecognizer:(id)a3
{
  v3 = [(SBSystemNotesInteractionManager *)self _gestureSettingsForRecognizer:a3];
  [v3 flickVelocityThreshold];
  v5 = v4;

  return v5;
}

- (void)_setupPencilGestureRecognizers
{
  v7 = [(SBSystemNotesSettings *)self->_pipSettings pencilSwipeGestureTuningSettings];
  v3 = [SBCornerPencilPanGestureRecognizer interactiveCornerPanGestureRecognizerWithSettings:v7 corner:4 target:self action:sel__handleInteractiveSystemNotesGesture_];
  leftPencilSystemCornerGestureRecognizer = self->_leftPencilSystemCornerGestureRecognizer;
  self->_leftPencilSystemCornerGestureRecognizer = v3;

  [(SBCornerPencilPanGestureRecognizer *)self->_leftPencilSystemCornerGestureRecognizer setDelegate:self];
  [(SBCornerPencilPanGestureRecognizer *)self->_leftPencilSystemCornerGestureRecognizer setName:@"SBSystemNotesManager.pencil.corner.left"];
  [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:self->_leftPencilSystemCornerGestureRecognizer withType:120];
  v5 = [SBCornerPencilPanGestureRecognizer interactiveCornerPanGestureRecognizerWithSettings:v7 corner:8 target:self action:sel__handleInteractiveSystemNotesGesture_];
  rightPencilSystemCornerGestureRecognizer = self->_rightPencilSystemCornerGestureRecognizer;
  self->_rightPencilSystemCornerGestureRecognizer = v5;

  [(SBCornerPencilPanGestureRecognizer *)self->_rightPencilSystemCornerGestureRecognizer setDelegate:self];
  [(SBCornerPencilPanGestureRecognizer *)self->_rightPencilSystemCornerGestureRecognizer setName:@"SBSystemNotesManager.pencil.corner.right"];
  [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:self->_rightPencilSystemCornerGestureRecognizer withType:121];
}

- (void)_setupFingerGestureRecognizers
{
  v9 = [(SBSystemNotesSettings *)self->_pipSettings fingerSwipeGestureTuningSettings];
  v3 = [[SBCornerFingerGestureClassifier alloc] initWithSettings:v9];
  v4 = [[SBCornerFingerPanGestureRecognizer alloc] initWithTarget:self action:sel__handleInteractiveSystemNotesGesture_ corner:4 classifier:v3];
  leftFingerSystemCornerGestureRecognizer = self->_leftFingerSystemCornerGestureRecognizer;
  self->_leftFingerSystemCornerGestureRecognizer = v4;

  [(SBCornerFingerPanGestureRecognizer *)self->_leftFingerSystemCornerGestureRecognizer setDelegate:self];
  [(SBCornerFingerPanGestureRecognizer *)self->_leftFingerSystemCornerGestureRecognizer setName:@"SBSystemNotesManager.finger.corner.left"];
  v6 = [[SBCornerFingerGestureClassifier alloc] initWithSettings:v9];
  v7 = [[SBCornerFingerPanGestureRecognizer alloc] initWithTarget:self action:sel__handleInteractiveSystemNotesGesture_ corner:8 classifier:v6];
  rightFingerSystemCornerGestureRecognizer = self->_rightFingerSystemCornerGestureRecognizer;
  self->_rightFingerSystemCornerGestureRecognizer = v7;

  [(SBCornerFingerPanGestureRecognizer *)self->_rightFingerSystemCornerGestureRecognizer setDelegate:self];
  [(SBCornerFingerPanGestureRecognizer *)self->_rightFingerSystemCornerGestureRecognizer setName:@"SBSystemNotesManager.finger.corner.right"];
}

- (void)_updateFingerGestureEnablement
{
  v3 = [SBApp windowSceneManager];
  v10 = [v3 embeddedDisplayWindowScene];

  v4 = [v10 switcherController];
  v5 = [v4 windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  v7 = [(SBCornerFingerPanGestureRecognizer *)self->_rightFingerSystemCornerGestureRecognizer view];

  if (v6)
  {
    if (v7)
    {
      [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:self->_rightFingerSystemCornerGestureRecognizer];
    }

    v8 = [(SBCornerFingerPanGestureRecognizer *)self->_leftFingerSystemCornerGestureRecognizer view];

    if (v8)
    {
      [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:self->_leftFingerSystemCornerGestureRecognizer];
    }
  }

  else
  {
    if (!v7)
    {
      [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:self->_rightFingerSystemCornerGestureRecognizer withType:123];
    }

    v9 = [(SBCornerFingerPanGestureRecognizer *)self->_leftFingerSystemCornerGestureRecognizer view];

    if (!v9)
    {
      [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:self->_leftFingerSystemCornerGestureRecognizer withType:122];
    }
  }
}

- (void)_updateStashPadding
{
  v3 = [(SBSystemNotesInteractionManager *)self _cornersForTouchType:0];
  v4 = [(SBSystemNotesInteractionManager *)self _cornersForTouchType:2];
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v22 = [(SBSystemNotesSettings *)self->_pipSettings fingerSwipeGestureTuningSettings];
  [v22 maximumActiveDistance:1];
  v10 = v9;
  [v22 maximumActiveDistance:0];
  v12 = ceil(fmax(v10, v11) * SBMainScreenPointsPerMillimeter());
  v13 = [(SBSystemNotesSettings *)self->_pipSettings pencilSwipeGestureTuningSettings];
  [v13 cornerVerticalEdgeLength];
  v15 = v14;

  v16 = fmax(v15, v12);
  if (v3)
  {
    v17 = v12;
  }

  else
  {
    v17 = v8;
  }

  if (!v3)
  {
    v16 = v15;
  }

  if (v4)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = [SBApp windowSceneManager];
  v20 = [v19 embeddedDisplayWindowScene];

  v21 = [v20 pictureInPictureManager];
  [v21 applyStashedPictureInPicturePadding:1 forPIPSource:{v5, v6, v18, v7}];
}

- (void)_cancelGestureIfNecessary:(id)a3 reason:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 state] - 1) <= 1)
  {
    v5 = SBLogSystemNotes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
    }

    [v4 setState:4];
  }
}

- (void)_updateFailureRequirements
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SBSystemNotesInteractionManager__updateFailureRequirements__block_invoke;
  v4[3] = &unk_2783C3EF0;
  v4[4] = self;
  v3 = MEMORY[0x223D6F7F0](v4, a2);
  (v3)[2](v3, self->_leftFingerSystemCornerGestureRecognizer);
  (v3)[2](v3, self->_rightFingerSystemCornerGestureRecognizer);
}

void __61__SBSystemNotesInteractionManager__updateFailureRequirements__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 80);
  v4 = a2;
  SBCornerFingerGestureUpdateFailureRequirements(v4, v3);
  [*(*(a1 + 32) + 80) gestureRecognizerOfType:120 shouldBeRequiredToFailByGestureRecognizer:v4];
  [*(*(a1 + 32) + 80) gestureRecognizerOfType:121 shouldBeRequiredToFailByGestureRecognizer:v4];
}

- (CGPoint)_orientedLocationForReferenceLocation:(CGPoint)a3
{
  [SBApp activeInterfaceOrientation];
  v4 = [(SBSystemGestureManager *)self->_systemGestureManager windowForSystemGestures];
  [v4 bounds];

  _UIWindowConvertPointFromOrientationToOrientation();
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_pointForGestureCorner:(unint64_t)a3
{
  [SBApp activeInterfaceOrientation];
  v5 = [(SBSystemGestureManager *)self->_systemGestureManager windowForSystemGestures];
  [v5 bounds];

  _UIWindowConvertRectFromOrientationToOrientation();
  v8 = v7;
  if (a3 == 8 || (v9 = 0.0, a3 == 2))
  {
    v9 = v6;
  }

  result.y = v8;
  result.x = v9;
  return result;
}

- (void)_handleInteractiveSystemNotesGesture:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = [(SBSystemNotesInteractionManager *)self _touchTypeForGestureRecognizer:v4];
  v7 = +[SBDefaults localDefaults];
  v8 = [v7 cornerGestureDefaults];

  if (([v8 cornerGestureRequiresEducation] & v6) != 0)
  {
    if (v5 == 1)
    {
      v9 = [(SBSystemNotesInteractionManager *)self _cornerForGestureRecognizer:v4];
      v10 = SBLogSystemGesture();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = v9;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "System notes gesture recognized for corner %lu that requires education", &v17, 0xCu);
      }

      if (v9 == 8)
      {
        v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v12 = 10;
        v13 = 8;
      }

      else
      {
        if (v9 != 4)
        {
          v15 = 0;
LABEL_20:
          v16 = [SBApp productivityGestureEducationController];
          [v16 gestureActivatedForType:v15];

          goto LABEL_22;
        }

        v11 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v12 = 8;
        v13 = 10;
      }

      if (v11)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      goto LABEL_20;
    }
  }

  else
  {
    edgeProtectState = self->_edgeProtectState;
    if (edgeProtectState != 3)
    {
      if (v5 == 1)
      {
        self->_initialInteractorPanPresentationMode = [(SBSystemNotesInteractionManager *)self _presentationModeForGestureBegin];
        edgeProtectState = self->_edgeProtectState;
        if (!edgeProtectState)
        {
          edgeProtectState = [(SBSystemNotesInteractionManager *)self _shouldEdgeProtectGestureRecognizer:v4];
          self->_edgeProtectState = edgeProtectState;
        }
      }

      if (!self->_initialInteractorPanPresentationMode || edgeProtectState)
      {
        [(SBSystemNotesInteractionManager *)self _handleNonInteractiveSwipeInGesture:v4];
      }

      else
      {
        [(SBSystemNotesInteractionManager *)self _handleInteractiveSwipeInGesture:v4];
      }
    }
  }

LABEL_22:
}

- (void)_handleInteractiveSwipeInGesture:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedPIPContentViewControllerForInteractionManager:self];
  v6 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
  v7 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
  v8 = [(SBCornerFingerPanGestureRecognizer *)v4 state];
  if (v8 == 2)
  {
    goto LABEL_2;
  }

  v10 = v8;
  v11 = SBLogSystemNotes();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = _SBFLoggingMethodProem();
    v15 = SBSystemGestureRecognizerStateDescription(v10);
    v26 = 138543618;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture] state: %{public}@", &v26, 0x16u);
  }

  if (v10 - 4 < 2)
  {
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStopSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionGesture"];
    v13 = [v6 interactionController];
    [v13 handleExternalPanGesture:v4];

    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsNotesDismissalForSource:2 animated:1];
    goto LABEL_27;
  }

  if (v10 == 3)
  {
    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForInteractiveCornerGestureEnd];
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStopSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionGesture"];
LABEL_2:
    v9 = [v6 interactionController];
    [v9 handleExternalPanGesture:v4];

    goto LABEL_27;
  }

  if (v10 == 1)
  {
    if (v7 != 1)
    {
      if (self->_leftFingerSystemCornerGestureRecognizer == v4)
      {
        v12 = 5;
      }

      else if (self->_rightFingerSystemCornerGestureRecognizer == v4)
      {
        v12 = 5;
      }

      else
      {
        v12 = 4;
      }

      v16 = [SBSystemNotesPositionConfiguration alloc];
      if (self->_leftFingerSystemCornerGestureRecognizer == v4)
      {
        v17 = 1;
      }

      else if (self->_leftPencilSystemCornerGestureRecognizer == v4)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v18 = [(SBSystemNotesPositionConfiguration *)v16 initWithEdgeProtectEnabled:0 position:v17];
      v19 = [SBSystemNotesContentPresentationContext alloc];
      v20 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource launchBundleIDForInteractionManager:self];
      v21 = [(SBSystemNotesContentPresentationContext *)v19 initWithLaunchBundleID:v20 presentationMode:1 source:v12 positionConfiguration:v18];

      if (![(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsPresentationWithContext:v21])
      {
        [(SBCornerFingerPanGestureRecognizer *)v4 setState:4];

        goto LABEL_27;
      }

      v22 = SBLogSystemNotes();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemNotesInteractionManager _handleInteractiveSwipeInGesture:];
      }

      v23 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];

      v24 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedPIPContentViewControllerForInteractionManager:self];

      [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
      v6 = v23;
      v5 = v24;
    }

    v25 = [v6 interactionController];
    [v25 handleExternalPanGesture:v4];

    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForInteractiveCornerGesture];
    [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStartSuppressingKeyboardForReason:@"SBSystemNotesKeyboardSuppressionGesture"];
  }

LABEL_27:
}

- (void)_handleNonInteractiveSwipeInGesture:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBCornerFingerPanGestureRecognizer *)v4 state];
  if (v5 != 2)
  {
    v6 = v5;
    v7 = SBLogSystemNotes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = _SBFLoggingMethodProem();
      v16 = SBSystemGestureRecognizerStateDescription(v6);
      *buf = 138543618;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture] state: %{public}@", buf, 0x16u);
    }

    if (v6 == 3)
    {
      [(SBSystemNotesInteractionManager *)self _absoluteScaleForInteractiveSystemNotesGesture:v4];
      v9 = v8;
      [(SBSystemNotesInteractionManager *)self _absoluteScaleThresholdBeforeFullSizeForGestureRecognizer:v4];
      if (v9 > v10 || [(SBSystemNotesInteractionManager *)self _panRecognizerOverFlickThreshold:v4])
      {
        leftFingerSystemCornerGestureRecognizer = self->_leftFingerSystemCornerGestureRecognizer;
        if (leftFingerSystemCornerGestureRecognizer == v4)
        {
          v12 = 5;
        }

        else if (self->_rightFingerSystemCornerGestureRecognizer == v4)
        {
          v12 = 5;
        }

        else
        {
          v12 = 4;
        }

        if (self->_edgeProtectState)
        {
          if (self->_rightFingerSystemCornerGestureRecognizer != v4 && self->_rightPencilSystemCornerGestureRecognizer != v4 && (leftFingerSystemCornerGestureRecognizer == v4 || self->_leftPencilSystemCornerGestureRecognizer == v4))
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          v14 = [[SBSystemNotesPositionConfiguration alloc] initWithEdgeProtectEnabled:1 position:v13];
        }

        else
        {
          v14 = 0;
        }

        v17 = [SBSystemNotesContentPresentationContext alloc];
        v18 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource launchBundleIDForInteractionManager:self];
        v19 = [(SBSystemNotesContentPresentationContext *)v17 initWithLaunchBundleID:v18 presentationMode:0 source:v12 positionConfiguration:v14];

        if (self->_edgeProtectState == 1)
        {
          v20 = [(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsStashAssertionForReason:@"edgelord"];
          edgeProtectStashAssertion = self->_edgeProtectStashAssertion;
          self->_edgeProtectStashAssertion = v20;
        }

        if ([(SBSystemNotesInteractionManagerDelegate *)self->_delegate interactionManager:self requestsPresentationWithContext:v19])
        {
          v22 = self->_edgeProtectGenCount + 1;
          self->_edgeProtectGenCount = v22;
          edgeProtectState = self->_edgeProtectState;
          if (edgeProtectState)
          {
            if (edgeProtectState == 1)
            {
              self->_edgeProtectState = 2;
              v24 = dispatch_time(0, 2000000000);
              v26[0] = MEMORY[0x277D85DD0];
              v26[1] = 3221225472;
              v26[2] = __71__SBSystemNotesInteractionManager__handleNonInteractiveSwipeInGesture___block_invoke;
              v26[3] = &unk_2783AC098;
              v27 = v22;
              v26[4] = self;
              dispatch_after(v24, MEMORY[0x277D85CD0], v26);
              [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
              [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForEdgeProtectCornerSwipe];
            }
          }

          else
          {
            [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForSwipesFromCorners:[(SBSystemNotesInteractionManager *)self _cornersForAllSwipes] animated:0];
            [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
          }
        }

        else
        {
          self->_edgeProtectState = 0;
          [(BSInvalidatable *)self->_edgeProtectStashAssertion invalidate];
          v25 = self->_edgeProtectStashAssertion;
          self->_edgeProtectStashAssertion = 0;
        }
      }
    }
  }
}

uint64_t __71__SBSystemNotesInteractionManager__handleNonInteractiveSwipeInGesture___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == *(v1 + 144) && *(v1 + 136) == 2)
  {
    *(v1 + 136) = 3;
    return [*(*(result + 32) + 8) interactionManager:*(result + 32) requestsNotesDismissalForSource:3 animated:1];
  }

  return result;
}

- (int64_t)_presentationModeForGestureBegin
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
  v4 = v3;
  if (v3 == -1 || self->_cornerDismissState > 1 || (v5 = v3, self->_isDismissingNonInteractively))
  {
    v5 = 1;
  }

  v6 = SBLogSystemNotes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = _SBFLoggingMethodProem();
    cornerDismissState = self->_cornerDismissState;
    isDismissingNonInteractively = self->_isDismissingNonInteractively;
    v11 = 138544386;
    v12 = v8;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = cornerDismissState;
    v19 = 1024;
    v20 = isDismissingNonInteractively;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@][Gesture] result: %lu {currentPresentationMode: %lu; cornerDismissState: %lu; isDismissingNonInteractively: %{BOOL}u}", &v11, 0x30u);
  }

  return v5;
}

- (BOOL)_shouldEdgeProtectGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self]== -1)
  {
    v6 = [SBApp windowSceneManager];
    v7 = [v6 embeddedDisplayWindowScene];

    v8 = [v7 switcherController];
    v9 = objc_opt_class();
    v10 = v4;
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

    v13 = [v8 layoutStatePrimaryElement];
    v14 = [v13 workspaceEntity];
    v15 = [v14 applicationSceneEntity];
    v16 = [v15 sceneHandle];
    v17 = [v16 screenEdgesDeferringSystemGestures];

    v18 = [v12 edges];
    v5 = (v18 & v17) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultPositionHyperregionComposers
{
  v14[2] = *MEMORY[0x277D85DE8];
  [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer invalidate];
  positionRegionsComposer = self->_positionRegionsComposer;
  self->_positionRegionsComposer = 0;

  v4 = objc_alloc_init(SBPIPDefaultPositionHyperregionComposer);
  v5 = objc_alloc_init(SBSystemNotesPositionHyperregionComposer);
  v6 = self->_positionRegionsComposer;
  self->_positionRegionsComposer = v5;

  if ([(SBSystemNotesInteractionManager *)self _cornersForTouchType:0])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(SBSystemNotesInteractionManager *)self _cornersForTouchType:2]== 0;
  }

  edgeProtectState = self->_edgeProtectState;
  if (edgeProtectState != 1 && !v7)
  {
    v9 = self->_positionRegionsComposer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__SBSystemNotesInteractionManager_defaultPositionHyperregionComposers__block_invoke;
    v13[3] = &unk_2783A8C18;
    v13[4] = self;
    [(SBSystemNotesPositionHyperregionComposer *)v9 performActionsWithTransientStateChange:v13];
    edgeProtectState = self->_edgeProtectState;
  }

  if (edgeProtectState == 1)
  {
    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForEdgeProtectCornerSwipe];
  }

  v10 = self->_positionRegionsComposer;
  v14[0] = v4;
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v11;
}

uint64_t __70__SBSystemNotesInteractionManager_defaultPositionHyperregionComposers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  v3 = [v1 _cornersForAllSwipes];

  return [v2 setupForSwipesFromCorners:v3 animated:0];
}

- (void)interactionController:(id)a3 updateScaleInteractor:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6
{
  if (self->_initialInteractorPanPresentationMode == 1)
  {
    [(SBSystemNotesInteractionManager *)self _interactionController:a3 updateScaleInteractorForSwipeToPresent:a4 pipSize:a6 forPanGesture:a5.width, a5.height];
  }

  else
  {
    [(SBSystemNotesInteractionManager *)self _interactionController:a3 updateScaleInteractorForSwipeToDismiss:a4 pipSize:a6 forPanGesture:a5.width, a5.height];
  }
}

- (UIEdgeInsets)interactionController:(id)a3 edgeInsetsForWindowScene:(id)a4
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)interactionController:(id)a3 stashedPaddingForWindowScene:(id)a4
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)interactionControllerConnectedWindowScenes:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
  v4 = [v3 _sbWindowScene];
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)_interactionController:(id)a3 updateScaleInteractorForSwipeToPresent:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource currentPresentationModeForInteractionManager:self];
  v13 = [v11 state];
  if ((v13 - 3) >= 3)
  {
    if (v13 == 2)
    {
      [(SBSystemNotesInteractionManager *)self _absoluteScaleThresholdBeforeFullSizeForGestureRecognizer:v11];
      v17 = v16;
      [(SBSystemNotesInteractionManager *)self _absoluteScaleForInteractiveSystemNotesGesture:v11];
      if (v18 <= v17)
      {
        v20 = v18;
        if (v12 != 1 && v18 <= v17 && !v12)
        {
          [(SBSystemNotesInteractionManager *)self collapseAnimated:1];
        }
      }

      else
      {
        [v9 preferredScale];
        v20 = v19;
        if (v12 == 1)
        {
          [(SBSystemNotesInteractionManager *)self expandAnimated:1];
        }
      }

      [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForInteractiveCornerGesture];
      v21 = v20 + -1.0;
      [v10 _copyTranslation:&v21];
    }
  }

  else
  {
    v21 = 0.0;
    [v10 _copyTranslation:&v21];
    [v9 setPreferredNormalizedScale:1.0];
    if (v12 == 1)
    {
      v14 = [v9 targetView];
      [v14 bounds];
      if (v15 > SBSystemNotesThumbnailSize() * 1.5 || [(SBSystemNotesInteractionManager *)self _panRecognizerOverFlickThreshold:v11])
      {
        [(SBSystemNotesInteractionManager *)self expandAnimated:1];
      }
    }
  }
}

- (CGPoint)_convertReferenceVelocity:(CGPoint)a3 toOrientation:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if (a4 > 2)
  {
    v6 = -a3.y;
    v7 = -x;
    if (a4 == 3)
    {
      v8 = y;
    }

    else
    {
      v8 = x;
    }

    if (a4 != 3)
    {
      v7 = y;
    }

    if (a4 == 4)
    {
      y = x;
    }

    else
    {
      v6 = v8;
      y = v7;
    }
  }

  else if (a4)
  {
    v6 = -a3.x;
    if (a4 == 2)
    {
      y = -a3.y;
    }

    else
    {
      v6 = x;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SBSystemNotesInteractionManager.m" lineNumber:930 description:@"dealing with unknown orientation"];

    v6 = x;
  }

  v12 = y;
  result.y = v12;
  result.x = v6;
  return result;
}

- (unint64_t)_cornerForGestureRecognizer:(id)a3
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

  v8 = [v7 corner];
  if (!v8)
  {
    v9 = objc_opt_class();
    v10 = v5;
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

    v8 = [v12 corner];
  }

  return v8;
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
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = v5;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }
    }

    v6 = v7 != 0;
  }

  return v6;
}

- (BOOL)_panRecognizerOverFlickThreshold:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSystemNotesInteractionManager *)self _cornerForGestureRecognizer:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [(SBSystemGestureManager *)self->_systemGestureManager windowForSystemGestures];
    [v4 velocityInView:v7];
    v9 = v8;
    v11 = v10;

    -[SBSystemNotesInteractionManager _convertReferenceVelocity:toOrientation:](self, "_convertReferenceVelocity:toOrientation:", [SBApp activeInterfaceOrientation], v9, v11);
    v14 = v13 * dbl_21F8A8A80[v6 == 4] * 0.5 + v12 * -1.41421356 * 0.5;
    [(SBSystemNotesInteractionManager *)self _flickVelocityThresholdForGestureRecognizer:v4];
    v16 = v14 > v15;
  }

  else
  {
    v17 = SBLogSystemNotes();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = _SBFLoggingMethodProem();
      v20 = 138543618;
      v21 = v19;
      v22 = 2114;
      v23 = v4;
      _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "%{public}@ unexpected recognizer type: %{public}@", &v20, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_setupForInteractiveDismissal
{
  if (_setupForInteractiveDismissal_onceToken != -1)
  {
    [SBSystemNotesInteractionManager _setupForInteractiveDismissal];
  }

  self->_cornerDismissState = 1;
  positionRegionsComposer = self->_positionRegionsComposer;
  v4 = *&_setupForInteractiveDismissal___toSize_0;
  v5 = *&_setupForInteractiveDismissal___toSize_1;

  [(SBSystemNotesPositionHyperregionComposer *)positionRegionsComposer setupForInteractiveDismissalToSize:v4, v5];
}

void __64__SBSystemNotesInteractionManager__setupForInteractiveDismissal__block_invoke()
{
  v3 = [SBPIPContentViewLayoutMetrics systemNotesMetricsForPresentationMode:1];
  v0 = [[SBPIPContentViewLayoutSettings alloc] initWithPlatformMetrics:v3 contentSize:SBSystemNotesThumbnailSize()];
  [(SBPIPContentViewLayoutSettings *)v0 minimumPossibleContentViewSizeForAspectRatio:SBSystemNotesThumbnailSize()];
  _setupForInteractiveDismissal___toSize_0 = v1;
  _setupForInteractiveDismissal___toSize_1 = v2;
}

- (void)_interactionController:(id)a3 updateScaleInteractorForSwipeToDismiss:(id)a4 pipSize:(CGSize)a5 forPanGesture:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v11 state];
  if ((v12 - 3) >= 3)
  {
    if (v12 != 2 || ([v9 isStashed] & 1) != 0)
    {
      goto LABEL_42;
    }

    if ([v9 isPinching])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v9 isRotating];
    }

    v17 = [(SBSystemGestureManager *)self->_systemGestureManager windowForSystemGestures];
    [v11 locationInView:v17];
    v19 = v18;
    v21 = v20;

    [(SBSystemNotesInteractionManager *)self _orientedLocationForReferenceLocation:v19, v21];
    v23 = v22;
    v25 = v24;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0x47EFFFFFE0000000;
    v26 = [(SBSystemNotesInteractionManager *)self _cornersForAllSwipes];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v41 = __119__SBSystemNotesInteractionManager__interactionController_updateScaleInteractorForSwipeToDismiss_pipSize_forPanGesture___block_invoke;
    v42 = &unk_2783C3F18;
    v45 = v23;
    v46 = v25;
    v43 = self;
    v44 = &v47;
    v27 = v40;
    if (v26)
    {
      v37 = v14;
      v28 = 0;
      LOBYTE(v39) = 0;
      v29 = vcnt_s8(v26);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v29.i32[0];
      do
      {
        if (((1 << v28) & *&v26) != 0)
        {
          (v41)(v27);
          --v30;
        }

        if (v28 > 0x3E)
        {
          break;
        }

        ++v28;
      }

      while (v30 > 0);
      v14 = v37;
    }

    if (v14)
    {
      v31 = 0;
    }

    else
    {
      v32 = v48[3];
      [(SBSystemNotesInteractionManager *)self _cornerDistanceBeforeScalingForDismissGestureRecognizer:v11];
      v31 = v32 < v33;
      v39 = 0.0;
      if (v32 < v33)
      {
        [(SBSystemNotesInteractionManager *)self _cornerDistanceBeforeScalingForDismissGestureRecognizer:v11];
        v39 = (v34 - v48[3]) / -50.0;
      }

      [v10 _copyTranslation:&v39];
    }

    v35 = v48[3];
    cornerDismissState = self->_cornerDismissState;
    switch(cornerDismissState)
    {
      case 2uLL:
        if (!v14)
        {
          if (v35 >= 100.0)
          {
LABEL_40:
            [(SBSystemNotesInteractionManager *)self _setupForInteractiveDismissal];
            goto LABEL_41;
          }

          goto LABEL_41;
        }

        break;
      case 1uLL:
        if ((v14 & 1) == 0)
        {
          if (v35 < 100.0)
          {
            self->_cornerDismissState = 2;
            [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForSwipesFromCorners:[(SBSystemNotesInteractionManager *)self _cornersForAllSwipes] animated:1];
          }

          goto LABEL_41;
        }

        break;
      case 0uLL:
        if ((v14 & 1) == 0)
        {
          if (!v31)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      default:
LABEL_41:
        _Block_object_dispose(&v47, 8);
        goto LABEL_42;
    }

    self->_cornerDismissState = 0;
LABEL_38:
    [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
    goto LABEL_41;
  }

  if (([v9 isStashed] & 1) == 0)
  {
    v13 = self->_cornerDismissState;
    switch(v13)
    {
      case 2uLL:
        self->_cornerDismissState = 3;
        v15 = self->_cornerDismissGenCount + 1;
        self->_cornerDismissGenCount = v15;
        v16 = [(SBSystemNotesInteractionManagerDataSource *)self->_dataSource presentedContainerViewControllerForInteractionManager:self];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __119__SBSystemNotesInteractionManager__interactionController_updateScaleInteractorForSwipeToDismiss_pipSize_forPanGesture___block_invoke_2;
        v38[3] = &unk_2783A8BC8;
        v38[4] = self;
        v38[5] = v15;
        [v16 performAfterInFlightAnimationsComplete:v38];

        break;
      case 1uLL:
        v47 = 0;
        [v10 _copyTranslation:&v47];
        self->_cornerDismissState = 0;
        [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForInteractiveCornerGestureEnd];
        break;
      case 0uLL:
        self->_cornerDismissState = 0;
        [(SBSystemNotesPositionHyperregionComposer *)self->_positionRegionsComposer setupForStandardBehavior];
        break;
    }
  }

LABEL_42:
}

uint64_t __119__SBSystemNotesInteractionManager__interactionController_updateScaleInteractorForSwipeToDismiss_pipSize_forPanGesture___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _pointForGestureCorner:a2];
  v7 = *(a1 + 48);
  if (a2 == 4)
  {
    if (v7 <= v5)
    {
      goto LABEL_7;
    }
  }

  else if (v7 >= v5)
  {
LABEL_7:
    v11 = *(*(a1 + 40) + 8);
    v10 = fmin(*(v11 + 24), 0.0);
    goto LABEL_8;
  }

  if (*(a1 + 56) >= v6)
  {
    goto LABEL_7;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  result = UIDistanceBetweenPoints();
  v10 = fmin(v8, v9);
  v11 = *(*(a1 + 40) + 8);
LABEL_8:
  *(v11 + 24) = v10;
  return result;
}

uint64_t __119__SBSystemNotesInteractionManager__interactionController_updateScaleInteractorForSwipeToDismiss_pipSize_forPanGesture___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 96) == 3 && *(result + 40) == *(v1 + 104))
  {
    *(v1 + 96) = 0;
    return [*(*(result + 32) + 8) interactionManager:*(result + 32) requestsNotesDismissalForSource:1 animated:0];
  }

  return result;
}

- (BOOL)_gestureIsActive
{
  if ([(SBSystemNotesInteractionManager *)self _gestureRecognizerIsActive:self->_leftPencilSystemCornerGestureRecognizer]|| [(SBSystemNotesInteractionManager *)self _gestureRecognizerIsActive:self->_rightPencilSystemCornerGestureRecognizer]|| [(SBSystemNotesInteractionManager *)self _gestureRecognizerIsActive:self->_leftFingerSystemCornerGestureRecognizer])
  {
    return 1;
  }

  rightFingerSystemCornerGestureRecognizer = self->_rightFingerSystemCornerGestureRecognizer;

  return [(SBSystemNotesInteractionManager *)self _gestureRecognizerIsActive:rightFingerSystemCornerGestureRecognizer];
}

- (unint64_t)startingPositionForExternalPresentationRequest
{
  v4 = [(SBSystemNotesInteractionManager *)self _cornersForAllSwipes];
  if (!v4)
  {
    [(SBSystemNotesInteractionManager *)a2 startingPositionForExternalPresentationRequest];
  }

  v5 = MEMORY[0x277D76620];
  v6 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v7 = -9;
  if (v6 == 1)
  {
    v7 = -5;
  }

  if (([*v5 userInterfaceLayoutDirection] == 1) != ((v7 | v4) == -1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)peepAnimated:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)dismissAnimated:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}@][Gesture] nil content!", v3, v4, v5, v6, v7);
}

- (void)dismissAnimated:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}@][Gesture] nil container!", v3, v4, v5, v6, v7);
}

- (void)dismissAnimated:completion:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_56();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)dismissAnimated:completion:.cold.4()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_56();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_2_cold_1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_56();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25_cold_1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_56();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __62__SBSystemNotesInteractionManager_dismissAnimated_completion___block_invoke_25_cold_2()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_56();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)_handleInteractiveSwipeInGesture:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_25();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)startingPositionForExternalPresentationRequest
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemNotesInteractionManager.m" lineNumber:1140 description:@"_cornersForAllSwipes should never return empty result"];
}

@end