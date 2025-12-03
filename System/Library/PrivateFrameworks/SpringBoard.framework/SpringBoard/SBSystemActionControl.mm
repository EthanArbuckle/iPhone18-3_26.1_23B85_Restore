@interface SBSystemActionControl
- (BOOL)_cancelPreviewingSelectedActionFromSource:(uint64_t)source;
- (BOOL)_shouldPerformAction:(void *)action withSuppressionStatus:(__CFString *)status reason:(_BYTE *)reason isSuppressed:;
- (BOOL)systemActionCoachingController:(id)controller canPresentCoachingForAction:(id)action;
- (id)_executionHandlerForExecutor:(void *)executor;
- (id)_executorForSystemAction:(uint64_t)action;
- (id)_feedbackForAction:(uint64_t)action;
- (id)initWithDataSource:(void *)source previewCoordinator:(void *)coordinator authenticationStatusProvider:(void *)provider coachingController:(void *)controller soundController:;
- (id)performSelectedActionFromSource:(void *)source withContext:;
- (id)previewSelectedActionFromSource:(void *)source withSuppressionStatus:;
- (uint64_t)isSelectedActionHostedByApplicationWithBundleIdentifier:(uint64_t)result;
- (uint64_t)removeObserver:(uint64_t)result;
- (uint64_t)selectedActionAnalyticsData;
- (void)_activateFeedbackForAction:(uint64_t)action;
- (void)_cancelCameraPrewarmIfNecessaryForAction:(uint64_t)action;
- (void)_configureWithSelectedAction;
- (void)_deactivateFeedbackForAction:(uint64_t)action;
- (void)_executor:(void *)_executor didFinishPerformingAction:(void *)action withResult:;
- (void)_noteFailedToPreviewAction:(uint64_t)action;
- (void)_noteWillPerformAction:(uint64_t)action;
- (void)_noteWillPreviewAction:(uint64_t)action;
- (void)_notifyDidUpdateActionInteractionConfiguration;
- (void)_playFeedbackForAction:(uint64_t)action;
- (void)_prewarmCameraIfNecessaryForAction:(uint64_t)action;
- (void)addObserver:(uint64_t)observer;
- (void)addSystemActionValidator:(uint64_t)validator;
- (void)systemActionDataSource:(id)source didUpdateSelectedAction:(id)action;
@end

@implementation SBSystemActionControl

- (id)initWithDataSource:(void *)source previewCoordinator:(void *)coordinator authenticationStatusProvider:(void *)provider coachingController:(void *)controller soundController:
{
  v12 = a2;
  sourceCopy = source;
  coordinatorCopy = coordinator;
  providerCopy = provider;
  obj = controller;
  controllerCopy = controller;
  if (self)
  {
    if (!v12)
    {
      [SBSystemActionControl initWithDataSource:? previewCoordinator:? authenticationStatusProvider:? coachingController:? soundController:?];
    }

    if (!sourceCopy)
    {
      [SBSystemActionControl initWithDataSource:? previewCoordinator:? authenticationStatusProvider:? coachingController:? soundController:?];
    }

    if (!coordinatorCopy)
    {
      [SBSystemActionControl initWithDataSource:? previewCoordinator:? authenticationStatusProvider:? coachingController:? soundController:?];
    }

    if (!providerCopy)
    {
      [SBSystemActionControl initWithDataSource:? previewCoordinator:? authenticationStatusProvider:? coachingController:? soundController:?];
    }

    if (!controllerCopy)
    {
      [SBSystemActionControl initWithDataSource:? previewCoordinator:? authenticationStatusProvider:? coachingController:? soundController:?];
    }

    v20.receiver = self;
    v20.super_class = SBSystemActionControl;
    v17 = objc_msgSendSuper2(&v20, sel_init);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 4, a2);
      [v12 addObserver:self];
      objc_storeStrong(self + 5, source);
      objc_storeStrong(self + 6, coordinator);
      objc_storeStrong(self + 7, provider);
      [(SBHomeScreenConfigurationServer *)self[7] setDelegate:self];
      objc_storeStrong(self + 8, obj);
      [(SBSystemActionControl *)self _configureWithSelectedAction];
    }
  }

  return self;
}

