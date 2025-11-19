@interface PGPictureInPictureRemoteObject
+ (void)tetherRemoteObject:(id)a3 toRemoteObject:(id)a4 mode:(int64_t)a5;
- (BOOL)_canTransitionToState:(int64_t)a3;
- (BOOL)_currentStateAllowsProcessAssertion;
- (BOOL)_isAppICS;
- (BOOL)_isAssociatedWithOtherObject:(id)a3;
- (BOOL)_isICSVideoCall;
- (BOOL)_isInActivitySession;
- (BOOL)_wantsProcessAssertion;
- (BOOL)canActivateUntetheredAlongsideOtherObject:(id)a3;
- (BOOL)canCancelPictureInPicture;
- (BOOL)canEndTwoStageStopPictureInPicture;
- (BOOL)canPreventOrSuspendRemoteObject:(id)a3;
- (BOOL)canStartBackgroundPIPForCurrentActivitySessionIdentifier;
- (BOOL)canStartMicroPIP;
- (BOOL)canTetherRemoteObjectAsMicroPIP:(id)a3;
- (BOOL)isStartingStoppingOrCancellingPictureInPicture;
- (BOOL)matchesSceneSessionIdentifier:(id)a3;
- (BOOL)shouldStartPictureInPictureEnteringBackground;
- (BOOL)supportsMicroPIP;
- (CGRect)initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding;
- (CGSize)preferredContentSize;
- (FBSDisplayConfiguration)sourceSceneSettingsDisplayConfiguration;
- (NSString)activitySessionIdentifier;
- (NSXPCConnection)connection;
- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate;
- (PGPictureInPictureRemoteObject)init;
- (PGPictureInPictureRemoteObject)initWithConnection:(id)a3 interruptionAssistant:(id)a4;
- (PGPictureInPictureRemoteObjectDelegate)delegate;
- (id)_invalidationTimerWithTimeout:(double)a3 block:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)sourceSceneSettingsInterfaceOrientation;
- (void)_acquireOrInvalidateProcessAssertionIfNeeded;
- (void)_finishCleanup;
- (void)_invalidateAllAssertions;
- (void)_invalidateForFailureToStartStopOrCancel;
- (void)_invalidateInterruptionBeganFinishTaskAssertion;
- (void)_notifyProxyOfStashedOrUnderLock:(BOOL)a3;
- (void)_queue_notifyProxyOfInterruptionBegan;
- (void)_queue_notifyProxyOfInterruptionEnded;
- (void)_setCurrentState:(int64_t)a3;
- (void)_setResolvedResourcesUsageReductionReasons:(unint64_t)a3;
- (void)_setUILockedResourcesUsageReductionReasons:(unint64_t)a3;
- (void)_stopTethering;
- (void)_updateActiveProxyAndViewControllerOfInterruptionIfNeeded;
- (void)_updatePreferredContentSize:(CGSize)a3 withCompletionHandler:(id)a4;
- (void)beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler:(id)a3;
- (void)cancel;
- (void)checkActivePictureInPictureCancellationPolicyWithCompletion:(id)a3;
- (void)cleanupWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)endTwoStageStopPictureInPictureWithCompletionBlock:(id)a3;
- (void)initializePictureInPictureWithControlsStyle:(int64_t)a3 preferredContentSize:(CGSize)a4 sceneIdentifier:(id)a5 affectsAppLifeCycle:(BOOL)a6 completionHandler:(id)a7;
- (void)invalidate;
- (void)pagingAccessorySetCurrentPage:(unint64_t)a3 numberOfPages:(unint64_t)a4;
- (void)pagingSkipByNumberOfPages:(int64_t)a3;
- (void)pictureInPictureInterruptionBeganWithReason:(int64_t)a3 attribution:(id)a4;
- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)a3 attribution:(id)a4;
- (void)pictureInPictureViewController:(id)a3 didReceiveCommand:(id)a4;
- (void)pictureInPictureViewController:(id)a3 didTransitionToStashed:(BOOL)a4;
- (void)pictureInPictureViewController:(id)a3 updateHostedWindowSize:(CGSize)a4 animationType:(int64_t)a5 initialSpringVelocity:(double)a6;
- (void)pictureInPictureViewControllerDidRequestCancel:(id)a3;
- (void)pictureInPictureViewControllerDidRequestStop:(id)a3;
- (void)pictureInPictureViewControllerHostedWindowSizeChangeBegan:(id)a3;
- (void)pictureInPictureViewControllerHostedWindowSizeChangeEnded:(id)a3;
- (void)resume;
- (void)rotateContentContainer:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)sendStartPictureInPictureTestAction;
- (void)setActivitySessionIdentifier:(id)a3;
- (void)setAnalyticsDelegate:(id)a3;
- (void)setCurrentResourcesUsageReductionReasons:(unint64_t)a3;
- (void)setExemptAttribution:(id)a3;
- (void)setExemptAttributionOverride:(id)a3;
- (void)setPictureInPicturePossible:(BOOL)a3;
- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)a3 completionHandler:(id)a4;
- (void)setSourceSceneSessionPersistentIdentifier:(id)a3;
- (void)setupStartAnimated:(BOOL)a3 hostedWindowHostingHandle:(id)a4 sceneSessionPersistentIdentifier:(id)a5 preferredContentSize:(CGSize)a6 initialInterfaceOrientation:(int64_t)a7 initialLayerFrame:(CGRect)a8 completionHandler:(id)a9;
- (void)setupStopAnimated:(BOOL)a3 needsApplicationActivation:(BOOL)a4 completionHandler:(id)a5;
- (void)startPictureInPictureAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)startPictureInPictureEnteringBackgroundAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)startPictureInPictureFromBackground;
- (void)stopPictureInPictureAndRestoreUserInterface;
- (void)stopPictureInPictureAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)stopPictureInPictureAnimated:(BOOL)a3 withFinalInterfaceOrientation:(int64_t)a4 finalLayerFrame:(CGRect)a5 completionHandler:(id)a6;
- (void)suspend;
- (void)updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding:(CGRect)a3 withCompletionHandler:(id)a4;
- (void)updateMenuItems:(id)a3;
- (void)updatePlaybackStateWithDiff:(id)a3;
- (void)updatePreferredContentSize:(CGSize)a3 withCompletionHandler:(id)a4;
- (void)updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation PGPictureInPictureRemoteObject

- (BOOL)matchesSceneSessionIdentifier:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(PGPictureInPictureRemoteObject *)self sourceSceneSessionPersistentIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (PGPictureInPictureRemoteObject)initWithConnection:(id)a3 interruptionAssistant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject initWithConnection:interruptionAssistant:];
  }

  v27.receiver = self;
  v27.super_class = PGPictureInPictureRemoteObject;
  v9 = [(PGPictureInPictureRemoteObject *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_connection, v6);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pegasus.PGPictureInPictureRemoteObject %p", v10];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v14 = dispatch_queue_create(v12, v13);
    queue = v10->_queue;
    v10->_queue = v14;

    v16 = +[PGPictureInPictureApplication pictureInPictureApplicationWithProcessIdentifier:](PGPictureInPictureApplication, "pictureInPictureApplicationWithProcessIdentifier:", [v6 processIdentifier]);
    pictureInPictureApplication = v10->_pictureInPictureApplication;
    v10->_pictureInPictureApplication = v16;

    v10->_currentState = 0;
    objc_initWeak(&location, v10);
    v18 = MEMORY[0x1E69E96A0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PictureInPicture - PGPictureInPictureRemoteObject - %p", v10];
    objc_copyWeak(&v25, &location);
    v20 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v10->_stateCaptureInvalidatable;
    v10->_stateCaptureInvalidatable = v20;

    objc_storeStrong(&v10->_interruptionAssistant, a4);
    interruptionAssistant = v10->_interruptionAssistant;
    v23 = [(PGPictureInPictureApplication *)v10->_pictureInPictureApplication bundleIdentifier];
    [(PGInterruptionAssistant *)interruptionAssistant setExemptAttribution:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

__CFString *__75__PGPictureInPictureRemoteObject_initWithConnection_interruptionAssistant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_1F394B800;
  }

  return v3;
}

- (PGPictureInPictureRemoteObject)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _PGLogMethodProem(self, 0);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithConnection:].", v5, v7}];

  return [(PGPictureInPictureRemoteObject *)self initWithConnection:0 interruptionAssistant:0];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@", v5, v6, v7, v8, v9);
}

uint64_t __41__PGPictureInPictureRemoteObject_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deactivateAnalyticsSessionIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 pictureInPictureDidDestroyAnalyticsSourceWithUUID:v3];
}

- (id)succinctDescription
{
  v2 = [(PGPictureInPictureRemoteObject *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PGPictureInPictureRemoteObject *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PGPictureInPictureRemoteObject *)self succinctDescriptionBuilder];
  v5 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication description];
  [v4 appendString:v5 withName:@"application"];

  [v4 appendString:self->_sourceSceneSessionPersistentIdentifier withName:@"sourceSceneSessionPersistentIdentifier"];
  v6 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
  [v4 appendString:v6 withName:@"activitySessionIdentifier"];

  v7 = PGStringFromPictureInPictureControlsStyle(self->_controlsStyle);
  [v4 appendString:v7 withName:@"controlsStyle"];

  v8 = [v4 appendBool:self->_isPictureInPicturePossible withName:@"isPictureInPicturePossible"];
  [v4 appendString:self->_exemptAttribution withName:@"exemptAttribution"];
  [v4 appendString:self->_exemptAttributionOverride withName:@"exemptAttributionOverride"];
  v9 = [v4 appendBool:-[PGPictureInPictureRemoteObject isInterrupted](self withName:{"isInterrupted"), @"isInterrupted"}];
  v10 = PGStringFromPictureInPictureRemoteObjectState(self->_currentState);
  [v4 appendString:v10 withName:@"currentState"];

  v11 = [v4 appendBool:self->_pictureInPictureShouldStartWhenEnteringBackground withName:@"pictureInPictureShouldStartWhenEnteringBackground"];
  v12 = [v4 appendBool:self->_stashed withName:@"stashed"];
  if (self->_tetheringRemoteObject)
  {
    v13 = 1;
  }

  else
  {
    v13 = self->_tetheredRemoteObject != 0;
  }

  v14 = [v4 appendBool:v13 withName:@"isInMicroPIP"];
  v15 = [v4 appendBool:-[PGPictureInPictureRemoteObject _isUnderLock](self withName:{"_isUnderLock"), @"isUnderLock"}];
  v16 = NSStringFromCGRect(self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding);
  [v4 appendString:v16 withName:@"initialLayerFrame"];

  return v4;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)setAnalyticsDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_analyticsDelegate, v4);
    analyticsSourceUUID = self->_analyticsSourceUUID;
    p_analyticsSourceUUID = &self->_analyticsSourceUUID;
    v8 = analyticsSourceUUID;
    v9 = [p_analyticsSourceUUID[18] bundleIdentifier];
    v10 = v9;
    v11 = @"com.apple.MissingBundleIdentifier";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    [(__CFString *)v12 isEqualToString:@"com.apple.InCallService"];
    if (!v8)
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      objc_storeStrong(p_analyticsSourceUUID, v8);
    }

    v15 = v4;
    v16 = v8;
    v13 = v12;
    v14 = v8;
    BSDispatchMain();
  }
}

