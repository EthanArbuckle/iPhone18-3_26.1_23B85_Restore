@interface PRUISSwitcherSceneClientSettingsDiffInspector
+ (id)diffInspectorForObservingDiffContext;
- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block;
@end

@implementation PRUISSwitcherSceneClientSettingsDiffInspector

+ (id)diffInspectorForObservingDiffContext
{
  v2 = objc_alloc_init(self);
  [v2 observeSwitcherLayoutModeWithBlock:&__block_literal_global_9];
  [v2 observeSwitcherContextIDWithBlock:&__block_literal_global_2];
  [v2 observePrimaryPosterScaleWithBlock:&__block_literal_global_4];
  [v2 observePrimaryPosterOffsetWithBlock:&__block_literal_global_6];

  return v2;
}

- (void)_observeOtherSetting:(unint64_t)setting withBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PRUISSwitcherSceneClientSettingsDiffInspector__observeOtherSetting_withBlock___block_invoke;
    v8[3] = &unk_1E83A7B80;
    v9 = blockCopy;
    [(FBSSettingsDiffInspector *)self observeOtherSetting:setting withBlock:v8];
  }
}

@end