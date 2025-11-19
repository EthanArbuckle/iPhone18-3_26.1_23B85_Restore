@interface UIContextMenuDismissToWindowSceneActivationAnimation
@end

@implementation UIContextMenuDismissToWindowSceneActivationAnimation

uint64_t __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setHidesCollapsedSourceView:0];
}

uint64_t __86___UIContextMenuDismissToWindowSceneActivationAnimation_animateAlongsideScenePlatter___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v6 = fmin(CGRectGetHeight(v11), 110.0);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [*(a1 + 32) setBounds:{0.0, 0.0, CGRectGetWidth(v12), v6}];
  CGAffineTransformMakeScale(&v10, 0.2, 0.2);
  v7 = *(a1 + 32);
  v9 = v10;
  [v7 setTransform:&v9];
  [*(a1 + 32) setAlpha:0.0];
  return [*(a1 + 32) layoutIfNeeded];
}

@end