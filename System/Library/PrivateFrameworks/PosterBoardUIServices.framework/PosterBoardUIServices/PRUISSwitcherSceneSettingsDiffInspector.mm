@interface PRUISSwitcherSceneSettingsDiffInspector
+ (id)diffInspectorForObservingDiffContext;
- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4;
- (void)observeLockPosterLiveContentLayerWithBlock:(id)a3;
- (void)observeLockPosterLiveFloatingLayerWithBlock:(id)a3;
- (void)observeLockPosterOverlayLayerWithBlock:(id)a3;
@end

@implementation PRUISSwitcherSceneSettingsDiffInspector

+ (id)diffInspectorForObservingDiffContext
{
  v2 = objc_alloc_init(a1);
  [v2 observePreferredSwitcherLayoutModeWithBlock:&__block_literal_global_10];
  [v2 observeLockPosterOverlayLayerWithBlock:&__block_literal_global_2_0];
  [v2 observeLockPosterLiveContentLayerWithBlock:&__block_literal_global_4_0];
  [v2 observeLockPosterLiveFloatingLayerWithBlock:&__block_literal_global_6_0];
  [v2 observeLockPosterFloatingLayerInlinedWithBlock:&__block_literal_global_8];
  [v2 observeLockPosterComplicationRowHiddenWithBlock:&__block_literal_global_10];
  [v2 observeLeadingTopButtonFrameWithBlock:&__block_literal_global_12];
  [v2 observeTrailingTopButtonFrameWithBlock:&__block_literal_global_14];
  [v2 observeVibrancyConfigurationWithBlock:&__block_literal_global_16];

  return v2;
}

- (void)observeLockPosterOverlayLayerWithBlock:(id)a3
{
  v4 = a3;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25563 withBlock:v4];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25564 withBlock:v4];
}

- (void)observeLockPosterLiveContentLayerWithBlock:(id)a3
{
  v4 = a3;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25565 withBlock:v4];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25566 withBlock:v4];
}

- (void)observeLockPosterLiveFloatingLayerWithBlock:(id)a3
{
  v4 = a3;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25567 withBlock:v4];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25568 withBlock:v4];
}

- (void)_observeOtherSetting:(unint64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PRUISSwitcherSceneSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E83A7B80;
    v9 = v6;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:a3 withBlock:v8];
  }
}

@end