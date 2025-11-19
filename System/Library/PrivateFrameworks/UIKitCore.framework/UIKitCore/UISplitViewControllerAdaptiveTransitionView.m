@interface UISplitViewControllerAdaptiveTransitionView
@end

@implementation UISplitViewControllerAdaptiveTransitionView

void __80___UISplitViewControllerAdaptiveTransitionView__animateTransformWithTransition___block_invoke(uint64_t a1)
{
  v2 = _UISplitViewControllerResizeMeshTransform(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), 0.0, 0.0, 0.0, 0.0, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), 0.0, 0.0, 0.0, 0.0);
  v3 = [*(a1 + 32) layer];
  [v3 setMeshTransform:v2];

  v4 = *(a1 + 80);
  v5 = [*(a1 + 32) layer];
  [v5 setRasterizationScale:v4];

  [*(a1 + 40) setAlpha:0.0];
  __asm { FMOV            V2.2D, #0.5 }

  [*(a1 + 40) setCenter:{vaddq_f64(*(a1 + 48), vmulq_f64(*(a1 + 64), _Q2))}];
  v11 = *(a1 + 104);
  *&v17.a = *(a1 + 88);
  *&v17.c = v11;
  *&v17.tx = *(a1 + 120);
  CGAffineTransformInvert(&v18, &v17);
  v12 = *(a1 + 40);
  v17 = v18;
  [v12 setTransform:&v17];
  v13 = _UISplitViewControllerResizeMeshTransform(*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), 0.0, 0.0, 0.0, 0.0, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), 0.0, 0.0, 0.0, 0.0);
  v14 = [*(a1 + 40) layer];
  [v14 setMeshTransform:v13];

  v15 = *(a1 + 80);
  v16 = [*(a1 + 40) layer];
  [v16 setRasterizationScale:v15];
}

@end