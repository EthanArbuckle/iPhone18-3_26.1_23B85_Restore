@interface PXUIViewControllerFadeThroughColorTransition
- (PXUIViewControllerFadeThroughColorTransition)initWithDuration:(double)a3 midpointColor:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation PXUIViewControllerFadeThroughColorTransition

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(PXUIViewControllerFadeThroughColorTransition *)self transitionDuration:v4];
  v6 = v5 * 0.5;
  v7 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v8 = [v7 view];
  v9 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v10 = [v9 view];
  v11 = [v4 containerView];
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  [v11 bounds];
  v13 = [v12 initWithFrame:?];
  v14 = [(PXUIViewControllerFadeThroughColorTransition *)self midpointColor];
  [v13 setBackgroundColor:v14];

  [v13 setAlpha:0.0];
  [v11 addSubview:v13];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXUIViewControllerFadeThroughColorTransition_animateTransition___block_invoke;
  aBlock[3] = &unk_1E7749628;
  v15 = v13;
  v34 = v15;
  v35 = v4;
  v16 = v4;
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
  v25 = v8;
  v26 = v11;
  v27 = v10;
  v28 = v32;
  v30 = v6;
  v29 = v17;
  v19 = v17;
  v20 = v32;
  v21 = v10;
  v22 = v11;
  v23 = v8;
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

- (PXUIViewControllerFadeThroughColorTransition)initWithDuration:(double)a3 midpointColor:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PXUIViewControllerFadeThroughColorTransition;
  v7 = [(PXUIViewControllerFadeThroughColorTransition *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_duration = a3;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] blackColor];
    }

    midpointColor = v8->_midpointColor;
    v8->_midpointColor = v9;
  }

  return v8;
}

@end