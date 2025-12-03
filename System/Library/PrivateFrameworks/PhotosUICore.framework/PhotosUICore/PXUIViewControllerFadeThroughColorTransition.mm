@interface PXUIViewControllerFadeThroughColorTransition
- (PXUIViewControllerFadeThroughColorTransition)initWithDuration:(double)duration midpointColor:(id)color;
- (void)animateTransition:(id)transition;
@end

@implementation PXUIViewControllerFadeThroughColorTransition

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(PXUIViewControllerFadeThroughColorTransition *)self transitionDuration:transitionCopy];
  v6 = v5 * 0.5;
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  view = [v7 view];
  v9 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  view2 = [v9 view];
  containerView = [transitionCopy containerView];
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  [containerView bounds];
  v13 = [v12 initWithFrame:?];
  midpointColor = [(PXUIViewControllerFadeThroughColorTransition *)self midpointColor];
  [v13 setBackgroundColor:midpointColor];

  [v13 setAlpha:0.0];
  [containerView addSubview:v13];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke;
  aBlock[3] = &unk_1E7749628;
  v15 = v13;
  v34 = v15;
  v35 = transitionCopy;
  v16 = transitionCopy;
  v17 = _Block_copy(aBlock);
  v18 = MEMORY[0x1E69DD250];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke_2;
  v31[3] = &unk_1E774C648;
  v32 = v15;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke_3;
  v24[3] = &unk_1E773C268;
  v25 = view;
  v26 = containerView;
  v27 = view2;
  v28 = v32;
  v30 = v6;
  v29 = v17;
  v19 = v17;
  v20 = v32;
  v21 = view2;
  v22 = containerView;
  v23 = view;
  [v18 animateWithDuration:v31 animations:v24 completion:v6];
}

uint64_t __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeFromSuperview];
  v4 = *(a1 + 40);

  return [v4 completeTransition:a2];
}

void __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke_3(uint64_t a1, int a2)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) insertSubview:*(a1 + 48) belowSubview:*(a1 + 56)];
  if (a2)
  {
    v4 = MEMORY[0x1E69DD250];
    v5 = *(a1 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke_4;
    v9[3] = &unk_1E774C648;
    v10 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke_5;
    v7[3] = &unk_1E77464C0;
    v8 = *(a1 + 64);
    [v4 animateWithDuration:v9 animations:v7 completion:v5];
  }

  else
  {
    v6 = *(*(a1 + 64) + 16);

    v6();
  }
}

- (PXUIViewControllerFadeThroughColorTransition)initWithDuration:(double)duration midpointColor:(id)color
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = PXUIViewControllerFadeThroughColorTransition;
  v7 = [(PXUIViewControllerFadeThroughColorTransition *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_duration = duration;
    if (colorCopy)
    {
      blackColor = colorCopy;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    midpointColor = v8->_midpointColor;
    v8->_midpointColor = blackColor;
  }

  return v8;
}

@end