- (BOOL)shouldStartPictureInPictureEnteringBackground
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PGPictureInPictureRemoteObject *)self isPictureInPicturePossible];
  pictureInPictureShouldStartWhenEnteringBackground = self->_pictureInPictureShouldStartWhenEnteringBackground;
  v5 = [(PGPictureInPictureRemoteObject *)self _canTransitionToState:3];
  v6 = (self->_currentState - 3) <= 2 && self->_pictureInPictureStartedAutomatically;
  v7 = v5 || v6;
  v8 = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
  v9 = v3 && pictureInPictureShouldStartWhenEnteringBackground && v7 && !v8;
  v10 = PGLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v7;
    if (v8)
    {
      v12 = [(PGInterruptionAssistant *)self->_interruptionAssistant description];
    }

    else
    {
      v12 = &stru_1F394B800;
    }

    v14 = 134219522;
    v15 = self;
    v16 = 1024;
    v17 = v9;
    v18 = 1024;
    v19 = v3;
    v20 = 1024;
    v21 = pictureInPictureShouldStartWhenEnteringBackground;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v8;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "Remote object(%p) shouldStartPictureInPictureEnteringBackground check result:%{BOOL}u. State: possible(%{BOOL}u) shouldStartEnteringBackground(%{BOOL}u) canStartAutomaticallyOrIsStartingAutomatically(%{BOOL}u) isInterrupted(%{BOOL}u) %{public}@", &v14, 0x34u);
    if (v8)
    {
    }
  }

  return v9;
}

- (BOOL)canCancelPictureInPicture
{
  currentState = self->_currentState;
  if (currentState > 0xE)
  {
    return 0;
  }

  if (((1 << currentState) & 0x73C7) != 0)
  {
    return [(PGPictureInPictureRemoteObject *)self _canTransitionToState:7];
  }

  return 1;
}

- (BOOL)isStartingStoppingOrCancellingPictureInPicture
{
  if ([(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture])
  {
    return 1;
  }

  return [(PGPictureInPictureRemoteObject *)self isStoppingOrCancellingPictureInPicture];
}

- (BOOL)canEndTwoStageStopPictureInPicture
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_hasBegunTwoStageStop;
}

- (void)setPictureInPicturePossible:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_isPictureInPicturePossible != v3)
  {
    self->_isPictureInPicturePossible = v3;
    if (v3)
    {
      [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists activateIfNeeded];
    }

    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      *buf = 138543618;
      v14 = self;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "isPictureInPicturePossible - %{public}@ %@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PGPictureInPictureRemoteObject_setPictureInPicturePossible___block_invoke;
    block[3] = &unk_1E7F32A80;
    block[4] = self;
    block[5] = a2;
    v12 = v3;
    dispatch_async(queue, block);
  }
}

void __62__PGPictureInPictureRemoteObject_setPictureInPicturePossible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 updatePictureInPicturePossible:*(a1 + 48)];
}

- (void)setSourceSceneSessionPersistentIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sourceSceneSessionPersistentIdentifier != v4 && ![(NSString *)v4 isEqualToString:?])
  {
    v6 = [(NSString *)v5 copy];
    sourceSceneSessionPersistentIdentifier = self->_sourceSceneSessionPersistentIdentifier;
    self->_sourceSceneSessionPersistentIdentifier = v6;

    if (v5)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v8 = getFBSceneManagerClass_softClass;
      v22 = getFBSceneManagerClass_softClass;
      if (!getFBSceneManagerClass_softClass)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __getFBSceneManagerClass_block_invoke;
        v18[3] = &unk_1E7F32FC8;
        v18[4] = &v19;
        __getFBSceneManagerClass_block_invoke(v18);
        v8 = v20[3];
      }

      v9 = v8;
      _Block_object_dispose(&v19, 8);
      v10 = [v8 sharedInstance];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __76__PGPictureInPictureRemoteObject_setSourceSceneSessionPersistentIdentifier___block_invoke;
      v16 = &unk_1E7F32AA8;
      v17 = v5;
      v11 = [v10 scenesPassingTest:&v13];
      v12 = [v11 anyObject];
      objc_storeWeak(&self->_sourceScene, v12);

      [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists updateInterfaceOrientation];
    }
  }
}

uint64_t __76__PGPictureInPictureRemoteObject_setSourceSceneSessionPersistentIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 settings];
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

  v10 = [v9 persistenceIdentifier];

  v11 = [v10 isEqualToString:*(a1 + 32)];
  *a3 = v11;
  return v11;
}

- (int64_t)sourceSceneSettingsInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceScene);
  v4 = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
  v5 = 1;
  if (!v4 && WeakRetained)
  {
    v6 = [WeakRetained settings];
    v5 = [v6 interfaceOrientation];
  }

  return v5;
}

- (FBSDisplayConfiguration)sourceSceneSettingsDisplayConfiguration
{
  v3 = [(PGPictureInPictureRemoteObject *)self delegate];
  v4 = [v3 pictureInPictureRemoteObject:self displayConfigurationForApplication:self->_pictureInPictureApplication];

  return v4;
}

- (void)startPictureInPictureEnteringBackgroundAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PGPictureInPictureRemoteObject startPictureInPictureEnteringBackgroundAnimated:withCompletionHandler:]";
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:3])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:3];
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureStartedAutomatically:1];
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E7F32B70;
    v12[4] = self;
    v14 = a2;
    v13 = v7;
    v15 = a3;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7F32AF8;
  v4 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v4;
  v5 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3 errorHandler:v10];
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_4;
  v8[3] = &unk_1E7F32B48;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v5 pictureInPictureStartRequestedAnimated:v6 withCompletionHandler:v8];
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32AD0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, a1[4]);
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  [WeakRetained invalidate];
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_5;
  v9[3] = &unk_1E7F32B20;
  v6 = *(a1 + 40);
  v13 = a2;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 _invalidateForFailureToStartStopOrCancel];
  }

  return result;
}

- (void)stopPictureInPictureAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:8])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:8];
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke;
    v11[3] = &unk_1E7F32B70;
    v11[4] = self;
    v13 = a2;
    v14 = a3;
    v12 = v7;
    dispatch_async(queue, v11);
  }

  else if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(v7 + 2))(v7, 0, v10);
  }
}

void __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F32478;
  v7 = *(a1 + 40);
  [v4 pictureInPictureStopRequestedAnimated:v5 withCompletionHandler:v6];
}

void __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:9])
  {
    self->_hasBegunTwoStageStop = 1;
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:9];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F32C10;
    block[4] = self;
    v11 = a2;
    v10 = v5;
    dispatch_async(queue, block);
  }

  else if (v5)
  {
    if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:6])
    {
      [(PGPictureInPictureRemoteObject *)self _setCurrentState:6];
    }

    self->_hasBegunTwoStageStop = 0;
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(v5 + 2))(v5, 0, v8);
  }
}

void __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F32BE8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:v6];
}

void __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7F32BC0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ([*(a1 + 32) _canTransitionToState:6])
    {
      [*(a1 + 32) _setCurrentState:6];
    }

    *(*(a1 + 32) + 160) = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)endTwoStageStopPictureInPictureWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_hasBegunTwoStageStop)
  {
    goto LABEL_9;
  }

  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject endTwoStageStopPictureInPictureWithCompletionBlock:v7];
  }

  if (self->_hasBegunTwoStageStop)
  {
LABEL_9:
    self->_hasBegunTwoStageStop = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke;
    block[3] = &unk_1E7F32C10;
    block[4] = self;
    v12 = a2;
    v11 = v5;
    dispatch_async(queue, block);
  }

  else if (v5)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(v5 + 2))(v5, 0, v9);
  }
}

void __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E7F32478;
  v6 = *(a1 + 40);
  [v4 endTwoStagePictureInPictureStopWithCompletionBlock:v5];
}

void __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)sendStartPictureInPictureTestAction
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PGPictureInPictureRemoteObject sendStartPictureInPictureTestAction]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PGPictureInPictureRemoteObject_sendStartPictureInPictureTestAction__block_invoke;
  v7[3] = &unk_1E7F32870;
  v7[4] = self;
  v7[5] = a2;
  dispatch_async(queue, v7);
}

void __69__PGPictureInPictureRemoteObject_sendStartPictureInPictureTestAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForTestStartPIP];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)startPictureInPictureFromBackground
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:534 description:{@"Tried to BG PIP a remote object %@ that has NO for pip is possible", a2}];
}

uint64_t __69__PGPictureInPictureRemoteObject_startPictureInPictureFromBackground__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 64);
  if (v3 == *(result + 40))
  {
    v4 = result;
    *(v2 + 64) = 0;

    v5 = *(v4 + 40);

    return [v5 invalidate];
  }

  return result;
}

void __69__PGPictureInPictureRemoteObject_startPictureInPictureFromBackground__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForStartPIP];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)pictureInPictureInterruptionBeganWithReason:(int64_t)a3 attribution:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  [(PGInterruptionAssistant *)self->_interruptionAssistant addReason:a3 attribution:v6];
  if (a3 == 2)
  {
    exemptAttributionOverride = self->_exemptAttributionOverride;
    if (!exemptAttributionOverride)
    {
      exemptAttributionOverride = self->_exemptAttribution;
    }

    if ([v6 isEqualToString:exemptAttributionOverride] && -[PGInterruptionAssistant hasInterruptionReason:](self->_interruptionAssistant, "hasInterruptionReason:", 4))
    {
      [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:4 attribution:0];
    }
  }

  v9 = PGLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 4)
    {
      v10 = @"invalid";
    }

    else
    {
      v10 = off_1E7F33090[a3];
    }

    v11 = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v13 = 136315906;
    v14 = "[PGPictureInPictureRemoteObject pictureInPictureInterruptionBeganWithReason:attribution:]";
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = v10;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %p: %{public}@ isInterrupted %{BOOL}u ", &v13, 0x26u);
  }

  if ([(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1])
  {
    [(PGPictureInPictureRemoteObject *)self _setUILockedResourcesUsageReductionReasons:1];
  }

  if (a3 == 1)
  {
    v12 = self->_stashed || [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:v12];
  }

  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
}

- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)a3 attribution:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  [(PGInterruptionAssistant *)self->_interruptionAssistant removeReason:a3 attribution:v6];
  if (a3 == 1)
  {
    v8 = self->_stashed || [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:v8];
  }

  v9 = PGLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 4)
    {
      v10 = @"invalid";
    }

    else
    {
      v10 = off_1E7F33090[a3];
    }

    v11 = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v12 = 138543874;
    v13 = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "pictureInPictureInterruptionEndedWithReason: %{public}@ isInterrupted %{BOOL}u %p", &v12, 0x1Cu);
  }

  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  if (![(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1])
  {
    [(PGPictureInPictureRemoteObject *)self _setUILockedResourcesUsageReductionReasons:0];
  }

  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController flashControls];
}

