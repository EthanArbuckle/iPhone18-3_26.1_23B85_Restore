@interface UIPreviewPresentationController2
@end

@implementation UIPreviewPresentationController2

uint64_t __56___UIPreviewPresentationController2__layoutContentViews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

void __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_2;
  v33[3] = &unk_1E70F6B40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = *(a1 + 48);
  v5 = *(&v15 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v35 = v15;
  v34 = v6;
  [UIView addKeyframeWithRelativeStartTime:v33 relativeDuration:0.0 animations:v2];
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_3;
  v23[3] = &unk_1E711B008;
  v24 = *(a1 + 32);
  v29 = *(a1 + 88);
  v30 = *(a1 + 104);
  v31 = *(a1 + 120);
  v32 = *(a1 + 136);
  v25 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v26 = v9;
  v27 = v10;
  v28 = v11;
  [UIView addKeyframeWithRelativeStartTime:v23 relativeDuration:v7 animations:v8];
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_4;
  v20[3] = &unk_1E70F35B8;
  v21 = *(a1 + 32);
  v22 = *(a1 + 64);
  [UIView addKeyframeWithRelativeStartTime:v20 relativeDuration:v12 animations:v13];
  v14 = *(a1 + 72);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_5;
  v18[3] = &unk_1E70F3590;
  v19 = *(a1 + 64);
  [UIView addKeyframeWithRelativeStartTime:v18 relativeDuration:v14 animations:0.1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_6;
  v16[3] = &unk_1E70F3590;
  v17 = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v16 relativeDuration:0.98 animations:0.02];
}

void __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0175, 1.0175);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  v3 = [objc_opt_class() _backgroundEffectForTraitCollection:*(a1 + 56) interactive:1];
  [*(a1 + 40) setEffect:v3];
}

void __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_3(uint64_t a1)
{
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v17.a = *MEMORY[0x1E695EFD0];
  v14 = *&v17.a;
  *&v17.c = v13;
  *&v17.tx = *(MEMORY[0x1E695EFD0] + 32);
  v12 = *&v17.tx;
  MidX = CGRectGetMidX(*(a1 + 72));
  v3 = MidX - CGRectGetMidX(*(a1 + 104));
  MidY = CGRectGetMidY(*(a1 + 72));
  v5 = CGRectGetMidY(*(a1 + 104));
  *&v16.a = *&v17.a;
  *&v16.c = v13;
  *&v16.tx = *&v17.tx;
  CGAffineTransformTranslate(&v17, &v16, v3, MidY - v5);
  Width = CGRectGetWidth(*(a1 + 72));
  v7 = Width / CGRectGetWidth(*(a1 + 104));
  Height = CGRectGetHeight(*(a1 + 72));
  v9 = CGRectGetHeight(*(a1 + 104));
  v15 = v17;
  CGAffineTransformScale(&v16, &v15, v7, Height / v9);
  v17 = v16;
  [*(a1 + 32) setTransform:&v16];
  v10 = *(a1 + 40);
  *&v17.a = v14;
  *&v17.c = v13;
  *&v17.tx = v12;
  [v10 setTransform:&v17];
  [*(a1 + 40) setDropShadowEnabled:1];
  v11 = [objc_opt_class() _backgroundEffectForTraitCollection:*(a1 + 64) interactive:0];
  [*(a1 + 48) setEffect:v11];
}

uint64_t __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setBlurRadius:16.0];
  v2 = *(a1 + 40);

  return [v2 setBlurRadius:0.0];
}

void __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke_2;
  v8[3] = &unk_1E70F8980;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v2;
  v3 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v3;
  [UIView addKeyframeWithRelativeStartTime:v8 relativeDuration:0.0 animations:1.0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke_3;
  v6[3] = &unk_1E70F3590;
  v7 = *(a1 + 40);
  [UIView addKeyframeWithRelativeStartTime:v6 relativeDuration:0.2 animations:1.0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke_4;
  v4[3] = &unk_1E70F3590;
  v5 = *(a1 + 40);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.2];
}

uint64_t __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEffect:0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v12.a = *MEMORY[0x1E695EFD0];
  *&v12.c = v9;
  *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
  MidX = CGRectGetMidX(*(a1 + 48));
  v3 = MidX - CGRectGetMidX(*(a1 + 80));
  MidY = CGRectGetMidY(*(a1 + 48));
  v5 = CGRectGetMidY(*(a1 + 80));
  *&v11.a = *&v12.a;
  *&v11.c = v9;
  *&v11.tx = *&v12.tx;
  CGAffineTransformTranslate(&v12, &v11, v3, MidY - v5);
  Height = CGRectGetHeight(*(a1 + 48));
  v7 = CGRectGetHeight(*(a1 + 80));
  v10 = v12;
  CGAffineTransformScale(&v11, &v10, Height / v7, Height / v7);
  v12 = v11;
  return [*(a1 + 40) setTransform:&v11];
}

uint64_t __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setBlurRadius:128.0];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

@end