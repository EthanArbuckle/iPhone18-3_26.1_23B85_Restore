@interface SBSceneHostingDisplayController
- (SBSceneHostingDisplayController)initWithWorkspaceEventQueue:(id)queue policy:(id)policy;
- (id)_createBlankingWindowWithConfiguration:(id)configuration;
- (id)_createDisplayAssertionPreferences;
- (id)_createPresentationBinderWithConfiguration:(id)configuration;
- (id)_createUpdateTransactionWithLabel:(id)label;
- (id)createTransactionForTransitionRequest:(id)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)signpostDescription;
- (void)_createDisplayAssertionPreferences;
- (void)_enqueueEvaluateAndApplyPresentationUpdate;
- (void)_ensureCADisplayUpToDate:(id)date completion:(id)completion;
- (void)_runRootTransaction:(id)transaction withLabel:(id)label completion:(id)completion;
- (void)_runRootUpdateTransactionWithLabel:(id)label completion:(id)completion;
- (void)_sendBlankingWindowToFront:(BOOL)front;
- (void)_updateBlankingWindowIfNecessary;
- (void)_updateLayoutPublisherIfNecessary;
- (void)_updatePolicyForPresentation:(id)presentation;
- (void)_updatePresentationBinderIfNecessary;
- (void)connectToDisplayIdentity:(id)identity configuration:(id)configuration displayManager:(id)manager sceneManager:(id)sceneManager caDisplayQueue:(id)queue assertion:(id)assertion embeddedBacklightOn:(BOOL)on;
- (void)dealloc;
- (void)displayAssertion:(id)assertion didLoseControlOfDisplayForDeactivationReasons:(unint64_t)reasons;
- (void)displayAssertion:(id)assertion didReceiveNewDeactivationReasons:(unint64_t)reasons;
- (void)displayAssertionDidGainControlOfDisplay:(id)display;
- (void)displayIdentityDidDisconnect:(id)disconnect;
- (void)displayIdentityDidUpdate:(id)update configuration:(id)configuration;
- (void)embeddedBacklightStateDidChange:(BOOL)change source:(int64_t)source;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)requestUpdate:(unint64_t)update;
- (void)transformDisplayConfiguration:(id)configuration withBuilder:(id)builder;
@end

@implementation SBSceneHostingDisplayController

- (SBSceneHostingDisplayController)initWithWorkspaceEventQueue:(id)queue policy:(id)policy
{
  queueCopy = queue;
  policyCopy = policy;
  v9 = policyCopy;
  if (queueCopy)
  {
    if (policyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSceneHostingDisplayController initWithWorkspaceEventQueue:policy:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBSceneHostingDisplayController initWithWorkspaceEventQueue:policy:];
LABEL_3:
  v22.receiver = self;
  v22.super_class = SBSceneHostingDisplayController;
  v10 = [(SBSceneHostingDisplayController *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workspaceEventQueue, queue);
    objc_storeStrong(&v11->_policy, policy);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingWork = v11->_pendingWork;
    v11->_pendingWork = v12;

    objc_initWeak(&location, v11);
    v14 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v20, &location);
    v15 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v11->_stateCaptureAssertion;
    v11->_stateCaptureAssertion = v15;

    v17 = objc_alloc_init(MEMORY[0x277CF0B80]);
    readyToTransformDisplaysSignal = v11->_readyToTransformDisplaysSignal;
    v11->_readyToTransformDisplaysSignal = v17;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __70__SBSceneHostingDisplayController_initWithWorkspaceEventQueue_policy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBSceneHostingDisplayController;
  [(SBSceneHostingDisplayController *)&v3 dealloc];
}

- (void)transformDisplayConfiguration:(id)configuration withBuilder:(id)builder
{
  v77 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  builderCopy = builder;
  identity = [configurationCopy identity];
  rootIdentity = [identity rootIdentity];
  rootIdentity2 = [(FBSDisplayIdentity *)self->_displayIdentity rootIdentity];
  v11 = [rootIdentity isEqual:rootIdentity2];

  if ((v11 & 1) == 0)
  {
    [SBSceneHostingDisplayController transformDisplayConfiguration:withBuilder:];
  }

  if ([(BSAtomicSignal *)self->_readyToTransformDisplaysSignal hasBeenSignalled])
  {
    v12 = [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayPreferencesForDisplayController:self];
    if ([v12 keepOtherModes])
    {
      availableModes = [configurationCopy availableModes];
      v14 = [availableModes mutableCopy];

      preferredMode = [configurationCopy preferredMode];
      [v14 removeObject:preferredMode];

      currentMode = [configurationCopy currentMode];
      [v14 removeObject:currentMode];
    }

    else
    {
      v14 = 0;
    }

    immutableCADisplay = [configurationCopy immutableCADisplay];
    cADisplayModeCriteria = [v12 CADisplayModeCriteria];
    v20 = [immutableCADisplay preferredModeWithCriteria:cADisplayModeCriteria];

    width = [v20 width];
    v56 = v20;
    height = [v20 height];
    v23 = 1.0;
    v24 = 1.0;
    if ([immutableCADisplay displayType] != 2)
    {
      [v12 logicalScale];
      v26 = v25;
      v28 = v27;
      [immutableCADisplay maximumLogicalScale];
      v24 = v29;
      [immutableCADisplay minimumLogicalScale];
      if (v30 < v26)
      {
        v30 = v26;
      }

      if (v24 > v30)
      {
        v24 = v30;
      }

      [immutableCADisplay maximumLogicalScale];
      v32 = v31;
      [immutableCADisplay minimumLogicalScale];
      if (v33 < v28)
      {
        v33 = v28;
      }

      if (v32 <= v33)
      {
        v23 = v32;
      }

      else
      {
        v23 = v33;
      }
    }

    v34 = v24 * width;
    [v12 contentsScale];
    v36 = v35;
    size = width;
    v37 = v24 * width / v35;
    v38 = v23 * height / v35;
    currentMode2 = [configurationCopy currentMode];
    v40 = [currentMode2 _copyWithOverrideSize:v37 scale:{v38, v36}];

    [builderCopy setCurrentMode:v40 preferredMode:v40 otherModes:v14];
    [builderCopy setPixelSize:v34 nativeBounds:v23 * height bounds:{0.0, 0.0, v34, v23 * height, 0, 0, *&v37, *&v38}];
    displayConfigurationRequest = [v12 displayConfigurationRequest];
    overscanCompensation = [displayConfigurationRequest overscanCompensation];
    v55 = v14;
    v43 = (overscanCompensation - 1) < 0xFFFFFFFFFFFFFFFELL;
    if ((overscanCompensation - 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v44 = 0;
    }

    else
    {
      v44 = overscanCompensation;
    }

    [configurationCopy safeOverscanRatio];
    [builderCopy setOverscanned:v43 compensation:v44 safeRatio:?];
    v45 = SBLogDisplayTransforming();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      size_8 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      identity2 = [configurationCopy identity];
      v78.width = size;
      v78.height = height;
      sizea = NSStringFromCGSize(v78);
      v79.width = v37;
      v79.height = v38;
      v50 = NSStringFromCGSize(v79);
      v81.origin.x = 0.0;
      v81.origin.y = 0.0;
      v81.size.width = v34;
      v81.size.height = v23 * height;
      v49 = NSStringFromCGRect(v81);
      v82.origin.x = 0.0;
      v82.origin.y = 0.0;
      v82.size.width = v37;
      v82.size.height = v38;
      v46 = NSStringFromCGRect(v82);
      v80.width = v24;
      v80.height = v23;
      v48 = NSStringFromCGSize(v80);
      FBSDisplayOverscanCompensationDescription();
      *buf = 138545666;
      v58 = size_8;
      v59 = 2114;
      v60 = identity2;
      v61 = 2114;
      v62 = sizea;
      v63 = 2114;
      v64 = v50;
      v65 = 2114;
      v66 = v49;
      v67 = 2114;
      v68 = v46;
      v69 = 2048;
      v70 = v36;
      v71 = 2114;
      v72 = v48;
      v74 = v73 = 2114;
      v47 = v74;
      v75 = 2114;
      v76 = v40;
      _os_log_debug_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ requesting %{public}@ be transformed to pixelSize: %{public}@; pointSize: %{public}@; nativeBounds: %{public}@; bounds: %{public}@; contentsScale: %.2f; logicalScale: %{public}@; overscan: %{public}@; currentMode: %{public}@", buf, 0x66u);
    }
  }

  else
  {
    v12 = SBLogDisplayTransforming();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      *buf = 138543362;
      v58 = v17;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ skipping transform", buf, 0xCu);
    }
  }
}

