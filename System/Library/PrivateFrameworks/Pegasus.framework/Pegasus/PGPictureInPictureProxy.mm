@interface PGPictureInPictureProxy
+ (BOOL)isPictureInPictureSupported;
+ (id)pictureInPictureProxyWithControlsStyle:(int64_t)style viewController:(id)controller;
+ (void)_updatePictureInPictureActive:(BOOL)active;
- (BOOL)_canBeShownInMicroPIPMode;
- (BOOL)_isInCallService;
- (BOOL)_isViewControllerWindowSceneActive;
- (BOOL)_isViewControllerWindowSceneConsideredActive;
- (BOOL)canSwitchCamera;
- (BOOL)disablesLayerCloning;
- (BOOL)isCameraActive;
- (BOOL)isMicrophoneMuted;
- (BOOL)isPictureInPictureActive;
- (BOOL)isPictureInPictureInterrupted;
- (BOOL)isPictureInPicturePossible;
- (BOOL)isPictureInPictureSuspended;
- (BOOL)pictureInPictureShouldStartWhenEnteringBackground;
- (BOOL)pictureInPictureWasStartedWhenEnteringBackground;
- (CGRect)_viewFrameForTransitionAnimationAssumeApplicationActive:(BOOL)active;
- (PGPictureInPictureProxy)init;
- (PGPictureInPictureProxy)initWithControlsStyle:(int64_t)style viewController:(id)controller;
- (PGPictureInPictureProxyDelegate)delegate;
- (PGPlaybackState)playbackState;
- (double)playbackProgress;
- (double)playbackRate;
- (id)_bestKnownConnectedSceneSessionPersistentIdentifier;
- (id)_connection;
- (id)_expectedScene;
- (id)_generatePlaybackStateDiffAndMarkAsSent;
- (id)_remoteObject;
- (id)_remoteObjectWithErrorHandler:(id)handler;
- (id)_sourceScene;
- (id)clientSessionIdentifier;
- (id)loadedTimeRanges;
- (id)menuItems;
- (int64_t)_activationState;
- (int64_t)_interfaceOrientationForTransitionAnimationAssumeApplicationActive:(BOOL)active;
- (void)__actuallyStartWithAnimationType:(int64_t)type successHandler:(id)handler failureHandler:(id)failureHandler;
- (void)__actuallyStopAnimated:(BOOL)animated reason:(int64_t)reason finalLayerFrame:(CGRect)frame finalInterfaceOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)__cleanupWithCompletionHandler:(id)handler;
- (void)__coordinateStartAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)__didStartWithAnimationType:(int64_t)type completionHandler:(id)handler;
- (void)__restoreUserInterfaceAnimated:(BOOL)animated reason:(int64_t)reason completionHandler:(id)handler;
- (void)__setConnection:(id)connection;
- (void)__setupStartWithAnimationType:(int64_t)type initialLayerFrame:(CGRect)frame successHandler:(id)handler failureHandler:(id)failureHandler;
- (void)__setupStopAnimated:(BOOL)animated needsApplicationActivation:(BOOL)activation waitForApplicationActivation:(BOOL)applicationActivation successHandler:(id)handler failureHandler:(id)failureHandler;
- (void)__updateCancellationPolicyWithSuccessHandler:(id)handler failureHandler:(id)failureHandler;
- (void)__waitForApplicationActivationWithSuccessHandler:(id)handler failureHandler:(id)failureHandler;
- (void)_addViewControllerToHostedWindowIfNeeded;
- (void)_addWindowSceneActivationStateObserverIfNeeded:(id)needed;
- (void)_applicationDidBecomeActive;
- (void)_beginDeactivatingPictureInPictureWithAnimationType:(int64_t)type stopReason:(int64_t)reason;
- (void)_cancelPrewarming;
- (void)_deactivateIfNeededForInterruptedOrInvalidatedConnection;
- (void)_endDeactivatingPictureInPictureIfNeededWithAnimationType:(int64_t)type stopReason:(int64_t)reason cleanupHandlerOrNil:(id)nil;
- (void)_establishConnection;
- (void)_executeDelegateCallbackBlock:(id)block assumeApplicationActive:(BOOL)active;
- (void)_handleSceneConnectionChangedNotification:(id)notification;
- (void)_initializeWithControlsStyle:(int64_t)style viewController:(id)controller reason:(id)reason;
- (void)_invalidateConnectionForFailure;
- (void)_legacyPictureInPictureInterruptionBegan;
- (void)_legacyPictureInPictureInterruptionEnded;
- (void)_markConnectionAsInterrupted;
- (void)_notifyActionButtonTapped;
- (void)_pipSceneComponentDidConnect:(id)connect;
- (void)_pipSceneComponentDidDisconnect:(id)disconnect;
- (void)_prewarmAndStartAfterTimeout;
- (void)_removeViewControllerFromHostedWindowIfNeeded;
- (void)_resetInternalState;
- (void)_restoreInterruptedConnectionIfNeeded;
- (void)_setActivationState:(int64_t)state reason:(id)reason;
- (void)_setInterruptedForDefaultReason:(BOOL)reason initiatedByRemoteObject:(BOOL)object;
- (void)_setMaybeNeedsUpdatePlaybackState;
- (void)_setPictureInPictureActive:(BOOL)active;
- (void)_setPictureInPicturePossible:(BOOL)possible;
- (void)_setPictureInPictureSuspended:(BOOL)suspended;
- (void)_setRequestedWindowScene:(id)scene;
- (void)_setStashedOrUnderLock:(BOOL)lock reason:(id)reason;
- (void)_startBackgroundPIPWhilePrewarmingIfNeeded;
- (void)_startPictureInPictureAnimated:(BOOL)animated enteringBackground:(BOOL)background reason:(id)reason withCompletionHandler:(id)handler;
- (void)_stopObservingWindowSceneActivationState;
- (void)_stopPictureInPictureAnimated:(BOOL)animated restoreUserInterface:(BOOL)interface withCompletionHandler:(id)handler;
- (void)_twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock:(id)block completionHandler:(id)handler;
- (void)_updateAutoPIPSettingsAndNotifyRemoteObjectIfNeeded;
- (void)_updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:(id)reason;
- (void)_updateFaceTimePlaybackStateUsingBlock:(id)block;
- (void)_updateIsInterruptedIfNeededForReason:(id)reason initiatedByRemoteObject:(BOOL)object;
- (void)_updatePlaybackStateContentTypeIfNeeded;
- (void)_updatePlaybackStateIfNeeded;
- (void)_viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:(id)reason;
- (void)_windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:(id)reason;
- (void)actionButtonTapped;
- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)block;
- (void)handleCommand:(id)command;
- (void)hostedWindowSizeChangeBegan;
- (void)hostedWindowSizeChangeEnded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages;
- (void)pagingSkipByNumberOfPages:(int64_t)pages;
- (void)pictureInPictureCancelRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)pictureInPictureInvalidated;
- (void)pictureInPictureStartRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)pictureInPictureStopRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)preferredContentSizeDidChangeForViewController;
- (void)rotateContentContainer:(int64_t)container withCompletionHandler:(id)handler;
- (void)setAutomaticallyInterruptsForLegacyFaceTimeBehaviors:(BOOL)behaviors;
- (void)setCameraActive:(BOOL)active;
- (void)setCanSwitchCamera:(BOOL)camera;
- (void)setClientSessionIdentifier:(id)identifier;
- (void)setControlsStyle:(int64_t)style;
- (void)setControlsStyle:(int64_t)style animated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setDisablesLayerCloning:(BOOL)cloning;
- (void)setLoadedTimeRanges:(id)ranges;
- (void)setMenuItems:(id)items;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setOverrideInterruptionExemptionIdentifier:(id)identifier;
- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)background;
- (void)setPlaybackProgress:(double)progress playbackRate:(double)rate;
- (void)setReadyForDisplay:(BOOL)display;
- (void)setResourcesUsageReductionReasons:(unint64_t)reasons;
- (void)setStashedOrUnderLock:(BOOL)lock;
- (void)skipForwardButtonTappedWithTimeInterval:(double)interval;
- (void)startPictureInPicture;
- (void)stopPictureInPictureAndRestoreUserInterface:(BOOL)interface;
- (void)updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity synchronizationFence:(id)fence;
- (void)updatePictureInPicturePossible:(BOOL)possible;
- (void)updatePlaybackStateUsingBlock:(id)block;
@end

@implementation PGPictureInPictureProxy

+ (BOOL)isPictureInPictureSupported
{
  if (isPictureInPictureSupported_onceToken_0 != -1)
  {
    +[PGPictureInPictureProxy isPictureInPictureSupported];
  }

  return isPictureInPictureSupported_isPictureInPictureSupported_0;
}

uint64_t __54__PGPictureInPictureProxy_isPictureInPictureSupported__block_invoke()
{
  result = PGIsPictureInPictureSupported();
  isPictureInPictureSupported_isPictureInPictureSupported_0 = result;
  return result;
}

- (PGPlaybackState)playbackState
{
  playbackState = self->_playbackState;
  if (!playbackState)
  {
    v4 = [[PGPlaybackState alloc] initWithDictionary:0];
    v5 = self->_playbackState;
    self->_playbackState = v4;

    playbackState = self->_playbackState;
  }

  return playbackState;
}

- (void)_setMaybeNeedsUpdatePlaybackState
{
  objc_initWeak(&location, self);
  runLoopObserver = self->_runLoopObserver;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PGPictureInPictureProxy__setMaybeNeedsUpdatePlaybackState__block_invoke;
  v4[3] = &unk_1E7F33190;
  objc_copyWeak(&v5, &location);
  [(PGRunLoopObserver *)runLoopObserver setActions:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isPictureInPictureActive
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_isPictureInPictureActive;
}

- (BOOL)isPictureInPictureInterrupted
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_isInterruptedForAnyReason;
}

- (id)_expectedScene
{
  _sourceScene = [(PGPictureInPictureProxy *)self _sourceScene];
  if (!_sourceScene)
  {
    if ((*&self->_delegateRespondsTo & 4) != 0)
    {
      delegate = [(PGPictureInPictureProxy *)self delegate];
      v5 = [delegate pictureInPictureProxyViewControllerWindowForTransitionAnimation:self];
      _sourceScene = [v5 windowScene];
    }

    else
    {
      _sourceScene = 0;
    }
  }

  return _sourceScene;
}

- (id)_sourceScene
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_sceneSessionPersistentIdentifier)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    connectedScenes = [*MEMORY[0x1E69DDA98] connectedScenes];
    v4 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(connectedScenes);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          session = [v8 session];
          persistentIdentifier = [session persistentIdentifier];
          v11 = [persistentIdentifier isEqualToString:self->_sceneSessionPersistentIdentifier];

          if (v11)
          {
            v12 = v8;
            goto LABEL_12;
          }
        }

        v5 = [connectedScenes countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __60__PGPictureInPictureProxy__setMaybeNeedsUpdatePlaybackState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlaybackStateIfNeeded];
}

- (void)_updatePlaybackStateIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_canSendPlaybackState && ![(PGPlaybackState *)self->_playbackState isEquivalentToPlaybackState:self->_playbackStateAccordingToRemoteObject])
  {
    _generatePlaybackStateDiffAndMarkAsSent = [(PGPictureInPictureProxy *)self _generatePlaybackStateDiffAndMarkAsSent];
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      playbackState = [(PGPictureInPictureProxy *)self playbackState];
      *buf = 136315650;
      v11 = "[PGPictureInPictureProxy _updatePlaybackStateIfNeeded]";
      v12 = 2048;
      selfCopy = self;
      v14 = 2114;
      v15 = playbackState;
      _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p APP: %{public}@", buf, 0x20u);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PGPictureInPictureProxy__updatePlaybackStateIfNeeded__block_invoke;
    v8[3] = &unk_1E7F32508;
    v8[4] = self;
    v9 = _generatePlaybackStateDiffAndMarkAsSent;
    v7 = _generatePlaybackStateDiffAndMarkAsSent;
    dispatch_async(queue, v8);
  }
}

- (void)_updatePlaybackStateContentTypeIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 pictureInPictureProxyContentType:self];

    playbackState = [(PGPictureInPictureProxy *)self playbackState];
    [playbackState setContentType:v6];

    if (v6 == 4)
    {
LABEL_3:
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = objc_opt_respondsToSelector();

      playbackState2 = [(PGPictureInPictureProxy *)self playbackState];
      [playbackState2 setSupportsFaceTimeActions:v9 & 1];
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if ([(PGPictureInPictureProxy *)self _isInCallService]&& PGPictureInPictureProxyMaySupportsScreenSharing == 1)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    disablesLayerCloning = [(PGPictureInPictureProxy *)self disablesLayerCloning];
    v14 = 4;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __66__PGPictureInPictureProxy__updatePlaybackStateContentTypeIfNeeded__block_invoke;
    v30 = &__block_descriptor_41_e49_v16__0___PGMutablePlaybackStateFaceTimeSupport__8l;
    if (!disablesLayerCloning)
    {
      v14 = 5;
    }

    v31 = v14;
    v32 = v12 & 1;
    [(PGPictureInPictureProxy *)self _updateFaceTimePlaybackStateUsingBlock:&v27];
    goto LABEL_26;
  }

  controlsStyle = [(PGPictureInPictureProxy *)self controlsStyle];
  if (controlsStyle > 3)
  {
    if ((controlsStyle - 4) <= 1)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        playbackState3 = [(PGPictureInPictureProxy *)self playbackState];
        [playbackState3 setContentType:4];
      }

      playbackState4 = [(PGPictureInPictureProxy *)self playbackState];
      [playbackState4 setSupportsFaceTimeActions:v19 & 1];
    }

    goto LABEL_26;
  }

  switch(controlsStyle)
  {
    case 1:
      playbackState5 = [(PGPictureInPictureProxy *)self playbackState];
      if ([playbackState5 contentType] == 1)
      {
        playbackState6 = [(PGPictureInPictureProxy *)self playbackState];
        contentType = [playbackState6 contentType];

        if (contentType == 2)
        {
          break;
        }
      }

      else
      {
      }

      playbackState7 = [(PGPictureInPictureProxy *)self playbackState];
      playbackState2 = playbackState7;
      v17 = 1;
      goto LABEL_24;
    case 2:
      playbackState8 = [(PGPictureInPictureProxy *)self playbackState];
      [playbackState8 setContentType:4];

      goto LABEL_3;
    case 3:
      playbackState7 = [(PGPictureInPictureProxy *)self playbackState];
      playbackState2 = playbackState7;
      v17 = 3;
LABEL_24:
      [playbackState7 setContentType:v17];
      goto LABEL_25;
  }

LABEL_26:
  if (self->_controlsStyle == 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    playbackState9 = [(PGPictureInPictureProxy *)self playbackState];
    [playbackState9 setCameraHasMicrophone:{-[PGPictureInPictureViewController shouldShowAlternateActionButtonImage](self->_viewController, "shouldShowAlternateActionButtonImage")}];
  }

  [(PGPictureInPictureProxy *)self _setMaybeNeedsUpdatePlaybackState:v27];
}

