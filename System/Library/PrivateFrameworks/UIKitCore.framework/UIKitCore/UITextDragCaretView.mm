@interface UITextDragCaretView
@end

@implementation UITextDragCaretView

uint64_t __80___UITextDragCaretView__insertAtRangeOrPosition_animations_completion_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v3;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v7];
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) layer];
  [v5 setMask:v4];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __39___UITextDragCaretView__performUpdate___block_invoke(uint64_t a1)
{
  v2 = CGPathRetain([*(*(a1 + 32) + 416) path]);
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v4 = [v3 _caretColor];
    [*(a1 + 32) setBackgroundColor:v4];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 408));
    v6 = objc_loadWeakRetained((*(a1 + 32) + 408));
    [v6 caretRectForPosition:*(a1 + 40)];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = objc_loadWeakRetained((*(a1 + 32) + 408));
    v16 = [v15 textInputView];
    [WeakRetained convertRect:v16 fromView:{v8, v10, v12, v14}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = 0;
  }

  else
  {
    v26 = [v3 _rangeColor];
    [*(a1 + 32) setBackgroundColor:v26];

    [*(a1 + 32) _configureMask:*(*(a1 + 32) + 416) withPath:*(a1 + 48)];
    v18 = v27;
    v20 = v28;
    v22 = v29;
    v24 = v30;
    v25 = *(*(a1 + 32) + 416);
  }

  [*(a1 + 32) setFrame:{v18, v20, v22, v24}];
  v31 = [*(a1 + 32) layer];
  v32 = [v31 mask];
  if (v32 != v25)
  {

LABEL_8:
    v35 = [*(a1 + 32) layer];
    [v35 setMask:v25];
    goto LABEL_9;
  }

  v33 = *(a1 + 64);

  if (v33 != 1)
  {
    goto LABEL_8;
  }

  v34 = [v25 animationForKey:@"bounds"];
  v35 = [v34 copy];

  [v35 setKeyPath:@"path"];
  [v35 setFromValue:v2];
  [v25 addAnimation:v35 forKey:@"path"];
LABEL_9:

  CGPathRelease(v2);
  v36 = *(a1 + 32);
  v37 = *(MEMORY[0x1E695EFD0] + 16);
  v38[0] = *MEMORY[0x1E695EFD0];
  v38[1] = v37;
  v38[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v36 setTransform:v38];
  (*(*(a1 + 56) + 16))();
}

uint64_t __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 408));
  [WeakRetained _caretRect];
  [*(a1 + 32) setFrame:?];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.8, 0.8);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __65___UITextDragCaretView_removeWithAnimations_completion_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end