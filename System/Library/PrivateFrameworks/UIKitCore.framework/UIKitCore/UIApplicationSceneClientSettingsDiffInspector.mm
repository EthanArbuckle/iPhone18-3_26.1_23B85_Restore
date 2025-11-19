@interface UIApplicationSceneClientSettingsDiffInspector
- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4;
@end

@implementation UIApplicationSceneClientSettingsDiffInspector

- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__UIApplicationSceneClientSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E710A3E8;
    v9 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:a3 withBlock:v8];
  }
}

@end