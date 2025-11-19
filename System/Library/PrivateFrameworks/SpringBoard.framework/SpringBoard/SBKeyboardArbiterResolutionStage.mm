@interface SBKeyboardArbiterResolutionStage
- (SBKeyboardArbiterResolutionStageDelegate)delegate;
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5;
@end

@implementation SBKeyboardArbiterResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5
{
  v22 = a3;
  v8 = a4;
  v9 = [v22 auditHistory];
  [v9 addItemWithFormat:@"-- SBKeyboardArbiterResolutionStage --"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBKeyboardArbiterResolutionStage resolveKeyboardFocusPolicy:a2 context:self stop:?];
  }

  v11 = WeakRetained;
  v12 = [v22 keyboardFocusTarget];
  v13 = [v12 sceneIdentityToken];
  v14 = [v11 shouldPreventFocusForSceneWithIdentityToken:v13];

  if (v14)
  {
    v15 = [v22 auditHistory];
    [v15 addItemWithFormat:@"preventFocusForTarget, falling back to caches"];

    v16 = [v11 mostRecentKeyboardArbiterSuggestedTarget];
    v17 = [v12 isEqual:v16];
  }

  else
  {
    if (v12)
    {
      goto LABEL_11;
    }

    v16 = [v11 mostRecentKeyboardArbiterSuggestedTarget];
    v17 = 0;
  }

  v18 = [v22 auditHistory];
  v19 = v18;
  if (!v16 || (v17 & 1) != 0)
  {
    [v18 addItemWithFormat:@"no keyboard arbiter suggestion, falling back to SB scene"];

    v20 = objc_loadWeakRetained(&self->_sceneProvider);
    v21 = [v20 springBoardSceneFocusTarget];
    [v22 setKeyboardFocusTarget:v21];
  }

  else
  {
    [v18 addItemWithFormat:@"no keyboard arbiter suggestion, falling back to MRU suggestion"];

    [v22 setKeyboardFocusTarget:v16];
  }

  [v22 setAdvicePolicy:2];

LABEL_11:
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

- (SBKeyboardArbiterResolutionStageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resolveKeyboardFocusPolicy:(const char *)a1 context:(uint64_t)a2 stop:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate != ((void *)0)"];
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
    v15 = @"SBKeyboardArbiterResolutionStage.m";
    v16 = 1024;
    v17 = 30;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end