- (id)createTransactionForTransitionRequest:(id)request
{
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = _SBDisplayControllerTransactionLabel(v5, @"clientRequested");
  v7 = [(SBSceneHostingDisplayController *)self _createUpdateTransactionWithLabel:v6];
  v8 = [v4 setWithObject:v7];

  return v8;
}

- (void)requestUpdate:(unint64_t)update
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    if (update)
    {
      string = [MEMORY[0x277CCAB68] string];
      v19 = a2;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v21 = 1;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __SBSceneHostingDisplayControllerUpdateFlagsDescription_block_invoke;
      v24 = &unk_2783ABA80;
      v26 = v20;
      v9 = string;
      v25 = v9;
      v10 = buf;
      v11 = 0;
      v22 = 0;
      v12 = vcnt_s8(update);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.i32[0];
      do
      {
        if (((1 << v11) & update) != 0)
        {
          (*&buf[16])(v10);
          if (v22)
          {
            break;
          }

          --v13;
        }

        if (v11 > 0x3E)
        {
          break;
        }

        ++v11;
      }

      while (v13 > 0);

      _Block_object_dispose(v20, 8);
    }

    else
    {
      v9 = @".None";
    }

    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@ asked to update for %{public}@", buf, 0x16u);
  }

  if (update)
  {
    _createDisplayAssertionPreferences = [(SBSceneHostingDisplayController *)self _createDisplayAssertionPreferences];
    if ([(SBDisplayAssertionPreferences *)self->_currentDisplayAssertionPreferences isEqual:_createDisplayAssertionPreferences])
    {
      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        *buf = 138543362;
        *&buf[4] = v16;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "%{public}@ no change in preferences. not updating", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(&self->_currentDisplayAssertionPreferences, _createDisplayAssertionPreferences);
      [(SBDisplayAssertion *)self->_displayAssertion updateWithPreferences:self->_currentDisplayAssertionPreferences];
    }
  }

  if (!self->_connectionCompleted)
  {
    if ((update & 2) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  if ((update & 6) == 2)
  {
LABEL_24:
    [(SBSceneHostingDisplayController *)self _enqueueEvaluateAndApplyPresentationUpdate];
    return;
  }

  if ((update & 4) != 0)
  {
    v17 = objc_opt_class();
    v18 = _SBDisplayControllerTransactionLabel(v17, @"policyRequested");
    [(SBSceneHostingDisplayController *)self _runRootUpdateTransactionWithLabel:v18 completion:0];
  }
}

- (void)connectToDisplayIdentity:(id)identity configuration:(id)configuration displayManager:(id)manager sceneManager:(id)sceneManager caDisplayQueue:(id)queue assertion:(id)assertion embeddedBacklightOn:(BOOL)on
{
  v44 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  configurationCopy = configuration;
  managerCopy = manager;
  sceneManagerCopy = sceneManager;
  queueCopy = queue;
  assertionCopy = assertion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:];
  }

  if (self->_displayIdentity)
  {
    [SBSceneHostingDisplayController connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:];
  }

  objc_storeStrong(&self->_displayIdentity, identity);
  objc_storeStrong(&self->_displayManager, manager);
  objc_storeStrong(&self->_currentConfiguration, configuration);
  objc_storeStrong(&self->_presentedConfiguration, self->_currentConfiguration);
  objc_storeStrong(&self->_sceneManager, sceneManager);
  cADisplay = [configurationCopy CADisplay];
  caDisplay = self->_caDisplay;
  self->_caDisplay = cADisplay;

  objc_storeStrong(&self->_displayMutationQueue, queue);
  v20 = objc_alloc_init(MEMORY[0x277CF0B80]);
  displayDisconnectedSignal = self->_displayDisconnectedSignal;
  self->_displayDisconnectedSignal = v20;

  rootIdentity = [identityCopy rootIdentity];
  v23 = [managerCopy layoutPublisherForDisplay:rootIdentity];
  layoutPublisher = self->_layoutPublisher;
  self->_layoutPublisher = v23;

  self->_embeddedBacklightOn = on;
  v25 = SBLogDisplayControlling();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v27 = SBDisplayAssertionLevelDescription([(SBDisplayAssertion *)self->_displayAssertion level]);
    hasControlOfDisplay = [(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay];
    *buf = 138543874;
    v39 = v26;
    v40 = 2114;
    v41 = v27;
    v42 = 1024;
    v43 = hasControlOfDisplay;
    _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ connected to display. assertion level: %{public}@; in control: %{BOOL}u", buf, 0x1Cu);
  }

  displayAssertion = self->_displayAssertion;
  self->_displayAssertion = assertionCopy;
  v30 = assertionCopy;

  [(SBSceneHostingDisplayControllerPolicy *)self->_policy connectToDisplayController:self displayConfiguration:self->_currentConfiguration embeddedBacklightOn:self->_embeddedBacklightOn];
  [(BSAtomicSignal *)self->_readyToTransformDisplaysSignal signal];
  displayManager = self->_displayManager;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __147__SBSceneHostingDisplayController_connectToDisplayIdentity_configuration_displayManager_sceneManager_caDisplayQueue_assertion_embeddedBacklightOn___block_invoke;
  v37[3] = &unk_2783A8BC8;
  v37[4] = self;
  v37[5] = a2;
  [(SBDisplayManager *)displayManager updateTransformsWithCompletion:v37];
}