+ (void)_updatePictureInPictureActive:(BOOL)active
{
  v4 = __activePictureInPictureProxyObjectCount;
  if (active)
  {
    ++__activePictureInPictureProxyObjectCount;
    if (v4)
    {
      return;
    }
  }

  else if (--__activePictureInPictureProxyObjectCount)
  {
    return;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PGPictureInPictureProxyPictureInPictureActiveChangedNotification" object:self];
}

+ (id)pictureInPictureProxyWithControlsStyle:(int64_t)style viewController:(id)controller
{
  controllerCopy = controller;
  v6 = [[PGPictureInPictureProxy alloc] initWithControlsStyle:style viewController:controllerCopy];

  return v6;
}

- (PGPictureInPictureProxy)initWithControlsStyle:(int64_t)style viewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [PGPictureInPictureProxy initWithControlsStyle:viewController:];
  }

  if ([objc_opt_class() isPictureInPictureSupported])
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureRemoteObject dealloc];
    }

    v28.receiver = self;
    v28.super_class = PGPictureInPictureProxy;
    v9 = [(PGPictureInPictureProxy *)&v28 init];
    v10 = v9;
    if (v9)
    {
      v9->_lock._os_unfair_lock_opaque = 0;
      v11 = objc_alloc_init(PGRunLoopObserver);
      runLoopObserver = v10->_runLoopObserver;
      v10->_runLoopObserver = v11;

      v10->_readyForDisplay = 1;
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pegasus.PGPictureInPictureProxy %p", v10];
      uTF8String = [v13 UTF8String];
      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v16 = dispatch_queue_create(uTF8String, v15);
      queue = v10->_queue;
      v10->_queue = v16;

      [(PGPictureInPictureProxy *)v10 _establishConnection];
      [(PGPictureInPictureProxy *)v10 _resetInternalState];
      v18 = NSStringFromSelector(a2);
      [(PGPictureInPictureProxy *)v10 _initializeWithControlsStyle:style viewController:controllerCopy reason:v18];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel__handleSceneConnectionChangedNotification_ name:*MEMORY[0x1E69DE340] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v10 selector:sel__handleSceneConnectionChangedNotification_ name:*MEMORY[0x1E69DE350] object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:v10 selector:sel__updateInteractiveFrameWorkaroundFor_100127310_ name:*MEMORY[0x1E69DE7D0] object:0];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      v23 = *MEMORY[0x1E69DE360];
      [defaultCenter4 addObserver:v10 selector:sel__updateInteractiveFrameWorkaroundFor_100127310_ name:*MEMORY[0x1E69DE360] object:0];

      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 addObserver:v10 selector:sel__updateInteractiveFrameWorkaroundFor_100127310_ name:v23 object:0];

      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 addObserver:v10 selector:sel__updateInteractiveFrameWorkaroundFor_100127310_ name:@"UIWindowSceneDidEndLiveResizeNotification" object:0];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PGPictureInPictureProxy)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _PGLogMethodProem(self, 0);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithControlsStyle:viewController:].", v5, v7}];

  return [(PGPictureInPictureProxy *)self initWithControlsStyle:0 viewController:0];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7, v8);
}

void __34__PGPictureInPictureProxy_dealloc__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (id)_remoteObject
{
  _connection = [(PGPictureInPictureProxy *)self _connection];
  v4 = _PGLogMethodProem(self, 1);
  v5 = [_connection PG_remoteObjectWithDebugMethodAndPointerProem:v4];

  return v5;
}

- (id)_remoteObjectWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(PGPictureInPictureProxy *)self _connection];
  v6 = _PGLogMethodProem(self, 1);
  v7 = [_connection PG_remoteObjectWithDebugMethodAndPointerProem:v6 errorHandler:handlerCopy];

  return v7;
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__setConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  lock_connection = self->_lock_connection;
  self->_lock_connection = connectionCopy;
  v6 = connectionCopy;

  lock_connectionIfInterrupted = self->_lock_connectionIfInterrupted;
  self->_lock_connectionIfInterrupted = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_markConnectionAsInterrupted
{
  BSDispatchMain();
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_connectionIfInterrupted, self->_lock_connection);
  lock_connection = self->_lock_connection;
  self->_lock_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_restoreInterruptedConnectionIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_connection)
  {
    objc_storeStrong(&self->_lock_connection, self->_lock_connectionIfInterrupted);
    lock_connectionIfInterrupted = self->_lock_connectionIfInterrupted;
    self->_lock_connectionIfInterrupted = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_initializeWithControlsStyle:(int64_t)style viewController:(id)controller reason:(id)reason
{
  v43 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  reasonCopy = reason;
  v11 = PGLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _PGLogMethodProem(self, 1);
    *buf = 138412546;
    v40 = v12;
    v41 = 2114;
    v42 = reasonCopy;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%@ %{public}@", buf, 0x16u);
  }

  BSDispatchQueueAssertMain();
  self->_automaticallyInterruptsForLegacyFaceTimeBehaviors = [(PGPictureInPictureProxy *)self _isInCallService];
  self->_controlsStyle = style;
  objc_storeStrong(&self->_viewController, controller);
  [controllerCopy preferredContentSize];
  v13 = MEMORY[0x1E695F050];
  self->_preferredContentSize.width = v14;
  self->_preferredContentSize.height = v15;
  v16 = *(v13 + 16);
  self->_frameForInteractiveTransitions.origin = *v13;
  self->_frameForInteractiveTransitions.size = v16;
  *&self->_isPictureInPicturePossible = 0;
  self->_isPictureInPictureSuspended = 0;
  self->_shouldPullCancellationPolicyOnStart = 0;
  *&self->_pictureInPictureWasStartedWhenEnteringBackground = 256;
  _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v18 = _applicationKeyWindow;
  if (_applicationKeyWindow)
  {
    v19 = [_applicationKeyWindow _isWindowServerHostingManaged] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  self->_isInViewService = v19;
  if (!self->_requestedSceneIdentifier && ((dyld_program_sdk_at_least() & 1) != 0 || _os_feature_enabled_impl()) && !self->_isInViewService && (_os_feature_enabled_impl() & 1) == 0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    requestedSceneIdentifier = self->_requestedSceneIdentifier;
    self->_requestedSceneIdentifier = uUIDString;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__pipSceneComponentDidConnect_ name:@"PGPIPSceneComponentDidConnectNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__pipSceneComponentDidDisconnect_ name:@"PGPIPSceneComponentDidDisconnectNotification" object:0];
  }

  queue = self->_queue;
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke;
  v36 = &unk_1E7F32508;
  selfCopy = self;
  v21 = reasonCopy;
  v38 = v21;
  dispatch_async(queue, &v33);
  if (!self->_isObservingViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    self->_isObservingViewController = 1;
    [(PGPictureInPictureViewController *)self->_viewController addObserver:self forKeyPath:@"shouldShowAlternateActionButtonImage" options:4 context:PGPictureInPictureProxyViewControllerShouldShowAlternateActionButtonImageObservationContext, v33, v34, v35, v36, selfCopy];
  }

  v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
  rootViewController = self->_rootViewController;
  self->_rootViewController = v22;

  if (!self->_requestedSceneIdentifier)
  {
    v24 = [PGHostedWindow alloc];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v26 = [(PGHostedWindow *)v24 initWithFrame:?];
    hostedWindow = self->_hostedWindow;
    self->_hostedWindow = v26;

    [(PGHostedWindow *)self->_hostedWindow setBackgroundColor:0];
    [(PGHostedWindow *)self->_hostedWindow setHidden:0];
    [(PGHostedWindow *)self->_hostedWindow setRootViewController:self->_rootViewController];
  }
}

void __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _restoreInterruptedConnectionIfNeeded];
  v2 = [*(a1 + 32) _remoteObject];
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  v5 = *(v3 + 272);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke_2;
  v6[3] = &unk_1E7F33780;
  v6[4] = v3;
  v7 = *(a1 + 40);
  [v2 initializePictureInPictureWithControlsStyle:v4 preferredContentSize:v5 sceneIdentifier:0 affectsAppLifeCycle:v6 completionHandler:{*(v3 + 8), *(v3 + 16)}];
}

void __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _remoteObject];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke_3;
    v5[3] = &unk_1E7F33758;
    v5[4] = *(a1 + 32);
    [v3 checkActivePictureInPictureCancellationPolicyWithCompletion:v5];

    v4 = *(a1 + 40);
    BSDispatchMain();
  }
}

uint64_t __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke_3(uint64_t result, int a2, uint64_t a3, char a4, char a5)
{
  if (a2)
  {
    *(*(result + 32) + 106) = a4;
    *(*(result + 32) + 107) = a5;
  }

  return result;
}

uint64_t __78__PGPictureInPictureProxy__initializeWithControlsStyle_viewController_reason___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 1;
  [*(a1 + 32) _updatePlaybackStateContentTypeIfNeeded];
  [*(a1 + 32) _updatePlaybackStateIfNeeded];
  [*(a1 + 32) _viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:*(a1 + 40)];
  [*(a1 + 32) _updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:*(a1 + 40)];
  [*(a1 + 32) _updateIsInterruptedIfNeededForReason:*(a1 + 40)];
  [*(a1 + 32) setClientSessionIdentifier:*(*(a1 + 32) + 64)];
  [*(a1 + 32) setOverrideInterruptionExemptionIdentifier:*(*(a1 + 32) + 72)];
  v2 = *(a1 + 32);

  return [v2 _updateScreenSharingInfoIfNeeded];
}

- (void)_resetInternalState
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _PGLogMethodProem(self, 1);
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  BSDispatchQueueAssertMain();
  self->_needsReinitialization = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69DDAB0];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [defaultCenter removeObserver:self name:v6 object:mEMORY[0x1E69DC668]];

  [(PGPictureInPictureProxy *)self _stopObservingWindowSceneActivationState];
  if (self->_isObservingViewController)
  {
    self->_isObservingViewController = 0;
    [(PGPictureInPictureViewController *)self->_viewController removeObserver:self forKeyPath:@"shouldShowAlternateActionButtonImage" context:PGPictureInPictureProxyViewControllerShouldShowAlternateActionButtonImageObservationContext];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  childViewControllers = [(UIViewController *)self->_rootViewController childViewControllers];
  v9 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [v13 willMoveToParentViewController:0];
        viewIfLoaded = [v13 viewIfLoaded];
        [viewIfLoaded removeFromSuperview];

        [v13 removeFromParentViewController];
      }

      v10 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [(PGHostedWindow *)self->_hostedWindow setHidden:1];
  hostedWindow = self->_hostedWindow;
  self->_hostedWindow = 0;

  self->_pictureInPictureWasStartedWhenEnteringBackground = 0;
  if (self->_isHostedWindowSizeChangeDuringPinchGesture)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PGPictureInPictureViewController *)self->_viewController viewDidResize];
    }

    self->_isHostedWindowSizeChangeDuringPinchGesture = 0;
  }

  sceneSessionPersistentIdentifierAccordingToRemoteObject = self->_sceneSessionPersistentIdentifierAccordingToRemoteObject;
  self->_sceneSessionPersistentIdentifierAccordingToRemoteObject = 0;

  playbackStateAccordingToRemoteObject = self->_playbackStateAccordingToRemoteObject;
  self->_playbackStateAccordingToRemoteObject = 0;

  [(PGPictureInPictureProxy *)self _stopObservingWindowSceneActivationState];
  [(PGPictureInPictureProxy *)self _setResourcesUsageReductionReasons:0];
  [(PGPictureInPictureProxy *)self _setPictureInPicturePossible:0];
  [(PGPictureInPictureProxy *)self _setStashedOrUnderLock:0 reason:@"resetting internal state"];
  [(PGPictureInPictureProxy *)self _setInterruptedForDefaultReason:0 initiatedByRemoteObject:0];
  [(PGPictureInPictureProxy *)self _setActivationState:0 reason:@"_resetInternalState"];
}

- (PGPictureInPictureProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);

    if (v6)
    {
      *&self->_delegateRespondsTo &= 0x8000u;
    }

    v7 = objc_storeWeak(&self->_delegate, obj);

    if (obj)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFE | objc_opt_respondsToSelector() & 1;

      v9 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFD | v10;

      v11 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFFB | v12;

      v13 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFF7 | v14;

      v15 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v16 = 16;
      }

      else
      {
        v16 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFEF | v16;

      v17 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v18 = 32;
      }

      else
      {
        v18 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFDF | v18;

      v19 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v20 = 64;
      }

      else
      {
        v20 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFFBF | v20;

      v21 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v22 = 128;
      }

      else
      {
        v22 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFF7F | v22;

      v23 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v24 = 256;
      }

      else
      {
        v24 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFEFF | v24;

      v25 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v26 = 512;
      }

      else
      {
        v26 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFDFF | v26;

      v27 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v28 = 1024;
      }

      else
      {
        v28 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFBFF | v28;

      v29 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v30 = 2048;
      }

      else
      {
        v30 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7FF | v30;

      v31 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v32 = 4096;
      }

      else
      {
        v32 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEFFF | v32;

      if (objc_opt_respondsToSelector())
      {
        v33 = 0x2000;
      }

      else
      {
        v33 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xDFFF | v33;
      if (objc_opt_respondsToSelector())
      {
        v34 = 0x4000;
      }

      else
      {
        v34 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xBFFF | v34;
    }

    [(PGPictureInPictureProxy *)self _updatePlaybackStateContentTypeIfNeeded];
    v5 = obj;
  }
}

- (BOOL)isPictureInPicturePossible
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_isPictureInPicturePossible;
}

- (BOOL)isPictureInPictureSuspended
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_isPictureInPictureSuspended;
}

- (BOOL)pictureInPictureShouldStartWhenEnteringBackground
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_pictureInPictureShouldStartWhenEnteringBackground;
}

- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)background
{
  backgroundCopy = background;
  v13 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_pictureInPictureShouldStartWhenEnteringBackground != backgroundCopy)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "[PGPictureInPictureProxy setPictureInPictureShouldStartWhenEnteringBackground:]";
      v9 = 2048;
      selfCopy = self;
      v11 = 1024;
      v12 = backgroundCopy;
      _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v7, 0x1Cu);
    }

    self->_pictureInPictureShouldStartWhenEnteringBackground = backgroundCopy;
    [(PGPictureInPictureProxy *)self _updateAutoPIPSettingsAndNotifyRemoteObjectIfNeeded];
  }
}

- (BOOL)pictureInPictureWasStartedWhenEnteringBackground
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_pictureInPictureWasStartedWhenEnteringBackground;
}

- (double)playbackProgress
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_playbackProgress;
}

- (double)playbackRate
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_playbackRate;
}

- (id)loadedTimeRanges
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  loadedTimeRanges = self->_loadedTimeRanges;

  return loadedTimeRanges;
}

- (void)setLoadedTimeRanges:(id)ranges
{
  rangesCopy = ranges;
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

  loadedTimeRanges = self->_loadedTimeRanges;
  self->_loadedTimeRanges = rangesCopy;
}

- (void)preferredContentSizeDidChangeForViewController
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  [(PGPictureInPictureViewController *)self->_viewController preferredContentSize];
  v7 = v6;
  v8 = v5;
  if (self->_preferredContentSize.width != v6 || self->_preferredContentSize.height != v5)
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      preferredContentSize = self->_preferredContentSize;
      v11 = [MEMORY[0x1E696B098] valueWithBytes:&preferredContentSize objCType:"{CGSize=dd}"];
      *v15 = v7;
      *&v15[1] = v8;
      v12 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGSize=dd}"];
      *buf = 136315906;
      v18 = "[PGPictureInPictureProxy preferredContentSizeDidChangeForViewController]";
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", buf, 0x2Au);
    }

    self->_preferredContentSize.width = v7;
    self->_preferredContentSize.height = v8;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PGPictureInPictureProxy_preferredContentSizeDidChangeForViewController__block_invoke;
    block[3] = &unk_1E7F32C58;
    block[4] = self;
    *&block[5] = v7;
    *&block[6] = v8;
    dispatch_async(queue, block);
  }
}

void __73__PGPictureInPictureProxy_preferredContentSizeDidChangeForViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PGPictureInPictureProxy_preferredContentSizeDidChangeForViewController__block_invoke_2;
  v3[3] = &unk_1E7F337A8;
  v3[4] = *(a1 + 32);
  [v2 updatePreferredContentSize:v3 withCompletionHandler:{*(a1 + 40), *(a1 + 48)}];
}

