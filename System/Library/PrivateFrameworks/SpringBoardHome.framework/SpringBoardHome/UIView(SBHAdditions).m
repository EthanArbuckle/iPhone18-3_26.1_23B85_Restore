@interface UIView(SBHAdditions)
- (void)blurAnimationFor:()SBHAdditions duration:startRadius:endRadius:;
- (void)scaleAndBlurForDuration:()SBHAdditions initiallyHidden:visibleAlpha:completion:;
@end

@implementation UIView(SBHAdditions)

- (void)scaleAndBlurForDuration:()SBHAdditions initiallyHidden:visibleAlpha:completion:
{
  v10 = a6;
  if (a5)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke;
    v20[3] = &unk_1E8088C90;
    v20[4] = a1;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v20];
    v11 = 10.0;
    v12 = 0.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 10.0;
  }

  v13 = [a1 layer];
  [a1 blurAnimationFor:v13 duration:a2 startRadius:v11 endRadius:v12];

  v14 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke_2;
  v18[3] = &unk_1E808B1B0;
  v19 = a5;
  *&v18[5] = a3;
  v18[4] = a1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__UIView_SBHAdditions__scaleAndBlurForDuration_initiallyHidden_visibleAlpha_completion___block_invoke_3;
  v16[3] = &unk_1E808A0B8;
  v17 = v10;
  v15 = v10;
  [v14 animateWithDuration:v18 animations:v16 completion:a2];
}

- (void)blurAnimationFor:()SBHAdditions duration:startRadius:endRadius:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AD98];
  v10 = a6;
  v11 = [v9 numberWithDouble:a2];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v13 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v13 setValue:@"low" forKey:*MEMORY[0x1E6979B60]];
  [v13 setValue:@"low" forKey:*MEMORY[0x1E6979BA0]];
  [v13 setValue:v12 forKey:*MEMORY[0x1E6979BA8]];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v10 setFilters:v14];

  [MEMORY[0x1E6979518] begin];
  v15 = [MEMORY[0x1E6979518] disableActions];
  v16 = [MEMORY[0x1E6979318] animation];
  [v16 setKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v16 setFromValue:v11];
  [v16 setToValue:v12];
  [v16 setDuration:a1];
  [v16 setFillMode:*MEMORY[0x1E69797E8]];
  [v10 addAnimation:v16 forKey:@"blurAnimation"];

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] setDisableActions:v15];
}

@end