void __147__SBSceneHostingDisplayController_connectToDisplayIdentity_configuration_displayManager_sceneManager_caDisplayQueue_assertion_embeddedBacklightOn___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 176) hasBeenSignalled];
  v3 = SBLogDisplayControlling();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updated transforms but our display disconnected in the meantime. will not proceed", &v12, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updated transforms upon display connect. updating assertion", &v12, 0xCu);
    }

    *(*(a1 + 32) + 88) = 1;
    v7 = [*(a1 + 32) _createDisplayAssertionPreferences];
    v8 = *(a1 + 32);
    v9 = *(v8 + 112);
    *(v8 + 112) = v7;

    [*(*(a1 + 32) + 104) updateWithPreferences:*(*(a1 + 32) + 112)];
    objc_storeStrong((*(a1 + 32) + 160), *(*(a1 + 32) + 152));
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v3 = _SBDisplayControllerTransactionLabel(v11, @"displayConnect");
    [v10 _runRootUpdateTransactionWithLabel:v3 completion:0];
  }
}

- (void)displayIdentityDidUpdate:(id)update configuration:(id)configuration
{
  v36 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  configurationCopy = configuration;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSceneHostingDisplayController displayIdentityDidUpdate:configuration:];
    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  [SBSceneHostingDisplayController displayIdentityDidUpdate:configuration:];
LABEL_3:
  v9 = [(FBSDisplayConfiguration *)self->_currentConfiguration isEqual:configurationCopy];
  displayConfiguration = SBLogDisplayControlling();
  v11 = os_log_type_enabled(displayConfiguration, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      [(SBSceneHostingDisplayController *)self displayIdentityDidUpdate:a2 configuration:displayConfiguration];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v11)
  {
    v31 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v32 = 138543618;
    v33 = v31;
    v34 = 2114;
    v35 = updateCopy;
    _os_log_debug_impl(&dword_21ED4E000, displayConfiguration, OS_LOG_TYPE_DEBUG, "%{public}@: identity=%{public}@", &v32, 0x16u);
  }

  objc_storeStrong(&self->_currentConfiguration, configuration);
  if ([(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay])
  {
    screen = [(_UIRootWindow *)self->_blankingWindow screen];
    displayConfiguration = [screen displayConfiguration];

    [displayConfiguration bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(FBSDisplayConfiguration *)self->_currentConfiguration bounds];
    v38.origin.x = v21;
    v38.origin.y = v22;
    v38.size.width = v23;
    v38.size.height = v24;
    v37.origin.x = v14;
    v37.origin.y = v16;
    v37.size.width = v18;
    v37.size.height = v20;
    if (CGRectEqualToRect(v37, v38) && self->_blankingWindow)
    {
      v25 = SBLogDisplayControlling();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        v32 = 138543362;
        v33 = v26;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ recreating blanking window", &v32, 0xCu);
      }

      [(_UIRootWindow *)self->_blankingWindow windowLevel];
      v28 = v27;
      v29 = [(SBSceneHostingDisplayController *)self _createBlankingWindowWithConfiguration:self->_currentConfiguration];
      blankingWindow = self->_blankingWindow;
      self->_blankingWindow = v29;

      [(_UIRootWindow *)self->_blankingWindow setWindowLevel:v28];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)displayIdentityDidDisconnect:(id)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController displayIdentityDidDisconnect:];
  }

  v4 = SBLogDisplayControlling();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ told display did disconnect. beginning teardown transaction", &v13, 0xCu);
  }

  [(BSAtomicSignal *)self->_displayDisconnectedSignal signal];
  [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayControllerWillDisconnect:self sceneManager:self->_sceneManager];
  v6 = SBLogDisplayControlling();
  if (os_signpost_enabled(v6))
  {
    v7 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v13 = 138543362;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_DISCONNECT", "%{public}@", &v13, 0xCu);
  }

  [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayControllerDidDisconnect:self sceneManager:self->_sceneManager];
  v8 = SBLogDisplayControlling();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ policy finished disconnect", &v13, 0xCu);
  }

  [(SBSceneManager *)self->_sceneManager invalidate];
  [(_UIRootWindow *)self->_blankingWindow setHidden:1];
  blankingWindow = self->_blankingWindow;
  self->_blankingWindow = 0;

  v11 = SBLogDisplayControlling();
  if (os_signpost_enabled(v11))
  {
    v12 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    v13 = 138543362;
    v14 = v12;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_DISCONNECT", "%{public}@", &v13, 0xCu);
  }
}

