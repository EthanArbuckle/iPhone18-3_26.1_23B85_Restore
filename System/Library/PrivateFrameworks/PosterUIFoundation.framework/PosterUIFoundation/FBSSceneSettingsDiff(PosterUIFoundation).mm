@interface FBSSceneSettingsDiff(PosterUIFoundation)
- (uint64_t)pui_inspect:()PosterUIFoundation;
@end

@implementation FBSSceneSettingsDiff(PosterUIFoundation)

- (uint64_t)pui_inspect:()PosterUIFoundation
{
  if (pui_inspect__onceToken != -1)
  {
    [FBSSceneSettingsDiff(PosterUIFoundation) pui_inspect:];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__FBSSceneSettingsDiff_PosterUIFoundation__pui_inspect___block_invoke_2;
  v7[3] = &unk_1E7854418;
  v7[4] = &v8;
  [pui_inspect__inspector observeOtherSetting:a3 withBlock:v7];
  [pui_inspect__inspector inspectDiff:self withContext:0];
  [pui_inspect__inspector removeAllObservers];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end