- (void)_notifyProxyOfStashedOrUnderLock:(BOOL)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PGPictureInPictureRemoteObject__notifyProxyOfStashedOrUnderLock___block_invoke;
  block[3] = &unk_1E7F32A80;
  block[4] = self;
  block[5] = a2;
  v5 = a3;
  dispatch_async(queue, block);
}

void __67__PGPictureInPictureRemoteObject__notifyProxyOfStashedOrUnderLock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 setStashedOrUnderLock:*(a1 + 48)];
}

- (void)suspend
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PGPictureInPictureRemoteObject suspend]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:12])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:12];
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke;
    v7[3] = &unk_1E7F32870;
    v7[4] = self;
    v7[5] = a2;
    dispatch_async(queue, v7);
  }
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_2;
  v1[3] = &unk_1E7F32870;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __41__PGPictureInPictureRemoteObject_suspend__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_3;
  v2[3] = &unk_1E7F32870;
  v3 = *(a1 + 32);
  return [*(v3 + 256) performSuspendAnimationWithCompletionHandler:v2];
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_4;
  v3[3] = &unk_1E7F32870;
  v4 = v1;
  dispatch_async(v2, v3);
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = [PGCommand commandForSetSuspended:1];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)resume
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PGPictureInPictureRemoteObject resume]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke;
  v7[3] = &unk_1E7F32870;
  v7[4] = self;
  v7[5] = a2;
  dispatch_async(queue, v7);
}

void __40__PGPictureInPictureRemoteObject_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5 = [PGCommand commandForSetSuspended:0];
  v6 = [v5 dictionaryRepresentation];
  [v4 handleCommand:v6];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke_2;
  block[3] = &unk_1E7F32530;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __40__PGPictureInPictureRemoteObject_resume__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke_3;
  v4[3] = &unk_1E7F32530;
  v4[4] = v1;
  return [v2 performResumeAnimationWithCompletionHandler:v4];
}

void *__40__PGPictureInPictureRemoteObject_resume__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[5] == 12)
  {
    return [result _setCurrentState:6];
  }

  return result;
}

- (void)cancel
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[PGPictureInPictureRemoteObject cancel]";
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:7])
  {
    *&self->_hasPendingCancellationRequest = 0;
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:7];
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureWillStopForAppRequest:0 preferredFullScreenRestore:0];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PGPictureInPictureRemoteObject_cancel__block_invoke;
    v8[3] = &unk_1E7F32870;
    v8[4] = self;
    v8[5] = a2;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
    if (v7)
    {
      LOBYTE(v7) = [(PGPictureInPictureRemoteObject *)self canCancelPictureInPicture];
    }

    self->_hasPendingCancellationRequest = v7;
    self->_hasPendingStopRequest = 0;
  }
}

void __40__PGPictureInPictureRemoteObject_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 pictureInPictureCancelRequestedAnimated:1 withCompletionHandler:&__block_literal_global_9];
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PGPictureInPictureRemoteObject invalidate]";
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:13])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:13];
    v4 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController parentViewController];

    if (v4)
    {
      v5 = [(PGPictureInPictureRemoteObject *)self delegate];
      [v5 pictureInPictureRemoteObject:self willHidePictureInPictureViewController:self->_pictureInPictureViewController];

      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      pictureInPictureViewController = self->_pictureInPictureViewController;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__PGPictureInPictureRemoteObject_invalidate__block_invoke;
      v7[3] = &unk_1E7F32530;
      v7[4] = self;
      [(PGPictureInPictureViewController *)pictureInPictureViewController performStopAnimated:1 withFinalInterfaceOrientation:0 finalLayerFrame:v7 completionHandler:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }

    else if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:14])
    {
      [(PGPictureInPictureRemoteObject *)self _setCurrentState:14];
      [(PGPictureInPictureRemoteObject *)self _finishCleanup];
    }
  }

  [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists invalidate];
}

uint64_t __44__PGPictureInPictureRemoteObject_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:0];
  [*(*(a1 + 32) + 256) setSceneView:0];
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

  result = [*(a1 + 32) _canTransitionToState:14];
  if (result)
  {
    [*(a1 + 32) _setCurrentState:14];
    v4 = *(a1 + 32);

    return [v4 _finishCleanup];
  }

  return result;
}

- (void)setCurrentResourcesUsageReductionReasons:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureRemoteObject setCurrentResourcesUsageReductionReasons:]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", &v7, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  self->_externalResourcesUsageReductionReasons = a3;
  [(PGPictureInPictureRemoteObject *)self _setResolvedResourcesUsageReductionReasons:self->_UILockedResourcesUsageReductionReasons | a3];
}

- (void)_setUILockedResourcesUsageReductionReasons:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureRemoteObject _setUILockedResourcesUsageReductionReasons:]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", &v7, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  self->_UILockedResourcesUsageReductionReasons = a3;
  [(PGPictureInPictureRemoteObject *)self _setResolvedResourcesUsageReductionReasons:self->_externalResourcesUsageReductionReasons | a3];
}

- (void)_setResolvedResourcesUsageReductionReasons:(unint64_t)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PGPictureInPictureRemoteObject__setResolvedResourcesUsageReductionReasons___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(queue, block);
}

void __77__PGPictureInPictureRemoteObject__setResolvedResourcesUsageReductionReasons___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 184) != v3)
  {
    *(v2 + 184) = v3;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = _PGLogMethodProem(*(a1 + 32), 1);
    v6 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v5];
    [v6 setResourcesUsageReductionReasons:*(a1 + 40)];
  }
}

- (NSString)activitySessionIdentifier
{
  activitySessionIdentifier = self->_activitySessionIdentifier;
  if (activitySessionIdentifier)
  {
    v3 = activitySessionIdentifier;
  }

  else
  {
    v3 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
  }

  return v3;
}

- (BOOL)canStartBackgroundPIPForCurrentActivitySessionIdentifier
{
  if (self->_currentState != 2 || self->_pictureInPictureViewController)
  {
    return 0;
  }

  activitySessionIdentifierForLastActivePIPSession = self->_activitySessionIdentifierForLastActivePIPSession;
  v6 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
  if ([(NSString *)activitySessionIdentifierForLastActivePIPSession isEqualToString:v6])
  {
    v3 = [(PGPictureInPictureRemoteObject *)self _isICSVideoCall];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)supportsMicroPIP
{
  v3 = [(PGPlaybackState *)self->_playbackState supportsMicroPIP];
  if (v3)
  {

    LOBYTE(v3) = [(PGPictureInPictureRemoteObject *)self _isAppICS];
  }

  return v3;
}

- (BOOL)canStartMicroPIP
{
  v3 = [(PGPictureInPictureRemoteObject *)self supportsMicroPIP];
  if (v3)
  {
    if (self->_hasPendingStopRequest)
    {
      v4 = 0;
    }

    else
    {
      v4 = !self->_hasPendingCancellationRequest;
      if (!self->_hasPendingCancellationRequest && (self->_currentState - 2) >= 5)
      {
        v5 = [(PGPictureInPictureRemoteObject *)self delegate];
        v4 = [v5 pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:self];
      }
    }

    LOBYTE(v3) = [(PGPictureInPictureRemoteObject *)self supportsMicroPIP]& v4;
  }

  return v3;
}

- (BOOL)canTetherRemoteObjectAsMicroPIP:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = (self->_currentState - 3) <= 3 && [v4 canStartMicroPIP] && !-[PGPictureInPictureRemoteObject canStartMicroPIP](self, "canStartMicroPIP") && !self->_tetheredRemoteObject && -[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:](self, "_isAssociatedWithOtherObject:", v5);
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
    v9 = PGStringFromPictureInPictureRemoteObjectState(self->_currentState);
    v10 = [v5 canStartMicroPIP];
    v11 = ![(PGPictureInPictureRemoteObject *)self canStartMicroPIP];
    v12 = self->_tetheredRemoteObject == 0;
    v14 = 136317186;
    v15 = "[PGPictureInPictureRemoteObject canTetherRemoteObjectAsMicroPIP:]";
    v16 = 2048;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    v20 = 1024;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = [(PGPictureInPictureRemoteObject *)self _isAssociatedWithOtherObject:v5];
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ %{BOOL}u || _currentState: %{public}@ [otherObject canStartMicroPIP] %{BOOL}u ![self canStartMicroPIP] %{BOOL}u _tetheredMicroPIP == nil %{BOOL}u [self _isAssociatedWithOtherObject:otherObject] %{BOOL}u", &v14, 0x48u);
  }

  return v6;
}

- (BOOL)canActivateUntetheredAlongsideOtherObject:(id)a3
{
  v4 = a3;
  v5 = -[PGPictureInPictureRemoteObject contentType](self, "contentType") == 6 || [v4 contentType] == 6;

  return v5;
}

+ (void)tetherRemoteObject:(id)a3 toRemoteObject:(id)a4 mode:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = PGLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v16 = 136316162;
    v17 = "+[PGPictureInPictureRemoteObject tetherRemoteObject:toRemoteObject:mode:]";
    v18 = 2048;
    v19 = a1;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%s %p tether %p to %p for mode %@", &v16, 0x34u);
  }

  if (v9 | v10)
  {
    v13 = [v10 canTetherRemoteObjectAsMicroPIP:v9];
    if (v9 && v10 && (v13 & 1) == 0)
    {
      +[PGPictureInPictureRemoteObject tetherRemoteObject:toRemoteObject:mode:];
    }

    else
    {
      [v9 setTetheringRemoteObject:v10];
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    if ([v9[32] stashed] && (objc_msgSend(v9[19], "hasInterruptionReason:", 4) & 1) == 0)
    {
      [v9 pictureInPictureInterruptionBeganWithReason:4 attribution:0];
    }
  }

  else
  {
    [PGPictureInPictureRemoteObject tetherRemoteObject:a2 toRemoteObject:a1 mode:?];
  }

LABEL_11:
  [v10 setTetheredRemoteObject:v9];
  v14 = [v9 pictureInPictureViewController];
  v15 = [v10 pictureInPictureViewController];
  if (v14 | v15)
  {
    [PGPictureInPictureViewController tetherViewController:v14 toViewController:v15 mode:a5];
  }
}

- (void)_stopTethering
{
  if (self->_tetheredRemoteObject)
  {
    [objc_opt_class() tetherRemoteObject:self->_tetheredRemoteObject toRemoteObject:0 mode:0];
    [objc_opt_class() tetherRemoteObject:0 toRemoteObject:self mode:0];
  }

  if (self->_tetheringRemoteObject)
  {
    [objc_opt_class() tetherRemoteObject:0 toRemoteObject:self->_tetheringRemoteObject mode:0];
    v3 = objc_opt_class();

    [v3 tetherRemoteObject:self toRemoteObject:0 mode:1];
  }
}

