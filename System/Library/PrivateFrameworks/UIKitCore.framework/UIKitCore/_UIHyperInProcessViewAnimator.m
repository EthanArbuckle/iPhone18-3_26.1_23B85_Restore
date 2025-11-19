@interface _UIHyperInProcessViewAnimator
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UIViewSpringAnimationBehavior)_springAnimationBehavior;
- (_UIHyperInProcessViewAnimator)initWithCoder:(id)a3;
- (_UIHyperInProcessViewAnimator)initWithDimensions:(unint64_t)a3;
- (_UIHyperInteractor)_interactor;
- (_UISpringParameters)_nonTrackingSpringParameters;
- (_UISpringParameters)_trackingSpringParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_animateInteractive:(BOOL)a3 animations:(id)a4;
- (void)_interactionChanged;
- (void)_interactionEndedMutatingState:(id)a3;
- (void)_setNonTrackingSpringParameters:(id)a3;
- (void)_setTrackingSpringParameters:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHyperInProcessViewAnimator

- (_UIHyperInProcessViewAnimator)initWithDimensions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIHyperInProcessViewAnimator;
  result = [(_UIHyperInProcessViewAnimator *)&v5 init];
  if (result)
  {
    result->__dimensions = a3;
  }

  return result;
}

- (NSString)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__dimensions);
  v9 = v3;
  v4 = NSStringFromSelector(sel__trackingSpringParameters);
  v10 = v4;
  v5 = NSStringFromSelector(sel__nonTrackingSpringParameters);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [UIDescriptionBuilder descriptionForObject:self keys:v6, v9, v10];

  return v7;
}

- (_UISpringParameters)_trackingSpringParameters
{
  trackingSpringParameters = self->__trackingSpringParameters;
  if (!trackingSpringParameters)
  {
    v4 = [_UISpringParameters parametersWithDampingRatio:1.0 response:0.1];
    v5 = self->__trackingSpringParameters;
    self->__trackingSpringParameters = v4;

    trackingSpringParameters = self->__trackingSpringParameters;
  }

  return trackingSpringParameters;
}

- (void)_setTrackingSpringParameters:(id)a3
{
  v4 = a3;
  v5 = self->__trackingSpringParameters;
  v6 = v4;
  v14 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v14;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)v5 isEqual:v6];

  v8 = v14;
  if (!v7)
  {
LABEL_8:
    [(_UIHyperInProcessViewAnimator *)self willChangeValueForKey:@"_trackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    trackingSpringParameters = self->__trackingSpringParameters;
    self->__trackingSpringParameters = v9;

    [(_UIHyperInProcessViewAnimator *)self didChangeValueForKey:@"_trackingSpringParameters"];
    v5 = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [(_UISpringParameters *)v14 _dampingRatio];
    v12 = v11;
    [(_UISpringParameters *)v14 _response];
    [(_UISpringParameters *)v5 setTrackingDampingRatio:v12 response:v13 dampingRatioSmoothing:0.0 responseSmoothing:0.0];
    goto LABEL_9;
  }

LABEL_10:
}

- (_UISpringParameters)_nonTrackingSpringParameters
{
  nonTrackingSpringParameters = self->__nonTrackingSpringParameters;
  if (!nonTrackingSpringParameters)
  {
    v4 = [_UISpringParameters parametersWithDampingRatio:1.0 response:0.3];
    v5 = self->__nonTrackingSpringParameters;
    self->__nonTrackingSpringParameters = v4;

    nonTrackingSpringParameters = self->__nonTrackingSpringParameters;
  }

  return nonTrackingSpringParameters;
}

- (void)_setNonTrackingSpringParameters:(id)a3
{
  v4 = a3;
  v5 = self->__nonTrackingSpringParameters;
  v6 = v4;
  v14 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v14;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)v5 isEqual:v6];

  v8 = v14;
  if (!v7)
  {
LABEL_8:
    [(_UIHyperInProcessViewAnimator *)self willChangeValueForKey:@"_nonTrackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    nonTrackingSpringParameters = self->__nonTrackingSpringParameters;
    self->__nonTrackingSpringParameters = v9;

    [(_UIHyperInProcessViewAnimator *)self didChangeValueForKey:@"_nonTrackingSpringParameters"];
    v5 = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [(_UISpringParameters *)v14 _dampingRatio];
    v12 = v11;
    [(_UISpringParameters *)v14 _response];
    [(_UISpringParameters *)v5 setDampingRatio:v12 response:v13];
    goto LABEL_9;
  }

LABEL_10:
}

