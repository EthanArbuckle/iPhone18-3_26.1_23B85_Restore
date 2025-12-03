@interface SBSystemApertureViewControllerRotationTransitionContext
+ (CGAffineTransform)transformForRotationToInterfaceOrientation:(SEL)orientation;
- (CGAffineTransform)_affineTransform;
- (SBSystemApertureViewControllerRotationTransitionContext)initWithTargetOrientation:(int64_t)orientation;
@end

@implementation SBSystemApertureViewControllerRotationTransitionContext

+ (CGAffineTransform)transformForRotationToInterfaceOrientation:(SEL)orientation
{
  switch(a4)
  {
    case 1:
      v4 = 0.0;
      break;
    case 3:
      v4 = 1.57079633;
      break;
    case 4:
      v4 = -1.57079633;
      break;
    default:
      v4 = 3.14159265;
      if (a4 != 2)
      {
        v4 = 0.0;
      }

      break;
  }

  return CGAffineTransformMakeRotation(retstr, v4);
}

- (SBSystemApertureViewControllerRotationTransitionContext)initWithTargetOrientation:(int64_t)orientation
{
  v10.receiver = self;
  v10.super_class = SBSystemApertureViewControllerRotationTransitionContext;
  v4 = [(_UIViewControllerTransitionContext *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    if (v5)
    {
      [v5 transformForRotationToInterfaceOrientation:orientation];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    *(v4 + 184) = v8;
    *(v4 + 200) = v9;
    *(v4 + 168) = v7;
  }

  return v4;
}

- (CGAffineTransform)_affineTransform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

@end