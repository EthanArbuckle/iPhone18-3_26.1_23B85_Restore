@interface SBSystemUISceneResolutionStage
- (SBKeyboardFocusResolutionStageSceneProviding)sceneProvider;
- (SBSystemUISceneResolutionStageDelegate)delegate;
- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5;
@end

@implementation SBSystemUISceneResolutionStage

- (void)resolveKeyboardFocusPolicy:(id)a3 context:(id)a4 stop:(BOOL *)a5
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v14 keyboardFocusTarget];
  v9 = objc_loadWeakRetained(&self->_sceneProvider);
  v10 = [v9 sceneForFocusTarget:v8];

  v11 = [v14 auditHistory];
  [v11 addItemWithFormat:@"-- SBSystemUISceneResolutionStage --"];

  v12 = [WeakRetained systemUISceneRequestingFocus];
  if (v12 && [v10 isEqual:v12])
  {
    v13 = [v14 auditHistory];
    [v13 addItemWithFormat:@"policy: high priority scene"];

    *a5 = 1;
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