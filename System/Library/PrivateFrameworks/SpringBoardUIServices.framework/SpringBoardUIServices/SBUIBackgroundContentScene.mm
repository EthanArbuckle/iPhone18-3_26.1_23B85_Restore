@interface SBUIBackgroundContentScene
- (BOOL)isContentObscured;
- (void)showCompactTime:(BOOL)a3 withAnimationSettings:(id)a4;
@end

@implementation SBUIBackgroundContentScene

- (void)showCompactTime:(BOOL)a3 withAnimationSettings:(id)a4
{
  v6 = a4;
  v7 = [(SBUIBackgroundContentScene *)self _FBSScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBUIBackgroundContentScene_showCompactTime_withAnimationSettings___block_invoke;
  v9[3] = &unk_1E789FC48;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 updateClientSettings:v9];
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
  v2 = [(SBUIBackgroundContentScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 isContentObscured];

  return v4;
}

@end