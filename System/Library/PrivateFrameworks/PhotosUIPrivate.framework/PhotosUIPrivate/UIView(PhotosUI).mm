@interface UIView(PhotosUI)
+ (double)pu_layoutMarginWidthForCurrentScreenSize;
+ (long)pu_springOscillationRootAtIndex:()PhotosUI forMass:stiffness:damping:initialVelocity:;
+ (void)_pu_animateWithDuration:()PhotosUI enforced:animations:completion:;
+ (void)pu_transitionWithView:()PhotosUI duration:options:animations:completion:;
- (uint64_t)pu_addTransform:()PhotosUI;
- (uint64_t)pu_setCenterAndBoundsForFrameRect:()PhotosUI;
- (void)pu_removeAllGeometryAnimationsRecursively:()PhotosUI;
@end

@implementation UIView(PhotosUI)

- (void)pu_removeAllGeometryAnimationsRecursively:()PhotosUI
{
  v27 = *MEMORY[0x1E69E9840];
  layer = [self layer];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  animationKeys = [layer animationKeys];
  v5 = [animationKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(animationKeys);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (([v9 hasPrefix:@"position"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"bounds") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"opacity") & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"transform"))
        {
          [layer removeAnimationForKey:v9];
        }
      }

      v6 = [animationKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  if (a3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subviews = [self subviews];
    v11 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v17 + 1) + 8 * j) pu_removeAllGeometryAnimationsRecursively:1];
        }

        v12 = [subviews countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (uint64_t)pu_setCenterAndBoundsForFrameRect:()PhotosUI
{
  MidX = CGRectGetMidX(*&a2);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  [self setCenter:{MidX, CGRectGetMidY(v15)}];
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);

  return [self setBounds:{v11, v12, a4, a5}];
}

- (uint64_t)pu_addTransform:()PhotosUI
{
  memset(&v10, 0, sizeof(v10));
  [self transform];
  t1 = v10;
  memset(&v9, 0, sizeof(v9));
  v5 = a3[1];
  *&v7.a = *a3;
  *&v7.c = v5;
  *&v7.tx = a3[2];
  CGAffineTransformConcat(&v9, &t1, &v7);
  t1 = v9;
  return [self setTransform:&t1];
}

+ (long)pu_springOscillationRootAtIndex:()PhotosUI forMass:stiffness:damping:initialVelocity:
{
  v11 = sqrt(a4 * a5);
  v12 = a6 / (v11 + v11);
  if (v12 >= 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIView+PhotosUI.m" lineNumber:76 description:{@"The specified damped spring system is critically or over damped, and doesn't oscillate."}];
  }

  v13 = sqrt(a5 / a4);
  return -(atan(1.0 / (-(a7 - v12 * v13) / (v13 * sqrt(1.0 - v12 * v12)))) - a3 * 3.14159265) / (v13 * a5);
}

+ (void)pu_transitionWithView:()PhotosUI duration:options:animations:completion:
{
  v12 = a7;
  if (self == 0.0)
  {
    (*(a6 + 16))(a6);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    (*(v12 + 2))();
  }

  else
  {
    [MEMORY[0x1E69DD250] transitionWithView:a4 duration:a5 options:a6 animations:v12 completion:self];
  }

  v11 = v12;
LABEL_6:
}

+ (void)_pu_animateWithDuration:()PhotosUI enforced:animations:completion:
{
  v9 = a5;
  v10 = a6;
  if (self == 0.0)
  {
    v9[2](v9);
    if (v10)
    {
      v10[2](v10, 1);
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:self];
    if (v10)
    {
      v11 = dispatch_time(0, (self * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__UIView_PhotosUI___pu_animateWithDuration_enforced_animations_completion___block_invoke;
      block[3] = &unk_1E7B80C88;
      v13 = v10;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v10 completion:self];
  }
}

+ (double)pu_layoutMarginWidthForCurrentScreenSize
{
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen bounds];
  v2 = v1;
  v4 = v3;

  if (v2 >= v4)
  {
    v2 = v4;
  }

  legacyLayoutMarginWidthInterpolator = [MEMORY[0x1E69C4548] legacyLayoutMarginWidthInterpolator];
  [legacyLayoutMarginWidthInterpolator valueForMetric:v2];
  v7 = v6;

  return v7;
}

@end