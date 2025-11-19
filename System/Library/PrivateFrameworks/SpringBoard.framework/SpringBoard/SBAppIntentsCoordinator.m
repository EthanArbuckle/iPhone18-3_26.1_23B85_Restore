@interface SBAppIntentsCoordinator
- (id)_actionReasonForAppIntent:(uint64_t)a1;
- (id)_previewReasonForActionIdentifier:(void *)a1;
- (id)initWithClientCoordinator:(void *)a3 cameraActivationManager:(void *)a4 flashlightActivityManager:(void *)a5 focusActivityManager:(void *)a6 ringerControl:;
- (id)showPreviewForAction:(id)a3 withContext:(id)a4;
- (id)soundForPerformingActionWithIdentifier:(id)a3;
- (id)systemActionDataSource:(id)a3 overrideActionForAction:(id)a4;
- (uint64_t)_performFocusAppIntent:(uint64_t)a1;
- (uint64_t)_performOpenCameraAppIntent:(void *)a3 withCompletion:;
- (uint64_t)_performToggleFlashlightAppIntent:(uint64_t)result;
- (void)_performAppIntent:(void *)a3 locallyWithCompletion:;
- (void)_performAppIntent:(void *)a3 withCompletion:;
@end

@implementation SBAppIntentsCoordinator

- (id)initWithClientCoordinator:(void *)a3 cameraActivationManager:(void *)a4 flashlightActivityManager:(void *)a5 focusActivityManager:(void *)a6 ringerControl:
{
  v25[3] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v23 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if (!v12)
    {
      [SBAppIntentsCoordinator initWithClientCoordinator:? cameraActivationManager:? flashlightActivityManager:? focusActivityManager:? ringerControl:?];
    }

    if (!v23)
    {
      [SBAppIntentsCoordinator initWithClientCoordinator:? cameraActivationManager:? flashlightActivityManager:? focusActivityManager:? ringerControl:?];
    }

    if (!v13)
    {
      [SBAppIntentsCoordinator initWithClientCoordinator:? cameraActivationManager:? flashlightActivityManager:? focusActivityManager:? ringerControl:?];
    }

    if (!v14)
    {
      [SBAppIntentsCoordinator initWithClientCoordinator:? cameraActivationManager:? flashlightActivityManager:? focusActivityManager:? ringerControl:?];
    }

    if (!v15)
    {
      [SBAppIntentsCoordinator initWithClientCoordinator:? cameraActivationManager:? flashlightActivityManager:? focusActivityManager:? ringerControl:?];
    }

    v24.receiver = a1;
    v24.super_class = SBAppIntentsCoordinator;
    v16 = objc_msgSendSuper2(&v24, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 2, a2);
      [v12 setDelegate:a1];
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      objc_storeStrong(a1 + 5, a5);
      objc_storeStrong(a1 + 6, a6);
      v17 = [@"com.apple.springboard" stringByAppendingFormat:@".%@", *MEMORY[0x277D66968]];
      v25[0] = v17;
      v18 = [@"com.apple.springboard" stringByAppendingFormat:@".%@", *MEMORY[0x277D66958]];
      v19 = *MEMORY[0x277D7A578];
      v25[1] = v18;
      v25[2] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
      v21 = a1[1];
      a1[1] = v20;
    }
  }

  return a1;
}