- (void)_viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:(id)reason
{
  v45 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _PGLogMethodProem(self, 1);
    *buf = 138412546;
    v38 = v6;
    v39 = 2114;
    selfCopy = reasonCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%@ %{public}@", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  _expectedScene = [(PGPictureInPictureProxy *)self _expectedScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _expectedScene2 = [(PGPictureInPictureProxy *)self _expectedScene];

    if (self->_pictureInPictureShouldStartWhenEnteringBackground && _expectedScene2)
    {
      if ([_expectedScene2 activationState])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PGPictureInPictureProxy *)self _addWindowSceneActivationStateObserverIfNeeded:_expectedScene2];
        }
      }

      else if (self->_sceneSessionPersistentIdentifier)
      {
        [(PGPictureInPictureProxy *)self _viewFrameForTransitionAnimationAssumeApplicationActive:1];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        coordinateSpace = [_expectedScene2 coordinateSpace];
        screen = [_expectedScene2 screen];
        fixedCoordinateSpace = [screen fixedCoordinateSpace];
        [coordinateSpace convertRect:fixedCoordinateSpace fromCoordinateSpace:{v20, v22, v24, v26}];
        v8 = v30;
        v9 = v31;
        v10 = v32;
        v11 = v33;
      }
    }
  }

  else
  {

    _expectedScene2 = 0;
  }

  v46.origin.x = v8;
  v46.origin.y = v9;
  v46.size.width = v10;
  v46.size.height = v11;
  if (!CGRectEqualToRect(self->_frameForInteractiveTransitions, v46))
  {
    v14 = PGLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      size = self->_frameForInteractiveTransitions.size;
      v36[0] = self->_frameForInteractiveTransitions.origin;
      v36[1] = size;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v36 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *v35 = v8;
      *&v35[1] = v9;
      *&v35[2] = v10;
      *&v35[3] = v11;
      v17 = [MEMORY[0x1E696B098] valueWithBytes:v35 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *buf = 136315906;
      v38 = "[PGPictureInPictureProxy _viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:]";
      v39 = 2048;
      selfCopy = self;
      v41 = 2114;
      v42 = v16;
      v43 = 2114;
      v44 = v17;
      _os_log_impl(&dword_1BB282000, v14, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", buf, 0x2Au);
    }

    self->_frameForInteractiveTransitions.origin.x = v8;
    self->_frameForInteractiveTransitions.origin.y = v9;
    self->_frameForInteractiveTransitions.size.width = v10;
    self->_frameForInteractiveTransitions.size.height = v11;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __129__PGPictureInPictureProxy__viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason___block_invoke;
    block[3] = &unk_1E7F337D0;
    block[4] = self;
    *&block[5] = v8;
    *&block[6] = v9;
    *&block[7] = v10;
    *&block[8] = v11;
    dispatch_async(queue, block);
  }
}

void __129__PGPictureInPictureProxy__viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding:&__block_literal_global_98 withCompletionHandler:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)_windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _PGLogMethodProem(self, 1);
    *buf = 138412546;
    v19 = v6;
    v20 = 2114;
    selfCopy = reasonCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%@ %{public}@", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  _bestKnownConnectedSceneSessionPersistentIdentifier = [(PGPictureInPictureProxy *)self _bestKnownConnectedSceneSessionPersistentIdentifier];
  if (!-[NSString isEqualToString:](self->_sceneSessionPersistentIdentifier, "isEqualToString:", _bestKnownConnectedSceneSessionPersistentIdentifier) || ([_bestKnownConnectedSceneSessionPersistentIdentifier isEqualToString:self->_sceneSessionPersistentIdentifierAccordingToRemoteObject] & 1) == 0)
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sceneSessionPersistentIdentifier = self->_sceneSessionPersistentIdentifier;
      *buf = 136315906;
      v19 = "[PGPictureInPictureProxy _windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:]";
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = sceneSessionPersistentIdentifier;
      v24 = 2114;
      v25 = _bestKnownConnectedSceneSessionPersistentIdentifier;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", buf, 0x2Au);
    }

    v11 = [_bestKnownConnectedSceneSessionPersistentIdentifier copy];
    v12 = self->_sceneSessionPersistentIdentifier;
    self->_sceneSessionPersistentIdentifier = v11;

    v13 = [_bestKnownConnectedSceneSessionPersistentIdentifier copy];
    sceneSessionPersistentIdentifierAccordingToRemoteObject = self->_sceneSessionPersistentIdentifierAccordingToRemoteObject;
    self->_sceneSessionPersistentIdentifierAccordingToRemoteObject = v13;

    [(PGPictureInPictureProxy *)self _viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:@"window scene change"];
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __131__PGPictureInPictureProxy__windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason___block_invoke;
    v16[3] = &unk_1E7F32508;
    v16[4] = self;
    v17 = _bestKnownConnectedSceneSessionPersistentIdentifier;
    dispatch_async(queue, v16);
  }
}

void __131__PGPictureInPictureProxy__windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding:*(a1 + 40) withCompletionHandler:&__block_literal_global_106];
}

- (void)startPictureInPicture
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PGPictureInPictureProxy startPictureInPicture]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p ", &v5, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureProxy *)self _isInactive])
  {
    [(PGPictureInPictureProxy *)self _startPictureInPictureAnimated:1 enteringBackground:0 reason:@"Client request" withCompletionHandler:0];
  }
}

- (void)stopPictureInPictureAndRestoreUserInterface:(BOOL)interface
{
  interfaceCopy = interface;
  v15 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PGPictureInPictureProxy stopPictureInPictureAndRestoreUserInterface:]";
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  _activationState = [(PGPictureInPictureProxy *)self _activationState];
  switch(_activationState)
  {
    case 3:
      if (interfaceCopy && [(PGPictureInPictureProxy *)self _isInCallService])
      {
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__PGPictureInPictureProxy_stopPictureInPictureAndRestoreUserInterface___block_invoke;
        block[3] = &unk_1E7F32530;
        block[4] = self;
        dispatch_async(queue, block);
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __71__PGPictureInPictureProxy_stopPictureInPictureAndRestoreUserInterface___block_invoke_2;
        v9[3] = &unk_1E7F337A8;
        v9[4] = self;
        [(PGPictureInPictureProxy *)self _stopPictureInPictureAnimated:1 restoreUserInterface:interfaceCopy withCompletionHandler:v9];
      }

      break;
    case 2:
      self->_shouldStopUponActivation = interfaceCopy;
      self->_shouldCancelUponActivation = !interfaceCopy;
      break;
    case 1:
      [(PGPictureInPictureProxy *)self _cancelPrewarming];
      break;
  }
}

void __71__PGPictureInPictureProxy_stopPictureInPictureAndRestoreUserInterface___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteObject];
  [v1 stopPictureInPictureAndRestoreUserInterface];
}

uint64_t __71__PGPictureInPictureProxy_stopPictureInPictureAndRestoreUserInterface___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _invalidateConnectionForFailure];
  }

  return result;
}

- (void)setPlaybackProgress:(double)progress playbackRate:(double)rate
{
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (self->_playbackProgress != progress || self->_playbackRate != rate)
  {
    self->_playbackProgress = progress;
    self->_playbackRate = rate;
  }
}

- (void)rotateContentContainer:(int64_t)container withCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PGPictureInPictureProxy rotateContentContainer:withCompletionHandler:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2048;
    containerCopy = container;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %ld", buf, 0x20u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_isPictureInPictureActive)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7F32C10;
    block[4] = self;
    v11 = handlerCopy;
    containerCopy2 = container;
    dispatch_async(queue, block);
  }
}

void __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_4;
  v5[3] = &unk_1E7F33820;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 rotateContentContainer:v4 withCompletionHandler:v5];
}

void __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

void __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_5;
  v8[3] = &unk_1E7F32D98;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  [v6 performAsync:v8];
}

uint64_t __72__PGPictureInPictureProxy_rotateContentContainer_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x1E69DCE70] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)isCameraActive
{
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  isCameraActive = [playbackState isCameraActive];

  return isCameraActive;
}

- (void)setCameraActive:(BOOL)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__PGPictureInPictureProxy_setCameraActive___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0___PGMutablePlaybackStateFaceTimeSupport__8l;
  activeCopy = active;
  [(PGPictureInPictureProxy *)self _updateFaceTimePlaybackStateUsingBlock:v3];
}

- (BOOL)canSwitchCamera
{
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  canSwitchCamera = [playbackState canSwitchCamera];

  return canSwitchCamera;
}

- (void)setCanSwitchCamera:(BOOL)camera
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PGPictureInPictureProxy_setCanSwitchCamera___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0___PGMutablePlaybackStateFaceTimeSupport__8l;
  cameraCopy = camera;
  [(PGPictureInPictureProxy *)self _updateFaceTimePlaybackStateUsingBlock:v3];
}

- (BOOL)isMicrophoneMuted
{
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  isMicrophoneMuted = [playbackState isMicrophoneMuted];

  return isMicrophoneMuted;
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PGPictureInPictureProxy_setMicrophoneMuted___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0___PGMutablePlaybackStateFaceTimeSupport__8l;
  mutedCopy = muted;
  [(PGPictureInPictureProxy *)self _updateFaceTimePlaybackStateUsingBlock:v3];
}

- (id)clientSessionIdentifier
{
  clientSessionIdentifier = self->_clientSessionIdentifier;
  if (clientSessionIdentifier)
  {
    bundleIdentifier = clientSessionIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (void)setClientSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientSessionIdentifier = [(PGPictureInPictureProxy *)self clientSessionIdentifier];
  if ([identifierCopy isEqualToString:clientSessionIdentifier])
  {
    v6 = [identifierCopy isEqualToString:self->_clientSessionIdentifierAccordingToRemoteObject];

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [(PGPictureInPictureProxy *)self _cancelPrewarming];
  v7 = [identifierCopy copy];
  clientSessionIdentifier = self->_clientSessionIdentifier;
  self->_clientSessionIdentifier = v7;

  clientSessionIdentifier2 = [(PGPictureInPictureProxy *)self clientSessionIdentifier];
  if (self->_needsReinitialization)
  {
    clientSessionIdentifierAccordingToRemoteObject = self->_clientSessionIdentifierAccordingToRemoteObject;
    self->_clientSessionIdentifierAccordingToRemoteObject = 0;

    [(PGPictureInPictureProxy *)self _resetInternalState];
    [(PGPictureInPictureProxy *)self _initializeWithControlsStyle:self->_controlsStyle viewController:self->_viewController reason:@"Connection was nil and setClientSessionIdentifier called"];
  }

  else
  {
    clientSessionIdentifier3 = [(PGPictureInPictureProxy *)self clientSessionIdentifier];
    v12 = self->_clientSessionIdentifierAccordingToRemoteObject;
    self->_clientSessionIdentifierAccordingToRemoteObject = clientSessionIdentifier3;

    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PGPictureInPictureProxy_setClientSessionIdentifier___block_invoke;
    v14[3] = &unk_1E7F32508;
    v14[4] = self;
    v15 = clientSessionIdentifier2;
    dispatch_async(queue, v14);
  }

LABEL_9:
}

void __54__PGPictureInPictureProxy_setClientSessionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 setActivitySessionIdentifier:*(a1 + 40)];
}

- (void)setOverrideInterruptionExemptionIdentifier:(id)identifier
{
  v4 = [identifier copy];
  overrideInterruptionExemptionIdentifier = self->_overrideInterruptionExemptionIdentifier;
  self->_overrideInterruptionExemptionIdentifier = v4;

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PGPictureInPictureProxy_setOverrideInterruptionExemptionIdentifier___block_invoke;
  block[3] = &unk_1E7F32530;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__PGPictureInPictureProxy_setOverrideInterruptionExemptionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 setExemptAttributionOverride:*(*(a1 + 32) + 72)];
}

- (BOOL)disablesLayerCloning
{
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  disablesLayerCloning = [playbackState disablesLayerCloning];

  return disablesLayerCloning;
}

- (void)setDisablesLayerCloning:(BOOL)cloning
{
  PGPictureInPictureProxyMaySupportsScreenSharing = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PGPictureInPictureProxy_setDisablesLayerCloning___block_invoke;
  v4[3] = &__block_descriptor_33_e49_v16__0___PGMutablePlaybackStateFaceTimeSupport__8l;
  cloningCopy = cloning;
  [(PGPictureInPictureProxy *)self _updateFaceTimePlaybackStateUsingBlock:v4];
  [(PGPictureInPictureProxy *)self _updatePlaybackStateContentTypeIfNeeded];
}

- (id)menuItems
{
  if (self->_menuItems)
  {
    return self->_menuItems;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)setMenuItems:(id)items
{
  itemsCopy = items;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v6 = MEMORY[0x1E695E0F0];
  if (itemsCopy)
  {
    v6 = itemsCopy;
  }

  v7 = v6;

  if (![(NSArray *)self->_menuItems isEqualToArray:v7])
  {
    v8 = [v7 copy];
    menuItems = self->_menuItems;
    self->_menuItems = v8;
  }
}

- (void)_updateFaceTimePlaybackStateUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PGPictureInPictureProxy__updateFaceTimePlaybackStateUsingBlock___block_invoke;
  v6[3] = &unk_1E7F33868;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PGPictureInPictureProxy *)self updatePlaybackStateUsingBlock:v6];
}

- (void)setControlsStyle:(int64_t)style
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

  [(PGPictureInPictureProxy *)self setControlsStyle:style animated:0 withCompletionHandler:0];
}

- (void)setControlsStyle:(int64_t)style animated:(BOOL)animated withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_controlsStyle != style)
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_controlsStyle];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
      v12 = 136315906;
      v13 = "[PGPictureInPictureProxy setControlsStyle:animated:withCompletionHandler:]";
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", &v12, 0x2Au);
    }

    self->_controlsStyle = style;
    [(PGPictureInPictureProxy *)self _updatePlaybackStateContentTypeIfNeeded];
  }
}

- (void)updatePlaybackStateUsingBlock:(id)block
{
  blockCopy = block;
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  (*(block + 2))(blockCopy, playbackState);

  [(PGPictureInPictureProxy *)self _setMaybeNeedsUpdatePlaybackState];
}

- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages
{
  _remoteObject = [(PGPictureInPictureProxy *)self _remoteObject];
  [_remoteObject pagingAccessorySetCurrentPage:page numberOfPages:pages];
}

- (void)setAutomaticallyInterruptsForLegacyFaceTimeBehaviors:(BOOL)behaviors
{
  if (behaviors)
  {
    [PGPictureInPictureProxy setAutomaticallyInterruptsForLegacyFaceTimeBehaviors:];
  }

  self->_automaticallyInterruptsForLegacyFaceTimeBehaviors = behaviors;

  [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"automaticallyInterruptsForLegacyFaceTimeBehaviors changed"];
}

void __66__PGPictureInPictureProxy__updatePlaybackStateContentTypeIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setContentType:v3];
  [v4 setSupportsFaceTimeActions:*(a1 + 40)];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (PGPictureInPictureProxyViewControllerShouldShowAlternateActionButtonImageObservationContext == context)
  {
    v7 = [(PGPictureInPictureProxy *)self playbackState:path];
    [v7 setCameraHasMicrophone:{-[PGPictureInPictureViewController shouldShowAlternateActionButtonImage](self->_viewController, "shouldShowAlternateActionButtonImage")}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PGPictureInPictureProxy;
    [(PGPictureInPictureProxy *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (int64_t)_activationState
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_activationState;
}

- (void)_setActivationState:(int64_t)state reason:(id)reason
{
  v24 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureProxy *)self _activationState]!= state)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activationState];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      *buf = 136316162;
      v15 = "[PGPictureInPictureProxy _setActivationState:reason:]";
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ -> %{public}@ reason: %{public}@", buf, 0x34u);
    }

    self->_activationState = state;
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"_setActivationState: %@", reasonCopy];
    [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:reasonCopy];

    shouldStopUponActivation = self->_shouldStopUponActivation;
    shouldCancelUponActivation = self->_shouldCancelUponActivation;
    *&self->_shouldStopUponActivation = 0;
    if (state == 3 && (shouldCancelUponActivation || shouldStopUponActivation))
    {
      [(PGPictureInPictureProxy *)self _stopPictureInPictureAnimated:1 restoreUserInterface:shouldStopUponActivation withCompletionHandler:0];
    }
  }
}

