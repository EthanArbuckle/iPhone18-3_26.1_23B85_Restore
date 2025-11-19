@interface SBCameraHardwareButton
- (BOOL)_deferToForegroundApp;
- (BOOL)_deferToPhysicalOverrideScene;
- (BOOL)_isCoverSheetCameraVisible;
- (BOOL)_shouldDeferToCoverSheetCamera;
- (BOOL)_shouldDeferToNonSpringBoardProcess;
- (SBCameraHardwareButton)initWithActivationManager:(id)a3;
- (double)longPressCancellationTimeout;
- (uint64_t)activationManager;
- (uint64_t)allCameraShutterButtonPIDs;
- (uint64_t)applicationController;
- (uint64_t)backlightController;
- (uint64_t)backlightStudyLogger;
- (uint64_t)coverSheetPresentationManager;
- (uint64_t)defaults;
- (uint64_t)deferringTokensPerPID;
- (uint64_t)deliveryManager;
- (uint64_t)foregroundCameraShutterButtonPIDs;
- (uint64_t)foregroundPendingRemovalCameraShutterButtonPIDs;
- (uint64_t)lastCameraApplicationPID;
- (uint64_t)liftToWakeStudyLogger;
- (uint64_t)lockScreenManager;
- (uint64_t)longPressCancellationTimer;
- (uint64_t)longPressCondition;
- (uint64_t)mainDisplaySceneManager;
- (uint64_t)outOfPocketCondition;
- (uint64_t)physicalButtonOverrideScene;
- (uint64_t)pocketStateManager;
- (uint64_t)proximitySensorManager;
- (uint64_t)setLastCameraApplicationPID:(uint64_t)result;
- (uint64_t)setLongPressCancellationTimeout:(uint64_t)result;
- (uint64_t)setShouldUsePocketStateDetection:(uint64_t)result;
- (uint64_t)settings;
- (uint64_t)shouldLaunchCameraCondition;
- (uint64_t)shouldUsePocketStateDetection;
- (uint64_t)studyLogger;
- (void)_deferCameraPressesToApplication:(id)a3;
- (void)_deferCameraPressesToCameraApplication;
- (void)_deferCameraPressesToPID:(int)a3;
- (void)_deferCameraPressesToSpringBoard;
- (void)_launchCameraIfReady;
- (void)_longPressDidCancel;
- (void)_process:(id)a3 stateDidUpdate:(id)a4;
- (void)_reconfigureProcessMonitor;
- (void)_reconfigureProcessMonitorForPredicates:(id)a3;
- (void)_startWaitingForLongPressCancellation;
- (void)_stopWaitingForLongPressCancellation;
- (void)_updateCameraDeferringRule;
- (void)_updateSettingsForReason:(id)a3;
- (void)addProcessRequestingCameraButton:(int)a3 token:(id)a4;
- (void)dealloc;
- (void)handleButtonEvent:(__IOHIDEvent *)a3;
- (void)performActionsForButtonDown:(id)a3;
- (void)performActionsForButtonLongPress:(id)a3;
- (void)physicalButtonSceneOverridesDidChange:(id)a3;
- (void)removeProcessRequestingCameraButton:(int)a3;
- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4;
- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4;
- (void)setActivationManager:(uint64_t)a1;
- (void)setAllCameraShutterButtonPIDs:(uint64_t)a1;
- (void)setApplicationController:(uint64_t)a1;
- (void)setBacklightController:(uint64_t)a1;
- (void)setBacklightStudyLogger:(uint64_t)a1;
- (void)setButtonArbiter:(uint64_t)a1;
- (void)setCoverSheetPresentationManager:(uint64_t)a1;
- (void)setDefaults:(uint64_t)a1;
- (void)setDeferringRuleAssertion:(uint64_t)a1;
- (void)setDeferringTokensPerPID:(uint64_t)a1;
- (void)setDeliveryManager:(uint64_t)a1;
- (void)setDisableDeferringToApplications:(BOOL)a3;
- (void)setDispatchingRuleAssertion:(uint64_t)a1;
- (void)setForegroundCameraShutterButtonPIDs:(uint64_t)a1;
- (void)setForegroundPendingRemovalCameraShutterButtonPIDs:(uint64_t)a1;
- (void)setLiftToWakeStudyLogger:(uint64_t)a1;
- (void)setLockScreenManager:(uint64_t)a1;
- (void)setLongPressCancellationTimer:(uint64_t)a1;
- (void)setLongPressCondition:(uint64_t)a1;
- (void)setMainDisplaySceneManager:(uint64_t)a1;
- (void)setOutOfPocketCondition:(uint64_t)a1;
- (void)setPhysicalButtonOverrideObserver:(uint64_t)a1;
- (void)setPhysicalButtonOverrideScene:(uint64_t)a1;
- (void)setPocketStateManager:(uint64_t)a1;
- (void)setProcessMonitor:(uint64_t)a1;
- (void)setProximitySensorManager:(uint64_t)a1;
- (void)setSettings:(uint64_t)a1;
- (void)setShouldLaunchCameraCondition:(uint64_t)a1;
- (void)setStudyLogger:(uint64_t)a1;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBCameraHardwareButton

- (uint64_t)foregroundCameraShutterButtonPIDs
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)allCameraShutterButtonPIDs
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)_updateCameraDeferringRule
{
  if (![(SBCameraHardwareButton *)self _shouldDeferToNonSpringBoardProcess]|| ![(SBCameraHardwareButton *)self _deferToPhysicalOverrideScene]&& ![(SBCameraHardwareButton *)self _deferToForegroundApp])
  {

    [(SBCameraHardwareButton *)self _deferCameraPressesToSpringBoard];
  }
}

- (BOOL)_deferToPhysicalOverrideScene
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = SBLogButtonsCamera();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    physicalButtonOverrideScene = self->_physicalButtonOverrideScene;
    v12 = 138543362;
    v13 = physicalButtonOverrideScene;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_deferToPhysicalOverrideScene scene:%{public}@", &v12, 0xCu);
  }

  v5 = [(FBScene *)self->_physicalButtonOverrideScene isActive];
  if (v5)
  {
    v6 = [(FBScene *)self->_physicalButtonOverrideScene clientHandle];
    v7 = [v6 processHandle];
    v8 = [v7 pid];

    v9 = SBLogButtonsCamera();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = BSProcessDescriptionForPID();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "_deferToPhysicalOverrideScene process:%{public}@", &v12, 0xCu);
    }

    if (v8 < 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      [(SBCameraHardwareButton *)self _deferCameraPressesToPID:v8];
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)_shouldDeferToNonSpringBoardProcess
{
  disableDeferringToApplications = self->_disableDeferringToApplications;
  if (disableDeferringToApplications)
  {
    v3 = SBLogButtonsCamera();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_shouldDeferToNonSpringBoardProcess shouldSendToSpringBoard:YES", v5, 2u);
    }
  }

  return !disableDeferringToApplications;
}

- (BOOL)_deferToForegroundApp
{
  v3 = [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs count];
  if (v3)
  {
    if ([(SBCameraHardwareButton *)self _shouldDeferToCoverSheetCamera])
    {
      [(SBCameraHardwareButton *)self _deferCameraPressesToCameraApplication];
    }

    else
    {
      [(SBCameraHardwareButton *)self _deferCameraPressesToPID:[(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs firstIndex]];
    }
  }

  return v3 != 0;
}

- (BOOL)_shouldDeferToCoverSheetCamera
{
  v3 = [(SBApplicationController *)self->_applicationController cameraApplication];
  v4 = [v3 bundleIdentifier];
  v5 = v4 != 0;
  if (v4)
  {
    if (![(SBCameraHardwareButton *)self _isCoverSheetCameraVisible])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v6 = SBLogButtonsCamera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v7 = "_shouldDeferToCoverSheetCamera YES: cover sheet visible && camera view is visible";
      v8 = &v10;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v6 = SBLogButtonsCamera();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "_shouldDeferToCoverSheetCamera NO: camera app missing from device";
      v8 = buf;
      goto LABEL_7;
    }
  }

LABEL_10:
  return v5;
}