- (void)embeddedBacklightStateDidChange:(BOOL)change source:(int64_t)source
{
  changeCopy = change;
  if (objc_opt_respondsToSelector())
  {
    policy = self->_policy;

    [(SBSceneHostingDisplayControllerPolicy *)policy embeddedBacklightStateDidChange:changeCopy source:source];
  }
}

- (void)displayAssertionDidGainControlOfDisplay:(id)display
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController displayAssertionDidGainControlOfDisplay:];
  }

  [(CADisplay *)self->_caDisplay addObserver:self forKeyPath:@"preferences" options:0 context:self];
  self->_currentDeactivationReasons = 0;
  v4 = [(SBSceneHostingDisplayController *)self _createBlankingWindowWithConfiguration:self->_currentConfiguration];
  blankingWindow = self->_blankingWindow;
  self->_blankingWindow = v4;

  [(SBSceneHostingDisplayController *)self _sendBlankingWindowToFront:0];
  [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayController:self didGainControlOfDisplayWithSceneManager:self->_sceneManager];

  [(SBSceneHostingDisplayController *)self _enqueueEvaluateAndApplyPresentationUpdate];
}

- (void)displayAssertion:(id)assertion didLoseControlOfDisplayForDeactivationReasons:(unint64_t)reasons
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController displayAssertion:didLoseControlOfDisplayForDeactivationReasons:];
  }

  [(CADisplay *)self->_caDisplay removeObserver:self forKeyPath:@"preferences" context:self];
  [(BSAtomicSignal *)self->_presentationUpdateInvalidationSignal signal];
  self->_currentDeactivationReasons = reasons;
  blankingWindow = self->_blankingWindow;
  self->_blankingWindow = 0;

  [(SBSceneManager *)self->_sceneManager updatePresentationBinder:0];
  [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayController:self sceneManager:self->_sceneManager didLoseControlOfDisplayWithDeactivationReasons:reasons];

  [(SBSceneHostingDisplayController *)self _enqueueEvaluateAndApplyPresentationUpdate];
}

- (void)displayAssertion:(id)assertion didReceiveNewDeactivationReasons:(unint64_t)reasons
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController displayAssertion:didReceiveNewDeactivationReasons:];
  }

  self->_currentDeactivationReasons = reasons;
  [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayController:self sceneManager:self->_sceneManager didReceiveNewDeactivationReasons:reasons];

  [(SBSceneHostingDisplayController *)self _enqueueEvaluateAndApplyPresentationUpdate];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SBSceneHostingDisplayController_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v6[3] = &unk_2783A8BC8;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __82__SBSceneHostingDisplayController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did detect CADisplay prefs change", &v5, 0xCu);
  }

  return [*(a1 + 32) _enqueueEvaluateAndApplyPresentationUpdate];
}