- (void)_configureWithSelectedAction
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"selectedAction != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)previewSelectedActionFromSource:(void *)source withSuppressionStatus:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    if (![(__CFString *)v5 length])
    {
      [SBSystemActionControl previewSelectedActionFromSource:? withSuppressionStatus:?];
    }

    v7 = self[4];
    selectedSystemAction = [v7 selectedSystemAction];

    v27 = 0;
    v26 = 0;
    v9 = [(SBSystemActionControl *)self _shouldPerformAction:selectedSystemAction withSuppressionStatus:sourceCopy reason:&v26 isSuppressed:&v27];
    v10 = v26;
    if (v27)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = +[SBSystemActionAnalyticsTracker sharedTracker];
    [(SBSystemActionAnalyticsTracker *)v12 trackInteractionWithType:v11 forAction:selectedSystemAction suppressionStatus:sourceCopy];

    if (v9)
    {
      v13 = SBLogSystemActionControl();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy4 = self;
        v30 = 2114;
        v31 = v5;
        v32 = 2114;
        v33 = sourceCopy;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) requested to preview selected action from source '%{public}@' with suppression status: %{public}@", buf, 0x20u);
      }

      v14 = self[9];
      if (v14)
      {
        v15 = SBLogSystemActionControl();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy4 = self;
          v30 = 2114;
          v31 = v14;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) cannot preview action; an executor is already previewing: %{public}@", buf, 0x16u);
        }

        self = 0;
      }

      else
      {
        v15 = [(SBSystemActionControl *)self _executorForSystemAction:selectedSystemAction];
        [(SBSystemActionControl *)self _noteWillPreviewAction:selectedSystemAction];
        v19 = self[5];
        objc_storeStrong(self + 9, v15);
        v20 = [v15 previewWithCoordinator:v19];
        if (v20)
        {
          [(SBSystemActionControl *)self _cancelCameraPrewarmIfNecessaryForAction:selectedSystemAction];
          [self[10] invalidate];
          v22 = self[10];
          self[10] = 0;

          v23 = self[9];
          self[9] = 0;

          self = 0;
        }

        else
        {
          v21 = objc_alloc(MEMORY[0x277CF0CE8]);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __79__SBSystemActionControl_previewSelectedActionFromSource_withSuppressionStatus___block_invoke;
          v24[3] = &unk_2783B18A8;
          v24[4] = self;
          v25 = v5;
          self = [v21 initWithIdentifier:@"SBSystemAction-Previewing" forReason:v25 invalidationBlock:v24];
        }
      }
    }

    else
    {
      if (v27 == 1)
      {
        v16 = SBLogSystemActionSuppression();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy4 = self;
          v30 = 2114;
          v31 = selectedSystemAction;
          v32 = 2114;
          v33 = v10;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) Suppressing action: %{public}@; %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v17 = SBLogSystemActionControl();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy4 = self;
          v30 = 2114;
          v31 = v10;
          v32 = 2114;
          v33 = selectedSystemAction;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Disallowing action (%{public}@); action: %{public}@", buf, 0x20u);
        }

        [self[5] provideDiscreteNoActionInteractionFeedback];
      }

      self = 0;
    }
  }

  return self;
}