- (BOOL)_isCoverSheetCameraVisible
{
  if ([(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager isVisible])
  {
    v3 = [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager coverSheetHostedAppSceneHandle];
    v4 = [v3 application];

    v5 = [(SBApplicationController *)self->_applicationController cameraApplication];
    v6 = v5;
    if (v4)
    {
      v7 = [v4 isEqual:v5];

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)_deferCameraPressesToSpringBoard
{
  deferringRuleAssertion = self->_deferringRuleAssertion;
  v4 = SBLogButtonsCamera();
  v5 = v4;
  if (deferringRuleAssertion)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_deferCameraPressesToSpringBoard", v7, 2u);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    v6 = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    self->_lastCameraApplicationPID = -1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(SBCameraHardwareButton *)v5 _deferCameraPressesToSpringBoard];
    }
  }
}

- (SBCameraHardwareButton)initWithActivationManager:(id)a3
{
  v69[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [(SBCameraHardwareButton *)a2 initWithActivationManager:?];
  }

  v7 = v6;
  v67.receiver = self;
  v67.super_class = SBCameraHardwareButton;
  v8 = [(SBCameraHardwareButton *)&v67 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_activationManager, a3);
    v10 = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v9->_deliveryManager;
    v9->_deliveryManager = v10;

    v12 = +[SBApplicationController sharedInstance];
    applicationController = v9->_applicationController;
    v9->_applicationController = v12;

    v14 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v9->_lockScreenManager;
    v9->_lockScreenManager = v14;

    v16 = +[SBCoverSheetPresentationManager sharedInstance];
    coverSheetPresentationManager = v9->_coverSheetPresentationManager;
    v9->_coverSheetPresentationManager = v16;

    v18 = +[SBBacklightController sharedInstance];
    backlightController = v9->_backlightController;
    v9->_backlightController = v18;

    v20 = [SBApp proximitySensorManager];
    proximitySensorManager = v9->_proximitySensorManager;
    v9->_proximitySensorManager = v20;

    v22 = objc_alloc_init(MEMORY[0x277CC1D28]);
    pocketStateManager = v9->_pocketStateManager;
    v9->_pocketStateManager = v22;

    v24 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    mainDisplaySceneManager = v9->_mainDisplaySceneManager;
    v9->_mainDisplaySceneManager = v24;
    v63 = v24;

    v26 = [(SBSceneManager *)v63 physicalButtonSceneOverrideManager];
    v27 = [(SBPhysicalButtonSceneOverrideManager *)v26 addObserver:v9 forReason:@"camera hardware button"];
    physicalButtonOverrideObserver = v9->_physicalButtonOverrideObserver;
    v9->_physicalButtonOverrideObserver = v27;

    v29 = objc_alloc_init(SBCameraHardwareButtonStudyLogger);
    studyLogger = v9->_studyLogger;
    v9->_studyLogger = v29;

    v31 = [[SBBacklightStudyLogger alloc] initWithController:v9->_backlightController];
    backlightStudyLogger = v9->_backlightStudyLogger;
    v9->_backlightStudyLogger = v31;

    v33 = [SBLiftToWakeStudyLogger alloc];
    v34 = +[SBLiftToWakeController sharedController];
    v35 = [(SBLiftToWakeStudyLogger *)v33 initWithController:v34];
    liftToWakeStudyLogger = v9->_liftToWakeStudyLogger;
    v9->_liftToWakeStudyLogger = v35;

    v62 = [MEMORY[0x277CF06D0] build:&__block_literal_global_31];
    v37 = objc_opt_new();
    v38 = [MEMORY[0x277CBEB98] setWithObject:v62];
    [v37 setSenderDescriptors:v38];

    v61 = [MEMORY[0x277CF06B8] descriptorWithPage:144 usage:33];
    v39 = [MEMORY[0x277CBEB98] setWithObject:v61];
    [v37 setDescriptors:v39];

    v40 = [MEMORY[0x277CF0628] environmentWithIdentifier:@"cameraButton"];
    v41 = [MEMORY[0x277CF0690] targetForDeferringEnvironment:v40];
    v42 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v37 toTarget:v41];
    v43 = v9->_deliveryManager;
    v69[0] = v42;
    v64 = v7;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:1];
    v45 = [(BKSHIDEventDeliveryManager *)v43 dispatchDiscreteEventsForReason:@"SBCameraHardwareButton" withRules:v44];
    dispatchingRuleAssertion = v9->_dispatchingRuleAssertion;
    v9->_dispatchingRuleAssertion = v45;

    v47 = objc_alloc_init(SBHIDButtonStateArbiter);
    buttonArbiter = v9->_buttonArbiter;
    v9->_buttonArbiter = v47;

    [(SBHIDButtonStateArbiter *)v9->_buttonArbiter setDelegate:v9];
    v49 = +[SBCameraHardwareButtonDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v49;

    [(PTSettings *)v9->_settings addKeyObserver:v9];
    v51 = +[SBDefaults localDefaults];
    v52 = [v51 cameraHardwareButtonDefaults];
    defaults = v9->_defaults;
    v9->_defaults = v52;

    v54 = v9->_defaults;
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shutterButtonLongPressTimeout"];
    v68[0] = v55;
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shutterButtonShouldUsePocketDetection"];
    v68[1] = v56;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __52__SBCameraHardwareButton_initWithActivationManager___block_invoke_2;
    v65[3] = &unk_2783A8C18;
    v58 = v9;
    v66 = v58;
    v59 = [(SBCameraHardwareButtonDefaults *)v54 observeDefaults:v57 onQueue:MEMORY[0x277D85CD0] withBlock:v65];

    v7 = v64;
    [(SBCameraHardwareButton *)v58 _updateSettingsForReason:@"launch time"];
    [(SBCameraHardwareButton *)v58 _reconfigureProcessMonitor];
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_dispatchingRuleAssertion invalidate];
  [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  [(BSAbsoluteMachTimer *)self->_longPressCancellationTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBCameraHardwareButton;
  [(SBCameraHardwareButton *)&v3 dealloc];
}

- (void)setDisableDeferringToApplications:(BOOL)a3
{
  if (self->_disableDeferringToApplications != a3)
  {
    self->_disableDeferringToApplications = a3;
    [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
  }
}

- (void)handleButtonEvent:(__IOHIDEvent *)a3
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v6 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 144 && v6 == 33)
  {
    [(SBCameraHardwareButtonStudyLogger *)self->_studyLogger logButtonEvent:a3];
    buttonArbiter = self->_buttonArbiter;

    [(SBHIDButtonStateArbiter *)buttonArbiter processEvent:a3];
  }
}

