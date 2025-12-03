@interface _UIHyperInProcessViewAnimator
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UIViewSpringAnimationBehavior)_springAnimationBehavior;
- (_UIHyperInProcessViewAnimator)initWithCoder:(id)coder;
- (_UIHyperInProcessViewAnimator)initWithDimensions:(unint64_t)dimensions;
- (_UIHyperInteractor)_interactor;
- (_UISpringParameters)_nonTrackingSpringParameters;
- (_UISpringParameters)_trackingSpringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_animateInteractive:(BOOL)interactive animations:(id)animations;
- (void)_interactionChanged;
- (void)_interactionEndedMutatingState:(id)state;
- (void)_setNonTrackingSpringParameters:(id)parameters;
- (void)_setTrackingSpringParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperInProcessViewAnimator

- (_UIHyperInProcessViewAnimator)initWithDimensions:(unint64_t)dimensions
{
  v5.receiver = self;
  v5.super_class = _UIHyperInProcessViewAnimator;
  result = [(_UIHyperInProcessViewAnimator *)&v5 init];
  if (result)
  {
    result->__dimensions = dimensions;
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

- (void)_setTrackingSpringParameters:(id)parameters
{
  parametersCopy = parameters;
  _springAnimationBehavior = self->__trackingSpringParameters;
  v6 = parametersCopy;
  v14 = v6;
  if (_springAnimationBehavior == v6)
  {

LABEL_9:
    v8 = v14;
    goto LABEL_10;
  }

  if (!v6 || !_springAnimationBehavior)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)_springAnimationBehavior isEqual:v6];

  v8 = v14;
  if (!v7)
  {
LABEL_8:
    [(_UIHyperInProcessViewAnimator *)self willChangeValueForKey:@"_trackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    trackingSpringParameters = self->__trackingSpringParameters;
    self->__trackingSpringParameters = v9;

    [(_UIHyperInProcessViewAnimator *)self didChangeValueForKey:@"_trackingSpringParameters"];
    _springAnimationBehavior = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [(_UISpringParameters *)v14 _dampingRatio];
    v12 = v11;
    [(_UISpringParameters *)v14 _response];
    [(_UISpringParameters *)_springAnimationBehavior setTrackingDampingRatio:v12 response:v13 dampingRatioSmoothing:0.0 responseSmoothing:0.0];
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

- (void)_setNonTrackingSpringParameters:(id)parameters
{
  parametersCopy = parameters;
  _springAnimationBehavior = self->__nonTrackingSpringParameters;
  v6 = parametersCopy;
  v14 = v6;
  if (_springAnimationBehavior == v6)
  {

LABEL_9:
    v8 = v14;
    goto LABEL_10;
  }

  if (!v6 || !_springAnimationBehavior)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)_springAnimationBehavior isEqual:v6];

  v8 = v14;
  if (!v7)
  {
LABEL_8:
    [(_UIHyperInProcessViewAnimator *)self willChangeValueForKey:@"_nonTrackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    nonTrackingSpringParameters = self->__nonTrackingSpringParameters;
    self->__nonTrackingSpringParameters = v9;

    [(_UIHyperInProcessViewAnimator *)self didChangeValueForKey:@"_nonTrackingSpringParameters"];
    _springAnimationBehavior = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [(_UISpringParameters *)v14 _dampingRatio];
    v12 = v11;
    [(_UISpringParameters *)v14 _response];
    [(_UISpringParameters *)_springAnimationBehavior setDampingRatio:v12 response:v13];
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
    _trackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
    _nonTrackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
    v8 = self->__springAnimationBehavior;
    [_trackingSpringParameters _dampingRatio];
    v10 = v9;
    [_trackingSpringParameters _response];
    [(UIViewSpringAnimationBehavior *)v8 setTrackingDampingRatio:v10 response:v11 dampingRatioSmoothing:0.0 responseSmoothing:0.0];
    v12 = self->__springAnimationBehavior;
    [_nonTrackingSpringParameters _dampingRatio];
    v14 = v13;
    [_nonTrackingSpringParameters _response];
    [(UIViewSpringAnimationBehavior *)v12 setDampingRatio:v14 response:v15];

    springAnimationBehavior = self->__springAnimationBehavior;
  }

  return springAnimationBehavior;
}

- (void)_interactionChanged
{
  _interactor = [(_UIHyperInProcessViewAnimator *)self _interactor];
  _isInteractive = [_interactor _isInteractive];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52___UIHyperInProcessViewAnimator__interactionChanged__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [(_UIHyperInProcessViewAnimator *)self _animateInteractive:_isInteractive animations:v5];
}

- (void)_interactionEndedMutatingState:(id)state
{
  (*(state + 2))(state, a2);
  _interactor = [(_UIHyperInProcessViewAnimator *)self _interactor];
  _isInteractive = [_interactor _isInteractive];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIHyperInProcessViewAnimator__interactionEndedMutatingState___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [(_UIHyperInProcessViewAnimator *)self _animateInteractive:_isInteractive animations:v6];
}

- (void)_animateInteractive:(BOOL)interactive animations:(id)animations
{
  interactiveCopy = interactive;
  animationsCopy = animations;
  _overrideSpringAnimationBehavior = [(_UIHyperInProcessViewAnimator *)self _overrideSpringAnimationBehavior];
  if (_overrideSpringAnimationBehavior)
  {
    [UIView _animateUsingSpringBehavior:_overrideSpringAnimationBehavior tracking:interactiveCopy animations:animationsCopy completion:0];
  }

  else
  {
    _springAnimationBehavior = [(_UIHyperInProcessViewAnimator *)self _springAnimationBehavior];
    [UIView _animateUsingSpringBehavior:_springAnimationBehavior tracking:interactiveCopy animations:animationsCopy completion:0];
  }
}

- (_UIHyperInProcessViewAnimator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIHyperInProcessViewAnimator initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_trackingSpringParameters"];
  [(_UIHyperInProcessViewAnimator *)v5 _setTrackingSpringParameters:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nonTrackingSpringParameters"];

  [(_UIHyperInProcessViewAnimator *)v5 _setNonTrackingSpringParameters:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_UIHyperInProcessViewAnimator _dimensions](self forKey:{"_dimensions"), @"_dimensions"}];
  _trackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
  [coderCopy encodeObject:_trackingSpringParameters forKey:@"_trackingSpringParameters"];

  _nonTrackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
  [coderCopy encodeObject:_nonTrackingSpringParameters forKey:@"_nonTrackingSpringParameters"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperInProcessViewAnimator alloc] initWithDimensions:[(_UIHyperInProcessViewAnimator *)self _dimensions]];
  _trackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
  [(_UIHyperInProcessViewAnimator *)v4 _setTrackingSpringParameters:_trackingSpringParameters];

  _nonTrackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
  [(_UIHyperInProcessViewAnimator *)v4 _setNonTrackingSpringParameters:_nonTrackingSpringParameters];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperInProcessViewAnimator *)self _dimensions];
    if (_dimensions != [v5 _dimensions])
    {
      LOBYTE(v12) = 0;
LABEL_19:

      goto LABEL_20;
    }

    _trackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _trackingSpringParameters];
    _trackingSpringParameters2 = [v5 _trackingSpringParameters];
    v9 = _trackingSpringParameters;
    v10 = _trackingSpringParameters2;
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

    _nonTrackingSpringParameters = [(_UIHyperInProcessViewAnimator *)self _nonTrackingSpringParameters];
    _nonTrackingSpringParameters2 = [v5 _nonTrackingSpringParameters];
    v14 = _nonTrackingSpringParameters;
    v17 = _nonTrackingSpringParameters2;
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