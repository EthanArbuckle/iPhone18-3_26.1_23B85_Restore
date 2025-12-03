@interface SBSystemUISceneResolutionStage
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (SBSystemUISceneResolutionStageDelegate)delegate;
- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop;
@end

@implementation SBSystemUISceneResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)policy context:(id)context stop:(BOOL *)stop
{
  policyCopy = policy;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  keyboardFocusTarget = [policyCopy keyboardFocusTarget];
  v9 = objc_loadWeakRetained(&self->_sceneProvider);
  v10 = [v9 sceneForFocusTarget:keyboardFocusTarget];

  auditHistory = [policyCopy auditHistory];
  [auditHistory addItemWithFormat:@"-- SBSystemUISceneResolutionStage --"];

  systemUISceneRequestingFocus = [WeakRetained systemUISceneRequestingFocus];
  if (systemUISceneRequestingFocus && [v10 isEqual:systemUISceneRequestingFocus])
  {
    auditHistory2 = [policyCopy auditHistory];
    [auditHistory2 addItemWithFormat:@"policy: high priority scene"];

    *stop = 1;
  }
}

- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneProvider);

  return WeakRetained;
}

- (SBSystemUISceneResolutionStageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end