- (void)_startPictureInPictureAnimated:(BOOL)animated enteringBackground:(BOOL)background reason:(id)reason withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  v32 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  handlerCopy = handler;
  v13 = PGLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[PGPictureInPictureProxy _startPictureInPictureAnimated:enteringBackground:reason:withCompletionHandler:]";
    v28 = 2048;
    selfCopy = self;
    v30 = 2114;
    v31 = reasonCopy;
    _os_log_impl(&dword_1BB282000, v13, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@", buf, 0x20u);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = PGLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (![(PGPictureInPictureProxy *)self _activationState]|| [(PGPictureInPictureProxy *)self _activationState]== 1)
  {
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"_startPictureInPictureAnimated: %@", reasonCopy];
    [(PGPictureInPictureProxy *)self _setActivationState:2 reason:reasonCopy];
    self->_pictureInPictureWasStartedWhenEnteringBackground = background;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __106__PGPictureInPictureProxy__startPictureInPictureAnimated_enteringBackground_reason_withCompletionHandler___block_invoke;
    v23[3] = &unk_1E7F338B0;
    v23[4] = self;
    v25 = a2;
    v24 = handlerCopy;
    v16 = MEMORY[0x1BFB0C680](v23);
    v17 = v16;
    if (self->_shouldPullCancellationPolicyOnStart)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __106__PGPictureInPictureProxy__startPictureInPictureAnimated_enteringBackground_reason_withCompletionHandler___block_invoke_151;
      v20[3] = &unk_1E7F32DE8;
      v20[4] = self;
      v22 = animatedCopy;
      v21 = v16;
      [(PGPictureInPictureProxy *)self __updateCancellationPolicyWithSuccessHandler:v20 failureHandler:v21];
    }

    else
    {
      [(PGPictureInPictureProxy *)self __coordinateStartAnimated:animatedCopy withCompletionHandler:v16];
    }

    goto LABEL_17;
  }

  v18 = PGLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = _PGLogMethodProem(self, 0);
    *buf = 138543362;
    v27 = v19;
    _os_log_impl(&dword_1BB282000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ failed because not inactive.", buf, 0xCu);
  }

  if (handlerCopy)
  {
    reasonCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, reasonCopy);
LABEL_17:
  }
}

void __106__PGPictureInPictureProxy__startPictureInPictureAnimated_enteringBackground_reason_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (a1 + 32);
  if ([*(a1 + 32) _activationState] != 2)
  {
    v10 = PGLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v4;
      v13 = 136315394;
      v14 = "[PGPictureInPictureProxy _startPictureInPictureAnimated:enteringBackground:reason:withCompletionHandler:]_block_invoke";
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "%s %p Not updating activation state because we are no longer activating and it's not our responsibility to maintain activation state.", &v13, 0x16u);
    }

    goto LABEL_12;
  }

  v5 = *v4;
  if (v3)
  {
    v6 = [v5[38] parentViewController];
    v7 = *(*v4 + 27);

    if (v6 == v7)
    {
      __106__PGPictureInPictureProxy__startPictureInPictureAnimated_enteringBackground_reason_withCompletionHandler___block_invoke_cold_1();
    }

    v8 = [*(*v4 + 38) parentViewController];
    v9 = *(*v4 + 27);

    if (v8 == v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(*v4 + 38) willAnimatePictureInPictureStop];
    }

    [*v4 _removeViewControllerFromHostedWindowIfNeeded];
    [*v4 _setActivationState:0 reason:@"_startPictureInPictureAnimated failed"];
    if ((*(*v4 + 144) & 0x20) != 0)
    {
      v10 = [*v4 delegate];
      [v10 pictureInPictureProxy:*v4 failedToStartPictureInPictureWithAnimationType:0 error:v3];
LABEL_12:
    }
  }

  else
  {
    [v5 _setActivationState:3 reason:@"_startPictureInPictureAnimated succeeded"];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v3 == 0, v3);
  }
}

- (void)__coordinateStartAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureProxy __coordinateStartAnimated:withCompletionHandler:];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (!handlerCopy)
  {
    [PGPictureInPictureProxy __coordinateStartAnimated:withCompletionHandler:];
  }

  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 8);
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
  if (animatedCopy && [(PGPictureInPictureProxy *)self _isViewControllerWindowSceneConsideredActive])
  {
    [(PGPictureInPictureProxy *)self _viewFrameForTransitionAnimationAssumeApplicationActive:1];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    if (self->_shouldCancelActivePictureInPictureOnStart)
    {
      if (CGRectIsNull(*&v13))
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v17 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PGPictureInPictureProxy___coordinateStartAnimated_withCompletionHandler___block_invoke;
  v19[3] = &unk_1E7F32C10;
  v20 = handlerCopy;
  v21 = v17;
  v19[4] = self;
  v18 = handlerCopy;
  [(PGPictureInPictureProxy *)self __setupStartWithAnimationType:v17 initialLayerFrame:v19 successHandler:v18 failureHandler:v9, v10, v11, v12];
}

void __75__PGPictureInPictureProxy___coordinateStartAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PGPictureInPictureProxy___coordinateStartAnimated_withCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7F32C10;
  v4[4] = v2;
  v6 = v3;
  v5 = *(a1 + 40);
  [v2 __actuallyStartWithAnimationType:v3 successHandler:v4 failureHandler:*(a1 + 40)];
}

- (void)__setupStartWithAnimationType:(int64_t)type initialLayerFrame:(CGRect)frame successHandler:(id)handler failureHandler:(id)failureHandler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  v15 = PGLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v16 = PGLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (handlerCopy && failureHandlerCopy)
  {
    if (type)
    {
LABEL_10:
      v17 = [(PGPictureInPictureProxy *)self _interfaceOrientationForTransitionAnimationAssumeApplicationActive:1];
      goto LABEL_13;
    }
  }

  else
  {
    [PGPictureInPictureProxy __setupStartWithAnimationType:initialLayerFrame:successHandler:failureHandler:];
    if (type)
    {
      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_13:
  _bestKnownConnectedSceneSessionPersistentIdentifier = [(PGPictureInPictureProxy *)self _bestKnownConnectedSceneSessionPersistentIdentifier];
  if (![(NSString *)self->_sceneSessionPersistentIdentifier isEqualToString:_bestKnownConnectedSceneSessionPersistentIdentifier])
  {
    v19 = PGLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sceneSessionPersistentIdentifier = self->_sceneSessionPersistentIdentifier;
      *buf = 136315906;
      v36 = "[PGPictureInPictureProxy __setupStartWithAnimationType:initialLayerFrame:successHandler:failureHandler:]";
      v37 = 2048;
      selfCopy = self;
      v39 = 2114;
      v40 = sceneSessionPersistentIdentifier;
      v41 = 2114;
      v42 = _bestKnownConnectedSceneSessionPersistentIdentifier;
      _os_log_impl(&dword_1BB282000, v19, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", buf, 0x2Au);
    }

    objc_storeStrong(&self->_sceneSessionPersistentIdentifier, _bestKnownConnectedSceneSessionPersistentIdentifier);
  }

  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    [delegate pictureInPictureProxy:self willStartPictureInPictureWithAnimationType:type];
  }

  queue = self->_queue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke;
  v25[3] = &unk_1E7F33928;
  v25[4] = self;
  v26 = failureHandlerCopy;
  v34 = type != 0;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  v27 = handlerCopy;
  v28 = v17;
  typeCopy = type;
  v23 = handlerCopy;
  v24 = failureHandlerCopy;
  dispatch_async(queue, v25);
}

void __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke(uint64_t a1)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke_2;
  v15[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v16 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v15];
  v4 = *(a1 + 104);
  v5 = [*(*(a1 + 32) + 208) hostedWindowHostingHandle];
  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke_4;
  v11[3] = &unk_1E7F33900;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  v14 = *(a1 + 96);
  v13 = v10;
  [v3 setupStartAnimated:v4 hostedWindowHostingHandle:v5 sceneSessionPersistentIdentifier:v7 preferredContentSize:v8 initialInterfaceOrientation:v11 initialLayerFrame:*(v6 + 8) completionHandler:{*(v6 + 16), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
}

void __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v4;
  BSDispatchMain();
}

uint64_t __105__PGPictureInPictureProxy___setupStartWithAnimationType_initialLayerFrame_successHandler_failureHandler___block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v2 = *(*(a1 + 48) + 16);

    return v2();
  }

  else
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) localizedDescription];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "Failed to setup start with error: %{public}@", &v8, 0xCu);
    }

    v6 = *(a1 + 40);
    if ((v6[144] & 0x20) != 0)
    {
      v7 = [v6 delegate];
      [v7 pictureInPictureProxy:*(a1 + 40) failedToStartPictureInPictureWithAnimationType:*(a1 + 64) error:*(a1 + 32)];
    }

    return (*(*(a1 + 56) + 16))();
  }
}

- (void)__actuallyStartWithAnimationType:(int64_t)type successHandler:(id)handler failureHandler:(id)failureHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  v10 = PGLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = PGLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (!handlerCopy || !failureHandlerCopy)
  {
    [PGPictureInPictureProxy __actuallyStartWithAnimationType:successHandler:failureHandler:];
  }

  [(PGPictureInPictureProxy *)self _addViewControllerToHostedWindowIfNeeded];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke;
  block[3] = &unk_1E7F339A0;
  block[4] = self;
  v16 = failureHandlerCopy;
  v19 = type != 0;
  v17 = handlerCopy;
  typeCopy = type;
  v13 = handlerCopy;
  v14 = failureHandlerCopy;
  dispatch_async(queue, block);
}

void __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke_2;
  v11[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v12 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v11];
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke_4;
  v7[3] = &unk_1E7F33978;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = v5;
  v10 = v6;
  v9 = *(a1 + 40);
  [v3 startPictureInPictureAnimated:v4 completionHandler:v7];
}

void __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v4;
  BSDispatchMain();
}

uint64_t __90__PGPictureInPictureProxy___actuallyStartWithAnimationType_successHandler_failureHandler___block_invoke_5(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 304) didAnimatePictureInPictureStart];
  }

  if (*(a1 + 72) == 1)
  {
    v2 = *(*(a1 + 48) + 16);

    return v2();
  }

  else
  {
    v4 = *(a1 + 32);
    if ((v4[144] & 0x20) != 0)
    {
      v5 = [v4 delegate];
      v6 = *(a1 + 32);
      v7 = *(a1 + 64);
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1000 userInfo:0];
      [v5 pictureInPictureProxy:v6 failedToStartPictureInPictureWithAnimationType:v7 error:v8];
    }

    v9 = *(*(a1 + 56) + 16);

    return v9();
  }
}

- (void)__didStartWithAnimationType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (!handlerCopy)
  {
    [PGPictureInPictureProxy __didStartWithAnimationType:completionHandler:];
  }

  if ((*&self->_delegateRespondsTo & 0x10) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    [delegate pictureInPictureProxy:self didStartPictureInPictureWithAnimationType:type];
  }

  [(PGPictureInPictureProxy *)self _setPictureInPictureActive:1];
  [objc_opt_class() _updatePictureInPictureActive:1];
  handlerCopy[2](handlerCopy, 0);
}

- (void)__updateCancellationPolicyWithSuccessHandler:(id)handler failureHandler:(id)failureHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if (!handlerCopy || !failureHandlerCopy)
  {
    [PGPictureInPictureProxy __updateCancellationPolicyWithSuccessHandler:failureHandler:];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke;
  block[3] = &unk_1E7F33A18;
  block[4] = self;
  v14 = failureHandlerCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = failureHandlerCopy;
  dispatch_async(queue, block);
}

void __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke_2;
  v7[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v7];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke_3;
  v4[3] = &unk_1E7F339F0;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 checkActivePictureInPictureCancellationPolicyWithCompletion:v4];
}

void __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v4;
  BSDispatchMain();
}

uint64_t __87__PGPictureInPictureProxy___updateCancellationPolicyWithSuccessHandler_failureHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 40));
  }

  *(*(a1 + 32) + 107) = *(a1 + 65);
  *(*(a1 + 32) + 106) = *(a1 + 66);
  return (*(*(a1 + 48) + 16))();
}

- (void)_twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
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

  if ([(PGPictureInPictureProxy *)self _activationState]== 3)
  {
    [(PGPictureInPictureProxy *)self _setActivationState:4 reason:@"starting two stage stop"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke;
    v21[3] = &unk_1E7F32AF8;
    v21[4] = self;
    v22 = handlerCopy;
    v11 = MEMORY[0x1BFB0C680](v21);
    if ((*&self->_delegateRespondsTo & 0x2000) != 0)
    {
      delegate = [(PGPictureInPictureProxy *)self delegate];
      [delegate pictureInPictureProxyWillSetupPictureInPictureStop:self];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_167;
    v17[3] = &unk_1E7F33A90;
    v17[4] = self;
    v20 = 0;
    v18 = blockCopy;
    v19 = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_4;
    v14[3] = &unk_1E7F338B0;
    v15 = v19;
    v16 = a2;
    v14[4] = self;
    v13 = v19;
    [(PGPictureInPictureProxy *)self __setupStopAnimated:1 needsApplicationActivation:0 waitForApplicationActivation:1 successHandler:v17 failureHandler:v14];
  }
}

void __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v3)
    {
      v5 = PGLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 localizedDescription];
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] Failed to finalize with error %{public}@.", &v7, 0xCu);
      }

      v4 = *(a1 + 40);
    }

    (*(v4 + 16))(v4, v3 == 0, v3);
  }

  *(*(a1 + 32) + 105) = 0;
  if ([*(a1 + 32) _activationState] == 4)
  {
    [*(a1 + 32) _setActivationState:0 reason:@"two stage stop finalize block"];
  }
}

void __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_167(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7F33A68;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = v5;
  [v3 __restoreUserInterfaceAnimated:1 reason:v2 completionHandler:v6];
}

void __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_2(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7F33A40;
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9[4] = a1[4];
  v11 = v7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a2;
  v10 = v8;
  (*(v6 + 16))(v6, v9);
}

void __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_4_cold_1(a1);
  }

  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] Failed to __setupStopAnimated:::::", v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_stopPictureInPictureAnimated:(BOOL)animated restoreUserInterface:(BOOL)interface withCompletionHandler:(id)handler
{
  interfaceCopy = interface;
  animatedCopy = animated;
  handlerCopy = handler;
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

  if ([(PGPictureInPictureProxy *)self _activationState]== 3)
  {
    [(PGPictureInPictureProxy *)self _setActivationState:4 reason:@"_stopPictureInPictureAnimated"];
    if (interfaceCopy)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(PGHostedWindow *)self->_hostedWindow snapshotViewAfterScreenUpdates:0];
      [(PGHostedWindow *)self->_hostedWindow bounds];
      [v11 setFrame:?];
      [(PGHostedWindow *)self->_hostedWindow addSubview:v11];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __100__PGPictureInPictureProxy__stopPictureInPictureAnimated_restoreUserInterface_withCompletionHandler___block_invoke;
    v22[3] = &unk_1E7F33AB8;
    v23 = v11;
    v24 = handlerCopy;
    v22[4] = self;
    v12 = v11;
    v13 = MEMORY[0x1BFB0C680](v22);
    _isViewControllerWindowSceneConsideredActive = [(PGPictureInPictureProxy *)self _isViewControllerWindowSceneConsideredActive];
    if ((*&self->_delegateRespondsTo & 0x2000) != 0)
    {
      delegate = [(PGPictureInPictureProxy *)self delegate];
      [delegate pictureInPictureProxyWillSetupPictureInPictureStop:self];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __100__PGPictureInPictureProxy__stopPictureInPictureAnimated_restoreUserInterface_withCompletionHandler___block_invoke_2;
    v17[3] = &unk_1E7F33B08;
    v20 = interfaceCopy;
    v21 = animatedCopy;
    v18 = v13;
    v19 = !interfaceCopy;
    v17[4] = self;
    v16 = v13;
    [(PGPictureInPictureProxy *)self __setupStopAnimated:animatedCopy needsApplicationActivation:interfaceCopy & ~_isViewControllerWindowSceneConsideredActive successHandler:v17 failureHandler:v16];
  }
}