- (void)_setCurrentState:(int64_t)a3
{
  v34 = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  BSDispatchQueueAssertMain();
  if (![(PGPictureInPictureRemoteObject *)self _canTransitionToState:a3])
  {
    [PGPictureInPictureRemoteObject _setCurrentState:];
  }

  if (currentState == a3)
  {
    return;
  }

  self->_currentState = a3;
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PGStringFromPictureInPictureRemoteObjectState(currentState);
    v8 = PGStringFromPictureInPictureRemoteObjectState(a3);
    *buf = 136315906;
    v27 = "[PGPictureInPictureRemoteObject _setCurrentState:]";
    v28 = 2048;
    v29 = self;
    v30 = 2114;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ -> %{public}@", buf, 0x2Au);
  }

  v9 = [(PGInterruptionAssistant *)self->_interruptionAssistant isProxyActive];
  v10 = self->_currentState;
  if (v10 <= 0xC)
  {
    if (((1 << v10) & 0x1070) != 0)
    {
LABEL_14:
      v9 = 1;
      goto LABEL_15;
    }

    if (((1 << v10) & 7) != 0)
    {
      if ([(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:4])
      {
        [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:4 attribution:0];
      }

      v9 = 0;
      self->_pictureInPictureStartedAutomatically = 0;
      goto LABEL_15;
    }

    if (v10 == 3)
    {
      self->_pictureInPictureStartedAutomatically = 1;
      goto LABEL_14;
    }
  }

LABEL_15:
  [(PGInterruptionAssistant *)self->_interruptionAssistant setProxyActive:v9];
  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  if (a3 == 6)
  {
    v11 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
    v12 = [v11 copy];
    activitySessionIdentifierForLastActivePIPSession = self->_activitySessionIdentifierForLastActivePIPSession;
    self->_activitySessionIdentifierForLastActivePIPSession = v12;

    v14 = 1;
  }

  else
  {
    v14 = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
  }

  v15 = self->_hasPendingStopRequest || self->_hasPendingCancellationRequest;
  v16 = [(PGPictureInPictureRemoteObject *)self isStoppingOrCancellingPictureInPicture];
  cancelPictureInPictureFinishTaskAssertion = self->_cancelPictureInPictureFinishTaskAssertion;
  if (!v16 && (!v14 || !v15))
  {
    [(PGProcessAssertion *)cancelPictureInPictureFinishTaskAssertion invalidate];
    v18 = self->_cancelPictureInPictureFinishTaskAssertion;
    self->_cancelPictureInPictureFinishTaskAssertion = 0;

    [(NSTimer *)self->_timerForInvalidatingIfStopOrCancelFails invalidate];
    timerForInvalidatingIfStopOrCancelFails = self->_timerForInvalidatingIfStopOrCancelFails;
    self->_timerForInvalidatingIfStopOrCancelFails = 0;
LABEL_27:

    return;
  }

  if (!cancelPictureInPictureFinishTaskAssertion || !self->_timerForInvalidatingIfStopOrCancelFails)
  {
    [(PGProcessAssertion *)cancelPictureInPictureFinishTaskAssertion invalidate];
    [(NSTimer *)self->_timerForInvalidatingIfStopOrCancelFails invalidate];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v21 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [WeakRetained processIdentifier], @"Cancel PIP Task Assertion");

    objc_storeStrong(&self->_cancelPictureInPictureFinishTaskAssertion, v21);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__PGPictureInPictureRemoteObject__setCurrentState___block_invoke;
    v24[3] = &unk_1E7F32C80;
    v24[4] = self;
    v25 = v21;
    timerForInvalidatingIfStopOrCancelFails = v21;
    v22 = [(PGPictureInPictureRemoteObject *)self _invalidationTimerWithTimeout:v24 block:5.0];
    v23 = self->_timerForInvalidatingIfStopOrCancelFails;
    self->_timerForInvalidatingIfStopOrCancelFails = v22;

    goto LABEL_27;
  }
}

uint64_t __51__PGPictureInPictureRemoteObject__setCurrentState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 96) == v3)
  {
    if ([v3 isValid])
    {
      [*(a1 + 32) _invalidateForFailureToStartStopOrCancel];
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = 0;

    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 40);
  if (v7 == *(v4 + 80))
  {
    [v7 invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 80);
    *(v8 + 80) = 0;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_canTransitionToState:(int64_t)a3
{
  currentState = self->_currentState;
  hasBegunTwoStageStop = currentState == a3;
  switch(a3)
  {
    case 0:
      return hasBegunTwoStageStop;
    case 1:
      v7 = currentState == a3 || currentState == 0;
      goto LABEL_23;
    case 2:
      v7 = currentState == 1 || currentState == 11;
      goto LABEL_23;
    case 3:
      if (currentState != 2)
      {
        goto LABEL_35;
      }

      return self->_isPictureInPicturePossible;
    case 4:
      if (currentState == 2 && self->_isPictureInPicturePossible)
      {
        return 1;
      }

      v7 = currentState == 3;
      goto LABEL_23;
    case 5:
      v7 = currentState == 4;
      goto LABEL_23;
    case 6:
      if (currentState == 5 || currentState == 12)
      {
        return 1;
      }

      else
      {
        hasBegunTwoStageStop = self->_hasBegunTwoStageStop;
        if (currentState != 9)
        {
          return 0;
        }
      }

      return hasBegunTwoStageStop;
    case 7:
      v7 = currentState == 6 || currentState == 12;
      goto LABEL_23;
    case 8:
      if (currentState != 6)
      {
        goto LABEL_35;
      }

      hasBegunTwoStageStop = [(PGPlaybackState *)self->_playbackState contentType:v3]!= 6;
      break;
    case 9:
    case 12:
      v7 = currentState == 6;
      goto LABEL_23;
    case 10:
      return (currentState - 6) < 4;
    case 11:
      v7 = currentState == 10;
      goto LABEL_23;
    case 13:
      return currentState != 14 && currentState != a3;
    case 14:
      v7 = currentState == a3 || currentState == 13;
LABEL_23:
      hasBegunTwoStageStop = v7;
      break;
    default:
LABEL_35:
      hasBegunTwoStageStop = 0;
      break;
  }

  return hasBegunTwoStageStop;
}

- (void)_invalidateInterruptionBeganFinishTaskAssertion
{
  interruptionBeganFinishTaskAssertion = self->_interruptionBeganFinishTaskAssertion;
  if (interruptionBeganFinishTaskAssertion)
  {
    [(PGProcessAssertion *)interruptionBeganFinishTaskAssertion invalidate];
    v4 = self->_interruptionBeganFinishTaskAssertion;
    self->_interruptionBeganFinishTaskAssertion = 0;

    finishTaskInvalidationUUID = self->_finishTaskInvalidationUUID;
    self->_finishTaskInvalidationUUID = 0;
  }
}

- (void)_invalidateAllAssertions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureRemoteObject _invalidateAllAssertions]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p ", &v7, 0x16u);
  }

  [(PGProcessAssertion *)self->_startBackgroundPIPAssertion invalidate];
  startBackgroundPIPAssertion = self->_startBackgroundPIPAssertion;
  self->_startBackgroundPIPAssertion = 0;

  [(PGProcessAssertion *)self->_processAssertion invalidate];
  processAssertion = self->_processAssertion;
  self->_processAssertion = 0;

  [(PGProcessAssertion *)self->_cancelPictureInPictureFinishTaskAssertion invalidate];
  cancelPictureInPictureFinishTaskAssertion = self->_cancelPictureInPictureFinishTaskAssertion;
  self->_cancelPictureInPictureFinishTaskAssertion = 0;

  [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
}

- (void)_finishCleanup
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v4 = [(PGPictureInPictureRemoteObject *)self delegate];
  [v4 pictureInPictureRemoteObject:self willDestroyPictureInPictureViewController:self->_pictureInPictureViewController];

  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController deactivateAnalyticsSessionIfNeeded];
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setDelegate:0];
  pictureInPictureViewController = self->_pictureInPictureViewController;
  self->_pictureInPictureViewController = 0;

  [(PGPictureInPictureRemoteObject *)self _invalidateAllAssertions];
  [(PGPictureInPictureRemoteObject *)self pictureInPictureViewController:0 didTransitionToStashed:0];
}

- (id)_invalidationTimerWithTimeout:(double)a3 block:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PGPictureInPictureRemoteObject__invalidationTimerWithTimeout_block___block_invoke;
  v11[3] = &unk_1E7F32CA8;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v11 block:a3];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __70__PGPictureInPictureRemoteObject__invalidationTimerWithTimeout_block___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v7 = PGLogCommon();
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8 == 10;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "Invalidation timeout fired while isStoppingOrCancelling: %{BOOL}u.", v11, 8u);
    }

    if (v8 == 10)
    {
      v9 = [v5 connection];
      [v9 invalidate];
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (BOOL)_isICSVideoCall
{
  v3 = [(PGPictureInPictureRemoteObject *)self isVideoCall];
  if (v3)
  {

    LOBYTE(v3) = [(PGPictureInPictureRemoteObject *)self _isAppICS];
  }

  return v3;
}

- (BOOL)_isAppICS
{
  v2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.InCallService"];

  return v3;
}

- (BOOL)_isAssociatedWithOtherObject:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PGPictureInPictureRemoteObject *)self _isICSVideoCall]&& ![(PGPictureInPictureRemoteObject *)v4 _isICSVideoCall])
  {
    v15 = 0;
    goto LABEL_24;
  }

  if ([(PGPictureInPictureRemoteObject *)self _isICSVideoCall])
  {
    v5 = self;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(PGPictureInPictureRemoteObject *)v5 activitySessionIdentifier];
  if ([(PGPictureInPictureRemoteObject *)self _isICSVideoCall])
  {
    v7 = v4;
  }

  else
  {
    v7 = self;
  }

  v8 = [(PGPictureInPictureRemoteObject *)v7 pictureInPictureApplication];
  v9 = [v8 bundleIdentifier];

  if ([v6 isEqualToString:v9])
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      v12 = [(PGPictureInPictureRemoteObject *)v4 pictureInPictureApplication];
      v13 = [v12 bundleIdentifier];
      v24 = 136316162;
      v25 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v11;
      v30 = 2048;
      v31 = v4;
      v32 = 2114;
      v33 = v13;
      v14 = "%s Associating %p %{public}@ with %p %{public}@ because hasMatchingSessionIdentifierAndBundleIdentifier";