- (id)showPreviewForAction:(id)a3 withContext:(id)a4
{
  v5 = [a3 configuredAction];
  v6 = [v5 identifier];
  v7 = [(SBAppIntentsCoordinator *)self _previewReasonForActionIdentifier:v6];
  if ([v6 hasSuffix:*MEMORY[0x277D66968]])
  {
    if (self)
    {
      flashlightActivityManager = self->_flashlightActivityManager;
    }

    else
    {
      flashlightActivityManager = 0;
    }

    v9 = [(SBFlashlightActivityManager *)flashlightActivityManager previewFlashlightActivityForReason:v7];
LABEL_10:
    v11 = v9;
    goto LABEL_12;
  }

  if ([v6 hasSuffix:*MEMORY[0x277D66958]])
  {
    [(SBAppIntentsCoordinator *)self showPreviewForAction:v5 withContext:v7, &v13];
    v11 = v13;
  }

  else
  {
    if ([v6 isEqualToString:*MEMORY[0x277D7A578]])
    {
      if (self)
      {
        ringerControl = self->_ringerControl;
      }

      else
      {
        ringerControl = 0;
      }

      v9 = [(SBRingerControl *)ringerControl previewRingerStateForReason:v7];
      goto LABEL_10;
    }

    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (id)soundForPerformingActionWithIdentifier:(id)a3
{
  if ([a3 isEqualToString:*MEMORY[0x277D7A578]])
  {
    [(SBAppIntentsCoordinator *)self soundForPerformingActionWithIdentifier:?];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)systemActionDataSource:(id)a3 overrideActionForAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 configuredAction];
  v9 = [v8 sectionIdentifier];
  v10 = [v7 instanceIdentity];
  objc_initWeak(&location, self);
  if ([v9 isEqualToString:@"Camera"])
  {
    v27 = 0;
    v28 = 0;
    v11 = [v8 sb_configuredIntentAction];
    [(WFConfiguredStaccatoIntentAction *)v11 sb_getCameraCaptureMode:&v27 andCaptureDevice:?];

    v12 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke;
    v25[3] = &unk_2783BCA58;
    v26[1] = v27;
    v26[2] = v28;
    objc_copyWeak(v26, &location);
    v13 = [SBBlockSystemAction localActionWithConfiguredAction:v8 instanceIdentity:v10 actionBlock:v25];
LABEL_5:
    v14 = v13;
    objc_destroyWeak(v12 + 4);
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"Flashlight"])
  {
    v12 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke_2;
    v23[3] = &unk_2783BCA80;
    objc_copyWeak(&v24, &location);
    v13 = [SBBlockSystemAction localActionWithConfiguredAction:v8 instanceIdentity:v10 actionBlock:v23];
    goto LABEL_5;
  }

  if ([v9 isEqualToString:@"Focus"])
  {
    v16 = [v8 sb_configuredIntentAction];
    v17 = [(WFConfiguredStaccatoIntentAction *)v16 sb_focusModeIdentifier];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke_3;
    v20[3] = &unk_2783BCAA8;
    v18 = v17;
    v21 = v18;
    objc_copyWeak(&v22, &location);
    v14 = [SBBlockSystemAction localActionWithConfiguredAction:v8 instanceIdentity:v10 actionBlock:v20];
    objc_destroyWeak(&v22);

LABEL_15:
    goto LABEL_6;
  }

  if ([v9 isEqualToString:@"SilentMode"])
  {
    if (self)
    {
      ringerControl = self->_ringerControl;
    }

    else
    {
      ringerControl = 0;
    }

    v18 = ringerControl;
    v14 = [SBBlockSystemAction toggleSilentModeActionWithRingerControl:v18 instanceIdentity:v10 name:@"Local"];
    goto LABEL_15;
  }

  v14 = 0;
LABEL_6:
  objc_destroyWeak(&location);

  return v14;
}

void __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D66950];
  v6 = a3;
  v7 = a2;
  v9 = [[v5 alloc] initWithCaptureDevice:*(a1 + 40) captureMode:*(a1 + 48) systemContext:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBAppIntentsCoordinator *)WeakRetained _performAppIntent:v9 locallyWithCompletion:v6];
}

void __67__SBAppIntentsCoordinator__performAppIntent_locallyWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = SBSystemActionExecutionErrorCreate(0, @"Local action failed");
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

uint64_t __70__SBAppIntentsCoordinator__performOpenCameraAppIntent_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (id)_previewReasonForActionIdentifier:(void *)a1
{
  if (a1)
  {
    a1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Action Preview", a2];
    v2 = vars8;
  }

  return a1;
}

- (void)_performAppIntent:(void *)a3 locallyWithCompletion:
{
  v5 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_1_4();
    v7 = 3221225472;
    v8 = __67__SBAppIntentsCoordinator__performAppIntent_locallyWithCompletion___block_invoke;
    v9 = &unk_2783A9C70;
    v10 = v5;
    [(SBAppIntentsCoordinator *)a1 _performAppIntent:a2 withCompletion:v6];
  }
}

void __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D66930];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = [v8 initWithIdentifier:*MEMORY[0x277D66968] systemContext:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBAppIntentsCoordinator *)WeakRetained _performAppIntent:v10 locallyWithCompletion:v6];
}

void __74__SBAppIntentsCoordinator_systemActionDataSource_overrideActionForAction___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D66948];
  v6 = a3;
  v7 = a2;
  v9 = [[v5 alloc] initWithModeIdentifier:*(a1 + 32) systemContext:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SBAppIntentsCoordinator *)WeakRetained _performAppIntent:v9 locallyWithCompletion:v6];
}