- (UIViewSpringAnimationBehavior)_springAnimationBehavior
{
  springAnimationBehavior = self->__springAnimationBehavior;
  if (!springAnimationBehavior)
  {
    v4 = objc_alloc_init(UIViewSpringAnimationBehavior);
    v5 = self->__springAnimationBehavior;
    self->__springAnimationBehavior = v4;

    [(UIViewSpringAnimationBehavior *)self->__springAnimationBehavior setInertialTargetSmoothing:0.08];
    [(UIViewSpringAnimationBehavior *)self->__springAnimationBehavior setInertialProjectionDeceleration:0.995];
    v6 = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
    v7 = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
    v8 = self->__springAnimationBehavior;
    [v6 _dampingRatio];
    v10 = v9;
    [v6 _response];
    [(UIViewSpringAnimationBehavior *)v8 setTrackingDampingRatio:v10 response:v11 dampingRatioSmoothing:0.0 responseSmoothing:0.0];
    v12 = self->__springAnimationBehavior;
    [v7 _dampingRatio];
    v14 = v13;
    [v7 _response];
    [(UIViewSpringAnimationBehavior *)v12 setDampingRatio:v14 response:v15];

    springAnimationBehavior = self->__springAnimationBehavior;
  }

  return springAnimationBehavior;
}

- (void)_interactionChanged
{
  v3 = [(_UIHyperInProcessViewAnimator *)self _interactor];
  v4 = [v3 _isInteractive];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52___UIHyperInProcessViewAnimator__interactionChanged__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [(_UIHyperInProcessViewAnimator *)self _animateInteractive:v4 animations:v5];
}

- (void)_interactionEndedMutatingState:(id)a3
{
  (*(a3 + 2))(a3, a2);
  v4 = [(_UIHyperInProcessViewAnimator *)self _interactor];
  v5 = [v4 _isInteractive];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIHyperInProcessViewAnimator__interactionEndedMutatingState___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [(_UIHyperInProcessViewAnimator *)self _animateInteractive:v5 animations:v6];
}

- (void)_animateInteractive:(BOOL)a3 animations:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(_UIHyperInProcessViewAnimator *)self _overrideSpringAnimationBehavior];
  if (v6)
  {
    [UIView _animateUsingSpringBehavior:v6 tracking:v4 animations:v8 completion:0];
  }

  else
  {
    v7 = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [UIView _animateUsingSpringBehavior:v7 tracking:v4 animations:v8 completion:0];
  }
}

- (_UIHyperInProcessViewAnimator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[_UIHyperInProcessViewAnimator initWithDimensions:](self, "initWithDimensions:", [v4 decodeIntegerForKey:@"_dimensions"]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_trackingSpringParameters"];
  [(_UIHyperInProcessViewAnimator *)v5 _setTrackingSpringParameters:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nonTrackingSpringParameters"];

  [(_UIHyperInProcessViewAnimator *)v5 _setNonTrackingSpringParameters:v7];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[_UIHyperInProcessViewAnimator _dimensions](self forKey:{"_dimensions"), @"_dimensions"}];
  v5 = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
  [v4 encodeObject:v5 forKey:@"_trackingSpringParameters"];

  v6 = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
  [v4 encodeObject:v6 forKey:@"_nonTrackingSpringParameters"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UIHyperInProcessViewAnimator alloc] initWithDimensions:[(_UIHyperInProcessViewAnimator *)self _dimensions]];
  v5 = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
  [(_UIHyperInProcessViewAnimator *)v4 _setTrackingSpringParameters:v5];

  v6 = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
  [(_UIHyperInProcessViewAnimator *)v4 _setNonTrackingSpringParameters:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHyperInProcessViewAnimator *)self _dimensions];
    if (v6 != [v5 _dimensions])
    {
      LOBYTE(v12) = 0;
LABEL_19:

      goto LABEL_20;
    }

    v7 = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
    v8 = [v5 _trackingSpringParameters];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v15 = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
    v16 = [v5 _nonTrackingSpringParameters];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_17;
  }

  LOBYTE(v12) = 0;
LABEL_20:

  return v12;
}

- (_UIHyperInteractor)_interactor
{
  WeakRetained = objc_loadWeakRetained(&self->__interactor);

  return WeakRetained;
}

@end