- (id)_executorForSystemAction:(uint64_t)action
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (action)
  {
    v5 = *(action + 24);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __50__SBSystemActionControl__executorForSystemAction___block_invoke;
    v16 = &unk_2783B18F8;
    v6 = v3;
    v17 = v6;
    v7 = [v5 bs_firstObjectPassingTest:&v13];
    if (v7)
    {
      v8 = v7;
      v9 = SBLogSystemActionControl();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        actionCopy = action;
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) found running executor %{public}@ to use for action: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v9 = *(action + 32);
      newExecutor = [v9 executorForSystemAction:v6];
      if (!newExecutor)
      {
        newExecutor = [v6 newExecutor];
        if (!newExecutor)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) cannot preview selected action '%@' without an executor dataSource: %@", action, v6, v9, v13, v14, v15, v16];;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(SBSystemActionControl *)sel__executorForSystemAction_ _executorForSystemAction:action, v12];
          }

          [v12 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x21F048C20);
        }
      }

      v8 = newExecutor;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_cancelPreviewingSelectedActionFromSource:(uint64_t)source
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (source)
  {
    if (![v3 length])
    {
      [SBSystemActionControl _cancelPreviewingSelectedActionFromSource:?];
    }

    v5 = *(source + 72);
    v6 = v5 != 0;
    if (v5)
    {
      v8 = SBLogSystemActionControl();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        sourceCopy = source;
        v14 = 2114;
        v15 = v4;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@) Cancelling previewing selected action from source '%{public}@'", &v12, 0x16u);
      }

      systemAction = [v5 systemAction];
      [(SBSystemActionControl *)source _cancelCameraPrewarmIfNecessaryForAction:systemAction];
      [*(source + 80) invalidate];
      v10 = *(source + 80);
      *(source + 80) = 0;

      [v5 cancelPreviewing];
      v11 = *(source + 72);
      *(source + 72) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)performSelectedActionFromSource:(void *)source withContext:
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    if (![v5 length])
    {
      [SBSystemActionControl performSelectedActionFromSource:? withContext:?];
    }

    if (!sourceCopy)
    {
      [SBSystemActionControl performSelectedActionFromSource:? withContext:?];
    }

    v7 = SBLogSystemActionControl();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy4 = self;
      v35 = 2114;
      v36 = v5;
      v37 = 2114;
      v38 = sourceCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) requested to perform selected action from source '%{public}@' with context: %{public}@", buf, 0x20u);
    }

    v8 = *(self + 72);
    if (v8)
    {
      authenticator = [(SBHomeScreenConfigurationServer *)sourceCopy authenticator];
      if ([(SBCameraActivationManager *)authenticator workspace]== 1)
      {
        systemAction = [v8 systemAction];
        shouldBePerformedWhenSuppressed = [systemAction shouldBePerformedWhenSuppressed];

        if ((shouldBePerformedWhenSuppressed & 1) == 0)
        {
          v12 = SBLogSystemActionSuppression();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            systemAction2 = [v8 systemAction];
            authenticator2 = [(SBHomeScreenConfigurationServer *)sourceCopy authenticator];
            *buf = 138543874;
            selfCopy4 = self;
            v35 = 2114;
            v36 = systemAction2;
            v37 = 2114;
            v38 = authenticator2;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) Suppressing action: %{public}@, suppression status: %{public}@", buf, 0x20u);
          }

          [(SBSystemActionControl *)self _cancelPreviewingSelectedActionFromSource:v5];
          v15 = +[SBSystemActionAnalyticsTracker sharedTracker];
          systemAction3 = [v8 systemAction];
          authenticator3 = [(SBHomeScreenConfigurationServer *)sourceCopy authenticator];
          [(SBSystemActionAnalyticsTracker *)v15 trackInteractionWithType:systemAction3 forAction:authenticator3 suppressionStatus:?];

          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = *(self + 72);
      *(self + 72) = 0;

      v19 = *(self + 24);
      if (v19)
      {
        [v19 addObject:v8];
      }

      else
      {
        v20 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
        v21 = *(self + 24);
        *(self + 24) = v20;
      }

      systemAction4 = [v8 systemAction];
      if (!systemAction4)
      {
        [SBSystemActionControl performSelectedActionFromSource:? withContext:?];
      }

      v23 = SBLogSystemActionControl();
      if (os_signpost_enabled(v23))
      {
        *buf = 138543874;
        selfCopy4 = self;
        v35 = 2114;
        v36 = systemAction4;
        v37 = 2114;
        v38 = v8;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_SYSTEM_ACTION_PERFORM_EXECUTION", "(%{public}@) performing action '%{public}@' with executor '%{public}@'", buf, 0x20u);
      }

      kdebug_trace();
      v24 = SBLogSystemActionControl();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy4 = self;
        v35 = 2114;
        v36 = systemAction4;
        v37 = 2114;
        v38 = v8;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "(%{public}@) performing action '%{public}@' with executor '%{public}@'", buf, 0x20u);
      }

      v25 = +[SBSystemActionAnalyticsTracker sharedTracker];
      authenticator4 = [(SBHomeScreenConfigurationServer *)sourceCopy authenticator];
      [(SBSystemActionAnalyticsTracker *)v25 trackInteractionWithType:systemAction4 forAction:authenticator4 suppressionStatus:?];

      [(SBSystemActionControl *)self _noteWillPerformAction:systemAction4];
      v27 = [(SBSystemActionControl *)self _executionHandlerForExecutor:v8];
      objc_initWeak(buf, self);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __69__SBSystemActionControl_performSelectedActionFromSource_withContext___block_invoke;
      v30[3] = &unk_2783B18D0;
      objc_copyWeak(&v32, buf);
      v28 = systemAction4;
      v31 = v28;
      self = [v8 executeWithContext:sourceCopy executionHandler:v27 completion:v30];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);

      goto LABEL_24;
    }

    [SBSystemActionControl performSelectedActionFromSource:self withContext:?];
