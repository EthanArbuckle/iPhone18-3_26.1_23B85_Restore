@interface PUBrowsingTileViewAnimator
- (void)animateTileController:(id)controller toLayoutInfo:(id)info withOptions:(id)options completionHandler:(id)handler;
@end

@implementation PUBrowsingTileViewAnimator

- (void)animateTileController:(id)controller toLayoutInfo:(id)info withOptions:(id)options completionHandler:(id)handler
{
  v39[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  infoCopy = info;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingTileViewAnimator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"[tileController isKindOfClass:[PUTileViewController class]]"}];
  }

  v15 = controllerCopy;
  v16 = optionsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 kind] == 101)
  {
    view = [v15 view];
    v18 = [view snapshotViewAfterScreenUpdates:0];
    layer = [view layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [v18 setFrame:{v22, v24, v26, v28}];
    superview = [view superview];
    [superview addSubview:v18];

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
    v38 = handlerCopy;
    v32 = handlerCopy;
    [v31 performSystemAnimation:0 onViews:v30 options:0 animations:&__block_literal_global_15458 completion:v37];
    [v15 applyLayoutInfo:infoCopy];
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __95__PUBrowsingTileViewAnimator_animateTileController_toLayoutInfo_withOptions_completionHandler___block_invoke_3;
    v35[3] = &unk_1E7B80C88;
    v36 = handlerCopy;
    v34.receiver = self;
    v34.super_class = PUBrowsingTileViewAnimator;
    view = handlerCopy;
    [(PUTileViewAnimator *)&v34 animateTileController:v15 toLayoutInfo:infoCopy withOptions:v16 completionHandler:v35];
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