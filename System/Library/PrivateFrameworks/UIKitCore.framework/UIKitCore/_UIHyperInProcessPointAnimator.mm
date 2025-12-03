@interface _UIHyperInProcessPointAnimator
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISelectionFeedbackGenerator)_feedbackGenerator;
- (UIViewSpringAnimationBehavior)_springAnimationBehavior;
- (_UIHyperInProcessPointAnimator)initWithCoder:(id)coder;
- (_UIHyperInProcessPointAnimator)initWithDimensions:(unint64_t)dimensions;
- (_UIHyperInteractor)_interactor;
- (_UISpringParameters)_nonTrackingSpringParameters;
- (_UISpringParameters)_trackingSpringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_animateWithParameters:(id)parameters animations:(id)animations;
- (void)_animateWithPrelude:(id)prelude animations:(id)animations;
- (void)_interactionBegan;
- (void)_interactionChanged;
- (void)_interactionEndedMutatingState:(id)state;
- (void)_setNonTrackingSpringParameters:(id)parameters;
- (void)_setTrackingSpringParameters:(id)parameters;
- (void)_updateAnimatablePropertyValuesToConstrainedPoint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperInProcessPointAnimator

- (_UIHyperInProcessPointAnimator)initWithDimensions:(unint64_t)dimensions
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _UIHyperInProcessPointAnimator;
  v4 = [(_UIHyperInProcessPointAnimator *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = dimensions;
    v6 = [[UIViewVectorAnimatableProperty alloc] initWithLength:dimensions];
    animatableProperty = v5->__animatableProperty;
    v5->__animatableProperty = v6;

    objc_initWeak(&location, v5);
    v14[0] = v5->__animatableProperty;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53___UIHyperInProcessPointAnimator_initWithDimensions___block_invoke;
    v10[3] = &unk_1E70F5A28;
    objc_copyWeak(&v11, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v8 presentationValueChangedCallback:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (NSString)description
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__dimensions);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel__trackingSpringParameters);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel__nonTrackingSpringParameters);
  v10[2] = v5;
  v6 = NSStringFromSelector(sel__generatesFeedbackWhenBoundaryIsCrossed);
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [UIDescriptionBuilder descriptionForObject:self keys:v7];

  return v8;
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
    [(_UIHyperInProcessPointAnimator *)self willChangeValueForKey:@"_trackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    trackingSpringParameters = self->__trackingSpringParameters;
    self->__trackingSpringParameters = v9;

    [(_UIHyperInProcessPointAnimator *)self didChangeValueForKey:@"_trackingSpringParameters"];
    _springAnimationBehavior = [(_UIHyperInProcessPointAnimator *)self _springAnimationBehavior];
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
    [(_UIHyperInProcessPointAnimator *)self willChangeValueForKey:@"_nonTrackingSpringParameters"];
    v9 = [(_UISpringParameters *)v14 copy];
    nonTrackingSpringParameters = self->__nonTrackingSpringParameters;
    self->__nonTrackingSpringParameters = v9;

    [(_UIHyperInProcessPointAnimator *)self didChangeValueForKey:@"_nonTrackingSpringParameters"];
    _springAnimationBehavior = [(_UIHyperInProcessPointAnimator *)self _springAnimationBehavior];
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
    _trackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _trackingSpringParameters];
    _nonTrackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _nonTrackingSpringParameters];
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

- (UISelectionFeedbackGenerator)_feedbackGenerator
{
  feedbackGenerator = self->__feedbackGenerator;
  if (!feedbackGenerator)
  {
    v4 = objc_alloc_init(UISelectionFeedbackGenerator);
    v5 = self->__feedbackGenerator;
    self->__feedbackGenerator = v4;

    feedbackGenerator = self->__feedbackGenerator;
  }

  return feedbackGenerator;
}

- (void)_updateAnimatablePropertyValuesToConstrainedPoint
{
  _animatableProperty = [(_UIHyperInProcessPointAnimator *)self _animatableProperty];
  _interactor = [(_UIHyperInProcessPointAnimator *)self _interactor];
  [_animatableProperty _copyValue:{objc_msgSend(_interactor, "_constrainedPoint")}];
}

- (void)_interactionBegan
{
  if ([(_UIHyperInProcessPointAnimator *)self _generatesFeedbackWhenBoundaryIsCrossed])
  {
    _feedbackGenerator = [(_UIHyperInProcessPointAnimator *)self _feedbackGenerator];
    [_feedbackGenerator prepare];
  }

  _interactor = [(_UIHyperInProcessPointAnimator *)self _interactor];
  _delegate = [_interactor _delegate];
  _interactor2 = [(_UIHyperInProcessPointAnimator *)self _interactor];
  [_delegate _hyperInteractorApplyPresentationPoint:_interactor2];

  [(_UIHyperInProcessPointAnimator *)self _updateAnimatablePropertyValuesToConstrainedPoint];
}

- (void)_interactionChanged
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UIHyperInProcessPointAnimator__interactionChanged__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53___UIHyperInProcessPointAnimator__interactionChanged__block_invoke_2;
  v2[3] = &unk_1E70F3590;
  [(_UIHyperInProcessPointAnimator *)self _animateWithPrelude:v3 animations:v2];
}

