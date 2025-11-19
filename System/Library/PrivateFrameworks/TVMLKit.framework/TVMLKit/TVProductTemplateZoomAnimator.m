@interface TVProductTemplateZoomAnimator
@end

@implementation TVProductTemplateZoomAnimator

void __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke(id *a1)
{
  v2 = [a1[4] layer];
  [v2 setShouldRasterize:0];

  v3 = a1[5];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v7];
  [a1[5] setAlpha:1.0];
  [a1[5] removeFromSuperview];
  v5 = [a1[5] layer];
  [v5 setShouldRasterize:0];

  v6 = objc_loadWeakRetained(a1 + 6);
  [v6 completeTransition:{objc_msgSend(v6, "transitionWasCancelled") ^ 1}];
}

uint64_t __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __52___TVProductTemplateZoomAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9FF0] animationTimingFunction];
  v3 = MEMORY[0x277CD9FF0];
  LODWORD(v4) = 1051260355;
  LODWORD(v5) = 1040522936;
  LODWORD(v6) = 1041865114;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v4 :v5 :v6 :v7];
  [v3 setAnimationTimingFunction:v8];

  v9 = *(a1 + 32);
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v10;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v9 setTransform:&v12];
  v11 = *(a1 + 40);
  CGAffineTransformMakeScale(&v12, 0.8, 0.8);
  [v11 setTransform:&v12];
  [MEMORY[0x277CD9FF0] setAnimationTimingFunction:v2];
}

@end