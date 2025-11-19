@interface _TVProductTemplateZoomAnimator
- (void)animateTransition:(id)a3;
@end

@implementation _TVProductTemplateZoomAnimator

- (void)animateTransition:(id)a3
{
  v3 = a3;
  v4 = [v3 containerView];
  v5 = [v3 viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [v3 viewControllerForKey:*MEMORY[0x277D77230]];
  v7 = [v5 view];
  [v4 bounds];
  [v7 setFrame:?];
  [v7 setAlpha:0.0];
  CGAffineTransformMakeScale(&v38, 1.5, 1.5);
  [v7 setTransform:&v38];
  v8 = [v7 layer];
  [v8 setShouldRasterize:1];

  v9 = [v7 layer];
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  if (v11 <= 1.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 1.5;
  }

  [v9 setRasterizationScale:v12];

  v13 = [v6 view];
  v14 = [v13 layer];
  [v14 setShouldRasterize:1];

  v15 = [v13 layer];
  [v15 setRasterizationScale:1.0];

  [v4 insertSubview:v7 aboveSubview:v13];
  objc_initWeak(&v38, v3);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke;
  v34[3] = &unk_279D70720;
  v16 = v7;
  v35 = v16;
  v17 = v13;
  v36 = v17;
  objc_copyWeak(&v37, &v38);
  v18 = MEMORY[0x26D6AFBB0](v34);
  v19 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke_2;
  v31[3] = &unk_279D6E2F8;
  v20 = v17;
  v32 = v20;
  v21 = v16;
  v33 = v21;
  [v19 animateWithDuration:0 delay:v31 options:0 animations:0.33 completion:0.0];
  v22 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke_3;
  v28[3] = &unk_279D6E2F8;
  v23 = v21;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke_4;
  v26[3] = &unk_279D6EF50;
  v25 = v18;
  v27 = v25;
  [v22 animateWithDuration:4 delay:v28 options:v26 animations:0.5 completion:0.0];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v38);
}

@end