LABEL_20:
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, v14, &v24, 0x34u);
    }
  }

  else if ([(PGPictureInPictureRemoteObject *)self _isAppICS]&& [(PGPictureInPictureRemoteObject *)v4 _isAppICS])
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      v12 = [(PGPictureInPictureRemoteObject *)v4 pictureInPictureApplication];
      v13 = [v12 bundleIdentifier];
      v24 = 136316162;
      v25 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v11;
      v30 = 2048;
      v31 = v4;
      v32 = 2114;
      v33 = v13;
      v14 = "%s Associating %p %{public}@ with %p %{public}@ because one of them is a video call and we always associate ICS with itself";
      goto LABEL_20;
    }
  }

  else
  {
    if (([(PGPictureInPictureRemoteObject *)v4 isEqual:self->_tetheringRemoteObject]& 1) == 0 && ![(PGPictureInPictureRemoteObject *)v4 isEqual:self->_tetheredRemoteObject])
    {
      if ([(PGPictureInPictureRemoteObject *)v4 _isICSVideoCall])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v18 = [WeakRetained pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:self];

        if (v18)
        {
          v10 = PGLogCommon();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_21;
          }

          v11 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
          v12 = [(PGPictureInPictureRemoteObject *)v4 pictureInPictureApplication];
          v13 = [v12 bundleIdentifier];
          v24 = 136316162;
          v25 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
          v26 = 2048;
          v27 = self;
          v28 = 2114;
          v29 = v11;
          v30 = 2048;
          v31 = v4;
          v32 = 2114;
          v33 = v13;
          v14 = "%s Associating %p %{public}@ with %p %{public}@ because it has backgroundPIPAuthorization.";
          goto LABEL_20;
        }
      }

      if ([(PGPictureInPictureRemoteObject *)v4 _isICSVideoCall])
      {
        v19 = [(PGPictureInPictureRemoteObject *)v4 activitySessionIdentifier];
        if ([v19 isEqualToString:@"com.apple.InCallService"])
        {
          v20 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
          v21 = [(PGPictureInPictureRemoteObject *)self pictureInPictureApplication];
          v22 = [v21 bundleIdentifier];
          v23 = [v20 isEqualToString:v22];

          if ((v23 & 1) == 0)
          {
            v10 = PGLogCommon();
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v11 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
            v12 = [(PGPictureInPictureRemoteObject *)v4 pictureInPictureApplication];
            v13 = [v12 bundleIdentifier];
            v24 = 136316162;
            v25 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
            v26 = 2048;
            v27 = self;
            v28 = 2114;
            v29 = v11;
            v30 = 2048;
            v31 = v4;
            v32 = 2114;
            v33 = v13;
            v14 = "%s Associating %p %{public}@ with %p %{public}@ because it has an expanse-like activity session identifier and the facetime video call has an ICS bundle for its activity session identifier.";
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v15 = 0;
      goto LABEL_22;
    }

    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      v12 = [(PGPictureInPictureRemoteObject *)v4 pictureInPictureApplication];
      v13 = [v12 bundleIdentifier];
      v24 = 136316162;
      v25 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v11;
      v30 = 2048;
      v31 = v4;
      v32 = 2114;
      v33 = v13;
      v14 = "%s Associating %p %{public}@ with %p %{public}@ because micropip is active between the objects";
      goto LABEL_20;
    }
  }

LABEL_21:

  v15 = 1;
LABEL_22:

LABEL_24:
  return v15;
}

- (BOOL)_isInActivitySession
{
  BSDispatchQueueAssertMain();
  v3 = [(PGPictureInPictureRemoteObject *)self contentType];
  if ([(PGPictureInPictureRemoteObject *)self contentType]== 6)
  {
    LOBYTE(v4) = 0;
  }

  else if (v3 == 5)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
    v6 = [(PGPictureInPictureRemoteObject *)self pictureInPictureApplication];
    v7 = [v6 bundleIdentifier];
    v4 = [v5 isEqualToString:v7] ^ 1;
  }

  return v4;
}

- (void)_invalidateForFailureToStartStopOrCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v4 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [WeakRetained processIdentifier], @"Invalidate for failure to start stop or cancel");

  objc_initWeak(&location, self);
  v5 = objc_loadWeakRetained(&self->_connection);
  v6 = _PGLogMethodProem(self, 1);
  v7 = [v5 PG_appProxyWithDebugMethodAndPointerProem:v6];
  v8 = +[PGCommand commandForInvalidateFromProxy];
  v9 = [v8 dictionaryRepresentation];
  [v7 handleCommand:v9];

  v10 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke;
  block[3] = &unk_1E7F32CD0;
  v13 = v4;
  v11 = v4;
  objc_copyWeak(&v14, &location);
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke_2;
    block[3] = &unk_1E7F32530;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained invalidate];
}

- (void)initializePictureInPictureWithControlsStyle:(int64_t)a3 preferredContentSize:(CGSize)a4 sceneIdentifier:(id)a5 affectsAppLifeCycle:(BOOL)a6 completionHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v35 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a7;
  v16 = PGLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v21 = _PGLogMethodProem(self, 1);
    v36.width = width;
    v36.height = height;
    v22 = NSStringFromCGSize(v36);
    *buf = 138412546;
    v32 = v21;
    v33 = 2114;
    v34 = v22;
    _os_log_debug_impl(&dword_1BB282000, v16, OS_LOG_TYPE_DEBUG, "%@ preferredContentSize:%{public}@", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v17 = PGLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v18 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v18 == WeakRetained)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke;
    v23[3] = &unk_1E7F32D48;
    v23[4] = self;
    v25 = v15;
    v26 = a3;
    v27 = width;
    v28 = height;
    v30 = a6;
    v24 = v14;
    v29 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v15 + 2))(v15, 0, v20);
  }
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _setCurrentState:1];
    *(*(a1 + 32) + 32) = *(a1 + 56);
    *(*(a1 + 32) + 304) = *(a1 + 64);
    v4 = *(a1 + 32);
    if (*(a1 + 40) && !*(v4 + 48))
    {
      v5 = [[PGPIPRemoteObjectSceneController alloc] initWithRemoteObject:*(a1 + 32) requestedSceneIdentifier:*(a1 + 40) affectsAppLifeCycle:*(a1 + 88)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      v4 = *(a1 + 32);
    }

    v8 = *(v4 + 113);
    if (v8 == 1)
    {
      [*(v4 + 48) activateIfNeeded];
      v4 = *(a1 + 32);
    }

    [v4 _setCurrentState:2];
    v9 = *(*(a1 + 32) + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_3;
    v13[3] = &unk_1E7F32D20;
    v10 = v14;
    v11 = *(a1 + 48);
    v13[4] = *(a1 + 32);
    v14[0] = v11;
    v14[1] = *(a1 + 80);
    v15 = v8;
    v12 = v13;
  }

  else
  {
    v9 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v10 = &v17;
    v17 = *(a1 + 48);
    v12 = block;
  }

  dispatch_async(v9, v12);
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  [v4 updatePictureInPicturePossible:*(a1 + 56)];

  return BSDispatchMain();
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
}

- (void)setupStartAnimated:(BOOL)a3 hostedWindowHostingHandle:(id)a4 sceneSessionPersistentIdentifier:(id)a5 preferredContentSize:(CGSize)a6 initialInterfaceOrientation:(int64_t)a7 initialLayerFrame:(CGRect)a8 completionHandler:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v15 = a6.height;
  v16 = a6.width;
  v21 = a4;
  v22 = a5;
  v23 = a9;
  v24 = PGLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v25 = PGLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v26 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v26 == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke;
    block[3] = &unk_1E7F32DC0;
    v33 = v16;
    v34 = v15;
    block[4] = self;
    v35 = a2;
    v32 = v23;
    v30 = v22;
    v41 = a3;
    v31 = v21;
    v36 = a7;
    v37 = x;
    v38 = y;
    v39 = width;
    v40 = height;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v23 + 2))(v23, 0, v28);
  }
}

void __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (![*(a1 + 32) _canTransitionToState:4])
  {
    v28 = -1002;
LABEL_16:
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:v28 userInfo:0];
    v30 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_173;
    block[3] = &unk_1E7F32D70;
    v31 = *(a1 + 56);
    v42 = v29;
    v43 = v31;
    v32 = v29;
    dispatch_async(v30, block);

    return;
  }

  if (!PGSizeIsValid() || (PGSizeIsPositive() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    v5 = [WeakRetained pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:*(a1 + 32)];

    v6 = PGLogCommon();
    v7 = v6;
    if (!v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v44 = v3;
        *&v44[1] = v2;
        v33 = [MEMORY[0x1E696B098] valueWithBytes:v44 objCType:"{CGSize=dd}"];
        v34 = _PGLogMethodProem(*(a1 + 32), 1);
        *buf = 138543618;
        v46 = v33;
        v47 = 2112;
        v48 = v34;
        _os_log_error_impl(&dword_1BB282000, v7, OS_LOG_TYPE_ERROR, "invalid preferredContentSize %{public}@ %@", buf, 0x16u);
      }

      v28 = -1003;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _PGLogMethodProem(*(a1 + 32), 1);
      *buf = 138412290;
      v46 = v8;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "Using default initial preferred content size due to background PIP authorization %@", buf, 0xCu);
    }

    v3 = 16.0;
    v2 = 9.0;
  }

  v9 = [*(a1 + 32) delegate];
  v10 = [v9 pictureInPictureRemoteObjectShouldAcceptSetupRequest:*(a1 + 32)];

  if ((v10 & 1) == 0)
  {
    v28 = -1007;
    goto LABEL_16;
  }

  [*(a1 + 32) _setCurrentState:4];
  v11 = [[PGPictureInPictureViewController alloc] initWithApplication:*(*(a1 + 32) + 248) sourceSceneSessionPersistentIdentifier:*(a1 + 40) controlsStyle:*(*(a1 + 32) + 32)];
  v12 = *(a1 + 32);
  v13 = *(v12 + 256);
  *(v12 + 256) = v11;

  v14 = [*(*(a1 + 32) + 256) view];
  [v14 setHidden:(*(a1 + 128) & 1) == 0];

  [*(*(a1 + 32) + 256) setDelegate:?];
  v15 = *(a1 + 32);
  v16 = *(v15 + 256);
  v17 = objc_loadWeakRetained((v15 + 264));
  [v16 setAnalyticsDelegate:v17 analyticsSourceUUID:*(*(a1 + 32) + 104)];

  [*(*(a1 + 32) + 256) notePictureInPictureStartedAutomatically:*(*(a1 + 32) + 112)];
  [*(*(a1 + 32) + 256) setPreferredContentSize:{v3, v2}];
  v18 = *(a1 + 32);
  v19 = *(v18 + 256);
  v20 = [*(v18 + 144) dictionaryRepresentation];
  [v19 updatePlaybackStateWithDiff:v20];

  v21 = [*(*(a1 + 32) + 256) viewModel];
  [v21 setInActivitySession:{objc_msgSend(*(a1 + 32), "_isInActivitySession")}];

  [*(*(a1 + 32) + 256) pagingAccessorySetCurrentPage:*(*(a1 + 32) + 168) numberOfPages:*(*(a1 + 32) + 176)];
  v22 = [*(a1 + 32) delegate];
  [v22 pictureInPictureRemoteObject:*(a1 + 32) didCreatePictureInPictureViewController:*(*(a1 + 32) + 256)];

  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:*(a1 + 48)];
  v23 = *(a1 + 32);
  v24 = *(v23 + 256);
  v25 = [*(v23 + 48) sceneView];
  [v24 setSceneView:v25];

  [*(a1 + 32) setSourceSceneSessionPersistentIdentifier:*(a1 + 40)];
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_2;
  v38 = &unk_1E7F32D98;
  v39 = *(a1 + 32);
  v40 = *(a1 + 56);
  v26 = MEMORY[0x1BFB0C680](&v35);
  v27 = v26;
  if (*(a1 + 128) == 1)
  {
    [*(*(a1 + 32) + 256) prepareStartAnimationWithInitialInterfaceOrientation:*(a1 + 88) initialLayerFrame:v26 completionHandler:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), v35, v36, v37, v38, v39}];
  }

  else
  {
    (*(v26 + 16))(v26);
  }
}

