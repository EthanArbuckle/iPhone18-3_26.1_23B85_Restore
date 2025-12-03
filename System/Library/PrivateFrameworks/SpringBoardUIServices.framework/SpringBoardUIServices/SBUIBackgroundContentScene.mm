@interface SBUIBackgroundContentScene
- (BOOL)isContentObscured;
- (void)showCompactTime:(BOOL)time withAnimationSettings:(id)settings;
@end

@implementation SBUIBackgroundContentScene

- (void)showCompactTime:(BOOL)time withAnimationSettings:(id)settings
{
  settingsCopy = settings;
  _FBSScene = [(SBUIBackgroundContentScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBUIBackgroundContentScene_showCompactTime_withAnimationSettings___block_invoke;
  v9[3] = &unk_1E789FC48;
  timeCopy = time;
  v10 = settingsCopy;
  selfCopy = self;
  v8 = settingsCopy;
  [_FBSScene updateClientSettings:v9];
}

void __68__SBUIBackgroundContentScene_showCompactTime_withAnimationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  [a2 setShowCompactTime:*(a1 + 48)];
  [v6 setAnimationSettings:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v5 = [*(a1 + 40) _synchronizedDrawingFence];
    [v6 setAnimationFence:v5];
  }
}

- (BOOL)isContentObscured
{
  _FBSScene = [(SBUIBackgroundContentScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isContentObscured = [settings isContentObscured];

  return isContentObscured;
}

@end