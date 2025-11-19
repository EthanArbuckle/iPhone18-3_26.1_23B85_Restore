@interface UIContextMenuCommitAnimation
@end

@implementation UIContextMenuCommitAnimation

void __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") - 1}];
  os_variant_has_internal_diagnostics();
  [*(a1 + 32) animationCount];
  if (![*(a1 + 32) animationCount])
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(v2 + 16))();
    }

    v3 = [*(a1 + 32) animationContainer];
    [v3 removeFromSuperview];
  }
}

void __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") + 1}];
  v2 = [*(a1 + 32) destination];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v31 = v10;
  v32 = v6 + v10 * 0.5;
  v33 = v4 + v8 * 0.5;
  v11 = [*(a1 + 32) sourceTransformView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v37.origin.x = v4;
  v34 = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  Width = CGRectGetWidth(v37);
  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  v21 = Width / CGRectGetWidth(v38);
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v31;
  CGRectGetHeight(v39);
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  CGRectGetHeight(v40);
  CGAffineTransformMakeScale(&v36, v21, v21);
  v22 = [*(a1 + 32) sourceTransformView];
  v35 = v36;
  [v22 setTransform:&v35];

  v23 = [*(a1 + 32) sourceTransformView];
  [v23 setCenter:{v33, v32}];

  v24 = [*(a1 + 32) destinationTransformView];
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v35.a = *MEMORY[0x1E695EFD0];
  *&v35.c = v25;
  *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v24 setTransform:&v35];

  v26 = [*(a1 + 32) destinationTransformView];
  [v26 setCenter:{v33, v32}];

  [*(a1 + 32) destinationRadius];
  v28 = v27;
  v29 = [*(a1 + 32) morphContainer];
  [v29 _setContinuousCornerRadius:v28];

  v30 = [*(a1 + 32) morphContainer];
  [v30 setBounds:{v34, v6, v8, v31}];
}

uint64_t __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") + 1}];
  v2 = [*(a1 + 32) destination];
  [v2 center];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) morphContainer];
  [v7 setCenter:{v4, v6}];

  v8 = [*(a1 + 32) destinationTransformView];
  [v8 setAlpha:1.0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_6;
  v11[3] = &unk_1E70F3590;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  return [UIView animateKeyframesWithDuration:v9 delay:v11 options:0 animations:0.0 completion:0.0];
}

uint64_t __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_6(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_7;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_8;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.3 animations:0.4];
}

void __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) sourceTransformView];
  [v1 setAlpha:0.0];
}

void __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) originalContentSnapshotView];
  [v1 setAlpha:0.0];
}

@end