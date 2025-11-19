@interface PRUISSwitcherSceneClientSettingsDiffInspector
+ (id)diffInspectorForObservingDiffContext;
- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4;
@end

@implementation PRUISSwitcherSceneClientSettingsDiffInspector

+ (id)diffInspectorForObservingDiffContext
{
  v2 = objc_alloc_init(a1);
  [v2 observeSwitcherLayoutModeWithBlock:&__block_literal_global_9];
  [v2 observeSwitcherContextIDWithBlock:&__block_literal_global_2];
  [v2 observePrimaryPosterScaleWithBlock:&__block_literal_global_4];
  [v2 observePrimaryPosterOffsetWithBlock:&__block_literal_global_6];

  return v2;
}

- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PRUISSwitcherSceneClientSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E83A7B80;
    v9 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:a3 withBlock:v8];
  }
}

@end