- (void)addProcessRequestingCameraButton:(int)a3 token:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogButtonsCamera();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = a3;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "add pid %d", v13, 8u);
  }

  allCameraShutterButtonPIDs = self->_allCameraShutterButtonPIDs;
  if (!allCameraShutterButtonPIDs)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v10 = self->_allCameraShutterButtonPIDs;
    self->_allCameraShutterButtonPIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x277CF0C68]);
    deferringTokensPerPID = self->_deferringTokensPerPID;
    self->_deferringTokensPerPID = v11;

    allCameraShutterButtonPIDs = self->_allCameraShutterButtonPIDs;
  }

  [(NSMutableIndexSet *)allCameraShutterButtonPIDs addIndex:a3];
  if (v6)
  {
    [(BSMutableIntegerMap *)self->_deferringTokensPerPID setObject:v6 forKey:a3];
  }

  [(SBCameraHardwareButton *)self _reconfigureProcessMonitor];
}

- (void)removeProcessRequestingCameraButton:(int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsCamera();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "remove pid %d", v6, 8u);
  }

  [(NSMutableIndexSet *)self->_allCameraShutterButtonPIDs removeIndex:a3];
  [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs removeIndex:a3];
  [(NSMutableIndexSet *)self->_foregroundPendingRemovalCameraShutterButtonPIDs removeIndex:a3];
  [(BSMutableIntegerMap *)self->_deferringTokensPerPID removeObjectForKey:a3];
  [(SBCameraHardwareButton *)self _reconfigureProcessMonitor];
  [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
}

- (void)_updateSettingsForReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D431C0] sharedInstance];
  v6 = [v5 prototypeSettingsEnabled];

  if (v6)
  {
    [(SBCameraHardwareButtonSettings *)self->_settings shutterButtonLongPressTimeout];
    v8 = v7;
    [(SBCameraHardwareButtonSettings *)self->_settings shutterButtonLongPressCancellationTimeout];
    v10 = v9;
    v11 = [(SBCameraHardwareButtonSettings *)self->_settings shutterButtonShouldUsePocketDetection];
    v12 = SBLogButtonsCamera();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138543362;
      *&v18[4] = v4;
      v13 = "update settings (because %{public}@) from prototype settings";
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, v13, v18, 0xCu);
    }
  }

  else
  {
    [(SBCameraHardwareButtonDefaults *)self->_defaults shutterButtonLongPressTimeout];
    v8 = v14;
    [(SBCameraHardwareButtonDefaults *)self->_defaults shutterButtonLongPressCancellationTimeout];
    v10 = v15;
    v11 = [(SBCameraHardwareButtonDefaults *)self->_defaults shutterButtonShouldUsePocketDetection];
    v12 = SBLogButtonsCamera();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138543362;
      *&v18[4] = v4;
      v13 = "update settings (because %{public}@) from defaults";
      goto LABEL_6;
    }
  }

  if (self->_shouldUsePocketStateDetection != v11 || ([(SBHIDButtonStateArbiter *)self->_buttonArbiter longPressTimeout], v16 != v8) || self->_longPressCancellationTimeout != v10)
  {
    self->_shouldUsePocketStateDetection = v11;
    [(SBHIDButtonStateArbiter *)self->_buttonArbiter setLongPressTimeout:fmin(fmax(v8, 0.0), 10.0), *v18];
    self->_longPressCancellationTimeout = fmin(fmax(v10, 0.0), 10.0);
    v17 = SBLogButtonsCamera();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 134218496;
      *&v18[4] = v8;
      *&v18[12] = 2048;
      *&v18[14] = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "settings update longPressTimeout:%g cancelAfter:%g pocketDetectEnabled:%{BOOL}u", v18, 0x1Cu);
    }
  }
}

- (void)_process:(id)a3 stateDidUpdate:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = SBLogButtonsCamera();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 state];
    v10 = [v9 endowmentNamespaces];
    v25 = 138543874;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "process %{public}@ update:%{public}@ endowments:%{public}@", &v25, 0x20u);
  }

  v11 = [v6 pid];
  v12 = [v7 state];
  v13 = [v7 previousState];
  v14 = [v12 taskState];
  v15 = MEMORY[0x277D0AC90];
  if (v14 == 4)
  {
    v16 = [v12 endowmentNamespaces];
    v17 = [v16 containsObject:*v15];
  }

  else
  {
    v17 = 0;
  }

  if ([v13 taskState] == 4)
  {
    v18 = [v13 endowmentNamespaces];
    v19 = [v18 containsObject:*v15];
  }

  else
  {
    v19 = 0;
  }

  if (v19 != v17)
  {
    v20 = SBLogButtonsCamera();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v21)
      {
        v25 = 138543362;
        v26 = v6;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "process is running / visible:%{public}@", &v25, 0xCu);
      }

      foregroundCameraShutterButtonPIDs = self->_foregroundCameraShutterButtonPIDs;
      if (!foregroundCameraShutterButtonPIDs)
      {
        v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v24 = self->_foregroundCameraShutterButtonPIDs;
        self->_foregroundCameraShutterButtonPIDs = v23;

        foregroundCameraShutterButtonPIDs = self->_foregroundCameraShutterButtonPIDs;
      }

      [(NSMutableIndexSet *)foregroundCameraShutterButtonPIDs addIndex:v11];
      if ([(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs count]== 1)
      {
        [(SBSceneManager *)self->_mainDisplaySceneManager addObserver:self];
      }
    }

    else
    {
      if (v21)
      {
        v25 = 138543362;
        v26 = v6;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "process is not running / not visible:%{public}@", &v25, 0xCu);
      }

      [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs removeIndex:v11];
      [(NSMutableIndexSet *)self->_foregroundPendingRemovalCameraShutterButtonPIDs removeIndex:v11];
      if (![(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs count])
      {
        [(SBSceneManager *)self->_mainDisplaySceneManager removeObserver:self];
      }
    }

    [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
  }
}