- (void)_interactionEndedMutatingState:(id)state
{
  stateCopy = state;
  v6[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UIHyperInProcessPointAnimator__interactionEndedMutatingState___block_invoke;
  v7[3] = &unk_1E70F4A50;
  v7[4] = self;
  v8 = stateCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIHyperInProcessPointAnimator__interactionEndedMutatingState___block_invoke_2;
  v6[3] = &unk_1E70F3590;
  v5 = stateCopy;
  [(_UIHyperInProcessPointAnimator *)self _animateWithPrelude:v7 animations:v6];
}

- (void)_animateWithParameters:(id)parameters animations:(id)animations
{
  animationsCopy = animations;
  parametersCopy = parameters;
  v8 = [[UISpringTimingParameters alloc] initWithParameters:parametersCopy];

  v7 = [[UIViewPropertyAnimator alloc] initWithDuration:v8 timingParameters:0.0];
  [(UIViewPropertyAnimator *)v7 addAnimations:animationsCopy];

  [(UIViewPropertyAnimator *)v7 startAnimation];
}

- (void)_animateWithPrelude:(id)prelude animations:(id)animations
{
  preludeCopy = prelude;
  animationsCopy = animations;
  _interactor = [(_UIHyperInProcessPointAnimator *)self _interactor];
  _isOverridingPresentationPoint = [_interactor _isOverridingPresentationPoint];

  if ((_isOverridingPresentationPoint & 1) == 0)
  {
    _interactor2 = [(_UIHyperInProcessPointAnimator *)self _interactor];
    _animatableProperty = [(_UIHyperInProcessPointAnimator *)self _animatableProperty];
    [_interactor2 _copyOverridePresentationPoint:{objc_msgSend(_animatableProperty, "_presentationValue")}];

    _interactor3 = [(_UIHyperInProcessPointAnimator *)self _interactor];
    [_interactor3 _setOverridingPresentationPoint:1];
  }

  preludeCopy[2](preludeCopy);
  _springAnimationBehavior = [(_UIHyperInProcessPointAnimator *)self _springAnimationBehavior];
  _interactor4 = [(_UIHyperInProcessPointAnimator *)self _interactor];
  _isInteractive = [_interactor4 _isInteractive];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___UIHyperInProcessPointAnimator__animateWithPrelude_animations___block_invoke;
  v16[3] = &unk_1E70F3FD8;
  v16[4] = self;
  [UIView _animateUsingSpringBehavior:_springAnimationBehavior tracking:_isInteractive animations:animationsCopy completion:v16];
}

- (_UIHyperInProcessPointAnimator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIHyperInProcessPointAnimator initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_trackingSpringParameters"];
  [(_UIHyperInProcessPointAnimator *)v5 _setTrackingSpringParameters:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nonTrackingSpringParameters"];
  [(_UIHyperInProcessPointAnimator *)v5 _setNonTrackingSpringParameters:v7];

  v8 = [coderCopy decodeBoolForKey:@"_generatesFeedbackWhenBoundaryIsCrossed"];
  [(_UIHyperInProcessPointAnimator *)v5 _setGeneratesFeedbackWhenBoundaryIsCrossed:v8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_UIHyperInProcessPointAnimator _dimensions](self forKey:{"_dimensions"), @"_dimensions"}];
  _trackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _trackingSpringParameters];
  [coderCopy encodeObject:_trackingSpringParameters forKey:@"_trackingSpringParameters"];

  _nonTrackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _nonTrackingSpringParameters];
  [coderCopy encodeObject:_nonTrackingSpringParameters forKey:@"_nonTrackingSpringParameters"];

  [coderCopy encodeBool:-[_UIHyperInProcessPointAnimator _generatesFeedbackWhenBoundaryIsCrossed](self forKey:{"_generatesFeedbackWhenBoundaryIsCrossed"), @"_generatesFeedbackWhenBoundaryIsCrossed"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperInProcessPointAnimator alloc] initWithDimensions:[(_UIHyperInProcessPointAnimator *)self _dimensions]];
  _trackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _trackingSpringParameters];
  [(_UIHyperInProcessPointAnimator *)v4 _setTrackingSpringParameters:_trackingSpringParameters];

  _nonTrackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _nonTrackingSpringParameters];
  [(_UIHyperInProcessPointAnimator *)v4 _setNonTrackingSpringParameters:_nonTrackingSpringParameters];

  [(_UIHyperInProcessPointAnimator *)v4 _setGeneratesFeedbackWhenBoundaryIsCrossed:[(_UIHyperInProcessPointAnimator *)self _generatesFeedbackWhenBoundaryIsCrossed]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperInProcessPointAnimator *)self _dimensions];
    if (_dimensions != [v5 _dimensions])
    {
      LOBYTE(v12) = 0;
LABEL_21:

      goto LABEL_22;
    }

    _trackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _trackingSpringParameters];
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
        goto LABEL_19;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    _nonTrackingSpringParameters = [(_UIHyperInProcessPointAnimator *)self _nonTrackingSpringParameters];
    _nonTrackingSpringParameters2 = [v5 _nonTrackingSpringParameters];
    v14 = _nonTrackingSpringParameters;
    v18 = _nonTrackingSpringParameters2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      if (!v14 || !v18)
      {

        LOBYTE(v12) = 0;
        goto LABEL_19;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    _generatesFeedbackWhenBoundaryIsCrossed = [(_UIHyperInProcessPointAnimator *)self _generatesFeedbackWhenBoundaryIsCrossed];
    v12 = _generatesFeedbackWhenBoundaryIsCrossed ^ [v5 _generatesFeedbackWhenBoundaryIsCrossed] ^ 1;
LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v12) = 0;
LABEL_22:

  return v12;
}

- (_UIHyperInteractor)_interactor
{
  WeakRetained = objc_loadWeakRetained(&self->__interactor);

  return WeakRetained;
}

@end