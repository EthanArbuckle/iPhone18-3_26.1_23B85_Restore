@interface _UIViewControllerTransitionCoordinatorContextDescription
+ (id)descriptionForTransitionCoordinatorContext:(id)context;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerTransitionCoordinatorContextDescription)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setTargetTransform:(CGAffineTransform *)transform;
@end

@implementation _UIViewControllerTransitionCoordinatorContextDescription

+ (id)descriptionForTransitionCoordinatorContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(self);
  [v5 setAnimated:{objc_msgSend(contextCopy, "isAnimated")}];
  [v5 setInteractive:{objc_msgSend(contextCopy, "isInteractive")}];
  [v5 setCancelled:{objc_msgSend(contextCopy, "isCancelled")}];
  [contextCopy transitionDuration];
  [v5 setTransitionDuration:?];
  [contextCopy percentComplete];
  [v5 setPercentComplete:?];
  [contextCopy completionVelocity];
  [v5 setCompletionVelocity:?];
  [v5 setCompletionCurve:{objc_msgSend(contextCopy, "completionCurve")}];
  if (contextCopy)
  {
    [contextCopy targetTransform];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isAnimated](self forKey:{"isAnimated"), @"_UIViewControllerTransitionCoordinatorDescriptionIsAnimatedKey"}];
  [coderCopy encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isInteractive](self forKey:{"isInteractive"), @"_UIViewControllerTransitionCoordinatorDescriptionIsInteractiveKey"}];
  [coderCopy encodeBool:-[_UIViewControllerTransitionCoordinatorContextDescription isCancelled](self forKey:{"isCancelled"), @"_UIViewControllerTransitionCoordinatorDescriptionIsCancelledKey"}];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self transitionDuration];
  [coderCopy encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionTransitionDurationKey" forKey:?];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self percentComplete];
  [coderCopy encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionPercentCompleteKey" forKey:?];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self completionVelocity];
  [coderCopy encodeDouble:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionVelocityKey" forKey:?];
  [coderCopy encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription completionCurve](self forKey:{"completionCurve"), @"_UIViewControllerTransitionCoordinatorDescriptionCompletionCurveKey"}];
  [(_UIViewControllerTransitionCoordinatorContextDescription *)self targetTransform];
  v5 = NSStringFromCGAffineTransform(&v6);
  [coderCopy encodeObject:v5 forKey:@"_UIViewControllerTransitionCoordinatorDescriptionTargetTransformKey"];

  [coderCopy encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription toOrientation](self forKey:{"toOrientation"), @"_UIViewControllerTransitionCoordinatorDescriptionToOrientationKey"}];
  [coderCopy encodeInteger:-[_UIViewControllerTransitionCoordinatorContextDescription fromOrientation](self forKey:{"fromOrientation"), @"_UIViewControllerTransitionCoordinatorDescriptionFromOrientationKey"}];
}

- (_UIViewControllerTransitionCoordinatorContextDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UIViewControllerTransitionCoordinatorContextDescription;
  v5 = [(_UIViewControllerTransitionCoordinatorContextDescription *)&v10 init];
  if (v5)
  {
    -[_UIViewControllerTransitionCoordinatorContextDescription setAnimated:](v5, "setAnimated:", [coderCopy decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsAnimatedKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setInteractive:](v5, "setInteractive:", [coderCopy decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsInteractiveKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setCancelled:](v5, "setCancelled:", [coderCopy decodeBoolForKey:@"_UIViewControllerTransitionCoordinatorDescriptionIsCancelledKey"]);
    [coderCopy decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionTransitionDurationKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setTransitionDuration:?];
    [coderCopy decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionPercentCompleteKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setPercentComplete:?];
    [coderCopy decodeDoubleForKey:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionVelocityKey"];
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setCompletionVelocity:?];
    -[_UIViewControllerTransitionCoordinatorContextDescription setCompletionCurve:](v5, "setCompletionCurve:", [coderCopy decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionCompletionCurveKey"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UIViewControllerTransitionCoordinatorDescriptionTargetTransformKey"];
    CGAffineTransformFromString(&v9, v6);
    [(_UIViewControllerTransitionCoordinatorContextDescription *)v5 setTargetTransform:&v9];

    -[_UIViewControllerTransitionCoordinatorContextDescription setToOrientation:](v5, "setToOrientation:", [coderCopy decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionToOrientationKey"]);
    -[_UIViewControllerTransitionCoordinatorContextDescription setFromOrientation:](v5, "setFromOrientation:", [coderCopy decodeIntegerForKey:@"_UIViewControllerTransitionCoordinatorDescriptionFromOrientationKey"]);
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

- (void)setTargetTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_targetTransform.c = *&transform->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end