- (void)_reconfigureProcessMonitor
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  allCameraShutterButtonPIDs = self->_allCameraShutterButtonPIDs;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SBCameraHardwareButton__reconfigureProcessMonitor__block_invoke;
  v11[3] = &unk_2783AC9B8;
  v5 = v3;
  v12 = v5;
  [(NSMutableIndexSet *)allCameraShutterButtonPIDs enumerateIndexesUsingBlock:v11];
  v6 = [(SBApplicationController *)self->_applicationController cameraApplication];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277D46FA0];
    v9 = [v6 bundleIdentifier];
    v10 = [v8 predicateMatchingBundleIdentifier:v9];

    [v5 addObject:v10];
  }

  [(SBCameraHardwareButton *)self _reconfigureProcessMonitorForPredicates:v5];
}

void __52__SBCameraHardwareButton__reconfigureProcessMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D46FA0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v5 = [v3 predicateMatchingIdentifier:v4];

  [*(a1 + 32) addObject:v5];
}

- (void)_reconfigureProcessMonitorForPredicates:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    processMonitor = self->_processMonitor;
    if (processMonitor)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __66__SBCameraHardwareButton__reconfigureProcessMonitorForPredicates___block_invoke_4;
      v11[3] = &unk_2783AD408;
      v12 = v5;
      [(RBSProcessMonitor *)processMonitor updateConfiguration:v11];
      v7 = v12;
    }

    else
    {
      v8 = MEMORY[0x277D46F80];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__SBCameraHardwareButton__reconfigureProcessMonitorForPredicates___block_invoke;
      v13[3] = &unk_2783AD3E0;
      v13[4] = self;
      v14 = v5;
      v9 = [v8 monitorWithConfiguration:v13];
      v10 = self->_processMonitor;
      self->_processMonitor = v9;

      v7 = v14;
    }
  }

  else
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    v7 = self->_processMonitor;
    self->_processMonitor = 0;
  }
}

void __66__SBCameraHardwareButton__reconfigureProcessMonitorForPredicates___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FB0];
  v4 = a2;
  v5 = [v3 descriptor];
  v8[0] = *MEMORY[0x277D0AC90];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 setEndowmentNamespaces:v6];

  [v4 setStateDescriptor:v5];
  [v4 setServiceClass:33];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SBCameraHardwareButton__reconfigureProcessMonitorForPredicates___block_invoke_2;
  v7[3] = &unk_2783AD3B8;
  v7[4] = *(a1 + 32);
  [v4 setUpdateHandler:v7];
  [v4 setPredicates:*(a1 + 40)];
}

void __66__SBCameraHardwareButton__reconfigureProcessMonitorForPredicates___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

- (void)_deferCameraPressesToPID:(int)a3
{
  v3 = *&a3;
  v17 = *MEMORY[0x277D85DE8];
  lastCameraApplicationPID = self->_lastCameraApplicationPID;
  v6 = SBLogButtonsCamera();
  v7 = v6;
  if (lastCameraApplicationPID == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBCameraHardwareButton *)v3 _deferCameraPressesToPID:v7];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = BSProcessDescriptionForPID();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_deferCameraPressesToPID: %{public}@", &v15, 0xCu);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    deferringRuleAssertion = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    v7 = objc_opt_new();
    v10 = [MEMORY[0x277CF0628] environmentWithIdentifier:@"cameraButton"];
    [v7 setEnvironment:v10];
    v11 = objc_opt_new();
    [v11 setPid:v3];
    v12 = [(BSMutableIntegerMap *)self->_deferringTokensPerPID objectForKey:v3];
    if (v12)
    {
      [v11 setToken:v12];
    }

    v13 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v7 toTarget:v11 withReason:@"CameraIsAlive"];
    v14 = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = v13;

    self->_lastCameraApplicationPID = v3;
  }
}