- (void)_ensureCADisplayUpToDate:(id)date completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneHostingDisplayController _ensureCADisplayUpToDate:completion:];
  }

  if (![(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay])
  {
    [SBSceneHostingDisplayController _ensureCADisplayUpToDate:completion:];
  }

  v9 = [(SBSceneHostingDisplayControllerPolicy *)self->_policy displayPreferencesForDisplayController:self];
  caDisplay = self->_caDisplay;
  cADisplayModeCriteria = [v9 CADisplayModeCriteria];
  v12 = [(CADisplay *)caDisplay preferredModeWithCriteria:cADisplayModeCriteria];

  displayConfigurationRequest = [v9 displayConfigurationRequest];
  [displayConfigurationRequest overscanCompensation];
  v14 = FBSDisplayOverscanCompensationToCADisplayOverscanAdjustment();

  v15 = 1.0;
  v16 = 1.0;
  if ([(CADisplay *)self->_caDisplay displayType]!= 2)
  {
    [v9 logicalScale];
    v18 = v17;
    v20 = v19;
    [(CADisplay *)self->_caDisplay maximumLogicalScale];
    v22 = v21;
    [(CADisplay *)self->_caDisplay minimumLogicalScale];
    if (v23 < v18)
    {
      v23 = v18;
    }

    if (v22 <= v23)
    {
      v16 = v22;
    }

    else
    {
      v16 = v23;
    }

    [(CADisplay *)self->_caDisplay maximumLogicalScale];
    v25 = v24;
    [(CADisplay *)self->_caDisplay minimumLogicalScale];
    if (v26 < v20)
    {
      v26 = v20;
    }

    if (v25 <= v26)
    {
      v15 = v25;
    }

    else
    {
      v15 = v26;
    }
  }

  [v9 contentsScale];
  v28 = v27;
  v29 = SBCADifferenceMaskCalculate(self->_caDisplay, v12, v14, v27);
  v30 = v29;
  if (SBCADisplayDifferenceMaskHasDifference(v29))
  {
    if ((v30 & 4) != 0)
    {
      v31 = SBLogDisplayControlling();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
        *buf = 138543362;
        v51 = v32;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ updating logicalScale. sending the blanking window front-most", buf, 0xCu);
      }

      [(SBSceneHostingDisplayController *)self _sendBlankingWindowToFront:1];
    }

    v39 = a2;
    v33 = SBLogDisplayControlling();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v34 = v38 = dateCopy;
      v63.width = v16;
      v63.height = v15;
      v35 = NSStringFromCGSize(v63);
      [(CADisplay *)self->_caDisplay bounds];
      v36 = NSStringFromCGRect(v64);
      *buf = 138544642;
      v51 = v34;
      v52 = 2114;
      v53 = v12;
      v54 = 2114;
      v55 = v14;
      v56 = 2114;
      v57 = v35;
      v58 = 2048;
      v59 = v28;
      v60 = 2114;
      v61 = v36;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting display change: mode=%{public}@ overscan=%{public}@ logicalScale=%{public}@ pointScale=%lu (from)bounds=%{public}@", buf, 0x3Eu);

      dateCopy = v38;
    }

    displayMutationQueue = self->_displayMutationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SBSceneHostingDisplayController__ensureCADisplayUpToDate_completion___block_invoke;
    block[3] = &unk_2783AB968;
    v41 = dateCopy;
    selfCopy = self;
    v43 = v12;
    v44 = v14;
    v46 = v16;
    v47 = v15;
    v48 = v28;
    v49 = v39;
    v45 = completionCopy;
    dispatch_async(displayMutationQueue, block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __71__SBSceneHostingDisplayController__ensureCADisplayUpToDate_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasBeenSignalled] & 1) == 0)
  {
    v9 = [*(*(a1 + 40) + 160) identity];
    v10 = [v9 connectionSeed];

    v2 = objc_alloc_init(MEMORY[0x277CD9E60]);
    [v2 setCurrentMode:*(a1 + 48)];
    [v2 setOverscanAdjustment:*(a1 + 56)];
    [v2 setConnectionSeed:v10];
    [v2 setLogicalScale:*(a1 + 72), *(a1 + 80)];
    [v2 setPointScale:*(a1 + 88)];
    v11 = [*(*(a1 + 40) + 128) setDisplayProperties:v2];
    v12 = SBLogDisplayControlling();
    v3 = v12;
    if (v11)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v13 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      [*(*(a1 + 40) + 128) bounds];
      v14 = NSStringFromCGRect(v39);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = NSStringFromCGSize(*(a1 + 72));
      v18 = *(a1 + 88);
      v23 = 138544898;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      v34 = v18;
      v35 = 1024;
      v36 = v10;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ display change successful: bounds=%{public}@ mode=%{public}@ overscan=%{public}@ logicalScale=%{public}@ pointScale=%lu connectionSeed=%u", &v23, 0x44u);
    }

    else
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v13 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      [*(*(a1 + 40) + 128) bounds];
      v14 = NSStringFromCGRect(v40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v17 = NSStringFromCGSize(*(a1 + 72));
      v22 = *(a1 + 88);
      v23 = 138544898;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v10;
      _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "%{public}@ display change failed: bounds=%{public}@ mode=%{public}@ overscan=%{public}@ logicalScale=%{public}@ pointScale=%lu connectionSeed=%u", &v23, 0x44u);
    }

    goto LABEL_9;
  }

  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
    [*(*(a1 + 40) + 128) bounds];
    v4 = NSStringFromCGRect(v38);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = NSStringFromCGSize(*(a1 + 72));
    v8 = *(a1 + 88);
    v23 = 138544642;
    v24 = v3;
    v25 = 2114;
    v26 = v4;
    v27 = 2114;
    v28 = v5;
    v29 = 2114;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    v33 = 2048;
    v34 = v8;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ (on-queue) skipping display change request as we were invalidated: bounds=%{public}@ mode=%{public}@ overscan=%{public}@ logicalScale=%{public}@ pointScale=%lu", &v23, 0x3Eu);

LABEL_9:
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)_updatePolicyForPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (![(SBDisplayAssertion *)self->_displayAssertion hasControlOfDisplay])
  {
    [SBSceneHostingDisplayController _updatePolicyForPresentation:];
  }

  policy = self->_policy;
  sceneManager = self->_sceneManager;
  presentedConfiguration = self->_presentedConfiguration;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SBSceneHostingDisplayController__updatePolicyForPresentation___block_invoke;
  v10[3] = &unk_2783AB990;
  v11 = presentationCopy;
  v12 = a2;
  v10[4] = self;
  v9 = presentationCopy;
  [(SBSceneHostingDisplayControllerPolicy *)policy displayController:self updatePresentationWithSceneManager:sceneManager displayConfiguration:presentedConfiguration completion:v10];
}

uint64_t __64__SBSceneHostingDisplayController__updatePolicyForPresentation___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ presentation update complete", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_updatePresentationBinderIfNecessary
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateLayoutPublisherIfNecessary
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateBlankingWindowIfNecessary
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_enqueueEvaluateAndApplyPresentationUpdate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController _enqueueEvaluateAndApplyPresentationUpdate]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = 0;
  [*(*(a1 + 32) + 168) signal];
  v2 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 168);
  *(v3 + 168) = v2;

  v5 = v2;
  v6 = SBLogBacklight();
  v7 = os_signpost_id_make_with_pointer(v6, v5);

  v8 = SBLogDisplayControlling();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
    *buf = 138543362;
    v20 = v10;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SBSceneHostingDisplayController:Presentation", "%{public}@", buf, 0xCu);
  }

  if ([*(*(a1 + 32) + 104) hasControlOfDisplay])
  {
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_62;
    v15[3] = &unk_2783AB9E0;
    v16 = v5;
    v17 = *(a1 + 32);
    v18 = v7;
    [v11 _ensureCADisplayUpToDate:v16 completion:v15];
    v12 = v16;
  }

  else
  {
    v13 = SBLogDisplayControlling();
    v12 = v13;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v14 = _SBDisplayControllerLoggingProem(*(*(a1 + 32) + 8));
      *buf = 138543362;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_INTERVAL_END, v7, "SBSceneHostingDisplayController:Presentation", "FAILED; reason: not in control; %{public}@", buf, 0xCu);
    }
  }
}