void __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_3;
  block[3] = &unk_1E7F32CF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)startPictureInPictureAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PGPictureInPictureRemoteObject startPictureInPictureAnimated:completionHandler:]";
    v17 = 2048;
    v18 = self;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v9 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v9 == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke;
    block[3] = &unk_1E7F32DE8;
    block[4] = self;
    v13 = v6;
    v14 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v6 + 2))(v6, 0, v11);
  }
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:5];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (*(v3 + 113))
    {
      [v3 _setCurrentState:5];
      [*(*(a1 + 32) + 48) updateInterfaceOrientation];
      v4 = [*(a1 + 32) delegate];
      [v4 pictureInPictureRemoteObject:*(a1 + 32) willShowPictureInPictureViewController:*(*(a1 + 32) + 256)];

      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_4;
      v13 = &unk_1E7F32D98;
      v5 = *(a1 + 40);
      v14 = *(a1 + 32);
      v15 = v5;
      v6 = MEMORY[0x1BFB0C680](&v10);
      [*(*(a1 + 32) + 256) performStartAnimated:*(a1 + 48) withCompletionHandler:{v6, v10, v11, v12, v13, v14}];

      v7 = v15;
    }

    else
    {
      v9 = *(v3 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_3;
      v16[3] = &unk_1E7F32CF8;
      v17 = *(a1 + 40);
      dispatch_async(v9, v16);
      v7 = v17;
    }
  }

  else
  {
    v8 = *(v3 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v19 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v19;
  }
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1007 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didShowPictureInPictureViewController:*(*(a1 + 32) + 256)];

  if ([*(a1 + 32) _canTransitionToState:6])
  {
    [*(a1 + 32) _setCurrentState:6];
  }

  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_5;
  v5[3] = &unk_1E7F32D70;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

uint64_t __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 114) == 1 && (v3 = [result canCancelPictureInPicture], result = *(a1 + 32), v3))
  {
    result = [result cancel];
  }

  else if (*(result + 115) == 1)
  {
    result = [result pictureInPictureViewControllerDidRequestStop:*(result + 256)];
  }

  *(*(a1 + 32) + 115) = 0;
  *(*(a1 + 32) + 114) = 0;
  return result;
}

- (void)updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding:(CGRect)a3 withCompletionHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = PGLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11 = PGLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v12 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v12 != WeakRetained)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = -1001;
LABEL_14:
    v17 = [v14 errorWithDomain:@"PGPegasusErrorDomain" code:v15 userInfo:0];
    v9[2](v9, 0, v17);

    goto LABEL_15;
  }

  if ((PGRectIsValid() & 1) == 0)
  {
    v16 = PGLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = x;
      *&v26[1] = y;
      *&v26[2] = width;
      *&v26[3] = height;
      v18 = [MEMORY[0x1E696B098] valueWithBytes:v26 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v19 = _PGLogMethodProem(self, 1);
      *buf = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&dword_1BB282000, v16, OS_LOG_TYPE_ERROR, "invalid initialLayerFrame %{public}@ %@", buf, 0x16u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = -1003;
    goto LABEL_14;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke;
  v20[3] = &unk_1E7F32E10;
  v20[4] = self;
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  v21 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v20);

LABEL_15:
}

void __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  *(v1 + 320) = *(a1 + 48);
  *(v1 + 336) = v2;
  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

- (void)updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v10 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v10 == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7F32558;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }
}

void __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSourceSceneSessionPersistentIdentifier:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)updatePreferredContentSize:(CGSize)a3 withCompletionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _PGLogMethodProem(self, 1);
    v22.width = width;
    v22.height = height;
    v10 = NSStringFromCGSize(v22);
    v17 = 138412546;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%@ preferredContentSize:%{public}@", &v17, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11 = PGLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v12 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v12 == WeakRetained)
  {
    if (!self->_queue_outstandingRotationAnimationsCount)
    {
      [(PGPictureInPictureRemoteObject *)self _updatePreferredContentSize:v7 withCompletionHandler:width, height];
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = -1002;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = -1001;
  }

  v16 = [v14 errorWithDomain:@"PGPegasusErrorDomain" code:v15 userInfo:0];
  v7[2](v7, 0, v16);

LABEL_12:
}

- (void)_updatePreferredContentSize:(CGSize)a3 withCompletionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if (PGSizeIsValid() && (PGSizeIsPositive() & 1) != 0)
  {
    if (self->_currentState == 6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke;
      block[3] = &unk_1E7F32E38;
      block[4] = self;
      v20 = width;
      v21 = height;
      v19 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v9 = v19;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_3;
      v14[3] = &unk_1E7F32E38;
      v14[4] = self;
      v16 = width;
      v17 = height;
      v15 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
      v9 = v15;
    }
  }

  else
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v22 = width;
      *&v22[1] = height;
      v12 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{CGSize=dd}"];
      v13 = _PGLogMethodProem(self, 1);
      *buf = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_1BB282000, v10, OS_LOG_TYPE_ERROR, "invalid preferredContentSize %{public}@ %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1003 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
  }
}

void __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 304) = *(a1 + 48);
  [*(*(a1 + 32) + 256) setPreferredContentSize:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 304) = *(a1 + 48);
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E7F32CF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)checkActivePictureInPictureCancellationPolicyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v7 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v7 != WeakRetained)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -1001;
LABEL_12:
    v11 = [v9 errorWithDomain:@"PGPegasusErrorDomain" code:v10 userInfo:0];
    v4[2](v4, 0, v11, 1, 1);

    goto LABEL_13;
  }

  if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -1002;
    goto LABEL_12;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PGPictureInPictureRemoteObject_checkActivePictureInPictureCancellationPolicyWithCompletion___block_invoke;
  v12[3] = &unk_1E7F32D98;
  v12[4] = self;
  v13 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

LABEL_13:
}

uint64_t __94__PGPictureInPictureRemoteObject_checkActivePictureInPictureCancellationPolicyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  [v3 pictureInPictureRemoteObjectShouldUpdateCancellationPolicyOnStart:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)rotateContentContainer:(int64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v9 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v9 != WeakRetained)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = -1001;
LABEL_12:
    v13 = [v11 errorWithDomain:@"PGPegasusErrorDomain" code:v12 userInfo:0];
    (*(v6 + 2))(v6, 0, v13, 0);

    goto LABEL_13;
  }

  if (self->_currentState != 6)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = -1002;
    goto LABEL_12;
  }

  ++self->_queue_outstandingRotationAnimationsCount;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7F32C10;
  block[4] = self;
  v16 = a3;
  v15 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_13:
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 256);
  v4 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E7F32C10;
  v5[4] = v2;
  v7 = v4;
  v6 = v1;
  [v3 performRotateAnimationWithRotation:v4 completionHandler:v5];
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  v4 = a1[4];
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7F32E88;
  v6 = a1[5];
  v11 = a1[6];
  v8[4] = v4;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);

  objc_autoreleasePoolPop(v2);
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 56) > 1uLL)
  {
    --*(v2 + 3);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v4 = v2[38];
    v3 = v2[39];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_4;
    v6[3] = &unk_1E7F32E60;
    v6[4] = v2;
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v2 _updatePreferredContentSize:v6 withCompletionHandler:{v3, v4}];
  }
}

- (void)setupStopAnimated:(BOOL)a3 needsApplicationActivation:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = PGLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v11 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v11 == WeakRetained)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke;
    v21[3] = &unk_1E7F32DE8;
    v21[4] = self;
    v14 = v8;
    v22 = v14;
    v23 = a4;
    v15 = MEMORY[0x1BFB0C680](v21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_7;
    block[3] = &unk_1E7F32ED8;
    block[4] = self;
    v20 = a3;
    v18 = v14;
    v19 = v15;
    v16 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v8 + 2))(v8, 0, v13);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F32B98;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7F32478;
  v6 = *(a1 + 40);
  v2 = MEMORY[0x1BFB0C680](v5);
  v3 = v2;
  if (*(a1 + 48) == 1)
  {
    v4 = v2;
    BSDispatchMain();
  }

  else
  {
    v2[2](v2, 1, 0);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1005 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 sourceSceneSessionPersistentIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_5;
  v6[3] = &unk_1E7F32EB0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 pictureInPictureRemoteObject:v3 requestActivationOfSceneWithPersistenceIdentier:v4 completion:v6];
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = [WeakRetained processIdentifier];
    v6 = *(*(a1 + 32) + 288);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_6;
    v7[3] = &unk_1E7F32478;
    v8 = *(a1 + 40);
    PGActivateApplication(v5, v6, v7);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:10];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    v6 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_8;
    block[3] = &unk_1E7F32CF8;
    v11 = *(a1 + 40);
    dispatch_async(v6, block);
    v5 = v11;
    goto LABEL_5;
  }

  [v3 _setCurrentState:10];
  if (*(a1 + 56) == 1)
  {
    v4 = *(*(a1 + 32) + 256);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_9;
    v8[3] = &unk_1E7F32CF8;
    v9 = *(a1 + 48);
    [v4 prepareStopAnimationWithCompletionHandler:v8];
    v5 = v9;
LABEL_5:

    return;
  }

  v7 = *(*(a1 + 48) + 16);

  v7();
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)stopPictureInPictureAnimated:(BOOL)a3 withFinalInterfaceOrientation:(int64_t)a4 finalLayerFrame:(CGRect)a5 completionHandler:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = PGLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[PGPictureInPictureRemoteObject stopPictureInPictureAnimated:withFinalInterfaceOrientation:finalLayerFrame:completionHandler:]";
    v29 = 2048;
    v30 = self;
    _os_log_impl(&dword_1BB282000, v14, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v15 = PGLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v16 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v16 == WeakRetained)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke;
    v19[3] = &unk_1E7F32F00;
    v19[4] = self;
    v20 = v13;
    v21 = x;
    v22 = y;
    v23 = width;
    v24 = height;
    v26 = a3;
    v25 = a4;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  else
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(v13 + 2))(v13, 0, v18, 0);
  }
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:11];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _setCurrentState:11];
    v4 = [*(a1 + 32) delegate];
    [v4 pictureInPictureRemoteObject:*(a1 + 32) willHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7F32D98;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    v6 = MEMORY[0x1BFB0C680](v9);
    [*(a1 + 32) _stopTethering];
    [*(*(a1 + 32) + 256) notePictureInPictureWillStopForAppRequest:1 preferredFullScreenRestore:!CGRectIsNull(*(a1 + 48))];
    [*(*(a1 + 32) + 256) performStopAnimated:*(a1 + 88) withFinalInterfaceOrientation:*(a1 + 80) finalLayerFrame:v6 completionHandler:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

    v7 = v10;
  }

  else
  {
    v8 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v12 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v12;
  }
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_4;
  block[3] = &unk_1E7F32CF8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_5;
  block[3] = &unk_1E7F32CF8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  (*(*(a1 + 32) + 16))();
}

