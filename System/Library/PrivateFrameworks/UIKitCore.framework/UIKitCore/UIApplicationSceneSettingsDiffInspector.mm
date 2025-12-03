@interface UIApplicationSceneSettingsDiffInspector
- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block;
@end

@implementation UIApplicationSceneSettingsDiffInspector

- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__UIApplicationSceneSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E710A3E8;
    v9 = blockCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:setting withBlock:v8];
  }
}

@end