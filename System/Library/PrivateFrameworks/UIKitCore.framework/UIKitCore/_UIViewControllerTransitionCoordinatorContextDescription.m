@interface _UIViewControllerTransitionCoordinatorContextDescription
+ (id)descriptionForTransitionCoordinatorContext:(id)a3;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerTransitionCoordinatorContextDescription)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTargetTransform:(CGAffineTransform *)a3;
@end

@implementation _UIViewControllerTransitionCoordinatorContextDescription

+ (id)descriptionForTransitionCoordinatorContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAnimated:{objc_msgSend(v4, "isAnimated")}];
  [v5 setInteractive:{objc_msgSend(v4, "isInteractive")}];
  [v5 setCancelled:{objc_msgSend(v4, "isCancelled")}];
  [v4 transitionDuration];
  [v5 setTransitionDuration:?];
  [v4 percentComplete];
  [v5 setPercentComplete:?];
  [v4 completionVelocity];
  [v5 setCompletionVelocity:?];
  [v5 setCompletionCurve:{objc_msgSend(v4, "completionCurve")}];
  if (v4)
  {
    [v4 targetTransform];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v5 setTargetTransform:v7];
  [v5 setToOrientation:0];
  [v5 setFromOrientation:0];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isAnimated](self forKey:{"isAnimated"), @"_UIViewControllerTransitionCoordinatorDescriptionIsAnimatedKey"}];
  [v4 encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isInteractive](self forKey:{"isInteractive"), @"_UIViewControllerTransitionCoordinatorDescriptionIsInteractiveKey"}];
  [v4 encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isCancelled](self forKey:{"isCancelled"), @"_UIViewControllerTransitionCoordinatorDescriptionIsCancelledKey"}];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self transitionDuration];
  [v4 encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionTransitionDurationKey" forKey:?];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self percentComplete];
  [v4 encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionPercentCompleteKey" forKey:?];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self completionVelocity];
  [v4 encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionVelocityKey" forKey:?];
  [v4 encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription completionCurve](self forKey:{"completionCurve"), @"_UIViewControllerTransitionCoordinatorDescriptionCompletionCurveKey"}];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self targetTransform];
  v5 = NSStringFromCGAffineTransform(&v6);
  [v4 encodeObject:v5 forKey:@"_UIViewControllerTransitionCoordinatorDescriptionTargetTransformKey"];

  [v4 encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription toOrientation](self forKey:{"toOrientation"), @"_UIViewControllerTransitionCoordinatorDescriptionToOrientationKey"}];
  [v4 encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription fromOrientation](self forKey:{"fromOrientation"), @"_UIViewControllerTransitionCoordinatorDescriptionFromOrientationKey"}];
}

- (_UIViewControllerTransitionCoordinatorContextDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIViewControllerTransitionCoordinatorContextDescription;
  v5 = [(_UIViewControllerTransitionCoordinatorContextDescription *)&v10 init];
  if (v5)
  {
    -[_UIViewControllerTransitionCoordinatorContextDescription setAnimated:](v5, "setAnimated:", [v4 decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsAnimatedKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setInteractive:](v5, "setInteractive:", [v4 decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsInteractiveKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setCancelled:](v5, "setCancelled:", [v4 decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsCancelledKey"]);
    [v4 decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionTransitionDurationKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setTransitionDuration:?];
    [v4 decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionPercentCompleteKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setPercentComplete:?];
    [v4 decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionVelocityKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setCompletionVelocity:?];
    -[_UIViewControllerTransitionCoordinatorContextDescription setCompletionCurve:](v5, "setCompletionCurve:", [v4 decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionCurveKey"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UIViewControllerTransitionCoordinatorDescriptionTargetTransformKey"];
    CGAffineTransformFromString(&v9, v6);
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setTargetTransform:&v9];

    -[_UIViewControllerTransitionCoordinatorContextDescription setToOrientation:](v5, "setToOrientation:", [v4 decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionToOrientationKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setFromOrientation:](v5, "setFromOrientation:", [v4 decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionFromOrientationKey"]);
    v7 = v5;
  }

  return v5;
}

- (CGAffineTransform)targetTransform
{
  v3 = *&self[1].tx;
  *&retstr->a = *&self[1].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].a;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_targetTransform.c = *&a3->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end