- (void)cleanupWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v7 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v7 != WeakRetained)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -1001;
LABEL_12:
    v11 = [v9 errorWithDomain:@"PGPegasusErrorDomain" code:v10 userInfo:0];
    v4[2](v4, 0, v11);

    goto LABEL_13;
  }

  if (self->_currentState != 11)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = -1002;
    goto LABEL_12;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7F32D98;
  v12[4] = self;
  v13 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

LABEL_13:
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:0];
  [*(*(a1 + 32) + 256) setSceneView:0];
  [*(a1 + 32) _setCurrentState:2];
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7F32D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32530;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _finishCleanup];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
}

- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_pictureInPictureShouldStartWhenEnteringBackground != v4)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[PGPictureInPictureRemoteObject setPictureInPictureShouldStartWhenEnteringBackground:completionHandler:]";
      v14 = 2048;
      v15 = self;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v12, 0x1Cu);
    }
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v9 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v9 == WeakRetained)
  {
    self->_pictureInPictureShouldStartWhenEnteringBackground = v4;
    v6[2](v6, 1, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (v6)[2](v6, 0, v11);
  }
}

- (void)updatePlaybackStateWithDiff:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[PGPictureInPictureRemoteObject updatePlaybackStateWithDiff:]";
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v7 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v7 == WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PGPictureInPictureRemoteObject_updatePlaybackStateWithDiff___block_invoke;
    v9[3] = &unk_1E7F32508;
    v9[4] = self;
    v10 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __62__PGPictureInPictureRemoteObject_updatePlaybackStateWithDiff___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) contentType];
  v3 = *(*(a1 + 32) + 144);
  if (v3)
  {
    [v3 updatePlaybackStateWithDiff:*(a1 + 40)];
  }

  else
  {
    v4 = [[PGPlaybackState alloc] initWithDictionary:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 144);
    *(v5 + 144) = v4;
  }

  [*(*(a1 + 32) + 256) updatePlaybackStateWithDiff:*(a1 + 40)];
  v7 = [*(*(a1 + 32) + 144) backgroundAudioPolicy] == 1 || objc_msgSend(*(*(a1 + 32) + 144), "backgroundAudioPolicy") == 3;
  if (v7 != [*(*(a1 + 32) + 152) isExemptFromUILockInterruptionsWhenActive])
  {
    [*(*(a1 + 32) + 152) setExemptFromUILockInterruptionsWhenActive:v7];
    [*(a1 + 32) _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  }

  if (v2 != [*(*(a1 + 32) + 144) contentType])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
  }
}

- (void)updateMenuItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureRemoteObject updateMenuItems:];
    }
  }

  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PGPictureInPictureRemoteObject updateMenuItems:]";
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v10 = v8 == WeakRetained;

  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke;
    v16[3] = &unk_1E7F32F50;
    objc_copyWeak(v17, buf);
    v16[4] = self;
    v17[1] = a2;
    v11 = [v5 bs_map:v16];
    v12 = objc_loadWeakRetained(&self->_connection);
    v13 = [v12 PG_hasMenuItemProviderEntitlement];

    if (v13)
    {
      v15 = v11;
      BSDispatchMain();
    }

    else
    {
      v14 = PGLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PGPictureInPictureRemoteObject updateMenuItems:v14];
      }
    }

    objc_destroyWeak(v17);
  }

  objc_destroyWeak(buf);
}

PGMenuItem *__50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGMenuItem alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_2;
  v8[3] = &unk_1E7F32F28;
  objc_copyWeak(v9, (a1 + 40));
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9[1] = v5;
  v6 = [(PGMenuItem *)v4 initWithDictionary:v3 action:v8];
  objc_destroyWeak(v9);

  return v6;
}

void __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_3;
    v8[3] = &unk_1E7F32A58;
    v7 = *(a1 + 32);
    v8[4] = WeakRetained;
    v8[5] = v7;
    v10 = *(a1 + 48);
    v9 = v3;
    dispatch_async(v6, v8);
  }
}

void __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 40), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForMenuItemSelected:](PGCommand, "commandForMenuItemSelected:", [*(a1 + 48) identifier]);
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

uint64_t __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 256);

  return [v6 setMenuItems:v5];
}

- (void)setActivitySessionIdentifier:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v6 == WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PGPictureInPictureRemoteObject_setActivitySessionIdentifier___block_invoke;
    v8[3] = &unk_1E7F32508;
    v9 = v4;
    v10 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __63__PGPictureInPictureRemoteObject_setActivitySessionIdentifier___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(*(a1 + 40) + 248) bundleIdentifier];
  }

  v4 = v3;
  v5 = [*(a1 + 40) activitySessionIdentifier];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [v8 activitySessionIdentifier];
      v20 = 136315906;
      v21 = "[PGPictureInPictureRemoteObject setActivitySessionIdentifier:]_block_invoke";
      v22 = 2048;
      v23 = v8;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", &v20, 0x2Au);
    }

    v10 = [v4 copy];
    v11 = *(a1 + 40);
    v12 = *(v11 + 128);
    *(v11 + 128) = v10;

    v13 = *(a1 + 40);
    v14 = *(v13 + 232);
    *(v13 + 232) = 0;

    if ([*(a1 + 40) currentState] == 6)
    {
      v15 = [v4 copy];
      v16 = *(a1 + 40);
      v17 = *(v16 + 232);
      *(v16 + 232) = v15;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 240));
    [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 40)];

    v19 = [*(*(a1 + 40) + 256) viewModel];
    [v19 setInActivitySession:{objc_msgSend(*(a1 + 40), "_isInActivitySession")}];
  }
}

- (void)setExemptAttributionOverride:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (v6 == WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PGPictureInPictureRemoteObject_setExemptAttributionOverride___block_invoke;
    v8[3] = &unk_1E7F32508;
    v8[4] = self;
    v9 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __63__PGPictureInPictureRemoteObject_setExemptAttributionOverride___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[PGPictureInPictureRemoteObject setExemptAttributionOverride:]_block_invoke";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v10, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 136);
  if (!v8)
  {
    v8 = *(v7 + 296);
  }

  [*(v7 + 152) setExemptAttribution:v8];
  return [*(a1 + 32) _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
}

- (void)stopPictureInPictureAndRestoreUserInterface
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
    *buf = 136315650;
    v6 = "[PGPictureInPictureRemoteObject stopPictureInPictureAndRestoreUserInterface]";
    v7 = 2048;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  if ([(PGPictureInPictureRemoteObject *)self _isAppICS])
  {
    BSDispatchMain();
  }
}

- (void)pagingAccessorySetCurrentPage:(unint64_t)a3 numberOfPages:(unint64_t)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PGPictureInPictureRemoteObject_pagingAccessorySetCurrentPage_numberOfPages___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PGPictureInPictureRemoteObject_pagingAccessorySetCurrentPage_numberOfPages___block_invoke(void *a1)
{
  *(a1[4] + 168) = a1[5];
  *(a1[4] + 176) = a1[6];
  return [*(a1[4] + 256) pagingAccessorySetCurrentPage:a1[5] numberOfPages:?];
}

- (void)setExemptAttribution:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  exemptAttribution = self->_exemptAttribution;
  if (exemptAttribution != v4 && ![(NSString *)exemptAttribution isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_exemptAttribution;
    self->_exemptAttribution = v6;

    if (!self->_exemptAttributionOverride)
    {
      v8 = PGLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "[PGPictureInPictureRemoteObject setExemptAttribution:]";
        v11 = 2114;
        v12 = self;
        _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v9, 0x16u);
      }

      [(PGInterruptionAssistant *)self->_interruptionAssistant setExemptAttribution:v4];
      [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
    }
  }
}

- (void)_updateActiveProxyAndViewControllerOfInterruptionIfNeeded
{
  BSDispatchQueueAssertMain();
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setInterrupted:[(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted]];
  [(PGPictureInPictureRemoteObject *)self _acquireOrInvalidateProcessAssertionIfNeeded];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PGPictureInPictureRemoteObject__updateActiveProxyAndViewControllerOfInterruptionIfNeeded__block_invoke;
  block[3] = &unk_1E7F32530;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __91__PGPictureInPictureRemoteObject__updateActiveProxyAndViewControllerOfInterruptionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) shouldNotifyProxyOfInterruptionBegan];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _queue_notifyProxyOfInterruptionBegan];
  }

  else
  {
    result = [v3[19] shouldNotifyProxyOfInterruptionEnded];
    if (result)
    {
      v5 = *(a1 + 32);

      return [v5 _queue_notifyProxyOfInterruptionEnded];
    }
  }

  return result;
}

- (BOOL)_currentStateAllowsProcessAssertion
{
  BSDispatchQueueAssertMain();
  currentState = self->_currentState;
  if (currentState > 0xD)
  {
    return 0;
  }

  if (((1 << currentState) & 0x2F80) != 0)
  {
    return self->_processAssertion != 0;
  }

  return ((1 << currentState) & 0x78) != 0;
}

