@interface SBSpringBoardFocusLockResolutionStage
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (SBSpringBoardFocusLockResolutionStageDelegate)delegate;
- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop;
@end

@implementation SBSpringBoardFocusLockResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop
{
  v44 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);
  v10 = objc_loadWeakRetained(&self->_delegate);
  auditHistory = [policyCopy auditHistory];
  [auditHistory addItemWithFormat:@"-- SBSpringBoardFocusLockResolutionStage --"];

  springBoardFocusLockReasons = [v10 springBoardFocusLockReasons];
  if ([springBoardFocusLockReasons count])
  {
    auditHistory2 = [policyCopy auditHistory];
    [auditHistory2 addItemWithFormat:@"focus lock found"];

    zStackResolver = [contextCopy zStackResolver];
    v15 = [zStackResolver settingsOfParticipantWithIdentifier:29];
    v39 = springBoardFocusLockReasons;
    if ([v15 allowsKeyboardArbiterToDetermineFocusTarget])
    {
      springBoardSceneFocusTarget = SBLogKeyboardFocus();
      if (os_log_type_enabled(springBoardSceneFocusTarget, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, springBoardSceneFocusTarget, OS_LOG_TYPE_DEFAULT, "policy: focus lock -- allow KA to set target", buf, 2u);
      }

      v17 = 1;
    }

    else
    {
      springBoardSceneFocusTarget = [WeakRetained springBoardSceneFocusTarget];
      [policyCopy setKeyboardFocusTarget:springBoardSceneFocusTarget];
      auditHistory3 = [policyCopy auditHistory];
      [auditHistory3 addItemWithFormat:@"SB target %@", springBoardSceneFocusTarget];

      keyboardFocusTarget = [policyCopy keyboardFocusTarget];
      if (keyboardFocusTarget)
      {
        v20 = keyboardFocusTarget;
        v21 = v10;
        v22 = contextCopy;
        v23 = zStackResolver;
        v38 = WeakRetained;
        springBoardSceneFocusTarget2 = [WeakRetained springBoardSceneFocusTarget];
        keyboardFocusTarget2 = [policyCopy keyboardFocusTarget];
        v26 = BSEqualObjects();

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = 1;
          [policyCopy setShouldSuppressRemoteDeferring:1];
          auditHistory4 = [policyCopy auditHistory];
          [auditHistory4 addItemWithFormat:@"remote deferring suppresssd"];
        }

        zStackResolver = v23;
        contextCopy = v22;
        v10 = v21;
        WeakRetained = v38;
        springBoardFocusLockReasons = v39;
      }

      else
      {
        v27 = 0;
      }

      v29 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = springBoardSceneFocusTarget;
        v42 = 1024;
        v43 = v27;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "policy: focus lock -- sbTarget:%{public}@ suppressRemoteDeferring:%{BOOL}u", buf, 0x12u);
      }

      v17 = 0;
    }

    [policyCopy setSuppressCameraButtonDeferringToApplications:{objc_msgSend(v15, "allowCameraButtonDeferringWhileFocusLocked") ^ 1}];
    overrideKeyboardFocusTarget = [v15 overrideKeyboardFocusTarget];
    if (overrideKeyboardFocusTarget)
    {
      v31 = v10;
      v32 = contextCopy;
      v33 = zStackResolver;
      v34 = WeakRetained;
      [policyCopy setKeyboardFocusTarget:overrideKeyboardFocusTarget];
      auditHistory5 = [policyCopy auditHistory];
      [auditHistory5 addItemWithFormat:@"overrideTarget:%@", overrideKeyboardFocusTarget];

      v36 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = overrideKeyboardFocusTarget;
        _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "policy: using override target: %{public}@", buf, 0xCu);
      }

      WeakRetained = v34;
      zStackResolver = v33;
      contextCopy = v32;
      v10 = v31;
      springBoardFocusLockReasons = v39;
    }
  }

  else
  {
    v17 = 1;
  }

  [policyCopy setAdvicePolicy:v17];
  auditHistory6 = [policyCopy auditHistory];
  [auditHistory6 addItemWithFormat:@"outcome:%@", policyCopy];
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

- (SBSpringBoardFocusLockResolutionStageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end