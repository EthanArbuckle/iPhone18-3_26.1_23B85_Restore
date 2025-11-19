@interface SBFocusRedirectResolutionStage
- (SBFocusRedirectResolutionStageDelegate)delegate;
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5;
@end

@implementation SBFocusRedirectResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v6 auditHistory];
  [v8 addItemWithFormat:@"-- SBFocusRedirectResolutionStage --"];

  v9 = [v6 keyboardFocusTarget];
  v10 = [WeakRetained keyboardFocusRedirectionForTarget:v9];

  if (v10)
  {
    v11 = [v10 toToken];
    v12 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", v11, [v10 toProcessIdentifier]);

    [v6 setKeyboardFocusTarget:v12];
    [v6 setShouldSuppressRemoteDeferring:1];
    v13 = [v6 auditHistory];
    v14 = [v10 reason];
    [v13 addItemWithFormat:@"target REDIRECTION reason:%@", v14];

    v15 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 reason];
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v16;
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