void __100__PGPictureInPictureProxy__stopPictureInPictureAnimated_restoreUserInterface_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3 == 0, v3);
  }

  *(*(a1 + 32) + 105) = 0;
  if ([*(a1 + 32) _activationState] == 4)
  {
    [*(a1 + 32) _setActivationState:0 reason:@"_stopPictureInPictureAnimated finalize block"];
  }

  [*(a1 + 40) removeFromSuperview];
}

void __100__PGPictureInPictureProxy__stopPictureInPictureAnimated_restoreUserInterface_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 57);
  v3 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __100__PGPictureInPictureProxy__stopPictureInPictureAnimated_restoreUserInterface_withCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E7F33AE0;
    v9 = v2;
    v6[4] = v1;
    v8 = v3;
    v7 = *(a1 + 40);
    [v1 __restoreUserInterfaceAnimated:v2 reason:v3 completionHandler:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 __actuallyStopAnimated:v2 reason:v3 completionHandler:v4];
  }
}

- (void)__setupStopAnimated:(BOOL)animated needsApplicationActivation:(BOOL)activation waitForApplicationActivation:(BOOL)applicationActivation successHandler:(id)handler failureHandler:(id)failureHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  v14 = PGLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v15 = PGLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if (!handlerCopy || !failureHandlerCopy)
  {
    [PGPictureInPictureProxy __setupStopAnimated:needsApplicationActivation:waitForApplicationActivation:successHandler:failureHandler:];
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke;
  v19[3] = &unk_1E7F33B80;
  v19[4] = self;
  v20 = failureHandlerCopy;
  animatedCopy = animated;
  activationCopy = activation;
  applicationActivationCopy = applicationActivation;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = failureHandlerCopy;
  dispatch_async(queue, v19);
}

void __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke_2;
  v10[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v10];
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke_4;
  v6[3] = &unk_1E7F33B58;
  v9 = *(a1 + 58);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  [v3 setupStopAnimated:v4 needsApplicationActivation:v5 completionHandler:v6];
}

void __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v4;
  BSDispatchMain();
}

uint64_t __133__PGPictureInPictureProxy___setupStopAnimated_needsApplicationActivation_waitForApplicationActivation_successHandler_failureHandler___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    return (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 40));
  }

  if (*(a1 + 65) == 1)
  {
    return [*(a1 + 32) __waitForApplicationActivationWithSuccessHandler:*(a1 + 48) failureHandler:*(a1 + 56)];
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)__waitForApplicationActivationWithSuccessHandler:(id)handler failureHandler:(id)failureHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if (!handlerCopy || !failureHandlerCopy)
  {
    [PGPictureInPictureProxy __waitForApplicationActivationWithSuccessHandler:failureHandler:];
  }

  if ([(PGPictureInPictureProxy *)self _isViewControllerWindowSceneConsideredActive])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    _sourceScene = [(PGPictureInPictureProxy *)self _sourceScene];
    v11 = MEMORY[0x1E69DE338];
    if (!_sourceScene)
    {
      v11 = MEMORY[0x1E69DDAB0];
    }

    v12 = *v11;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__PGPictureInPictureProxy___waitForApplicationActivationWithSuccessHandler_failureHandler___block_invoke;
    v17[3] = &unk_1E7F33BA8;
    v17[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__PGPictureInPictureProxy___waitForApplicationActivationWithSuccessHandler_failureHandler___block_invoke_2;
    v14[3] = &unk_1E7F33BD0;
    v15 = handlerCopy;
    v16 = failureHandlerCopy;
    UIAnimationDragCoefficient();
    PGWaitForNotificationWithTimeout(MEMORY[0x1E69E96A0], v12, _sourceScene, v17, v14, v13 * 3.0);
  }
}

void __91__PGPictureInPictureProxy___waitForApplicationActivationWithSuccessHandler_failureHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "Timed out attempting to activate app on PIP stop", v7, 2u);
    }

    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1005 userInfo:0];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)__restoreUserInterfaceAnimated:(BOOL)animated reason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
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
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke;
    v16[3] = &unk_1E7F33BF8;
    v16[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke_4;
    v12[3] = &unk_1E7F33C20;
    animatedCopy = animated;
    v12[4] = self;
    reasonCopy = reason;
    v13 = handlerCopy;
    UIAnimationDragCoefficient();
    PG_dispatch_async_with_timeout(MEMORY[0x1E69E96A0], v16, v12, v11);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

void __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7F331B8;
  v8 = v3;
  v6 = v3;
  [v4 pictureInPictureProxy:v5 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:v7];
}

void __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __83__PGPictureInPictureProxy___restoreUserInterfaceAnimated_reason_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "Timed out attempting to restore UI on PIP stop, attempt proceeding anyway", v15, 2u);
    }
  }

  v5 = MEMORY[0x1E695F050];
  if (*(a1 + 56) == 1 && ([*(a1 + 32) _interfaceOrientationForTransitionAnimationAssumeApplicationActive:a2], (*(a1 + 56) & 1) != 0))
  {
    [*(a1 + 32) _viewFrameForTransitionAnimationAssumeApplicationActive:a2];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *v5;
    v9 = v5[1];
    v11 = v5[2];
    v13 = v5[3];
  }

  if ([*(a1 + 32) _isInCallService] && *(a1 + 48))
  {
    v7 = *v5;
    v9 = v5[1];
    v11 = v5[2];
    v13 = v5[3];
  }

  return (*(*(a1 + 40) + 16))(v7, v9, v11, v13);
}

- (void)__actuallyStopAnimated:(BOOL)animated reason:(int64_t)reason finalLayerFrame:(CGRect)frame finalInterfaceOrientation:(int64_t)orientation completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  animatedCopy = animated;
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v16 = PGLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v17 = PGLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (!handlerCopy)
  {
    [PGPictureInPictureProxy __actuallyStopAnimated:reason:finalLayerFrame:finalInterfaceOrientation:completionHandler:];
  }

  [objc_opt_class() _updatePictureInPictureActive:0];
  if ([(PGPictureInPictureProxy *)self _activationState]== 4)
  {
    if (animatedCopy)
    {
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      if (CGRectIsNull(v38))
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }

    [(PGPictureInPictureProxy *)self _beginDeactivatingPictureInPictureWithAnimationType:v18 stopReason:reason];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke;
    v31[3] = &unk_1E7F33C70;
    v31[4] = self;
    v33 = v18;
    reasonCopy = reason;
    v32 = handlerCopy;
    v20 = MEMORY[0x1BFB0C680](v31);
    queue = self->_queue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_181;
    v23[3] = &unk_1E7F32F00;
    v23[4] = self;
    v24 = v20;
    v30 = animatedCopy;
    orientationCopy = orientation;
    v26 = x;
    v27 = y;
    v28 = width;
    v29 = height;
    v22 = v20;
    dispatch_async(queue, v23);
  }

  else
  {
    v19 = PGLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[PGPictureInPictureProxy __actuallyStopAnimated:reason:finalLayerFrame:finalInterfaceOrientation:completionHandler:]";
      _os_log_impl(&dword_1BB282000, v19, OS_LOG_TYPE_DEFAULT, "%s Skipping deactivation as we are no longer deactivating.", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  BSDispatchMain();
}

uint64_t __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _activationState] == 4)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 48);

    return [v2 _endDeactivatingPictureInPictureIfNeededWithAnimationType:v3 stopReason:v4 cleanupHandlerOrNil:v5];
  }

  else
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 136315394;
      v10 = "[PGPictureInPictureProxy __actuallyStopAnimated:reason:finalLayerFrame:finalInterfaceOrientation:completionHandler:]_block_invoke_2";
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s Skipping deactivation as our state is not deactivating. Error had been: %{public}@", &v9, 0x16u);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

void __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_181(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObjectWithErrorHandler:*(a1 + 40)];
  v3 = *(a1 + 88);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_2_182;
  v5[3] = &unk_1E7F33820;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 stopPictureInPictureAnimated:v3 withFinalInterfaceOrientation:v4 finalLayerFrame:v5 completionHandler:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_2_182(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v7 = v6;
  v8 = v9;
  BSDispatchMain();
}

void __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_4;
    v4[3] = &unk_1E7F33C98;
    v5 = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    [v2 performAsync:v4];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

uint64_t __117__PGPictureInPictureProxy___actuallyStopAnimated_reason_finalLayerFrame_finalInterfaceOrientation_completionHandler___block_invoke_4(uint64_t a1)
{
  [MEMORY[0x1E69DCE70] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)__cleanupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  if (!handlerCopy)
  {
    [PGPictureInPictureProxy __cleanupWithCompletionHandler:];
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7F32D98;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(queue, v9);
}

void __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F337F8;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _remoteObjectWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke_4;
  v4[3] = &unk_1E7F32478;
  v5 = *(a1 + 40);
  [v3 cleanupWithCompletionHandler:v4];
}

void __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __58__PGPictureInPictureProxy___cleanupWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = v4;
  BSDispatchMain();
}

- (void)_beginDeactivatingPictureInPictureWithAnimationType:(int64_t)type stopReason:(int64_t)reason
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureProxy _beginDeactivatingPictureInPictureWithAnimationType:stopReason:];
    }
  }

  if ([(PGPictureInPictureProxy *)self _activationState]!= 4)
  {
    [PGPictureInPictureProxy _beginDeactivatingPictureInPictureWithAnimationType:stopReason:];
  }

  [(PGPictureInPictureProxy *)self _setStashedOrUnderLock:0 reason:@"deactivation"];
  [(PGPictureInPictureProxy *)self _setResourcesUsageReductionReasons:0];
  [(PGPictureInPictureProxy *)self _setInterruptedForDefaultReason:0 initiatedByRemoteObject:0];
  [(PGPictureInPictureProxy *)self _setPictureInPictureActive:0];
  [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"begin deactivation"];
  if ((*&self->_delegateRespondsTo & 0x80) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    [delegate pictureInPictureProxy:self willStopPictureInPictureWithAnimationType:type reason:reason];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PGPictureInPictureViewController *)self->_viewController willAnimatePictureInPictureStop];
  }
}

- (void)_endDeactivatingPictureInPictureIfNeededWithAnimationType:(int64_t)type stopReason:(int64_t)reason cleanupHandlerOrNil:(id)nil
{
  nilCopy = nil;
  if ([(PGPictureInPictureProxy *)self _activationState]!= 4)
  {
    [PGPictureInPictureProxy _endDeactivatingPictureInPictureIfNeededWithAnimationType:stopReason:cleanupHandlerOrNil:];
  }

  [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"end deactivation"];
  [(PGPictureInPictureProxy *)self _removeViewControllerFromHostedWindowIfNeeded];
  if (nilCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __116__PGPictureInPictureProxy__endDeactivatingPictureInPictureIfNeededWithAnimationType_stopReason_cleanupHandlerOrNil___block_invoke;
    v13[3] = &unk_1E7F33C70;
    v13[4] = self;
    typeCopy = type;
    reasonCopy = reason;
    v14 = nilCopy;
    [(PGPictureInPictureProxy *)self __cleanupWithCompletionHandler:v13];
  }

  else
  {
    if ((*&self->_delegateRespondsTo & 0x100) != 0)
    {
      delegate = [(PGPictureInPictureProxy *)self delegate];
      [delegate pictureInPictureProxy:self didStopPictureInPictureWithAnimationType:type reason:reason];
    }

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __116__PGPictureInPictureProxy__endDeactivatingPictureInPictureIfNeededWithAnimationType_stopReason_cleanupHandlerOrNil___block_invoke_2;
    v10[3] = &unk_1E7F33CC0;
    objc_copyWeak(&v11, &location);
    [(PGPictureInPictureProxy *)self __cleanupWithCompletionHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __116__PGPictureInPictureProxy__endDeactivatingPictureInPictureIfNeededWithAnimationType_stopReason_cleanupHandlerOrNil___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if ((v3[144] & 0x100) != 0)
  {
    v4 = [v3 delegate];
    [v4 pictureInPictureProxy:*(a1 + 32) didStopPictureInPictureWithAnimationType:*(a1 + 48) reason:*(a1 + 56)];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _updateAutoPIPSettingsAndNotifyRemoteObjectIfNeeded];
}

void __116__PGPictureInPictureProxy__endDeactivatingPictureInPictureIfNeededWithAnimationType_stopReason_cleanupHandlerOrNil___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAutoPIPSettingsAndNotifyRemoteObjectIfNeeded];
}

- (void)setReadyForDisplay:(BOOL)display
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_readyForDisplay != display)
  {
    displayCopy = display;
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[PGPictureInPictureProxy setReadyForDisplay:]";
      v8 = 2048;
      selfCopy = self;
      v10 = 1024;
      v11 = displayCopy;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p Ready for display: %{BOOL}u", &v6, 0x1Cu);
    }

    self->_readyForDisplay = displayCopy;
    [(PGPictureInPictureProxy *)self _startBackgroundPIPWhilePrewarmingIfNeeded];
  }
}

- (void)_prewarmAndStartAfterTimeout
{
  if (![(PGPictureInPictureProxy *)self _activationState]&& ![(PGPictureInPictureProxy *)self isReadyForDisplay])
  {
    [(PGPictureInPictureProxy *)self _setActivationState:1 reason:@"_prewarmAndStartAfterTimeout"];
    [(PGPictureInPictureProxy *)self _addViewControllerToHostedWindowIfNeeded];
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__PGPictureInPictureProxy__prewarmAndStartAfterTimeout__block_invoke;
    v6[3] = &unk_1E7F32990;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:3.0];
    prewarmingTimeoutTimer = self->_prewarmingTimeoutTimer;
    self->_prewarmingTimeoutTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __55__PGPictureInPictureProxy__prewarmAndStartAfterTimeout__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v5 isValid] && WeakRetained[31] == v5)
  {
    if ([WeakRetained _activationState] == 1)
    {
      [WeakRetained _startPictureInPictureAnimated:0 enteringBackground:0 reason:@"Prewarming timeout fired" withCompletionHandler:0];
    }

    v4 = WeakRetained[31];
    WeakRetained[31] = 0;
  }
}

- (void)_cancelPrewarming
{
  if ([(PGPictureInPictureProxy *)self _activationState]== 1)
  {
    prewarmingTimeoutTimer = self->_prewarmingTimeoutTimer;
    self->_prewarmingTimeoutTimer = 0;
    v4 = prewarmingTimeoutTimer;

    [(NSTimer *)v4 invalidate];
    [(PGPictureInPictureProxy *)self _removeViewControllerFromHostedWindowIfNeeded];

    [(PGPictureInPictureProxy *)self _setActivationState:0 reason:@"_cancelPrewarming"];
  }
}

