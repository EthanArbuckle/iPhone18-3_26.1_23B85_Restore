@interface PRUISSwitcherSceneSettingsDiffInspector
+ (id)diffInspectorForObservingDiffContext;
- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block;
- (void)observeLockPosterLiveContentLayerWithBlock:(id)block;
- (void)observeLockPosterLiveFloatingLayerWithBlock:(id)block;
- (void)observeLockPosterOverlayLayerWithBlock:(id)block;
@end

@implementation PRUISSwitcherSceneSettingsDiffInspector

+ (id)diffInspectorForObservingDiffContext
{
  v2 = objc_alloc_init(self);
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

- (void)observeLockPosterOverlayLayerWithBlock:(id)block
{
  blockCopy = block;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25563 withBlock:blockCopy];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25564 withBlock:blockCopy];
}

- (void)observeLockPosterLiveContentLayerWithBlock:(id)block
{
  blockCopy = block;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25565 withBlock:blockCopy];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25566 withBlock:blockCopy];
}

- (void)observeLockPosterLiveFloatingLayerWithBlock:(id)block
{
  blockCopy = block;
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25567 withBlock:blockCopy];
  [(PRUISSwitcherSceneSettingsDiffInspector *)self _observeOtherSetting:25568 withBlock:blockCopy];
}

- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PRUISSwitcherSceneSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E83A7B80;
    v9 = blockCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:setting withBlock:v8];
  }
}

@end