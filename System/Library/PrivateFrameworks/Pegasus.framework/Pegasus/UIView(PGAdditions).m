@interface UIView(PGAdditions)
+ (void)PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:()PGAdditions animations:completion:;
+ (void)PG_animateUsingDefaultTimingWithOptions:()PGAdditions animations:completion:;
+ (void)PG_performWithoutAnimation:()PGAdditions;
+ (void)PG_performWithoutRetargetingAnimation:()PGAdditions;
- (double)PG_anchorPoint;
- (double)PG_cornerRadius;
- (id)PG_acquireAssertionToPreventAutoHideOfControlsWithReason:()PGAdditions;
- (id)PG_compositingFilter;
- (uint64_t)PG_allowsEdgeAntialiasing;
- (uint64_t)PG_allowsGroupBlending;
- (uint64_t)PG_disablesLayerCloning;
- (void)PG_setAllowsEdgeAntialiasing:()PGAdditions;
- (void)PG_setAllowsGroupBlending:()PGAdditions;
- (void)PG_setAnchorPoint:()PGAdditions;
- (void)PG_setCompositingFilter:()PGAdditions;
@end

@implementation UIView(PGAdditions)

- (uint64_t)PG_allowsEdgeAntialiasing
{
  v1 = [a1 layer];
  v2 = [v1 allowsEdgeAntialiasing];

  return v2;
}

- (void)PG_setAllowsEdgeAntialiasing:()PGAdditions
{
  v5 = [a1 layer];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  [v5 setContentsScale:?];

  v7 = [a1 layer];
  [v7 setAllowsEdgeAntialiasing:a3];
}

- (uint64_t)PG_allowsGroupBlending
{
  v1 = [a1 layer];
  v2 = [v1 allowsGroupBlending];

  return v2;
}

- (void)PG_setAllowsGroupBlending:()PGAdditions
{
  v4 = [a1 layer];
  [v4 setAllowsGroupBlending:a3];
}

- (double)PG_anchorPoint
{
  v1 = [a1 layer];
  [v1 anchorPoint];
  v3 = v2;

  return v3;
}

- (void)PG_setAnchorPoint:()PGAdditions
{
  v5 = [a1 layer];
  [v5 setAnchorPoint:{a2, a3}];
}

- (id)PG_compositingFilter
{
  v1 = [a1 layer];
  v2 = [v1 compositingFilter];

  return v2;
}

- (void)PG_setCompositingFilter:()PGAdditions
{
  v4 = a3;
  v5 = [a1 layer];
  [v5 setCompositingFilter:v4];
}

- (double)PG_cornerRadius
{
  v1 = objc_getAssociatedObject(a1, "UIView.CornerRadius");
  objc_opt_class();
  v2 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v1 doubleValue];
    v2 = v3;
  }

  return v2;
}

- (uint64_t)PG_disablesLayerCloning
{
  v1 = [a1 layer];
  v2 = ([v1 disableUpdateMask] >> 4) & 1;

  return v2;
}

+ (void)PG_performWithoutAnimation:()PGAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIView_PGAdditions__PG_performWithoutAnimation___block_invoke;
  v6[3] = &unk_1E7F32CF8;
  v7 = v4;
  v5 = v4;
  [a1 performWithoutAnimation:v6];
}

+ (void)PG_performWithoutRetargetingAnimation:()PGAdditions
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIView_PGAdditions__PG_performWithoutRetargetingAnimation___block_invoke;
  v6[3] = &unk_1E7F32CF8;
  v7 = v4;
  v5 = v4;
  [a1 _performWithoutRetargetingAnimations:v6];
}

+ (void)PG_animateUsingDefaultTimingWithOptions:()PGAdditions animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__UIView_PGAdditions__PG_animateUsingDefaultTimingWithOptions_animations_completion___block_invoke;
  v10[3] = &unk_1E7F33700;
  v11 = v8;
  v12 = a1;
  v9 = v8;
  [a1 _animateUsingDefaultTimingWithOptions:a3 animations:v10 completion:a5];
}

+ (void)PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:()PGAdditions animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__UIView_PGAdditions__PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity_animations_completion___block_invoke;
  v10[3] = &unk_1E7F33700;
  v11 = v8;
  v12 = a1;
  v9 = v8;
  [a1 _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v10 options:a5 animations:0.0 completion:a2];
}

- (id)PG_acquireAssertionToPreventAutoHideOfControlsWithReason:()PGAdditions
{
  v4 = a3;
  v5 = [a1 superview];
  v6 = [v5 PG_acquireAssertionToPreventAutoHideOfControlsWithReason:v4];

  return v6;
}

@end