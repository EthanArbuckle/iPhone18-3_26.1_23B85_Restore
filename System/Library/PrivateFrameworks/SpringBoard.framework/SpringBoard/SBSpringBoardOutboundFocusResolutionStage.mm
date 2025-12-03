@interface SBSpringBoardOutboundFocusResolutionStage
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop;
@end

@implementation SBSpringBoardOutboundFocusResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop
{
  policyCopy = policy;
  contextCopy = context;
  auditHistory = [policyCopy auditHistory];
  [auditHistory addItemWithFormat:@"-- SBSpringBoardOutboundFocusResolutionStage --"];

  LODWORD(auditHistory) = [contextCopy isScreenDim];
  if (auditHistory && ![policyCopy advicePolicy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);
    springBoardSceneFocusTarget = [WeakRetained springBoardSceneFocusTarget];

    [policyCopy setKeyboardFocusTarget:springBoardSceneFocusTarget];
    auditHistory2 = [policyCopy auditHistory];
    [auditHistory2 addItemWithFormat:@"rejecting policy: screen is dim -- deferring to SB"];

    v13 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "policy: outbound rule not allowed -- deferring to SB", v14, 2u);
    }

    [policyCopy setShouldSuppressRemoteDeferring:1];
  }
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

@end