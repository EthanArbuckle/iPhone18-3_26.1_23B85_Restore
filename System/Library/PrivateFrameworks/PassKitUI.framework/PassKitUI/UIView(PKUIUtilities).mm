@interface UIView(PKUIUtilities)
+ (void)pkui_animateUsingFactory:()PKUIUtilities withDelay:options:animations:completion:;
+ (void)pkui_animateUsingOptions:()PKUIUtilities delay:velocity:animations:completion:;
- (BOOL)pkui_readableContentBoundsWithMargins:()PKUIUtilities;
- (id)pkui_translationAnimation;
- (id)pkui_viewControllerFromResponderChain;
- (uint64_t)pkui_setBoundsAndPositionFromFrame:()PKUIUtilities;
- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts;
- (void)addDefaultTransformSpringWithStartTime:()PKUIUtilities;
- (void)addDefaultTranslationSpringWithVelocity:()PKUIUtilities startTime:;
- (void)addTransformSpringWithMass:()PKUIUtilities stiffness:damping:startTime:timing:;
- (void)addTranslationSpringWithMass:()PKUIUtilities stiffness:damping:startTime:velocity:timing:;
- (void)pkui_miniShakeWithCompletion:()PKUIUtilities;
- (void)pkui_setExcludedFromScreenCapture:()PKUIUtilities andBroadcasting:;
- (void)pkui_shakeWithCompletion:()PKUIUtilities;
- (void)pkui_smallShakeWithCompletion:()PKUIUtilities;
@end

@implementation UIView(PKUIUtilities)

+ (void)pkui_animateUsingOptions:()PKUIUtilities delay:velocity:animations:completion:
{
  v12 = MEMORY[0x1E69BC7A0];
  v13 = a7;
  v14 = a6;
  v15 = [v12 createDefaultFactory];
  [v15 setVelocity:a3];
  [a1 pkui_animateUsingFactory:v15 withDelay:a5 options:v14 animations:v13 completion:a2];
}

+ (void)pkui_animateUsingFactory:()PKUIUtilities withDelay:options:animations:completion:
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v13;
  if (!v13)
  {
    v11 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
  }

  v12 = MEMORY[0x1E69DD250];
  v14 = v11;
  [v11 duration];
  [v12 _animateWithDuration:a4 delay:v14 options:v9 factory:v10 animations:? completion:?];
}

- (void)pkui_shakeWithCompletion:()PKUIUtilities
{
  v7 = a3;
  v4 = [MEMORY[0x1E6979300] pkui_shakeAnimation];
  if (v7)
  {
    [v4 pkui_setCompletionHandler:v7];
  }

  v5 = [a1 layer];
  v6 = [v5 pkui_addAdditiveAnimation:v4];
}

- (void)pkui_smallShakeWithCompletion:()PKUIUtilities
{
  v7 = a3;
  v4 = [MEMORY[0x1E6979300] pkui_smallShakeAnimation];
  if (v7)
  {
    [v4 pkui_setCompletionHandler:v7];
  }

  v5 = [a1 layer];
  v6 = [v5 pkui_addAdditiveAnimation:v4];
}

- (void)pkui_miniShakeWithCompletion:()PKUIUtilities
{
  v7 = a3;
  v4 = [MEMORY[0x1E6979300] pkui_miniShakeAnimation];
  if (v7)
  {
    [v4 pkui_setCompletionHandler:v7];
  }

  v5 = [a1 layer];
  v6 = [v5 pkui_addAdditiveAnimation:v4];
}

- (void)addDefaultTranslationSpringWithVelocity:()PKUIUtilities startTime:
{
  v6 = PKMagicCurve();
  [a1 addTranslationSpringWithMass:v6 stiffness:2.0 damping:300.0 startTime:400.0 velocity:a3 timing:a2];
}

- (void)addTranslationSpringWithMass:()PKUIUtilities stiffness:damping:startTime:velocity:timing:
{
  v14 = MEMORY[0x1E69794A8];
  v15 = a8;
  v19 = [v14 animationWithKeyPath:@"position"];
  [v19 setVelocity:a6];
  [v19 setRemovedOnCompletion:1];
  [v19 setMass:a2];
  [v19 setStiffness:a3];
  [v19 setDamping:a4];
  v16 = [a1 layer];
  v17 = [v16 valueForKey:@"position"];
  [v19 setFromValue:v17];

  [v19 setFillMode:*MEMORY[0x1E69797D8]];
  [v19 setTimingFunction:v15];

  [v19 setBeginTime:a5];
  [v19 durationForEpsilon:0.00100000005];
  [v19 setDuration:?];
  v18 = [a1 layer];
  [v18 addAnimation:v19 forKey:@"position"];
}

- (void)addDefaultTransformSpringWithStartTime:()PKUIUtilities
{
  v4 = PKMagicCurve();
  [a1 addTransformSpringWithMass:v4 stiffness:2.0 damping:300.0 startTime:400.0 timing:a2];
}

- (void)addTransformSpringWithMass:()PKUIUtilities stiffness:damping:startTime:timing:
{
  v12 = MEMORY[0x1E69794A8];
  v13 = a7;
  v17 = [v12 animationWithKeyPath:@"transform"];
  [v17 setRemovedOnCompletion:1];
  [v17 setMass:a2];
  [v17 setStiffness:a3];
  [v17 setDamping:a4];
  v14 = [a1 layer];
  v15 = [v14 valueForKey:@"transform"];
  [v17 setFromValue:v15];

  [v17 setFillMode:*MEMORY[0x1E69797D8]];
  [v17 setTimingFunction:v13];

  [v17 setBeginTime:a5];
  [v17 durationForEpsilon:0.00100000005];
  [v17 setDuration:?];
  v16 = [a1 layer];
  [v16 addAnimation:v17 forKey:@"transform"];
}

- (id)pkui_translationAnimation
{
  v1 = [a1 layer];
  v2 = [v1 animationForKey:@"position"];

  return v2;
}

- (id)pkui_viewControllerFromResponderChain
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  while (1)
  {
    v4 = v3;
    v3 = [v3 nextResponder];

    if (!v3)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      break;
    }
  }

  objc_autoreleasePoolPop(v2);

  return v3;
}

- (BOOL)pkui_readableContentBoundsWithMargins:()PKUIUtilities
{
  [a1 bounds];
  v9 = v8;
  v11 = v10;
  v13 = a3 + v12;
  v14 = v8 + 0.0;
  v16 = v15 - (a3 + a5);
  v17 = [a1 readableContentGuide];
  [v17 layoutFrame];
  v19 = v18;
  v21 = v20;

  v23.origin.x = v13;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v11;
  v25.origin.x = v19;
  v25.origin.y = v9;
  v25.size.width = v21;
  v25.size.height = v11;
  v24 = CGRectIntersection(v23, v25);
  return CGRectIsNull(v24);
}

- (void)pkui_setExcludedFromScreenCapture:()PKUIUtilities andBroadcasting:
{
  v10 = [a1 layer];
  v6 = [v10 disableUpdateMask];
  v7 = PKSensitiveFieldBroadcastingEnabled() ^ 1;
  if ((v7 & a4) != 0)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & a3) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v10 setDisableUpdateMask:v8 | v6 & 0xFFFFFFED | v9];
}

- (uint64_t)pkui_setBoundsAndPositionFromFrame:()PKUIUtilities
{
  [a1 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  MidY = CGRectGetMidY(v15);

  return [a1 setCenter:{MidX, MidY}];
}

- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];
  v3 = v2 < 7;
  v4 = 0x62u >> v2;

  return v3 & v4;
}

@end