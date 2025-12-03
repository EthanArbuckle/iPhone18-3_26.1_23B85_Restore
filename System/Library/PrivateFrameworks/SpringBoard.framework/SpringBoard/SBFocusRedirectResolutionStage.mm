@interface SBFocusRedirectResolutionStage
- (SBFocusRedirectResolutionStageDelegate)delegate;
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop;
@end

@implementation SBFocusRedirectResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop
{
  v21 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  auditHistory = [policyCopy auditHistory];
  [auditHistory addItemWithFormat:@"-- SBFocusRedirectResolutionStage --"];

  keyboardFocusTarget = [policyCopy keyboardFocusTarget];
  v10 = [WeakRetained keyboardFocusRedirectionForTarget:keyboardFocusTarget];

  if (v10)
  {
    toToken = [v10 toToken];
    v12 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", toToken, [v10 toProcessIdentifier]);

    [policyCopy setKeyboardFocusTarget:v12];
    [policyCopy setShouldSuppressRemoteDeferring:1];
    auditHistory2 = [policyCopy auditHistory];
    reason = [v10 reason];
    [auditHistory2 addItemWithFormat:@"target REDIRECTION reason:%@", reason];

    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      reason2 = [v10 reason];
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = reason2;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "policy: REDIRECTION target:%{public}@ reason: %{public}@", buf, 0x16u);
    }
  }
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

- (SBFocusRedirectResolutionStageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end