LABEL_13:
    self = 0;
LABEL_24:
  }

  return self;
}

void __69__SBSystemActionControl_performSelectedActionFromSource_withContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBSystemActionControl *)WeakRetained _executor:v6 didFinishPerformingAction:*(a1 + 32) withResult:v5];
}

- (BOOL)systemActionCoachingController:(id)controller canPresentCoachingForAction:(id)action
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  configuredAction = [actionCopy configuredAction];
  sectionIdentifier = [configuredAction sectionIdentifier];
  v8 = [sectionIdentifier isEqualToString:@"Shortcuts"];

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_runningExecutors;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          systemAction = [*(*(&v18 + 1) + 8 * i) systemAction];
          v15 = [systemAction isEqual:actionCopy];

          if (v15)
          {
            v16 = 0;
            goto LABEL_13;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_13:
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)systemActionDataSource:(id)source didUpdateSelectedAction:(id)action
{
  v12 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v6 = SBLogSystemActionControl();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = actionCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) received updated selected action: %{public}@", &v8, 0x16u);
  }

  [(SBSystemActionControl *)self _configureWithSelectedAction];
  v7 = +[SBSystemActionAnalyticsTracker sharedTracker];
  [(SBSystemActionAnalyticsTracker *)v7 trackSelectedActionChanged:actionCopy];
}

uint64_t __50__SBSystemActionControl__executorForSystemAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 canBeExecuted])
  {
    v4 = [v3 systemAction];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __54__SBSystemActionControl__executionHandlerForExecutor___block_invoke_134(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = SBSystemActionExecutionErrorCreate(2, @"Post-boot authentication cancelled or failed");
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (uint64_t)selectedActionAnalyticsData
{
  if (!self)
  {
    return 0;
  }

  selectedSystemAction = [*(self + 32) selectedSystemAction];
  analyticsData = [selectedSystemAction analyticsData];

  return analyticsData;
}

- (void)addObserver:(uint64_t)observer
{
  v3 = a2;
  if (observer)
  {
    v4 = *(observer + 8);
    v7 = v3;
    if (!v4)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = *(observer + 8);
      *(observer + 8) = weakObjectsHashTable;

      v4 = *(observer + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)removeObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 8) removeObject:a2];
  }

  return result;
}

- (void)addSystemActionValidator:(uint64_t)validator
{
  v3 = a2;
  if (validator)
  {
    v4 = *(validator + 16);
    v7 = v3;
    if (!v4)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = *(validator + 16);
      *(validator + 16) = weakObjectsHashTable;

      v4 = *(validator + 16);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)isSelectedActionHostedByApplicationWithBundleIdentifier:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 32);
    v3 = a2;
    selectedSystemAction = [v2 selectedSystemAction];
    hostBundleIdentifier = [selectedSystemAction hostBundleIdentifier];

    v6 = [v3 isEqualToString:hostBundleIdentifier];
    return v6;
  }

  return result;
}