void __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_62(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasBeenSignalled] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 176), "hasBeenSignalled"))
  {
    v2 = SBLogDisplayControlling();
    v3 = v2;
    v4 = *(a1 + 56);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      *buf = 138543362;
      v12 = v5;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SBSceneHostingDisplayController:Presentation", "FAILED; reason: stale after updateCA; %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_2;
    v7[3] = &unk_2783AB9E0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    [v6 updateTransformsWithCompletion:v7];
    v3 = v8;
  }
}

void __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_2_cold_1();
  }

  if ([*(a1 + 32) hasBeenSignalled] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 176), "hasBeenSignalled"))
  {
    v2 = SBLogDisplayControlling();
    v3 = v2;
    v4 = *(a1 + 56);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      *buf = 138543362;
      v21 = v5;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SBSceneHostingDisplayController:Presentation", "FAILED; reason: stale after updateTransforms; %{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 160), *(*(a1 + 40) + 152));
    v3 = [*(*(a1 + 40) + 144) transitionAssertionWithReason:0];
    [*(a1 + 40) _updateBlankingWindowIfNecessary];
    [*(a1 + 40) _updateLayoutPublisherIfNecessary];
    [*(a1 + 40) _updatePresentationBinderIfNecessary];
    v6 = [*(a1 + 40) _createDisplayAssertionPreferences];
    v7 = *(a1 + 40);
    v8 = *(v7 + 112);
    *(v7 + 112) = v6;

    [*(*(a1 + 40) + 104) updateWithPreferences:*(*(a1 + 40) + 112)];
    if ([*(a1 + 32) hasBeenSignalled])
    {
      [v3 invalidate];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_3;
      v14[3] = &unk_2783AB9B8;
      v9 = *(a1 + 40);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v15 = v10;
      v16 = v11;
      v13 = *(a1 + 56);
      v18 = v12;
      v19 = v13;
      v3 = v3;
      v17 = v3;
      [v9 _updatePolicyForPresentation:v14];
    }
  }
}

uint64_t __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_3_cold_1();
  }

  if ([*(a1 + 32) hasBeenSignalled] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 176), "hasBeenSignalled"))
  {
    v2 = SBLogDisplayControlling();
    v3 = v2;
    v4 = *(a1 + 64);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      v11 = 138543362;
      v12 = v5;
      v6 = "FAILED; reason: stale after policy; %{public}@";
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SBSceneHostingDisplayController:Presentation", v6, &v11, 0xCu);
    }
  }

  else
  {
    v7 = SBLogDisplayControlling();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ god's in his heaven and all is right with the world. sending blanking window back-most just in case", &v11, 0xCu);
    }

    [*(a1 + 40) _sendBlankingWindowToFront:0];
    v9 = SBLogDisplayControlling();
    v3 = v9;
    v4 = *(a1 + 64);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v5 = _SBDisplayControllerLoggingProem(*(*(a1 + 40) + 8));
      v11 = 138543362;
      v12 = v5;
      v6 = "SUCCESS; %{public}@";
      goto LABEL_13;
    }
  }

  return [*(a1 + 48) invalidate];
}

- (id)_createUpdateTransactionWithLabel:(id)label
{
  v28 = *MEMORY[0x277D85DE8];
  updateTransactionInvalidator = self->_updateTransactionInvalidator;
  labelCopy = label;
  [(BSAtomicSignal *)updateTransactionInvalidator signal];
  v7 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v8 = self->_updateTransactionInvalidator;
  self->_updateTransactionInvalidator = v7;

  v9 = v7;
  v10 = self->_displayDisconnectedSignal;
  v11 = SBLogDisplayControlling();
  if (os_signpost_enabled(v11))
  {
    v12 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
    *buf = 138543362;
    v27 = v12;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_UPDATE_TX", "%{public}@", buf, 0xCu);
  }

  v13 = objc_alloc(MEMORY[0x277CF0BA8]);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __69__SBSceneHostingDisplayController__createUpdateTransactionWithLabel___block_invoke;
  v21 = &unk_2783ABA08;
  v22 = v9;
  v23 = v10;
  selfCopy = self;
  v25 = a2;
  v14 = v10;
  v15 = v9;
  v16 = [v13 initWithBlock:&v18];
  [v16 setDebugName:{labelCopy, v18, v19, v20, v21}];

  return v16;
}

void __69__SBSceneHostingDisplayController__createUpdateTransactionWithLabel___block_invoke(id *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CCACC8];
  v7 = a3;
  if (([v6 isMainThread] & 1) == 0)
  {
    __69__SBSceneHostingDisplayController__createUpdateTransactionWithLabel___block_invoke_cold_1();
  }

  if ([a1[4] hasBeenSignalled] & 1) != 0 || (objc_msgSend(a1[5], "hasBeenSignalled"))
  {
    v8 = SBLogDisplayControlling();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _SBDisplayControllerLoggingProem(*(a1[6] + 1));
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping obselete update transaction", &v15, 0xCu);
    }
  }

  else
  {
    [*(a1[6] + 3) displayController:a1[6] didBeginTransaction:v5 sceneManager:*(a1[6] + 9) displayConfiguration:*(a1[6] + 20) deactivationReasons:*(a1[6] + 15)];
    v10 = [a1[6] _createDisplayAssertionPreferences];
    v11 = a1[6];
    v12 = v11[14];
    v11[14] = v10;

    [*(a1[6] + 13) updateWithPreferences:*(a1[6] + 14)];
    [a1[6] _enqueueEvaluateAndApplyPresentationUpdate];
  }

  v7[2](v7, 1);

  v13 = SBLogDisplayControlling();
  if (os_signpost_enabled(v13))
  {
    v14 = _SBDisplayControllerLoggingProem(*(a1[6] + 1));
    v15 = 138543362;
    v16 = v14;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_UPDATE_TX", "%{public}@", &v15, 0xCu);
  }
}

