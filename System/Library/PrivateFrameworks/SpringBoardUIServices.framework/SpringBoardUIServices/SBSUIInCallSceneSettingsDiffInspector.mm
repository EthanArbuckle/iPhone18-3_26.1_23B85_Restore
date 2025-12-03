@interface SBSUIInCallSceneSettingsDiffInspector
- (void)observeAttachedToWindowedAccessoryWithBlock:(id)block;
- (void)observeInCallPresentationModeWithBlock:(id)block;
@end

@implementation SBSUIInCallSceneSettingsDiffInspector

- (void)observeInCallPresentationModeWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__SBSUIInCallSceneSettingsDiffInspector_observeInCallPresentationModeWithBlock___block_invoke;
    v6[3] = &unk_1E789F860;
    v7 = blockCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:3001 withBlock:v6];
  }
}

- (void)observeAttachedToWindowedAccessoryWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __85__SBSUIInCallSceneSettingsDiffInspector_observeAttachedToWindowedAccessoryWithBlock___block_invoke;
    v9[3] = &unk_1E789F860;
    v6 = blockCopy;
    v10 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:3002 withBlock:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __85__SBSUIInCallSceneSettingsDiffInspector_observeAttachedToWindowedAccessoryWithBlock___block_invoke_2;
    v7[3] = &unk_1E789F860;
    v8 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:3003 withBlock:v7];
  }
}

@end