- (BOOL)_shouldPerformAction:(void *)action withSuppressionStatus:(__CFString *)status reason:(_BYTE *)reason isSuppressed:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  actionCopy = action;
  if (!self)
  {
    v22 = 0;
    goto LABEL_22;
  }

  lockOutController = [SBApp lockOutController];
  if ([lockOutController isBlocked])
  {
    v12 = @"device is blocked out";
    goto LABEL_19;
  }

  if ([lockOutController isProximityReaderBlocked])
  {
    v12 = @"device is prox reader locked out";
    goto LABEL_19;
  }

  v39 = lockOutController;
  v13 = +[SBSOSEventHandler sharedInstance];
  isSOSActive = [v13 isSOSActive];

  if (isSOSActive)
  {
    v12 = @"SOS is active";
LABEL_18:
    lockOutController = v39;
    goto LABEL_19;
  }

  v15 = +[SBWorkspace mainWorkspace];
  isPowerDownTransientOverlayTopmost = [v15 isPowerDownTransientOverlayTopmost];

  if (isPowerDownTransientOverlayTopmost)
  {
    v12 = @"Power down overlay is active";
    goto LABEL_18;
  }

  lockOutController = v39;
  if (actionCopy && -[SBCameraActivationManager workspace](actionCopy) == 1 && ([v9 shouldBePerformedWhenSuppressed] & 1) == 0)
  {
    actionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"suppression status: %@", actionCopy];
    v12 = actionCopy;
    if (reason)
    {
      *reason = 1;
    }

    if (actionCopy)
    {
      goto LABEL_19;
    }
  }

  configuredAction = [v9 configuredAction];
  sectionIdentifier = [configuredAction sectionIdentifier];
  v20 = [sectionIdentifier isEqualToString:@"Nothing"];

  if (v20)
  {
    v12 = @"don't perform the nothing action";
    goto LABEL_18;
  }

  if (([v9 canBePerformedInSetupMode] & 1) == 0)
  {
    v24 = +[SBSetupManager sharedInstance];
    isInSetupMode = [v24 isInSetupMode];

    if (isInSetupMode)
    {
      v12 = @"device is in setup mode";
      goto LABEL_18;
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = *(self + 16);
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    statusCopy = status;
    v38 = actionCopy;
    v12 = 0;
    v29 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if (([*(*(&v40 + 1) + 8 * i) shouldPreviewSystemAction:v9] & 1) == 0)
        {
          v31 = MEMORY[0x277CCACA8];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [v31 stringWithFormat:@"%@ did not validate previewing the action", v33];

          v12 = v34;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v28);

    status = statusCopy;
    actionCopy = v38;
    lockOutController = v39;
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {

    lockOutController = v39;
  }

  if ([v9 hostBundleRequiresValidation])
  {
    hostBundleIdentifier = [v9 hostBundleIdentifier];
    v36 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:hostBundleIdentifier allowPlaceholder:0 error:0];
    if (v36)
    {
      v12 = 0;
    }

    else
    {
      v12 = @"host bundle does not exist";
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_19:
  if (status)
  {
    v21 = v12;
    *status = v12;
  }

  v44 = v12 == 0;

  v22 = v44;
LABEL_22:

  return v22;
}

- (void)_noteWillPreviewAction:(uint64_t)action
{
  if (action)
  {
    v3 = a2;
    [(SBSystemActionControl *)action _prewarmCameraIfNecessaryForAction:v3];
    [(SBSystemActionControl *)action _activateFeedbackForAction:v3];
  }
}

- (void)_noteFailedToPreviewAction:(uint64_t)action
{
  if (action)
  {
    [(SBSystemActionControl *)action _cancelCameraPrewarmIfNecessaryForAction:a2];
    [*(action + 80) invalidate];
    v3 = *(action + 80);
    *(action + 80) = 0;
  }
}

- (void)_noteWillPerformAction:(uint64_t)action
{
  v10 = a2;
  if (action)
  {
    [(SBSystemActionControl *)action _playFeedbackForAction:v10];
    [*(action + 80) invalidate];
    v3 = *(action + 80);
    *(action + 80) = 0;

    if ([v10 shouldWakeScreenWhenPerformed])
    {
      windowScene = [*(action + 40) windowScene];
      lockScreenManager = [windowScene lockScreenManager];
      v6 = MEMORY[0x277CCACA8];
      configuredAction = [v10 configuredAction];
      identifier = [configuredAction identifier];
      v9 = [v6 stringWithFormat:@"Performing action: %@", identifier];

      [lockScreenManager requestUserAttentionScreenWakeFromSource:39 reason:v9];
    }
  }
}

- (id)_executionHandlerForExecutor:(void *)executor
{
  v3 = a2;
  v4 = v3;
  if (executor)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __54__SBSystemActionControl__executionHandlerForExecutor___block_invoke;
    v10 = &unk_2783B1920;
    executorCopy = executor;
    v12 = v3;
    v5 = MEMORY[0x223D6F7F0](&v7);
    executor = [v5 copy];
  }

  return executor;
}

- (void)_executor:(void *)_executor didFinishPerformingAction:(void *)action withResult:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  _executorCopy = _executor;
  actionCopy = action;
  if (self)
  {
    if ([*(self + 24) containsObject:v7])
    {
      [v7 executionStartTime];
      v11 = v10;
      [v7 executionEndTime];
      v13 = v12;
      v14 = SBLogSystemActionControl();
      if (os_signpost_enabled(v14))
      {
        systemAction = [v7 systemAction];
        OUTLINED_FUNCTION_5_2();
        v24 = v16;
        v25 = v17;
        *v26 = v7;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_SYSTEM_ACTION_PERFORM_EXECUTION", "(%{public}@) performing action '%{public}@' with executor '%{public}@'", &v21, 0x20u);
      }

      v18 = v13 - v11;

      kdebug_trace();
      v19 = SBLogSystemActionControl();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138544386;
        selfCopy = self;
        v23 = 2114;
        v24 = v7;
        v25 = 1024;
        *v26 = actionCopy == 0;
        *&v26[4] = 2048;
        *&v26[6] = v18;
        v27 = 2114;
        v28 = actionCopy;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) executor '%{public}@' did finish successfully: %{BOOL}u\n    executionTime: %fs\n    error: %{public}@", &v21, 0x30u);
      }

      [*(self + 24) removeObject:v7];
      v20 = +[SBSystemActionAnalyticsTracker sharedTracker];
      [(SBSystemActionAnalyticsTracker *)v20 trackPerformedAction:_executorCopy executionTime:v18];
    }

    else
    {
      v20 = SBLogSystemActionControl();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_5_2();
        v24 = v7;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "(%{public}@) skipping processing finished result from no-longer-tracked executor '%{public}@'", &v21, 0x16u);
      }
    }
  }
}

