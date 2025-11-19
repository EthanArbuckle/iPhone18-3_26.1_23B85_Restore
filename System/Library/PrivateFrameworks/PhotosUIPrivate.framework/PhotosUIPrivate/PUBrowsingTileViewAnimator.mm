@interface PUBrowsingTileViewAnimator
- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6;
@end

@implementation PUBrowsingTileViewAnimator

- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUBrowsingTileViewAnimator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"[tileController isKindOfClass:[PUTileViewController class]]"}];
  }

  v15 = v11;
  v16 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 kind] == 101)
  {
    v17 = [v15 view];
    v18 = [v17 snapshotViewAfterScreenUpdates:0];
    v19 = [v17 layer];
    v20 = [v19 presentationLayer];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [v18 setFrame:{v22, v24, v26, v28}];
    v29 = [v17 superview];
    [v29 addSubview:v18];

    if (v18)
    {
      v39[0] = v18;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    }

    else
    {
      v30 = MEMORY[0x1E695E0F0];
    }

    v31 = MEMORY[0x1E69DD250];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __95__PUBrowsingTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_2;
    v37[3] = &unk_1E7B7FA80;
    v38 = v14;
    v32 = v14;
    [v31 performSystemAnimation:0 onViews:v30 options:0 animations:&__block_literal_global_15458 completion:v37];
    [v15 applyLayoutInfo:v12];
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __95__PUBrowsingTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_3;
    v35[3] = &unk_1E7B80C88;
    v36 = v14;
    v34.receiver = self;
    v34.super_class = PUBrowsingTileViewAnimator;
    v17 = v14;
    [(PUTileViewAnimator *)&v34 animateTileController:v15 toLayoutInfo:v12 withOptions:v16 completionHandler:v35];
    v18 = v36;
  }
}

uint64_t __95__PUBrowsingTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __95__PUBrowsingTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end