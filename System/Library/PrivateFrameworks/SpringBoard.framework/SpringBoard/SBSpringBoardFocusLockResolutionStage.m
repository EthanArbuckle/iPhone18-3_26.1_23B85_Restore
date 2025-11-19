@interface SBSpringBoardFocusLockResolutionStage
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (SBSpringBoardFocusLockResolutionStageDelegate)delegate;
- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5;
@end

@implementation SBSpringBoardFocusLockResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);
  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [v7 auditHistory];
  [v11 addItemWithFormat:@"-- SBSpringBoardFocusLockResolutionStage --"];

  v12 = [v10 springBoardFocusLockReasons];
  if ([v12 count])
  {
    v13 = [v7 auditHistory];
    [v13 addItemWithFormat:@"focus lock found"];

    v14 = [v8 zStackResolver];
    v15 = [v14 settingsOfParticipantWithIdentifier:29];
    v39 = v12;
    if ([v15 allowsKeyboardArbiterToDetermineFocusTarget])
    {
      v16 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "policy: focus lock -- allow KA to set target", buf, 2u);
      }

      v17 = 1;
    }

    else
    {
      v16 = [WeakRetained springBoardSceneFocusTarget];
      [v7 setKeyboardFocusTarget:v16];
      v18 = [v7 auditHistory];
      [v18 addItemWithFormat:@"SB target %@", v16];

      v19 = [v7 keyboardFocusTarget];
      if (v19)
      {
        v20 = v19;
        v21 = v10;
        v22 = v8;
        v23 = v14;
        v38 = WeakRetained;
        v24 = [WeakRetained springBoardSceneFocusTarget];
        v25 = [v7 keyboardFocusTarget];
        v26 = BSEqualObjects();

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = 1;
          [v7 setShouldSuppressRemoteDeferring:1];
          v28 = [v7 auditHistory];
          [v28 addItemWithFormat:@"remote deferring suppresssd"];
        }

        v14 = v23;
        v8 = v22;
        v10 = v21;
        WeakRetained = v38;
        v12 = v39;
      }

      else
      {
        v27 = 0;
      }

      v29 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = v16;
        v42 = 1024;
        v43 = v27;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "policy: focus lock -- sbTarget:%{public}@ suppressRemoteDeferring:%{BOOL}u", buf, 0x12u);
      }

      v17 = 0;
    }

    [v7 setSuppressCameraButtonDeferringToApplications:{objc_msgSend(v15, "allowCameraButtonDeferringWhileFocusLocked") ^ 1}];
    v30 = [v15 overrideKeyboardFocusTarget];
    if (v30)
    {
      v31 = v10;
      v32 = v8;
      v33 = v14;
      v34 = WeakRetained;
      [v7 setKeyboardFocusTarget:v30];
      v35 = [v7 auditHistory];
      [v35 addItemWithFormat:@"overrideTarget:%@", v30];

      v36 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v41 = v30;
        _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "policy: using override target: %{public}@", buf, 0xCu);
      }

      WeakRetained = v34;
      v14 = v33;
      v8 = v32;
      v10 = v31;
      v12 = v39;
    }
  }

  else
  {
    v17 = 1;
  }

  [v7 setAdvicePolicy:v17];
  v37 = [v7 auditHistory];
  [v37 addItemWithFormat:@"outcome:%@", v7];
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