- (BOOL)_wantsProcessAssertion
{
  BSDispatchQueueAssertMain();
  v3 = [(PGPictureInPictureRemoteObject *)self _currentStateAllowsProcessAssertion];
  if (v3)
  {
    v4 = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v5 = [(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1];
    LOBYTE(v3) = !v5;
    if (!v5 && v4)
    {

      LOBYTE(v3) = [(PGPictureInPictureRemoteObject *)self isVideoCall];
    }
  }

  return v3;
}

- (void)_acquireOrInvalidateProcessAssertionIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  v3 = [(PGPictureInPictureRemoteObject *)self _wantsProcessAssertion];
  processAssertion = self->_processAssertion;
  if (v3)
  {
    if (processAssertion)
    {
      return;
    }

    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGPictureInPictureRemoteObject _acquireOrInvalidateProcessAssertionIfNeeded]";
      v25 = 2048;
      v26 = self;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p Acquiring process assertion", buf, 0x16u);
    }

    [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v7 = +[PGProcessAssertion pipVisibleAssertionForProcessWithIdentifier:explanation:legacy:](PGProcessAssertion, "pipVisibleAssertionForProcessWithIdentifier:explanation:legacy:", [WeakRetained processIdentifier], @"PIP Visible Assertion", self->_sceneControllerIfExists == 0);
    v8 = self->_processAssertion;
    self->_processAssertion = v7;

    [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists setForeground:1];
    [(PGProcessAssertion *)self->_startBackgroundPIPAssertion invalidate];
    startBackgroundPIPAssertion = self->_startBackgroundPIPAssertion;
    self->_startBackgroundPIPAssertion = 0;
  }

  else
  {
    if (!processAssertion)
    {
      return;
    }

    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGPictureInPictureRemoteObject _acquireOrInvalidateProcessAssertionIfNeeded]";
      v25 = 2048;
      v26 = self;
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "%s %p Invalidating process assertion", buf, 0x16u);
    }

    [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    objc_storeStrong(&self->_finishTaskInvalidationUUID, v11);
    v12 = objc_loadWeakRetained(&self->_connection);
    v13 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [v12 processIdentifier], @"interruption began assertion");
    interruptionBeganFinishTaskAssertion = self->_interruptionBeganFinishTaskAssertion;
    self->_interruptionBeganFinishTaskAssertion = v13;

    v15 = dispatch_time(0, 3000000000);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__PGPictureInPictureRemoteObject__acquireOrInvalidateProcessAssertionIfNeeded__block_invoke;
    v20 = &unk_1E7F32508;
    v21 = v11;
    v22 = self;
    startBackgroundPIPAssertion = v11;
    dispatch_after(v15, MEMORY[0x1E69E96A0], &v17);
    [(PGProcessAssertion *)self->_processAssertion invalidate:v17];
    v16 = self->_processAssertion;
    self->_processAssertion = 0;

    [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists setForeground:0];
  }
}

void *__78__PGPictureInPictureRemoteObject__acquireOrInvalidateProcessAssertionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _invalidateInterruptionBeganFinishTaskAssertion];
  }

  return result;
}

- (void)_queue_notifyProxyOfInterruptionBegan
{
  v11 = *MEMORY[0x1E69E9840];
  [(PGInterruptionAssistant *)self->_interruptionAssistant noteDidNotifyProxyOfInterruptionBegan];
  v3 = +[PGCommand commandForBeginInterruption];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "remote object %p notifying proxy of pictureInPictureInterruptionBegan", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = _PGLogMethodProem(self, 1);
  v7 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v6];
  v8 = [v3 dictionaryRepresentation];
  [v7 handleCommand:v8];
}

- (void)_queue_notifyProxyOfInterruptionEnded
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PGInterruptionAssistant *)self->_interruptionAssistant allowsResumingAfterInterruptionEnds];
  [(PGInterruptionAssistant *)self->_interruptionAssistant noteDidNotifyProxyOfInterruptionEnded];
  v4 = [PGCommand commandForEndInterruptionWithShouldResumeSuggestion:v3];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    v11 = self;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "remote object %p notifying proxy of pictureInPictureInterruptionEnded shouldResumeSuggestion %{BOOL}u", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7 = _PGLogMethodProem(self, 1);
  v8 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v7];
  v9 = [v4 dictionaryRepresentation];
  [v8 handleCommand:v9];
}

- (void)pictureInPictureViewController:(id)a3 updateHostedWindowSize:(CGSize)a4 animationType:(int64_t)a5 initialSpringVelocity:(double)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = PGLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = PGLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  sceneControllerIfExists = self->_sceneControllerIfExists;
  if (sceneControllerIfExists)
  {
    [(PGPIPRemoteObjectSceneController *)sceneControllerIfExists updateSize:a5 animationType:width initialSpringVelocity:height, a6];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__PGPictureInPictureRemoteObject_pictureInPictureViewController_updateHostedWindowSize_animationType_initialSpringVelocity___block_invoke;
    block[3] = &unk_1E7F32F78;
    v21 = v17;
    v22 = a2;
    v23 = width;
    v24 = height;
    v25 = a5;
    v26 = a6;
    block[4] = self;
    v19 = v17;
    dispatch_async(queue, block);

    objc_autoreleasePoolPop(v16);
  }
}

void __124__PGPictureInPictureRemoteObject_pictureInPictureViewController_updateHostedWindowSize_animationType_initialSpringVelocity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 updateHostedWindowSize:*(a1 + 72) animationType:*(a1 + 40) initialSpringVelocity:*(a1 + 56) synchronizationFence:{*(a1 + 64), *(a1 + 80)}];
}

- (void)pictureInPictureViewControllerHostedWindowSizeChangeBegan:(id)a3
{
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeBegan___block_invoke;
  v8[3] = &unk_1E7F32870;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(queue, v8);
}

void __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeBegan___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 hostedWindowSizeChangeBegan];
}

- (void)pictureInPictureViewControllerHostedWindowSizeChangeEnded:(id)a3
{
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeEnded___block_invoke;
  v8[3] = &unk_1E7F32870;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(queue, v8);
}

void __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeEnded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 hostedWindowSizeChangeEnded];
}

- (void)pictureInPictureViewControllerDidRequestStop:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PGPictureInPictureRemoteObject *)self canStopPictureInPicture];
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[PGPictureInPictureRemoteObject pictureInPictureViewControllerDidRequestStop:]";
    v12 = 2048;
    v13 = self;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p canStop: %{BOOL}u", &v10, 0x1Cu);
  }

  if (v5)
  {
    self->_hasPendingStopRequest = 0;
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureWillStopForAppRequest:0 preferredFullScreenRestore:1];
    v7 = [(PGPictureInPictureRemoteObject *)self delegate];
    v8 = [(PGPictureInPictureRemoteObject *)self sourceSceneSessionPersistentIdentifier];
    [v7 pictureInPictureRemoteObject:self didRequestPictureInPictureStopForViewController:v4 sourceSceneSessionIdentifier:v8 animated:1];
  }

  else
  {
    v9 = !self->_hasPendingCancellationRequest && [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
    self->_hasPendingStopRequest = v9;
  }
}

- (void)pictureInPictureViewController:(id)a3 didReceiveCommand:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = PGLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v11 = [v8 systemAction];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      [(PGPictureInPictureRemoteObject *)self pictureInPictureViewControllerDidRequestStop:v7];
    }

    else if (v11 == 3)
    {
      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      [(PGPictureInPictureRemoteObject *)self pictureInPictureViewControllerDidRequestCancel:v7];
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke_2;
      block[3] = &unk_1E7F32870;
      block[4] = self;
      block[5] = a2;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v13 = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke;
    v15[3] = &unk_1E7F32FA0;
    v15[4] = self;
    v17 = a2;
    v16 = v8;
    dispatch_async(v13, v15);
  }
}

void __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = [*(a1 + 40) dictionaryRepresentation];
  [v3 handleCommand:v4];
}

void __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 actionButtonTapped];
}

- (void)pictureInPictureViewControllerDidRequestCancel:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v5 = [(PGPictureInPictureRemoteObject *)self canCancelPictureInPicture];
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[PGPictureInPictureRemoteObject pictureInPictureViewControllerDidRequestCancel:]";
    v9 = 2048;
    v10 = self;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p canCancel: %{BOOL}u", &v7, 0x1Cu);
  }

  if (v5)
  {
    [(PGPictureInPictureRemoteObject *)self cancel];
  }
}

- (void)pictureInPictureViewController:(id)a3 didTransitionToStashed:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _PGLogMethodProem(self, 1);
    *buf = 138543874;
    v16 = v8;
    v17 = 1024;
    v18 = v4;
    v19 = 1024;
    v20 = [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ setStashed:%{BOOL}u [self _isUnderLock]:%{BOOL}u", buf, 0x18u);
  }

  self->_stashed = v4;
  if (v4)
  {
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:1];
    if ([(PGPlaybackState *)self->_playbackState backgroundAudioPolicy]== 2 && !self->_considerStashedPlaybackAsBackgroundAudioTimer)
    {
      objc_initWeak(buf, self);
      v9 = MEMORY[0x1E695DFF0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__PGPictureInPictureRemoteObject_pictureInPictureViewController_didTransitionToStashed___block_invoke;
      v13[3] = &unk_1E7F32990;
      objc_copyWeak(&v14, buf);
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v13 block:30.0];
      considerStashedPlaybackAsBackgroundAudioTimer = self->_considerStashedPlaybackAsBackgroundAudioTimer;
      self->_considerStashedPlaybackAsBackgroundAudioTimer = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:[(PGPictureInPictureRemoteObject *)self _isUnderLock]];
    [(NSTimer *)self->_considerStashedPlaybackAsBackgroundAudioTimer invalidate];
    v12 = self->_considerStashedPlaybackAsBackgroundAudioTimer;
    self->_considerStashedPlaybackAsBackgroundAudioTimer = 0;

    [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:3 attribution:0];
  }
}

void __88__PGPictureInPictureRemoteObject_pictureInPictureViewController_didTransitionToStashed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained pictureInPictureInterruptionBeganWithReason:3 attribution:0];
    WeakRetained = v2;
  }
}

- (BOOL)canPreventOrSuspendRemoteObject:(id)a3
{
  v4 = a3;
  if (-[PGPictureInPictureRemoteObject _isICSVideoCall](self, "_isICSVideoCall") && [v4 isVideoCall])
  {
    v5 = [v4 _isAppICS] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)pagingSkipByNumberOfPages:(int64_t)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PGPictureInPictureRemoteObject_pagingSkipByNumberOfPages___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(queue, block);
}

void __60__PGPictureInPictureRemoteObject_pagingSkipByNumberOfPages___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 pagingSkipByNumberOfPages:*(a1 + 48)];
}

- (PGPictureInPictureRemoteObjectDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (CGRect)initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding
{
  x = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.origin.x;
  y = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.origin.y;
  width = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.size.width;
  height = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithConnection:interruptionAssistant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7, v8);
}

+ (uint64_t)tetherRemoteObject:toRemoteObject:mode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:816 description:{@"Failed to tether [%@] to [%@]. isStoppingTethering[%u] canStartTethering[%u]", v1, v0, 0, 0}];

  return [v1 setTetheringRemoteObject:v0];
}

+ (uint64_t)tetherRemoteObject:(uint64_t)a1 toRemoteObject:(uint64_t)a2 mode:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:813 description:{@"Invalid parameter not satisfying: %@", @"tetheredObject != nil || tetheringObject != nil"}];

  [0 canTetherRemoteObjectAsMicroPIP:0];
  return [0 setTetheringRemoteObject:0];
}

- (void)_setCurrentState:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = PGStringFromPictureInPictureRemoteObjectState(v3);
  v5 = PGStringFromPictureInPictureRemoteObjectState(v2);
  [v6 handleFailureInMethod:v1 object:v0 file:@"PGPictureInPictureRemoteObject.m" lineNumber:853 description:{@"%@ attempted transition from %@ to %@, which is not allowed.", v0, v4, v5}];
}

- (void)updateMenuItems:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@ may not be invoked on the main thread!", v4, v5, v6, v7, v8);
}

@end