- (void)_startBackgroundPIPWhilePrewarmingIfNeeded
{
  if ([(PGPictureInPictureProxy *)self _activationState]== 1 && [(PGPictureInPictureProxy *)self isReadyForDisplay]&& (*MEMORY[0x1E695F060] != self->_preferredContentSize.width || *(MEMORY[0x1E695F060] + 8) != self->_preferredContentSize.height))
  {
    prewarmingTimeoutTimer = self->_prewarmingTimeoutTimer;
    self->_prewarmingTimeoutTimer = 0;
    v5 = prewarmingTimeoutTimer;

    [(NSTimer *)v5 invalidate];

    [(PGPictureInPictureProxy *)self _startPictureInPictureAnimated:0 enteringBackground:0 reason:@"became ready for display with a non-zero size while prewarming" withCompletionHandler:0];
  }
}

- (void)_addViewControllerToHostedWindowIfNeeded
{
  parentViewController = [(PGPictureInPictureViewController *)self->_viewController parentViewController];
  rootViewController = self->_rootViewController;

  if (parentViewController != rootViewController)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PGPictureInPictureProxy__addViewControllerToHostedWindowIfNeeded__block_invoke;
    v5[3] = &unk_1E7F32530;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

void __67__PGPictureInPictureProxy__addViewControllerToHostedWindowIfNeeded__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 304) view];
  [v2 PG_setAllowsEdgeAntialiasing:1];

  v3 = [*(*(a1 + 32) + 304) view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [*(*(a1 + 32) + 216) addChildViewController:*(*(a1 + 32) + 304)];
  v4 = [*(*(a1 + 32) + 216) view];
  v5 = [*(*(a1 + 32) + 304) view];
  [v4 addSubview:v5];

  [*(*(a1 + 32) + 304) didMoveToParentViewController:*(*(a1 + 32) + 216)];
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(*(a1 + 32) + 304);
    *buf = 138543618;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "PGHostedWindow root view controller *is* now containing: %{public}@[%p]", buf, 0x16u);
  }

  v10 = MEMORY[0x1E696ACD8];
  v21 = @"view";
  v11 = [*(*(a1 + 32) + 304) view];
  v22 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v13 = [v10 constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v12];
  [v10 activateConstraints:v13];

  v14 = MEMORY[0x1E696ACD8];
  v15 = [*(*(a1 + 32) + 304) view];
  v20 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [v14 constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v16];
  [v14 activateConstraints:v17];

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 304) willAnimatePictureInPictureStart];
  }

  v18 = [*(*(a1 + 32) + 216) view];
  [v18 layoutIfNeeded];
}

- (void)_removeViewControllerFromHostedWindowIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  parentViewController = [(PGPictureInPictureViewController *)self->_viewController parentViewController];
  rootViewController = self->_rootViewController;

  if (parentViewController == rootViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [(PGPictureInPictureViewController *)self->_viewController didAnimatePictureInPictureStop];
    }

    [(PGPictureInPictureViewController *)self->_viewController willMoveToParentViewController:0];
    view = [(PGPictureInPictureViewController *)self->_viewController view];
    [view removeFromSuperview];

    [(PGPictureInPictureViewController *)self->_viewController removeFromParentViewController];
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      viewController = self->_viewController;
      v10 = 138543618;
      v11 = v8;
      v12 = 2048;
      v13 = viewController;
      _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "PGHostedWindow root view controller is *not* anymore containing: %{public}@[%p]", &v10, 0x16u);
    }
  }
}

- (int64_t)_interfaceOrientationForTransitionAnimationAssumeApplicationActive:(BOOL)active
{
  v3 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (*&self->_delegateRespondsTo)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__PGPictureInPictureProxy__interfaceOrientationForTransitionAnimationAssumeApplicationActive___block_invoke;
    v5[3] = &unk_1E7F33CE8;
    v5[4] = self;
    v5[5] = &v6;
    [(PGPictureInPictureProxy *)self _executeDelegateCallbackBlock:v5 assumeApplicationActive:active];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __94__PGPictureInPictureProxy__interfaceOrientationForTransitionAnimationAssumeApplicationActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  *(*(*(a1 + 40) + 8) + 24) = [v2 pictureInPictureProxyInterfaceOrientationForTransitionAnimation:*(a1 + 32)];
}

- (CGRect)_viewFrameForTransitionAnimationAssumeApplicationActive:(BOOL)active
{
  v3 = &v14;
  v14 = 0;
  v15 = &v14;
  v17 = &unk_1BB2D468F;
  v16 = 0x4010000000;
  v4 = *(MEMORY[0x1E695F050] + 16);
  v18 = *MEMORY[0x1E695F050];
  v19 = v4;
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PGPictureInPictureProxy__viewFrameForTransitionAnimationAssumeApplicationActive___block_invoke;
    v13[3] = &unk_1E7F33590;
    v13[4] = self;
    v13[5] = &v14;
    [(PGPictureInPictureProxy *)self _executeDelegateCallbackBlock:v13 assumeApplicationActive:active];
    v3 = v15;
  }

  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  _Block_object_dispose(&v14, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void __83__PGPictureInPictureProxy__viewFrameForTransitionAnimationAssumeApplicationActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureProxyViewFrameForTransitionAnimation:*(a1 + 32)];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (!CGRectIsEmpty(v19))
  {
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    v12 = [v11 fixedCoordinateSpace];
    [v12 bounds];
    v22.origin.x = v13;
    v22.origin.y = v14;
    v22.size.width = v15;
    v22.size.height = v16;
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    v21 = CGRectIntersection(v20, v22);
    IsNull = CGRectIsNull(v21);

    if (!IsNull)
    {
      v18 = *(*(a1 + 40) + 8);
      v18[4] = v4;
      v18[5] = v6;
      v18[6] = v8;
      v18[7] = v10;
    }
  }
}

- (id)_bestKnownConnectedSceneSessionPersistentIdentifier
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  if ((*&self->_delegateRespondsTo & 4) != 0 && (v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __78__PGPictureInPictureProxy__bestKnownConnectedSceneSessionPersistentIdentifier__block_invoke, v17[3] = &unk_1E7F33590, v17[4] = self, v17[5] = &v18, [(PGPictureInPictureProxy *)self _executeDelegateCallbackBlock:v17 assumeApplicationActive:1], (v3 = v19[5]) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = self->_sceneSessionPersistentIdentifier;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PGPictureInPictureProxy__bestKnownConnectedSceneSessionPersistentIdentifier__block_invoke_2;
  v15[3] = &unk_1E7F33D10;
  v7 = v4;
  v16 = v7;
  v8 = [connectedScenes bs_containsObjectPassingTest:v15];

  if (v8)
  {
    v9 = v16;
    goto LABEL_11;
  }

LABEL_8:
  if ([(PGPictureInPictureProxy *)self _isInactive])
  {
    v7 = 0;
    goto LABEL_12;
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes2 = [mEMORY[0x1E69DC668]2 connectedScenes];
  v9 = [connectedScenes2 bs_firstObjectPassingTest:&__block_literal_global_231];

  session = [v9 session];
  persistentIdentifier = [session persistentIdentifier];
  v7 = [persistentIdentifier copy];

LABEL_11:
LABEL_12:
  _Block_object_dispose(&v18, 8);

  return v7;
}

void __78__PGPictureInPictureProxy__bestKnownConnectedSceneSessionPersistentIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v9 = [v2 pictureInPictureProxyViewControllerWindowForTransitionAnimation:*(a1 + 32)];

  v3 = [v9 windowScene];
  v4 = [v3 session];
  v5 = [v4 persistentIdentifier];
  v6 = [v5 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t __78__PGPictureInPictureProxy__bestKnownConnectedSceneSessionPersistentIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  v4 = [v3 persistentIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __78__PGPictureInPictureProxy__bestKnownConnectedSceneSessionPersistentIdentifier__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_isViewControllerWindowSceneConsideredActive
{
  if ([(PGPictureInPictureProxy *)self _isInCallService]|| self->_isInViewService)
  {
    return 1;
  }

  return [(PGPictureInPictureProxy *)self _isViewControllerWindowSceneActive];
}

- (BOOL)_isViewControllerWindowSceneActive
{
  if ([*MEMORY[0x1E69DDA98] applicationState])
  {
    return 0;
  }

  _sourceScene = [(PGPictureInPictureProxy *)self _sourceScene];
  v5 = _sourceScene;
  if (_sourceScene)
  {
    v3 = [_sourceScene activationState] == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_executeDelegateCallbackBlock:(id)block assumeApplicationActive:(BOOL)active
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8 = blockCopy;
    if (active || (blockCopy = [(PGPictureInPictureProxy *)self _isViewControllerWindowSceneConsideredActive], v7 = v8, blockCopy))
    {
      blockCopy = (*(v7 + 16))(v7);
      v7 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](blockCopy, v7);
}

- (void)_updateAutoPIPSettingsAndNotifyRemoteObjectIfNeeded
{
  _expectedScene = [(PGPictureInPictureProxy *)self _expectedScene];
  if (_expectedScene && [_expectedScene activationState] && !self->_pictureInPictureStashedOrUnderLock)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PGPictureInPictureProxy *)self _addWindowSceneActivationStateObserverIfNeeded:_expectedScene];
    }
  }

  else
  {
    v4 = NSStringFromSelector(a2);
    [(PGPictureInPictureProxy *)self _updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:v4];
  }
}

- (void)_addWindowSceneActivationStateObserverIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy && !self->_windowSceneActivationStateObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DE338];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PGPictureInPictureProxy__addWindowSceneActivationStateObserverIfNeeded___block_invoke;
    v10[3] = &unk_1E7F33D58;
    objc_copyWeak(v11, &location);
    v11[1] = a2;
    v8 = [defaultCenter addObserverForName:v7 object:neededCopy queue:0 usingBlock:v10];
    windowSceneActivationStateObserver = self->_windowSceneActivationStateObserver;
    self->_windowSceneActivationStateObserver = v8;

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __74__PGPictureInPictureProxy__addWindowSceneActivationStateObserverIfNeeded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = NSStringFromSelector(*(a1 + 40));
  [WeakRetained _updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:v2];
}

- (void)_updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _PGLogMethodProem(self, 1);
    *buf = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = reasonCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  [(PGPictureInPictureProxy *)self _stopObservingWindowSceneActivationState];
  [(PGPictureInPictureProxy *)self _viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:reasonCopy];
  if (self->_pictureInPictureShouldStartWhenEnteringBackground && !self->_isPictureInPictureActive)
  {
    [(PGPictureInPictureProxy *)self _windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:reasonCopy];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PGPictureInPictureProxy__updateAutoPIPSettingsAndNotifyRemoteObjectWithReason___block_invoke;
  block[3] = &unk_1E7F32530;
  block[4] = self;
  dispatch_async(queue, block);
}

void __81__PGPictureInPictureProxy__updateAutoPIPSettingsAndNotifyRemoteObjectWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 setPictureInPictureShouldStartWhenEnteringBackground:*(*(a1 + 32) + 104) completionHandler:&__block_literal_global_234];
}

- (void)_stopObservingWindowSceneActivationState
{
  if (self->_windowSceneActivationStateObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_windowSceneActivationStateObserver];

    windowSceneActivationStateObserver = self->_windowSceneActivationStateObserver;
    self->_windowSceneActivationStateObserver = 0;
  }
}

- (void)_handleSceneConnectionChangedNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = [name isEqualToString:*MEMORY[0x1E69DE350]];

  sceneSessionPersistentIdentifier = self->_sceneSessionPersistentIdentifier;
  if (v6)
  {
    if (!sceneSessionPersistentIdentifier || ([MEMORY[0x1E69DC668] sharedApplication], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "connectedScenes"), v9 = objc_claimAutoreleasedReturnValue(), v17[0] = MEMORY[0x1E69E9820], v17[1] = 3221225472, v17[2] = __69__PGPictureInPictureProxy__handleSceneConnectionChangedNotification___block_invoke, v17[3] = &unk_1E7F33D10, v17[4] = self, v10 = objc_msgSend(v9, "bs_containsObjectPassingTest:", v17), v9, v8, (v10 & 1) == 0))
    {
      [(PGPictureInPictureProxy *)self _windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:@"Scene Connection and _sceneSessionPersistentIdentifier is not connected"];
    }
  }

  else if (sceneSessionPersistentIdentifier)
  {
    name2 = [notificationCopy name];
    v12 = [name2 isEqualToString:*MEMORY[0x1E69DE340]];

    if (v12)
    {
      object = [notificationCopy object];
      session = [object session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = [persistentIdentifier isEqualToString:self->_sceneSessionPersistentIdentifier];

      if (v16)
      {
        [(PGPictureInPictureProxy *)self _windowSceneForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewControllerWithReason:@"Scene Disconnection"];
      }
    }
  }
}

uint64_t __69__PGPictureInPictureProxy__handleSceneConnectionChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  v4 = [v3 persistentIdentifier];
  v5 = [v4 isEqualToString:*(*(a1 + 32) + 56)];

  return v5;
}

- (BOOL)_canBeShownInMicroPIPMode
{
  playbackState = [(PGPictureInPictureProxy *)self playbackState];
  if ([playbackState supportsMicroPIP])
  {
    _isInCallService = [(PGPictureInPictureProxy *)self _isInCallService];
  }

  else
  {
    _isInCallService = 0;
  }

  return _isInCallService;
}

- (BOOL)_isInCallService
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v4;
}

- (void)_establishConnection
{
  OUTLINED_FUNCTION_5_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void __47__PGPictureInPictureProxy__establishConnection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      *buf = 136315394;
      v9 = "[PGPictureInPictureProxy _establishConnection]_block_invoke";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p - Connection interrupted!", buf, 0x16u);
    }

    v5 = [WeakRetained _connection];
    v6 = objc_loadWeakRetained((a1 + 40));

    if (v5 == v6)
    {
      [WeakRetained _markConnectionAsInterrupted];
    }

    v7 = WeakRetained;
    BSDispatchMain();
  }
}

void __47__PGPictureInPictureProxy__establishConnection__block_invoke_246(uint64_t a1)
{
  *(*(a1 + 32) + 109) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  [*(a1 + 32) _deactivateIfNeededForInterruptedOrInvalidatedConnection];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x1E69DDAB0];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v7 addObserver:v4 selector:sel__applicationDidBecomeActive name:v5 object:v6];
}

void __47__PGPictureInPictureProxy__establishConnection__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PGLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 136315394;
    v10 = "[PGPictureInPictureProxy _establishConnection]_block_invoke_2";
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_1BB282000, v2, OS_LOG_TYPE_DEFAULT, "%s %p - Connection invalidated", buf, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _connection];
    v7 = objc_loadWeakRetained((a1 + 40));

    if (v6 == v7)
    {
      v8 = v5;
      BSDispatchMain();
    }
  }
}

uint64_t __47__PGPictureInPictureProxy__establishConnection__block_invoke_249(uint64_t a1)
{
  [*(a1 + 32) __setConnection:0];
  [*(a1 + 32) _resetInternalState];
  v2 = *(a1 + 32);

  return [v2 _deactivateIfNeededForInterruptedOrInvalidatedConnection];
}

- (void)_invalidateConnectionForFailure
{
  BSDispatchQueueAssertMain();
  _connection = [(PGPictureInPictureProxy *)self _connection];
  [(PGPictureInPictureProxy *)self __setConnection:0];
  [_connection invalidate];
  [(PGPictureInPictureProxy *)self _deactivateIfNeededForInterruptedOrInvalidatedConnection];
  [(PGPictureInPictureProxy *)self _establishConnection];
  [(PGPictureInPictureProxy *)self _resetInternalState];
  controlsStyle = self->_controlsStyle;
  viewController = self->_viewController;
  v6 = NSStringFromSelector(a2);
  [(PGPictureInPictureProxy *)self _initializeWithControlsStyle:controlsStyle viewController:viewController reason:v6];
}

