@interface _UIProgressiveBlurPresentationAnimator
+ (id)alphaAnimationFactory;
+ (id)transformAnimationFactory;
- (double)transitionDuration:(id)a3;
- (id)initForPresenting:(BOOL)a3;
- (void)animateTransition:(id)a3;
@end

@implementation _UIProgressiveBlurPresentationAnimator

- (id)initForPresenting:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIProgressiveBlurPresentationAnimator;
  result = [(_UIProgressiveBlurPresentationAnimator *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (double)transitionDuration:(id)a3
{
  v3 = [(_UIProgressiveBlurPresentationAnimator *)self isPresenting];
  result = 0.7;
  if (!v3)
  {
    return 0.5;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(_UIProgressiveBlurPresentationAnimator *)self isPresenting];
  v6 = [v4 viewForKey:@"UITransitionContextToView"];
  v7 = [v4 viewForKey:@"UITransitionContextFromView"];
  v8 = v7;
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = [v4 containerView];
  [v11 bounds];
  [v10 setFrame:?];
  [v11 addSubview:v10];
  memset(&v40, 0, sizeof(v40));
  if (v5)
  {
    CGAffineTransformMakeScale(&v40, 0.9, 0.9);
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&v39.a = *MEMORY[0x1E695EFD0];
    *&v39.c = v12;
    *&v39.tx = *(MEMORY[0x1E695EFD0] + 32);
    v13 = 0.0;
    v14 = 1.0;
  }

  else
  {
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&v40.a = *MEMORY[0x1E695EFD0];
    *&v40.c = v15;
    *&v40.tx = *(MEMORY[0x1E695EFD0] + 32);
    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeScale(&v39, 0.9, 0.9);
    v13 = 1.0;
    v14 = 0.0;
  }

  v38 = v40;
  [v10 setTransform:&v38];
  [v10 setAlpha:v13];
  [(_UIProgressiveBlurPresentationAnimator *)self transitionDuration:v4];
  v17 = v16;
  if ([(_UIProgressiveBlurPresentationAnimator *)self isPresenting])
  {
    v18 = v17 * 0.4;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [objc_opt_class() alphaAnimationFactory];
  v20 = [objc_opt_class() transformAnimationFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v35 = v39;
  v27[2] = __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke;
  v27[3] = &unk_1E71016F0;
  v37 = v5;
  v32 = v17;
  v33 = 0x403E000000000000;
  v28 = v20;
  v29 = v10;
  v30 = v19;
  v31 = 0x4045000000000000;
  v34 = v18;
  v36 = v14;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_5;
  v25[3] = &unk_1E70F5AC0;
  v26 = v4;
  v21 = v4;
  v22 = v19;
  v23 = v10;
  v24 = v20;
  [UIView _animateWithDuration:393248 delay:v22 options:v27 factory:v25 animations:v17 completion:0.0];
}

+ (id)alphaAnimationFactory
{
  v2 = [[_UIProgressiveBlurPresentationAnimationFactory alloc] initWithCurve:0];

  return v2;
}

+ (id)transformAnimationFactory
{
  v2 = [[_UIProgressiveBlurPresentationAnimationFactory alloc] initWithCurve:1];

  return v2;
}

@end