- (id)_createBlankingWindowWithConfiguration:(id)configuration
{
  v3 = MEMORY[0x277D761C0];
  configurationCopy = configuration;
  v5 = [[v3 alloc] initWithDisplay:configurationCopy];
  v6 = objc_alloc(MEMORY[0x277D75D18]);
  [configurationCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v6 initWithFrame:{v8, v10, v12, v14}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v15 setBackgroundColor:blackColor];

  [v15 setOpaque:1];
  [v15 setAutoresizingMask:18];
  v17 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v17 setView:v15];
  [v5 setRootViewController:v17];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  [v5 setBackgroundColor:blackColor2];

  [v5 setHidden:0];

  return v5;
}

- (void)_sendBlankingWindowToFront:(BOOL)front
{
  frontCopy = front;
  v13 = *MEMORY[0x277D85DE8];
  v5 = SBLogDisplayControlling();
  v6 = os_signpost_enabled(v5);
  if (frontCopy)
  {
    if (v6)
    {
      v7 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v11 = 138543362;
      v12 = v7;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_BLANK", "%{public}@", &v11, 0xCu);
    }

    v8 = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v6)
    {
      v9 = _SBDisplayControllerLoggingProem(self->_displayIdentity);
      v11 = 138543362;
      v12 = v9;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_HOSTING_CONTROLLER_UNBLANK", "%{public}@", &v11, 0xCu);
    }

    v8 = 0xFFEFFFFFFFFFFFFFLL;
  }

  v10 = *&v8;

  [(_UIRootWindow *)self->_blankingWindow setWindowLevel:v10];
}

- (id)_createPresentationBinderWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_opt_class();
  v6 = [(FBSDisplayIdentity *)self->_displayIdentity description];
  v7 = _SBDisplayControllerTransactionLabel(v5, v6);

  v8 = [(SBRootSceneWindow *)[SBSceneHostingDisplayControllerRootSceneWindow alloc] initWithDisplayConfiguration:configurationCopy];
  v9 = [[SBRootWindowScenePresentationBinder alloc] initWithIdentifier:v7 priority:-10 appearanceStyle:0 rootWindow:v8];

  return v9;
}

- (id)_createDisplayAssertionPreferences
{
  if (!self->_displayIdentity)
  {
    [SBSceneHostingDisplayController _createDisplayAssertionPreferences];
  }

  policy = self->_policy;
  currentConfiguration = self->_currentConfiguration;

  return [(SBSceneHostingDisplayControllerPolicy *)policy assertionPreferencesForDisplay:self displayConfiguration:currentConfiguration];
}

- (void)_runRootTransaction:(id)transaction withLabel:(id)label completion:(id)completion
{
  transactionCopy = transaction;
  labelCopy = label;
  completionCopy = completion;
  workspaceEventQueue = self->_workspaceEventQueue;
  v12 = MEMORY[0x277D0AB18];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __76__SBSceneHostingDisplayController__runRootTransaction_withLabel_completion___block_invoke;
  v20 = &unk_2783ABA58;
  v21 = labelCopy;
  v22 = transactionCopy;
  selfCopy = self;
  v24 = completionCopy;
  v13 = completionCopy;
  v14 = transactionCopy;
  v15 = labelCopy;
  v16 = [v12 eventWithName:v15 handler:&v17];
  [(FBWorkspaceEventQueue *)workspaceEventQueue executeOrAppendEvent:v16, v17, v18, v19, v20];
}

void __76__SBSceneHostingDisplayController__runRootTransaction_withLabel_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D0AB28]) initWithReason:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 40));
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SBSceneHostingDisplayController__runRootTransaction_withLabel_completion___block_invoke_2;
  v7[3] = &unk_2783ABA30;
  objc_copyWeak(&v10, &location);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v9 = v4;
  v7[4] = v5;
  v6 = v2;
  v8 = v6;
  [v3 setCompletionBlock:v7];
  [*(*(a1 + 48) + 48) addObject:*(a1 + 40)];
  [*(a1 + 40) begin];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__SBSceneHostingDisplayController__runRootTransaction_withLabel_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 48);
  v6 = WeakRetained;
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
    WeakRetained = v6;
  }

  if (WeakRetained)
  {
    [*(*(a1 + 32) + 48) removeObject:v6];
  }

  [*(a1 + 40) relinquish];
}

- (void)_runRootUpdateTransactionWithLabel:(id)label completion:(id)completion
{
  completionCopy = completion;
  labelCopy = label;
  v8 = [(SBSceneHostingDisplayController *)self _createUpdateTransactionWithLabel:labelCopy];
  [(SBSceneHostingDisplayController *)self _runRootTransaction:v8 withLabel:labelCopy completion:completionCopy];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneHostingDisplayController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(FBSDisplayIdentity *)self->_displayIdentity description];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:v5 multilinePrefix:0 block:v9];

  v7 = v6;
  return v6;
}

id __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 104) withName:{"hasControlOfDisplay"), @"hasControlOfDisplay"}];
  v3 = *(a1 + 40);
  if (v3[20])
  {
    v4 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v23[3] = &unk_2783A92D8;
    v5 = v4;
    v6 = *(a1 + 40);
    v24 = v5;
    v25 = v6;
    [v5 appendBodySectionWithName:@"FBSDisplayConfiguration" multilinePrefix:@"\t" block:v23];

    v3 = *(a1 + 40);
  }

  if (v3[16])
  {
    v7 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v20[3] = &unk_2783A92D8;
    v8 = v7;
    v9 = *(a1 + 40);
    v21 = v8;
    v22 = v9;
    [v8 appendBodySectionWithName:@"CADisplay" multilinePrefix:@"\t" block:v20];

    v3 = *(a1 + 40);
  }

  if (v3[12])
  {
    v10 = *(a1 + 32);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_4;
    v17 = &unk_2783A92D8;
    v11 = v10;
    v12 = *(a1 + 40);
    v18 = v11;
    v19 = v12;
    [v11 appendBodySectionWithName:@"Blanking Window" multilinePrefix:@"\t" block:&v14];

    v3 = *(a1 + 40);
  }

  return [*(a1 + 32) appendObject:v3[3] withName:{@"policy", v14, v15, v16, v17}];
}

