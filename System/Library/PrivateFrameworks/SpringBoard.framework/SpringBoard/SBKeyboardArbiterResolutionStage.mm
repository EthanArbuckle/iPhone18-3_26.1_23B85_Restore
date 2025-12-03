@interface SBKeyboardArbiterResolutionStage
- (SBKeyboardArbiterResolutionStageDelegate)delegate;
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop;
@end

@implementation SBKeyboardArbiterResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop
{
  policyCopy = policy;
  contextCopy = context;
  auditHistory = [policyCopy auditHistory];
  [auditHistory addItemWithFormat:@"-- SBKeyboardArbiterResolutionStage --"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBKeyboardArbiterResolutionStage resolveKeyboardFocusPolicy:a2 context:self stop:?];
  }

  v11 = WeakRetained;
  keyboardFocusTarget = [policyCopy keyboardFocusTarget];
  sceneIdentityToken = [keyboardFocusTarget sceneIdentityToken];
  v14 = [v11 shouldPreventFocusForSceneWithIdentityToken:sceneIdentityToken];

  if (v14)
  {
    auditHistory2 = [policyCopy auditHistory];
    [auditHistory2 addItemWithFormat:@"preventFocusForTarget, falling back to caches"];

    mostRecentKeyboardArbiterSuggestedTarget = [v11 mostRecentKeyboardArbiterSuggestedTarget];
    v17 = [keyboardFocusTarget isEqual:mostRecentKeyboardArbiterSuggestedTarget];
  }

  else
  {
    if (keyboardFocusTarget)
    {
      goto LABEL_11;
    }

    mostRecentKeyboardArbiterSuggestedTarget = [v11 mostRecentKeyboardArbiterSuggestedTarget];
    v17 = 0;
  }

  auditHistory3 = [policyCopy auditHistory];
  v19 = auditHistory3;
  if (!mostRecentKeyboardArbiterSuggestedTarget || (v17 & 1) != 0)
  {
    [auditHistory3 addItemWithFormat:@"no keyboard arbiter suggestion, falling back to SB scene"];

    v20 = objc_loadWeakRetained(&self->_sceneProvider);
    springBoardSceneFocusTarget = [v20 springBoardSceneFocusTarget];
    [policyCopy setKeyboardFocusTarget:springBoardSceneFocusTarget];
  }

  else
  {
    [auditHistory3 addItemWithFormat:@"no keyboard arbiter suggestion, falling back to MRU suggestion"];

    [policyCopy setKeyboardFocusTarget:mostRecentKeyboardArbiterSuggestedTarget];
  }

  [policyCopy setAdvicePolicy:2];

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