- (void)_deferCameraPressesToApplication:(id)a3
{
  if (a3)
  {
    v4 = [a3 processState];
    if ([v4 isRunning])
    {
      -[SBCameraHardwareButton _deferCameraPressesToPID:](self, "_deferCameraPressesToPID:", [v4 pid]);
    }

    else
    {
      v5 = SBLogButtonsCamera();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_deferCameraPressesToApplication: camera app is not running, back to SpringBoard for now", v7, 2u);
      }

      [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
      deferringRuleAssertion = self->_deferringRuleAssertion;
      self->_deferringRuleAssertion = 0;

      self->_lastCameraApplicationPID = -1;
    }
  }
}

- (void)_deferCameraPressesToCameraApplication
{
  v3 = [(SBApplicationController *)self->_applicationController cameraApplication];
  [(SBCameraHardwareButton *)self _deferCameraPressesToApplication:v3];
}

- (void)_launchCameraIfReady
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = SBLogButtonsCamera();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(_SBCameraLaunchCondition *)self->_shouldLaunchCameraCondition isMet];
    v5 = [(_SBCameraLaunchCondition *)self->_longPressCondition isMet];
    v6 = [(_SBCameraLaunchCondition *)self->_outOfPocketCondition isMet];
    *buf = 67109632;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_launchCameraIfReady (launch:%{BOOL}u long press:%{BOOL}u outOfPocket:%{BOOL}u)", buf, 0x14u);
  }

  if ([(_SBCameraLaunchCondition *)self->_shouldLaunchCameraCondition isMet])
  {
    if (![(_SBCameraLaunchCondition *)self->_longPressCondition isMet])
    {
      goto LABEL_9;
    }

    v7 = [(SBLockScreenManager *)self->_lockScreenManager isUILocked];
    v8 = [(SBBacklightController *)self->_backlightController screenIsDim];
    v9 = SBLogButtonsCamera();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "_launchCameraIfReady: launching screen-locked:%{BOOL}u dim:%{BOOL}u", buf, 0xEu);
    }

    if (v7 && v8)
    {
      lockScreenManager = self->_lockScreenManager;
      v17 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
      v18 = MEMORY[0x277CBEC38];
      v11 = 1;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [(SBLockScreenManager *)lockScreenManager unlockUIFromSource:27 withOptions:v12];
    }

    else
    {
LABEL_9:
      v11 = 0;
    }

    activationManager = self->_activationManager;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__SBCameraHardwareButton__launchCameraIfReady__block_invoke;
    v15[3] = &unk_2783AD430;
    v15[4] = self;
    v16 = v11;
    v14 = activationManager;
    [(SBCameraActivationManager *)v14 activateCaptureApplicationWithBundleID:0 URL:0 launchType:0x20uLL fromSource:0 withPreludeAnimationToken:v15 completion:?];
  }
}

uint64_t __46__SBCameraHardwareButton__launchCameraIfReady__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _notifyCoreAnalyticsCameraDidLaunchToLockScreen:a2 screenWasOff:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 _updateCameraDeferringRule];
}

id __87__SBCameraHardwareButton__notifyCoreAnalyticsCameraDidLaunchToLockScreen_screenWasOff___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"lockScreen";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[1] = @"screenOff";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)_startWaitingForLongPressCancellation
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_longPressCancellationTimeout > 0.0 && [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager isVisible])
  {
    v3 = SBLogButtonsCamera();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      longPressCancellationTimeout = self->_longPressCancellationTimeout;
      *buf = 134217984;
      v13 = longPressCancellationTimeout;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_startWaitingForLongPressCancellation: coversheet visible, starting timer for %g seconds", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v5 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBCameraHardwareButton.longPressCancellationTimer"];
    longPressCancellationTimer = self->_longPressCancellationTimer;
    self->_longPressCancellationTimer = v5;

    v7 = self->_longPressCancellationTimer;
    v8 = self->_longPressCancellationTimeout;
    v9 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__SBCameraHardwareButton__startWaitingForLongPressCancellation__block_invoke;
    v10[3] = &unk_2783A9918;
    objc_copyWeak(&v11, buf);
    [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v10 queue:v8 handler:0.0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __63__SBCameraHardwareButton__startWaitingForLongPressCancellation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _longPressDidCancel];
}

- (void)_longPressDidCancel
{
  [(SBCameraHardwareButton *)self _stopWaitingForLongPressCancellation];
  v3 = [_SBCameraLaunchCondition conditionWithValue:0];
  shouldLaunchCameraCondition = self->_shouldLaunchCameraCondition;
  self->_shouldLaunchCameraCondition = v3;

  if ([(SBCameraHardwareButton *)self _isCoverSheetCameraVisible])
  {
    v5 = SBLogButtonsCamera();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_longPressDidCancel: returning to main coversheet page", v7, 2u);
    }

    v6 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
    [v6 activateMainPageWithCompletion:&__block_literal_global_112];
  }
}

- (void)_stopWaitingForLongPressCancellation
{
  [(BSAbsoluteMachTimer *)self->_longPressCancellationTimer invalidate];
  longPressCancellationTimer = self->_longPressCancellationTimer;
  self->_longPressCancellationTimer = 0;
}