void __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 160) bounds];
  v3 = [v2 appendRect:@"bounds" withName:?];
  v4 = *(a1 + 32);
  [*(*(a1 + 40) + 160) pointScale];
  v5 = [v4 appendFloat:@"scale" withName:2 decimalPrecision:?];
  v6 = *(a1 + 32);
  [*(*(a1 + 40) + 160) pixelSize];
  v7 = [v6 appendSize:@"pixelSize" withName:?];
  v8 = *(a1 + 32);
  [*(*(a1 + 40) + 160) overscanCompensation];
  v9 = FBSDisplayOverscanCompensationToCADisplayOverscanAdjustment();
  [v8 appendString:v9 withName:@"overscanCompensation"];

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 160) currentMode];
  v12 = [v10 appendObject:v11 withName:@"currentMode"];

  v13 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 160) identity];
  v14 = [v13 appendUInt64:objc_msgSend(v15 withName:{"connectionSeed"), @"connectionSeed"}];
}

id __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 128) bounds];
  v3 = [v2 appendRect:@"bounds" withName:?];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 128) deviceName];
  [v4 appendString:v5 withName:@"deviceName"];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 128) name];
  [v6 appendString:v7 withName:@"name"];

  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 128) productName];
  [v8 appendString:v9 withName:@"productName"];

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 128) overscanAdjustment];
  [v10 appendString:v11 withName:@"overscanAdjustment"];

  v12 = *(a1 + 32);
  [*(*(a1 + 40) + 128) logicalScale];
  v13 = [v12 appendSize:@"activeLogicalScale" withName:?];
  v14 = *(a1 + 32);
  [*(*(a1 + 40) + 128) minimumLogicalScale];
  v15 = [v14 appendDouble:@"minimumLogicalScale" withName:2 decimalPrecision:?];
  v16 = *(a1 + 32);
  [*(*(a1 + 40) + 128) maximumLogicalScale];
  v17 = [v16 appendDouble:@"maximumLogicalScale" withName:2 decimalPrecision:?];
  v18 = *(a1 + 32);
  v19 = [*(*(a1 + 40) + 128) transportType];
  [v18 appendString:v19 withName:@"transportType"];

  v20 = [*(*(a1 + 40) + 128) displayType];
  v21 = [*(a1 + 32) appendBool:v20 == 2 withName:@"isWireless"];
  v22 = [*(a1 + 32) appendInteger:v20 withName:@"displayType"];
  v23 = *(a1 + 32);
  v24 = [*(*(a1 + 40) + 128) currentMode];
  v25 = [v23 appendObject:v24 withName:@"currentMode"];

  return [*(a1 + 32) appendUInt64:objc_msgSend(*(*(a1 + 40) + 128) withName:{"seed"), @"seed"}];
}

id __73__SBSceneHostingDisplayController_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 96) frame];
  v3 = [v2 appendRect:@"frame" withName:?];
  v4 = *(a1 + 32);
  [*(*(a1 + 40) + 96) windowLevel];
  return [v4 appendFloat:@"windowLevel" withName:0 decimalPrecision:?];
}

- (id)signpostDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p %@:%p>", v4, self, objc_opt_class(), self->_policy];
}

- (void)initWithWorkspaceEventQueue:policy:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspaceEventQueue" object:? file:? lineNumber:? description:?];
}

- (void)initWithWorkspaceEventQueue:policy:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"policy" object:? file:? lineNumber:? description:?];
}

- (void)transformDisplayConfiguration:withBuilder:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"SBSceneHostingDisplayController.m" lineNumber:187 description:{@"being asked to transform a display config we know nothing about. _displayIdentity: %@; configuration: %@", *v3, v0}];
}

- (void)connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)connectToDisplayIdentity:configuration:displayManager:sceneManager:caDisplayQueue:assertion:embeddedBacklightOn:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"SBSceneHostingDisplayController.m" lineNumber:284 description:{@"we're connecting to multiple displays and that seems bad. old display: %@; new display: %@", *v3, v0}];
}

- (void)displayIdentityDidUpdate:configuration:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController displayIdentityDidUpdate:configuration:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)displayIdentityDidUpdate:configuration:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)displayIdentityDidUpdate:(NSObject *)a3 configuration:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBDisplayControllerLoggingProem(*(a1 + 8));
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ ignoring update", &v5, 0xCu);
}

- (void)displayIdentityDidDisconnect:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController displayIdentityDidDisconnect:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)displayAssertionDidGainControlOfDisplay:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController displayAssertionDidGainControlOfDisplay:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)displayAssertion:didLoseControlOfDisplayForDeactivationReasons:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController displayAssertion:didLoseControlOfDisplayForDeactivationReasons:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)displayAssertion:didReceiveNewDeactivationReasons:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController displayAssertion:didReceiveNewDeactivationReasons:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_ensureCADisplayUpToDate:completion:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController _ensureCADisplayUpToDate:completion:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_ensureCADisplayUpToDate:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updatePolicyForPresentation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_2_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController _enqueueEvaluateAndApplyPresentationUpdate]_block_invoke_2"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void __77__SBSceneHostingDisplayController__enqueueEvaluateAndApplyPresentationUpdate__block_invoke_3_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController _enqueueEvaluateAndApplyPresentationUpdate]_block_invoke_3"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

void __69__SBSceneHostingDisplayController__createUpdateTransactionWithLabel___block_invoke_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneHostingDisplayController _createUpdateTransactionWithLabel:]_block_invoke"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_createDisplayAssertionPreferences
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_displayIdentity" object:? file:? lineNumber:? description:?];
}

@end