@interface _TVProductTemplateZoomAnimator
- (void)animateTransition:(id)transition;
@end

@implementation _TVProductTemplateZoomAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  view = [v5 view];
  [containerView bounds];
  [view setFrame:?];
  [view setAlpha:0.0];
  CGAffineTransformMakeScale(&v38, 1.5, 1.5);
  [view setTransform:&v38];
  layer = [view layer];
  [layer setShouldRasterize:1];

  layer2 = [view layer];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  if (v11 <= 1.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 1.5;
  }

  [layer2 setRasterizationScale:v12];

  view2 = [v6 view];
  layer3 = [view2 layer];
  [layer3 setShouldRasterize:1];

  layer4 = [view2 layer];
  [layer4 setRasterizationScale:1.0];

  [containerView insertSubview:view aboveSubview:view2];
  objc_initWeak(&v38, transitionCopy);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke;
  v34[3] = &unk_279D70720;
  v16 = view;
  v35 = v16;
  v17 = view2;
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