- (void)performActionsForButtonDown:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
  v6 = [(SBCameraHardwareButton *)self hardwareButtonIdentifier];
  LOBYTE(hardwareButtonCoordinator) = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator buttonShouldStart:v6];

  if (hardwareButtonCoordinator)
  {
    [(SBCameraHardwareButton *)self _startWaitingForLongPressCancellation];
    v7 = [_SBCameraLaunchCondition conditionWithValue:0];
    longPressCondition = self->_longPressCondition;
    self->_longPressCondition = v7;

    v9 = [_SBCameraLaunchCondition conditionWithValue:0];
    outOfPocketCondition = self->_outOfPocketCondition;
    self->_outOfPocketCondition = v9;

    if ([(SBBacklightController *)self->_backlightController screenIsDim]&& [(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity])
    {
      v11 = SBLogButtonsCamera();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: object in proximity, bailing", buf, 2u);
      }

      v12 = [_SBCameraLaunchCondition conditionWithValue:0];
      shouldLaunchCameraCondition = self->_shouldLaunchCameraCondition;
      self->_shouldLaunchCameraCondition = v12;

      [v4 reset];
    }

    else
    {
      [(SBHIDButtonStateArbiter *)self->_buttonArbiter longPressTimeout];
      v16 = v15;
      v17 = [(SBLockScreenManager *)self->_lockScreenManager isUILocked];
      v18 = [(SBBacklightController *)self->_backlightController screenIsDim];
      if (v17 && v18 && [(SBCameraHardwareButtonSettings *)self->_settings shutterButtonShouldUsePocketDetection])
      {
        v19 = SBLogButtonsCamera();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: checking pocket state", buf, 2u);
        }

        v20 = self->_outOfPocketCondition;
        v32[0] = self->_longPressCondition;
        v32[1] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
        v22 = [_SBCameraLaunchCondition conditionWithConditions:v21];
        v23 = self->_shouldLaunchCameraCondition;
        self->_shouldLaunchCameraCondition = v22;

        pocketStateManager = self->_pocketStateManager;
        [(SBBacklightController *)self->_backlightController defaultLockScreenDimIntervalWhenNotificationsPresent];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __54__SBCameraHardwareButton_performActionsForButtonDown___block_invoke;
        v29[3] = &unk_2783AD478;
        v29[4] = self;
        [CMPocketStateManager queryStateOntoQueue:"queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:" andMonitorFor:MEMORY[0x277D85CD0] withTimeout:v29 andHandler:?];
      }

      else
      {
        v25 = [_SBCameraLaunchCondition conditionWithValue:1];
        v26 = self->_shouldLaunchCameraCondition;
        self->_shouldLaunchCameraCondition = v25;

        v27 = SBLogButtonsCamera();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = v16;
          _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: waiting for long press (timeout:%g)", buf, 0xCu);
        }
      }

      if ([(SBHIDButtonStateArbiter *)self->_buttonArbiter isLongPressDisabled])
      {
        v28 = SBLogButtonsCamera();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: long press timeout is zero", buf, 2u);
        }

        [(_SBCameraLaunchCondition *)self->_longPressCondition setMet:1];
        [(SBCameraHardwareButton *)self _launchCameraIfReady];
      }
    }
  }

  else
  {
    v14 = SBLogButtonsCamera();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: button coordinator says NO, bailing", buf, 2u);
    }
  }
}

void __54__SBCameraHardwareButton_performActionsForButtonDown___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 240) logPocketState:a2];
  v4 = SBLogButtonsCamera();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (v5)
    {
      v6 = 67109120;
      v7 = a2;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: not out-of-pocket (%d); ignoring press", &v6, 8u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = 67109120;
      v7 = a2;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "performActionsForButtonDown: out-of-pocket (%d)", &v6, 8u);
    }

    [*(*(a1 + 32) + 120) setMet:1];
    [*(a1 + 32) _launchCameraIfReady];
  }
}

- (void)performActionsForButtonLongPress:(id)a3
{
  [(_SBCameraLaunchCondition *)self->_longPressCondition setMet:1];

  [(SBCameraHardwareButton *)self _launchCameraIfReady];
}

- (void)physicalButtonSceneOverridesDidChange:(id)a3
{
  obj = [a3 cameraBehaviorScene];
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_physicalButtonOverrideScene, obj);
    [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_settings == a3)
  {
    [(SBCameraHardwareButton *)self _updateSettingsForReason:@"prototype settings changed", a4];
  }
}

- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a4 application];
  v6 = [v5 processState];
  v7 = [v6 pid];

  if (v7 >= 1 && [(NSMutableIndexSet *)self->_foregroundPendingRemovalCameraShutterButtonPIDs containsIndex:v7])
  {
    v8 = SBLogButtonsCamera();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "pid restored:%d", v9, 8u);
    }

    [(NSMutableIndexSet *)self->_foregroundPendingRemovalCameraShutterButtonPIDs removeIndex:v7];
    [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs addIndex:v7];
    [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
  }
}

- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [v7 application];
  v9 = [v8 processState];
  v10 = [v9 pid];

  if (v10 >= 1 && [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs containsIndex:v10])
  {
    v24 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [v6 externalForegroundApplicationSceneHandles];
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v25 + 1) + 8 * i) application];
          v17 = [v16 processState];
          v18 = [v17 pid];

          if (v18 == v10)
          {

            v23 = SBLogButtonsCamera();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v30 = v10;
              _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "foreground scenes still exist for PID %d", buf, 8u);
            }

            goto LABEL_19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = SBLogButtonsCamera();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = v10;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "removing PID %d", buf, 8u);
    }

    foregroundPendingRemovalCameraShutterButtonPIDs = self->_foregroundPendingRemovalCameraShutterButtonPIDs;
    if (!foregroundPendingRemovalCameraShutterButtonPIDs)
    {
      v21 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v22 = self->_foregroundPendingRemovalCameraShutterButtonPIDs;
      self->_foregroundPendingRemovalCameraShutterButtonPIDs = v21;

      foregroundPendingRemovalCameraShutterButtonPIDs = self->_foregroundPendingRemovalCameraShutterButtonPIDs;
    }

    [(NSMutableIndexSet *)foregroundPendingRemovalCameraShutterButtonPIDs addIndex:v10];
    [(NSMutableIndexSet *)self->_foregroundCameraShutterButtonPIDs removeIndex:v10];
LABEL_19:
    v6 = v24;
    [(SBCameraHardwareButton *)self _updateCameraDeferringRule];
  }
}

- (uint64_t)activationManager
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

- (void)setDispatchingRuleAssertion:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setDeferringRuleAssertion:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setPhysicalButtonOverrideObserver:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (uint64_t)lastCameraApplicationPID
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

- (uint64_t)setLastCameraApplicationPID:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

- (void)setAllCameraShutterButtonPIDs:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setForegroundCameraShutterButtonPIDs:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (uint64_t)foregroundPendingRemovalCameraShutterButtonPIDs
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setForegroundPendingRemovalCameraShutterButtonPIDs:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (uint64_t)deferringTokensPerPID
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setDeferringTokensPerPID:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

- (void)setButtonArbiter:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

- (void)setProcessMonitor:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

- (uint64_t)pocketStateManager
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (void)setPocketStateManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

- (uint64_t)shouldLaunchCameraCondition
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (void)setShouldLaunchCameraCondition:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

- (uint64_t)longPressCondition
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (void)setLongPressCondition:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

- (uint64_t)outOfPocketCondition
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (void)setOutOfPocketCondition:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

- (uint64_t)longPressCancellationTimer
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (void)setLongPressCancellationTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

- (uint64_t)physicalButtonOverrideScene
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (void)setPhysicalButtonOverrideScene:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

- (double)longPressCancellationTimeout
{
  if (a1)
  {
    return *(a1 + 144);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setLongPressCancellationTimeout:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

- (uint64_t)shouldUsePocketStateDetection
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setShouldUsePocketStateDetection:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

- (uint64_t)deliveryManager
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

- (void)setDeliveryManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

- (uint64_t)applicationController
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (void)setApplicationController:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

- (void)setActivationManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

- (uint64_t)lockScreenManager
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (void)setLockScreenManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

- (uint64_t)coverSheetPresentationManager
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (void)setCoverSheetPresentationManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 184), a2);
  }
}

- (uint64_t)backlightController
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

- (void)setBacklightController:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 192), a2);
  }
}

- (uint64_t)proximitySensorManager
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

- (void)setProximitySensorManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 200), a2);
  }
}

- (uint64_t)mainDisplaySceneManager
{
  if (result)
  {
    return *(result + 208);
  }

  return result;
}

- (void)setMainDisplaySceneManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 208), a2);
  }
}

- (uint64_t)settings
{
  if (result)
  {
    return *(result + 216);
  }

  return result;
}

- (void)setSettings:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 216), a2);
  }
}

- (uint64_t)defaults
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

- (void)setDefaults:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 224), a2);
  }
}

- (uint64_t)backlightStudyLogger
{
  if (result)
  {
    return *(result + 232);
  }

  return result;
}

- (void)setBacklightStudyLogger:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 232), a2);
  }
}

- (uint64_t)studyLogger
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (void)setStudyLogger:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 240), a2);
  }
}

- (uint64_t)liftToWakeStudyLogger
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

- (void)setLiftToWakeStudyLogger:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 248), a2);
  }
}

- (void)initWithActivationManager:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"activationManager != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBCameraHardwareButton.m";
    v16 = 1024;
    v17 = 155;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_deferCameraPressesToPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "_deferCameraPressesToPID: PID:%d (but this is not a change)", v2, 8u);
}

@end