- (void)_prewarmCameraIfNecessaryForAction:(uint64_t)action
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (action && [v3 isCameraCaptureAction])
  {
    v5 = +[SBCaptureApplicationCenter sharedInstance];
    hostBundleIdentifier = [v4 hostBundleIdentifier];
    v7 = [v5 predictedPrewarmBundleIdentifierForApplicationBundleIdentifier:hostBundleIdentifier];

    v8 = SBLogSystemActionControl();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      actionCopy = action;
      v20 = 2114;
      v21 = v7;
      OUTLINED_FUNCTION_3_11(&dword_21ED4E000, v9, v10, "(%{public}@) prewarming camera for bundleID: '%{public}@' ", &v18);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_absolute_time()];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:mach_continuous_time()];
    v13 = *MEMORY[0x277CE58C0];
    v14 = *MEMORY[0x277CE5910];
    v16[0] = *MEMORY[0x277CE5908];
    v16[1] = v14;
    v17[0] = v13;
    v17[1] = v11;
    v16[2] = *MEMORY[0x277CE5920];
    v17[2] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    AVCapturePrewarmWithOptions();
  }
}

- (void)_activateFeedbackForAction:(uint64_t)action
{
  if (action)
  {
    v6 = [(SBSystemActionControl *)action _feedbackForAction:a2];
    v3 = *(action + 64);
    v4 = [v3 activateSound:v6 forReason:@"SBSystemAction-Previewing"];
    v5 = *(action + 80);
    *(action + 80) = v4;
  }
}

- (void)_cancelCameraPrewarmIfNecessaryForAction:(uint64_t)action
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (action && [v3 isCameraCaptureAction])
  {
    hostBundleIdentifier = [v4 hostBundleIdentifier];
    v6 = SBLogSystemActionControl();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      actionCopy = action;
      v14 = 2114;
      v15 = hostBundleIdentifier;
      OUTLINED_FUNCTION_3_11(&dword_21ED4E000, v7, v8, "(%{public}@) cancelling prewarming camera for bundleID: '%{public}@' ", &v12);
    }

    v10 = *MEMORY[0x277CE5908];
    v11 = *MEMORY[0x277CE58C0];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    MEMORY[0x223D6A9B0](hostBundleIdentifier, v9);
  }
}

