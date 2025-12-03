@interface SBSystemApertureHidingTestRecipe
- (SBSystemApertureHidingTestRecipe)init;
- (void)_applyAlpha;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureHidingTestRecipe

- (SBSystemApertureHidingTestRecipe)init
{
  v6.receiver = self;
  v6.super_class = SBSystemApertureHidingTestRecipe;
  v2 = [(SBSystemApertureHidingTestRecipe *)&v6 init];
  v3 = v2;
  if (v2)
  {
    alphaValues = v2->_alphaValues;
    v2->_alphaValues = &unk_28336EC40;

    v3->_currentAlphaIndex = [(NSArray *)v3->_alphaValues count]- 1;
  }

  return v3;
}

- (void)_applyAlpha
{
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v4 = [systemApertureControllerForMainDisplay valueForKey:@"_systemApertureViewController"];

  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SBSystemApertureHidingTestRecipe__applyAlpha__block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 animateWithDuration:v7 animations:0.2];
}

void __47__SBSystemApertureHidingTestRecipe__applyAlpha__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:*(*(a1 + 32) + 16)];
  [v2 floatValue];
  v4 = v3;

  v5 = [*(a1 + 40) view];
  [v5 setAlpha:v4];
}

- (void)handleVolumeIncrease
{
  v3 = [(NSArray *)self->_alphaValues count]- 1;
  currentAlphaIndex = self->_currentAlphaIndex;
  if (v3 >= currentAlphaIndex + 1)
  {
    v3 = currentAlphaIndex + 1;
  }

  self->_currentAlphaIndex = v3;

  [(SBSystemApertureHidingTestRecipe *)self _applyAlpha];
}

- (void)handleVolumeDecrease
{
  currentAlphaIndex = self->_currentAlphaIndex;
  if (currentAlphaIndex <= 1)
  {
    currentAlphaIndex = 1;
  }

  self->_currentAlphaIndex = currentAlphaIndex - 1;
  [(SBSystemApertureHidingTestRecipe *)self _applyAlpha];
}

@end