- (void)_performAppIntent:(void *)a3 withCompletion:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [v9 identifier];
    if ([v6 isEqualToString:*MEMORY[0x277D66960]])
    {
      [(SBAppIntentsCoordinator *)a1 _performOpenCameraAppIntent:v9 withCompletion:v5];
      goto LABEL_7;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D66968]])
    {
      v8 = [(SBAppIntentsCoordinator *)a1 _performToggleFlashlightAppIntent:v9];
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x277D66958]])
      {
        v7 = 0;
        if (!v5)
        {
LABEL_7:

          goto LABEL_8;
        }

LABEL_6:
        (*(v5 + 2))(v5, v7);
        goto LABEL_7;
      }

      v8 = [(SBAppIntentsCoordinator *)a1 _performFocusAppIntent:v9];
    }

    v7 = v8;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
}

- (uint64_t)_performOpenCameraAppIntent:(void *)a3 withCompletion:
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    [v6 captureDevice];
    v7 = NSStringFromSBINCameraCaptureDevice();
    [v6 captureMode];
    v8 = NSStringFromSBINCameraCaptureMode();
    v9 = NSURLForCameraActivationWithCaptureConfiguration(v7, v8);
    v10 = [v6 systemContext];

    v11 = *(a1 + 24);
    v12 = [v10 actionSource];
    v13 = 67;
    if (v12 != 1)
    {
      v13 = 0;
    }

    if (v12 == 2)
    {
      v14 = 13;
    }

    else
    {
      v14 = v13;
    }

    OUTLINED_FUNCTION_1_4();
    v18 = 3221225472;
    v19 = __70__SBAppIntentsCoordinator__performOpenCameraAppIntent_withCompletion___block_invoke;
    v20 = &unk_2783AE778;
    v21 = v5;
    v15 = [(SBCameraActivationManager *)v11 activateCaptureApplicationWithBundleID:v9 URL:0 launchType:v14 fromSource:0 withPreludeAnimationToken:v17 completion:?];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)_performToggleFlashlightAppIntent:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    v5 = [(SBAppIntentsCoordinator *)v3 _actionReasonForAppIntent:a2];
    v6 = [(SBFlashlightActivityManager *)v4 toggleFlashlightForReason:v5];

    return v6;
  }

  return result;
}

- (uint64_t)_performFocusAppIntent:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    v5 = [v3 modeIdentifier];
    if ([v5 isEqualToString:*MEMORY[0x277D66970]])
    {
      a1 = [(SBFocusActivityManager *)v4 toggleActivityPickerPresentation];
    }

    else
    {
      v7 = [(SBAppIntentsCoordinator *)a1 _actionReasonForAppIntent:v3];
      a1 = [(SBFocusActivityManager *)v4 toggleFocusWithModeIdentifier:v5 withReason:v7];
    }
  }

  return a1;
}

- (id)_actionReasonForAppIntent:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [a2 identifier];
    v4 = [v2 stringWithFormat:@"%@ App Intent", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithClientCoordinator:(char *)a1 cameraActivationManager:flashlightActivityManager:focusActivityManager:ringerControl:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"ringerControl != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientCoordinator:(char *)a1 cameraActivationManager:flashlightActivityManager:focusActivityManager:ringerControl:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"focusActivityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientCoordinator:(char *)a1 cameraActivationManager:flashlightActivityManager:focusActivityManager:ringerControl:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"flashlightActivityManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientCoordinator:(char *)a1 cameraActivationManager:flashlightActivityManager:focusActivityManager:ringerControl:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"cameraActivationManager != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithClientCoordinator:(char *)a1 cameraActivationManager:flashlightActivityManager:focusActivityManager:ringerControl:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"clientCoordinator != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)showPreviewForAction:(void *)a3 withContext:(uint64_t *)a4 .cold.1(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a1)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [a2 sb_configuredIntentAction];
  v10 = [(WFConfiguredStaccatoIntentAction *)v9 sb_focusModeIdentifier];

  *a4 = [(SBFocusActivityManager *)v8 previewFocusWithModeIdentifier:v10 withReason:a3];
}

- (void)soundForPerformingActionWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  *a2 = [v4 soundForRingerMuted:-[SBRingerControl isRingerMuted](v4) ^ 1];
}

@end