void __55__PGPictureInPictureProxy__updatePlaybackStateIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 updatePlaybackStateWithDiff:*(a1 + 40)];
}

- (id)_generatePlaybackStateDiffAndMarkAsSent
{
  playbackStateAccordingToRemoteObject = self->_playbackStateAccordingToRemoteObject;
  if (!playbackStateAccordingToRemoteObject)
  {
    v4 = [[PGPlaybackState alloc] initWithDictionary:0];
    v5 = self->_playbackStateAccordingToRemoteObject;
    self->_playbackStateAccordingToRemoteObject = v4;

    playbackStateAccordingToRemoteObject = self->_playbackStateAccordingToRemoteObject;
  }

  v6 = [(PGPlaybackState *)playbackStateAccordingToRemoteObject diffFromPlaybackState:self->_playbackState];
  v7 = [(PGPlaybackState *)self->_playbackState copy];
  v8 = self->_playbackStateAccordingToRemoteObject;
  self->_playbackStateAccordingToRemoteObject = v7;

  return v6;
}

- (void)_applicationDidBecomeActive
{
  if (self->_needsReinitialization)
  {
    [(PGPictureInPictureProxy *)self _resetInternalState];
    controlsStyle = self->_controlsStyle;
    viewController = self->_viewController;

    [(PGPictureInPictureProxy *)self _initializeWithControlsStyle:controlsStyle viewController:viewController reason:@"application did become active and no connection"];
  }
}

- (void)_deactivateIfNeededForInterruptedOrInvalidatedConnection
{
  _activationState = [(PGPictureInPictureProxy *)self _activationState];
  if ((_activationState - 2) < 2)
  {
    [(PGPictureInPictureProxy *)self _setActivationState:4 reason:@"deactivateIfNeededForInterruptedConnection"];
    [(PGPictureInPictureProxy *)self _beginDeactivatingPictureInPicture];
  }

  else if (_activationState != 4)
  {
    if (_activationState == 1)
    {

      [(PGPictureInPictureProxy *)self _cancelPrewarming];
    }

    return;
  }

  [(PGPictureInPictureProxy *)self _endDeactivatingPictureInPictureIfNeededWithAnimationType:0 stopReason:1];

  [(PGPictureInPictureProxy *)self _setActivationState:0 reason:@"deactivateIfNeededForInterruptedConnection"];
}

- (void)_legacyPictureInPictureInterruptionBegan
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PGPictureInPictureProxy _legacyPictureInPictureInterruptionBegan]";
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  if ((*&self->_delegateRespondsTo & 0x200) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      delegate2 = [(PGPictureInPictureProxy *)self delegate];
      [delegate2 pictureInPictureProxyPictureInPictureInterruptionBegan:self];
    }
  }
}

- (void)_legacyPictureInPictureInterruptionEnded
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PGPictureInPictureProxy _legacyPictureInPictureInterruptionEnded]";
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  if ((*&self->_delegateRespondsTo & 0x400) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      delegate2 = [(PGPictureInPictureProxy *)self delegate];
      [delegate2 pictureInPictureProxyPictureInPictureInterruptionEnded:self];
    }
  }
}

- (void)_setPictureInPictureActive:(BOOL)active
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isPictureInPictureActive != active)
  {
    activeCopy = active;
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[PGPictureInPictureProxy _setPictureInPictureActive:]";
      v8 = 2048;
      selfCopy = self;
      v10 = 1024;
      v11 = activeCopy;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v6, 0x1Cu);
    }

    [(PGPictureInPictureProxy *)self willChangeValueForKey:@"pictureInPictureActive"];
    self->_isPictureInPictureActive = activeCopy;
    [(PGPictureInPictureProxy *)self didChangeValueForKey:@"pictureInPictureActive"];
    [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"pip active"];
  }
}

- (void)_setPictureInPictureSuspended:(BOOL)suspended
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isPictureInPictureSuspended != suspended)
  {
    suspendedCopy = suspended;
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[PGPictureInPictureProxy _setPictureInPictureSuspended:]";
      v8 = 2048;
      selfCopy = self;
      v10 = 1024;
      v11 = suspendedCopy;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v6, 0x1Cu);
    }

    [(PGPictureInPictureProxy *)self willChangeValueForKey:@"pictureInPictureSuspended"];
    self->_isPictureInPictureSuspended = suspendedCopy;
    [(PGPictureInPictureProxy *)self didChangeValueForKey:@"pictureInPictureSuspended"];
    [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"suspended changed"];
  }
}

- (void)_setPictureInPicturePossible:(BOOL)possible
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isPictureInPicturePossible != possible)
  {
    possibleCopy = possible;
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[PGPictureInPictureProxy _setPictureInPicturePossible:]";
      v8 = 2048;
      selfCopy = self;
      v10 = 1024;
      v11 = possibleCopy;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v6, 0x1Cu);
    }

    [(PGPictureInPictureProxy *)self willChangeValueForKey:@"pictureInPicturePossible"];
    self->_isPictureInPicturePossible = possibleCopy;
    [(PGPictureInPictureProxy *)self didChangeValueForKey:@"pictureInPicturePossible"];
  }
}

- (void)_setStashedOrUnderLock:(BOOL)lock reason:(id)reason
{
  lockCopy = lock;
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureProxy _beginDeactivatingPictureInPictureWithAnimationType:stopReason:];
    }
  }

  if (self->_pictureInPictureStashedOrUnderLock != lockCopy)
  {
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[PGPictureInPictureProxy _setStashedOrUnderLock:reason:]";
      v14 = 2048;
      *v15 = self;
      *&v15[8] = 1024;
      *&v15[10] = lockCopy;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v12, 0x1Cu);
    }

    self->_pictureInPictureStashedOrUnderLock = lockCopy;
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = _PGLogMethodProem(self, 1);
      v12 = 138543874;
      v13 = v10;
      v14 = 1024;
      *v15 = lockCopy;
      *&v15[4] = 2114;
      *&v15[6] = reasonCopy;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Did update stashed or under lock state. stashedOrUnderLock{%{BOOL}u} reason: %{public}@", &v12, 0x1Cu);
    }

    self->_isInterruptedForStash = self->_automaticallyInterruptsForLegacyFaceTimeBehaviors && lockCopy;
    if ((*&self->_delegateRespondsTo & 0x800) != 0)
    {
      delegate = [(PGPictureInPictureProxy *)self delegate];
      [delegate pictureInPictureProxy:self didUpdateStashedOrUnderLockState:self->_pictureInPictureStashedOrUnderLock];
    }

    [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:@"stashed or underlock"];
    [(PGPictureInPictureProxy *)self _updateAutoPIPSettingsAndNotifyRemoteObjectWithReason:@"stashed or underlock changed"];
  }
}

- (void)_setInterruptedForDefaultReason:(BOOL)reason initiatedByRemoteObject:(BOOL)object
{
  objectCopy = object;
  reasonCopy = reason;
  v19 = *MEMORY[0x1E69E9840];
  v7 = PGLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInterruptedForDefaultReason];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:reasonCopy];
    v11 = 136315906;
    v12 = "[PGPictureInPictureProxy _setInterruptedForDefaultReason:initiatedByRemoteObject:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", &v11, 0x2Au);
  }

  if (self->_isInterruptedForDefaultReason != reasonCopy)
  {
    self->_isInterruptedForDefaultReason = reasonCopy;
    if (objectCopy)
    {
      v10 = @"default reason initiated by remote";
    }

    else
    {
      v10 = @"default reason initiated locally";
    }

    [(PGPictureInPictureProxy *)self _updateIsInterruptedIfNeededForReason:v10 initiatedByRemoteObject:objectCopy];
  }
}

- (void)_updateIsInterruptedIfNeededForReason:(id)reason initiatedByRemoteObject:(BOOL)object
{
  objectCopy = object;
  v34 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  _activationState = [(PGPictureInPictureProxy *)self _activationState];
  v8 = _activationState;
  isInterruptedForDefaultReason = _activationState != 0;
  if (self->_automaticallyInterruptsForLegacyFaceTimeBehaviors)
  {
    if (self->_isPictureInPictureSuspended)
    {
      goto LABEL_8;
    }

    isInterruptedForStash = self->_isInterruptedForStash;
    if (!_activationState)
    {
      goto LABEL_8;
    }
  }

  else
  {
    isInterruptedForStash = 0;
    if (!_activationState)
    {
      goto LABEL_8;
    }
  }

  if (!isInterruptedForStash)
  {
    isInterruptedForDefaultReason = self->_isInterruptedForDefaultReason;
  }

LABEL_8:
  v11 = isInterruptedForDefaultReason;
  v12 = PGLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _PGLogMethodProem(self, 1);
    isInterruptedForAnyReason = self->_isInterruptedForAnyReason;
    v15 = self->_isInterruptedForDefaultReason;
    v20 = 138544898;
    v21 = v13;
    v22 = 1024;
    v23 = isInterruptedForAnyReason;
    v24 = 1024;
    v25 = v11;
    v26 = 2114;
    v27 = reasonCopy;
    v28 = 1024;
    v29 = v8 != 0;
    v30 = 1024;
    v31 = v15;
    v32 = 1024;
    v33 = objectCopy;
    _os_log_impl(&dword_1BB282000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Did update _isInterruptedForAnyReason %{BOOL}u --> shouldBeInterruptedForAnyReason %{BOOL}u reason: %{public}@ canBeInterrupted %{BOOL}u _isInterruptedForDefaultReason %{BOOL}u initiatedByRemoteObject: %{BOOL}u", &v20, 0x34u);
  }

  if (self->_isInterruptedForAnyReason != v11)
  {
    self->_isInterruptedForAnyReason = v11;
    if (v11)
    {
      [(PGPictureInPictureProxy *)self _legacyPictureInPictureInterruptionBegan];
    }

    else
    {
      [(PGPictureInPictureProxy *)self _legacyPictureInPictureInterruptionEnded];
      if (!objectCopy)
      {
        delegate = [(PGPictureInPictureProxy *)self delegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [PGCommand commandForEndInterruptionWithShouldResumeSuggestion:0];
          delegate2 = [(PGPictureInPictureProxy *)self delegate];
          [delegate2 pictureInPictureProxy:self didReceivePlaybackCommand:v18];
        }
      }
    }
  }
}

- (void)pictureInPictureStartRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PGPictureInPictureProxy pictureInPictureStartRequestedAnimated:withCompletionHandler:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    v11 = handlerCopy;
    BSDispatchMain();
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __88__PGPictureInPictureProxy_pictureInPictureStartRequestedAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__PGPictureInPictureProxy_pictureInPictureStartRequestedAnimated_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7F32BE8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _startPictureInPictureAnimated:v2 enteringBackground:1 reason:@"remote request" withCompletionHandler:v3];
}

void __88__PGPictureInPictureProxy_pictureInPictureStartRequestedAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PGPictureInPictureProxy_pictureInPictureStartRequestedAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v10 = *(a1 + 40);
  v11 = a2;
  v7 = v5;
  v9 = v7;
  dispatch_async(v6, block);
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _invalidateConnectionForFailure];
  }
}

- (void)pictureInPictureStopRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PGPictureInPictureProxy pictureInPictureStopRequestedAnimated:withCompletionHandler:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    v11 = handlerCopy;
    BSDispatchMain();
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7F32BE8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _stopPictureInPictureAnimated:v2 restoreUserInterface:1 withCompletionHandler:v3];
}

void __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 200);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E7F32B20;
  v7 = *(a1 + 40);
  v14 = a2;
  v8 = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v9 = v5;
  dispatch_async(v6, v10);
}

void __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_4;
  v2[3] = &unk_1E7F328F0;
  v3 = *(a1 + 56);
  v2[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __87__PGPictureInPictureProxy_pictureInPictureStopRequestedAnimated_withCompletionHandler___block_invoke_4(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _invalidateConnectionForFailure];
  }

  return result;
}

- (void)beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PGPictureInPictureProxy beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:]";
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    v10 = handlerCopy;
    BSDispatchMain();
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

void __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7F33DA8;
  v9[4] = v2;
  v10 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_1E7F33DD0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v2 _twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock:v9 completionHandler:v6];
}

void __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) set_pipStopUserInterfaceRestoreContinuationBlock:v3];
  v4 = *(*(a1 + 32) + 200);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E7F32968;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (*(v6 + 320))
  {
    v7 = MEMORY[0x1BFB0C680]();
    v8 = *(a1 + 32);
    v9 = *(v8 + 320);
    *(v8 + 320) = 0;

    v10 = *(*(a1 + 32) + 200);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_5;
    block[3] = &unk_1E7F32B98;
    v18 = v7;
    v19 = a2;
    v17 = v5;
    v11 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v12 = *(v6 + 200);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __106__PGPictureInPictureProxy_beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler___block_invoke_6;
      v13[3] = &unk_1E7F32D70;
      v15 = *(a1 + 40);
      v14 = v5;
      dispatch_async(v12, v13);
      [*(a1 + 32) _invalidateConnectionForFailure];

      goto LABEL_6;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PGPictureInPictureProxy.m" lineNumber:1944 description:{@"_twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock completed without error, but a __pipStopFinalStageCompletionHandler was not available"}];
  }

LABEL_6:
}

- (void)endTwoStagePictureInPictureStopWithCompletionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[PGPictureInPictureProxy endTwoStagePictureInPictureStopWithCompletionBlock:]";
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    [(PGPictureInPictureProxy *)self set_pipStopFinalStageCompletionHandler:blockCopy];
    v10 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v11 = __78__PGPictureInPictureProxy_endTwoStagePictureInPictureStopWithCompletionBlock___block_invoke_2;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    blockCopy[2](blockCopy, 0, v9);

    v10 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v11 = __78__PGPictureInPictureProxy_endTwoStagePictureInPictureStopWithCompletionBlock___block_invoke;
  }

  v10[2] = v11;
  v10[3] = &unk_1E7F32530;
  v10[4] = self;
  BSDispatchMain();
}

void __78__PGPictureInPictureProxy_endTwoStagePictureInPictureStopWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 312);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 312);
    *(v3 + 312) = 0;
  }
}

- (void)pictureInPictureCancelRequestedAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = PGLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[PGPictureInPictureProxy pictureInPictureCancelRequestedAnimated:withCompletionHandler:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    v11 = handlerCopy;
    BSDispatchMain();
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __89__PGPictureInPictureProxy_pictureInPictureCancelRequestedAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__PGPictureInPictureProxy_pictureInPictureCancelRequestedAnimated_withCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7F32BE8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _stopPictureInPictureAnimated:v2 restoreUserInterface:0 withCompletionHandler:v3];
}

void __89__PGPictureInPictureProxy_pictureInPictureCancelRequestedAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PGPictureInPictureProxy_pictureInPictureCancelRequestedAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v10 = *(a1 + 40);
  v11 = a2;
  v7 = v5;
  v9 = v7;
  dispatch_async(v6, block);
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _invalidateConnectionForFailure];
  }
}

- (void)updatePictureInPicturePossible:(BOOL)possible
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[PGPictureInPictureProxy updatePictureInPicturePossible:]";
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

- (void)pictureInPictureInvalidated
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PGPictureInPictureProxy pictureInPictureInvalidated]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

uint64_t __54__PGPictureInPictureProxy_pictureInPictureInvalidated__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _activationState] == 3 || (result = objc_msgSend(*(a1 + 32), "_activationState"), result == 2))
  {
    [*(a1 + 32) _setActivationState:4 reason:@"pictureInPictureInvalidated starting"];
    [objc_opt_class() _updatePictureInPictureActive:0];
    [*(a1 + 32) _beginDeactivatingPictureInPicture];
    [*(a1 + 32) _endDeactivatingPictureInPictureIfNeededWithAnimationType:0 stopReason:1];
    v3 = *(a1 + 32);

    return [v3 _setActivationState:0 reason:@"pictureInPictureInvalidated finished"];
  }

  return result;
}