- (void)_deactivateFeedbackForAction:(uint64_t)action
{
  if (action)
  {
    [*(action + 80) invalidate];
    v2 = *(action + 80);
    *(action + 80) = 0;
  }
}

- (void)_playFeedbackForAction:(uint64_t)action
{
  if (action)
  {
    v3 = [(SBSystemActionControl *)action _feedbackForAction:a2];
    [*(action + 64) playSoundWithDefaultEnvironment:v3];
  }
}

void __54__SBSystemActionControl__executionHandlerForExecutor___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  v5 = v4;
  if ([*(a1 + 40) requiresAuthenticationAtLeastOnceSinceBootBeforeExecution] && (objc_msgSend(v5, "hasAuthenticatedAtLeastOnceSinceBoot") & 1) == 0)
  {
    v6 = SBLogSystemActionControl();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v20 = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      OUTLINED_FUNCTION_3_11(&dword_21ED4E000, v7, v8, "(%{public}@) requesting device authentication for executor '%{public}@'", &v20);
    }

    v11 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v11 setSource:39];
    [(SBLockScreenUnlockRequest *)v11 setIntent:2];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(SBLockScreenUnlockRequest *)v11 setName:v13];

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 40);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 windowScene];
    v17 = [v16 lockScreenManager];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SBSystemActionControl__executionHandlerForExecutor___block_invoke_134;
    v18[3] = &unk_2783A9C70;
    v19 = v3;
    [v17 unlockWithRequest:v11 completion:v18];
  }

  else
  {
    (*(v3 + 2))(v3, 1, 0);
  }
}

- (void)_notifyDidUpdateActionInteractionConfiguration
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allObjects = [*(self + 8) allObjects];
    v3 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v7 + 1) + 8 * v6++) systemActionControlDidUpdateActionInteractionConfiguration:self];
        }

        while (v4 != v6);
        v4 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (id)_feedbackForAction:(uint64_t)action
{
  if (action)
  {
    v2 = [*(action + 40) customSoundForPerformingAction:a2];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [MEMORY[0x277D679C8] soundWithFeedbackEventType:1022];
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithDataSource:(char *)a1 previewCoordinator:authenticationStatusProvider:coachingController:soundController:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"soundController != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataSource:(char *)a1 previewCoordinator:authenticationStatusProvider:coachingController:soundController:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"coachingController != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataSource:(char *)a1 previewCoordinator:authenticationStatusProvider:coachingController:soundController:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"authenticationStatusProvider != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataSource:(char *)a1 previewCoordinator:authenticationStatusProvider:coachingController:soundController:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"previewCoordinator != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataSource:(char *)a1 previewCoordinator:authenticationStatusProvider:coachingController:soundController:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"dataSource != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)previewSelectedActionFromSource:(char *)a1 withSuppressionStatus:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[source length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_executorForSystemAction:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138544642;
  v9 = v4;
  OUTLINED_FUNCTION_4_0();
  v10 = @"SBSystemActionControl.m";
  v11 = 1024;
  v12 = 443;
  v13 = v7;
  v14 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_cancelPreviewingSelectedActionFromSource:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[source length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)performSelectedActionFromSource:(char *)a1 withContext:.cold.1(char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected to get a valid action at this point"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    v8 = a1;
    OUTLINED_FUNCTION_4_0();
    v9 = @"SBSystemActionControl.m";
    v10 = 1024;
    v11 = 208;
    v12 = v5;
    v13 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  v6 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)performSelectedActionFromSource:(char *)a1 withContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"context != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)performSelectedActionFromSource:(char *)a1 withContext:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[source length] > 0", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)performSelectedActionFromSource:(uint64_t)a1 withContext:.cold.4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemActionControl();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) no action to perform since no action is previewing", &v3, 0xCu);
  }
}

@end