- (void)updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity synchronizationFence:(id)fence
{
  height = size.height;
  width = size.width;
  fenceCopy = fence;
  v12 = PGLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v13 = PGLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke;
    v17[3] = &unk_1E7F33E20;
    v18 = fenceCopy;
    selfCopy = self;
    v20 = width;
    v21 = height;
    typeCopy = type;
    velocityCopy = velocity;
    [_systemAnimationFenceExemptQueue performAsync:v17];
  }
}

void __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69DCE70] _synchronizeDrawingWithFence:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 256);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_2;
  v11[3] = &unk_1E7F32C58;
  v11[4] = v2;
  v12 = *(a1 + 48);
  v4 = MEMORY[0x1BFB0C680](v11);
  v5 = *(a1 + 64);
  switch(v5)
  {
    case 2:
      if (v3 & 1) == 0 && (objc_opt_respondsToSelector())
      {
        [*(*(a1 + 40) + 304) viewWillResize];
      }

      v6 = *(a1 + 72);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_4;
      v7[3] = &unk_1E7F33DF8;
      v8 = v3;
      v7[4] = *(a1 + 40);
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:v4 animations:v7 completion:v6];
      break;
    case 1:
      if (v3 & 1) == 0 && (objc_opt_respondsToSelector())
      {
        [*(*(a1 + 40) + 304) viewWillResize];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_3;
      v9[3] = &unk_1E7F33DF8;
      v10 = v3;
      v9[4] = *(a1 + 40);
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithAnimations:v4 completion:v9];
      break;
    case 0:
      if (v3)
      {
        [MEMORY[0x1E69DD250] PG_performWithoutAnimation:v4];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [*(*(a1 + 40) + 304) viewWillResize];
        }

        [MEMORY[0x1E69DD250] PG_performWithoutAnimation:v4];
        if (objc_opt_respondsToSelector())
        {
          [*(*(a1 + 40) + 304) viewDidResize];
        }
      }

      break;
  }
}

uint64_t __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 208) setFrame:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v2 = *(*(a1 + 32) + 208);

  return [v2 layoutIfNeeded];
}

uint64_t __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v2 = *(*(v1 + 32) + 304);

      return [v2 viewDidResize];
    }
  }

  return result;
}

uint64_t __107__PGPictureInPictureProxy_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence___block_invoke_4(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v2 = *(*(v1 + 32) + 304);

      return [v2 viewDidResize];
    }
  }

  return result;
}

- (void)hostedWindowSizeChangeBegan
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

uint64_t __54__PGPictureInPictureProxy_hostedWindowSizeChangeBegan__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 1;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);

    return [v3 viewWillResize];
  }

  return result;
}

- (void)hostedWindowSizeChangeEnded
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

uint64_t __54__PGPictureInPictureProxy_hostedWindowSizeChangeEnded__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(*(a1 + 32) + 304) viewDidResize];
  }

  *(*(a1 + 32) + 256) = 0;
  return result;
}

- (void)actionButtonTapped
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = PGLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

uint64_t __45__PGPictureInPictureProxy_actionButtonTapped__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 304);

    return [v3 actionButtonTapped];
  }

  return result;
}

- (void)setStashedOrUnderLock:(BOOL)lock
{
  lockCopy = lock;
  v14 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = _PGLogMethodProem(self, 1);
    *buf = 138543618;
    v11 = v9;
    v12 = 1024;
    v13 = lockCopy;
    _os_log_debug_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ %{BOOL}u", buf, 0x12u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    BSDispatchMain();
  }
}

- (void)setResourcesUsageReductionReasons:(unint64_t)reasons
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reasons];
    v10 = 136315650;
    v11 = "[PGPictureInPictureProxy setResourcesUsageReductionReasons:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %@", &v10, 0x20u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    [(PGPictureInPictureProxy *)self _setResourcesUsageReductionReasons:reasons];
  }
}

void __62__PGPictureInPictureProxy__setResourcesUsageReductionReasons___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = (a1 + 32);
  v4 = *(v1 + 264);
  if (v3 == v4)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__PGPictureInPictureProxy__setResourcesUsageReductionReasons___block_invoke_cold_1(v2);
    }
  }

  else
  {
    *(v1 + 264) = v3;
    if ((*(*v2 + 144) & 0x1000) == 0)
    {
      return;
    }

    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*v2 delegate];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      v10 = 136315906;
      v11 = "[PGPictureInPictureProxy _setResourcesUsageReductionReasons:]_block_invoke";
      v12 = 2114;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s Informing %{public}@ of didUpdateResourcesUsageReductionReasons:%@ oldReasons:%@", &v10, 0x2Au);
    }

    v5 = [*v2 delegate];
    [v5 pictureInPictureProxy:*v2 didUpdateResourcesUsageReductionReasons:v3 oldReasons:v4];
  }
}

- (void)handleCommand:(id)command
{
  v19 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  _connection = [(PGPictureInPictureProxy *)self _connection];

  if (currentConnection == _connection)
  {
    v8 = [[PGCommand alloc] initWithDictionary:commandCopy];
    v9 = PGLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = _PGLogMethodProem(self, 1);
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      selfCopy = v8;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
    }

    v11 = PGLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "[PGPictureInPictureProxy handleCommand:]";
      v15 = 2114;
      selfCopy = self;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@", buf, 0x20u);
    }

    v12 = v8;
    BSDispatchMain();
  }
}

void __41__PGPictureInPictureProxy_handleCommand___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) systemAction] == 1)
  {
    v2 = *(a1 + 40);

    [v2 _notifyActionButtonTapped];
    return;
  }

  if ([*(a1 + 32) systemAction] == 7)
  {
    v3 = *(a1 + 40);

    [v3 _invalidateConnectionForFailure];
    return;
  }

  if ([*(a1 + 32) systemAction] == 6)
  {
    if (![*(a1 + 40) _isInactive])
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 280));
    if (objc_opt_respondsToSelector())
    {
      v4 = [WeakRetained pictureInPictureProxySupportsPrewarming:*(a1 + 40)];
      if (([*(a1 + 40) isReadyForDisplay] & 1) == 0 && v4)
      {
        [*(a1 + 40) _prewarmAndStartAfterTimeout];
LABEL_29:
        v14 = WeakRetained;
LABEL_52:

        return;
      }
    }

    else
    {
      [*(a1 + 40) isReadyForDisplay];
    }

    [*(a1 + 40) _startPictureInPictureAnimated:0 enteringBackground:0 reason:@"PGSystemActionStartPIP" withCompletionHandler:0];
    goto LABEL_29;
  }

  v5 = [*(a1 + 32) faceTimeAction];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 associatedBoolValue];
    v8 = [*(a1 + 32) faceTimeAction];
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v12 = v7 == 0;
        v13 = 1;
      }

      else
      {
        if (v8 != 2)
        {
          return;
        }

        v12 = v7 == 0;
        v13 = 3;
      }

      if (v12)
      {
        v9 = v13 + 1;
      }

      else
      {
        v9 = v13;
      }

      goto LABEL_49;
    }

    if (v8 == 3)
    {
      v9 = 5;
LABEL_49:
      v25 = [*(a1 + 40) delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        return;
      }

      v41 = [*(a1 + 40) delegate];
      [v41 pictureInPictureProxy:*(a1 + 40) didRequestFaceTimeAction:v9];
      goto LABEL_51;
    }

    if (v8 != 4)
    {
      if (v8 != 5)
      {
        return;
      }

      v9 = 6;
      goto LABEL_49;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = *(*(a1 + 40) + 144);
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          v24 = [v23 identifier];
          if (v24 == [*(a1 + 32) associatedIntegerValue])
          {
            [v23 invokeAction];
            goto LABEL_67;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:

    return;
  }

  if ([v6 testingAction])
  {
    v10 = [*(a1 + 40) delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v41 = [*(a1 + 40) delegate];
    [v41 pictureInPictureProxy:*(a1 + 40) didReceiveTestingCommand:*(a1 + 32)];
LABEL_51:
    v14 = v41;
    goto LABEL_52;
  }

  v15 = [*(a1 + 32) playbackAction];
  v16 = 0;
  if (v15 <= 5)
  {
    if ((v15 - 1) < 4)
    {
LABEL_61:
      v16 = 1;
      goto LABEL_62;
    }

    if (v15 != 5)
    {
      goto LABEL_62;
    }

    v17 = *(*(a1 + 40) + 103);
    if (v17 != [*(a1 + 32) associatedBoolValue])
    {
      [*(a1 + 40) _setPictureInPictureSuspended:{objc_msgSend(*(a1 + 32), "associatedBoolValue")}];
      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if (v15 > 7)
  {
    if (v15 != 9)
    {
      if (v15 != 8)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v37 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v38 = [*(a1 + 40) delegate];
      v39 = [v38 pictureInPictureProxyCanIssueOptionalCommand:*(a1 + 32)];

      if (v39)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    [*(a1 + 40) stopPictureInPictureAndRestoreUserInterface:0];
LABEL_75:
    v16 = 0;
    goto LABEL_62;
  }

  if (v15 == 6)
  {
    v35 = *(a1 + 40);
    v36 = v35[100];
    [v35 _setInterruptedForDefaultReason:1 initiatedByRemoteObject:1];
    v16 = *(*(a1 + 40) + 100) & (v36 ^ 1);
  }

  else
  {
    v27 = *(a1 + 40);
    v28 = v27[100];
    [v27 _setInterruptedForDefaultReason:0 initiatedByRemoteObject:1];
    v16 = (*(*(a1 + 40) + 100) ^ 1) & v28;
  }

LABEL_62:
  v29 = [*(a1 + 40) _activationState];
  v30 = PGLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = _PGLogMethodProem(*(a1 + 40), 0);
    v32 = *(a1 + 32);
    *buf = 138544130;
    v47 = v31;
    v48 = 1024;
    v49 = v29 != 0;
    v50 = 2114;
    v51 = v32;
    v52 = 1024;
    v53 = v16 & 1;
    _os_log_impl(&dword_1BB282000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ isActiveOrStarting: %{BOOL}u handle command %{public}@ should notify: %{BOOL}u", buf, 0x22u);
  }

  if (((v29 != 0) & v16) == 1)
  {
    v33 = [*(a1 + 40) delegate];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v18 = [*(a1 + 40) delegate];
      [v18 pictureInPictureProxy:*(a1 + 40) didReceivePlaybackCommand:*(a1 + 32)];
      goto LABEL_67;
    }
  }
}

- (void)_notifyActionButtonTapped
{
  if (objc_opt_respondsToSelector())
  {
    viewController = self->_viewController;

    [(PGPictureInPictureViewController *)viewController actionButtonTapped];
  }
}

- (void)skipForwardButtonTappedWithTimeInterval:(double)interval
{
  if (objc_opt_respondsToSelector())
  {
    viewController = self->_viewController;

    [(PGPictureInPictureViewController *)viewController skipForwardButtonTappedWithTimeInterval:interval];
  }
}

- (void)_pipSceneComponentDidConnect:(id)connect
{
  connectCopy = connect;
  object = [connectCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [connectCopy object];
  }

  else
  {
    object2 = 0;
  }

  identifier = [object2 identifier];
  v7 = [identifier isEqualToString:self->_requestedSceneIdentifier];

  if (v7)
  {
    windowScene = [object2 windowScene];
    [(PGPictureInPictureProxy *)self _setRequestedWindowScene:windowScene];
  }
}

- (void)_pipSceneComponentDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  object = [disconnectCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [disconnectCopy object];
  }

  else
  {
    object2 = 0;
  }

  windowScene = [object2 windowScene];
  WeakRetained = objc_loadWeakRetained(&self->_requestedWindowScene);

  if (windowScene == WeakRetained)
  {
    [(PGPictureInPictureProxy *)self _setRequestedWindowScene:0];
  }
}

- (void)_setRequestedWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_requestedWindowScene);

  v6 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_requestedWindowScene);

      if (v7)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PGPictureInPictureProxy.m" lineNumber:2328 description:@"We don't support changing scenes!"];
      }
    }

    objc_storeWeak(&self->_requestedWindowScene, obj);
    [(UIWindow *)self->_contentWindow setHidden:1];
    v9 = objc_loadWeakRetained(&self->_requestedWindowScene);

    v6 = obj;
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69DD2E8]);
      v11 = objc_loadWeakRetained(&self->_requestedWindowScene);
      v12 = [v10 initWithWindowScene:v11];
      contentWindow = self->_contentWindow;
      self->_contentWindow = v12;

      [(UIWindow *)self->_contentWindow setBackgroundColor:0];
      [(UIWindow *)self->_contentWindow setRootViewController:self->_rootViewController];
      [(UIWindow *)self->_contentWindow setHidden:0];
      v6 = obj;
    }
  }
}

- (void)pagingSkipByNumberOfPages:(int64_t)pages
{
  if ((*&self->_delegateRespondsTo & 0x4000) != 0)
  {
    delegate = [(PGPictureInPictureProxy *)self delegate];
    [delegate pictureInPictureProxy:self pagingSkipByNumberOfPages:pages];
  }
}

- (void)initWithControlsStyle:viewController:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = _PGLogMethodProem(v1, 0);
  [v3 handleFailureInMethod:v0 object:v1 file:@"PGPictureInPictureProxy.m" lineNumber:180 description:{@"%@ needs valid viewController!", v2}];
}

- (void)setAutomaticallyInterruptsForLegacyFaceTimeBehaviors:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:@"automaticallyInterruptsForLegacyFaceTimeBehaviors == NO" object:? file:? lineNumber:? description:?];
}

void __106__PGPictureInPictureProxy__startPictureInPictureAnimated_enteringBackground_reason_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"PGPictureInPictureProxy.m" lineNumber:926 description:{@"We failed to start, but activation state remained activating and nobody cleaned up after the failure"}];
}

- (void)__coordinateStartAnimated:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%{public}@", v5, v6, v7, v8, v9);
}

- (void)__coordinateStartAnimated:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__setupStartWithAnimationType:initialLayerFrame:successHandler:failureHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"successHandler != nil && failureHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__actuallyStartWithAnimationType:successHandler:failureHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"successHandler != nil && failureHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__didStartWithAnimationType:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__updateCancellationPolicyWithSuccessHandler:failureHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"successHandler != nil && failureHandler != nil" object:? file:? lineNumber:? description:?];
}

void __127__PGPictureInPictureProxy__twoStageStopForPictureInPictureRestoreWithContinueAfterUserInterfaceRestoreBlock_completionHandler___block_invoke_4_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PGPictureInPictureProxy.m" lineNumber:1131 description:{@"Invalid parameter not satisfying: %@", @"appActivationError"}];
}

- (void)__setupStopAnimated:needsApplicationActivation:waitForApplicationActivation:successHandler:failureHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"successHandler != nil && failureHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__waitForApplicationActivationWithSuccessHandler:failureHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"successHandler != nil && failureHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__actuallyStopAnimated:reason:finalLayerFrame:finalInterfaceOrientation:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)__cleanupWithCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:@"completionHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)_beginDeactivatingPictureInPictureWithAnimationType:stopReason:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@ must be invoked on the main thread!", v5, v6, v7, v8, v9);
}

- (void)_beginDeactivatingPictureInPictureWithAnimationType:stopReason:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_endDeactivatingPictureInPictureIfNeededWithAnimationType:stopReason:cleanupHandlerOrNil:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_6();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __62__PGPictureInPictureProxy__setResourcesUsageReductionReasons___block_invoke_cold_1(void **a1)
{
  v1 = _PGLogMethodProem(*a1, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@ oldReasons cannot equal new ones.", v4, v5, v6, v7, v8);
}

@end