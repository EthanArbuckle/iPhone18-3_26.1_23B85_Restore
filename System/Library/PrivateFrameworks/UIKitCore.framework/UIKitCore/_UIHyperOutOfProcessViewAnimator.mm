@interface _UIHyperOutOfProcessViewAnimator
- (BOOL)_isAnimating;
- (BOOL)isEqual:(id)equal;
- (CAFrameRateRange)_preferredFrameRateRange;
- (NSString)description;
- (_UIHyperInteractor)_interactor;
- (_UIHyperOutOfProcessViewAnimator)initWithCoder:(id)coder;
- (_UIHyperOutOfProcessViewAnimator)initWithDimensions:(unint64_t)dimensions;
- (_UIHyperOutOfProcessViewAnimatorDelegate)_delegate;
- (_UISpringParameters)_boundaryCrossedSpringParameters;
- (_UISpringParameters)_interactionEndedSpringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_animateWithParameters:(id)parameters velocity:(double)velocity animations:(id)animations;
- (void)_interactionBegan;
- (void)_interactionChanged;
- (void)_interactionEndedMutatingState:(id)state;
- (void)_setBoundaryCrossedSpringParameters:(id)parameters;
- (void)_setInteractionEndedSpringParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHyperOutOfProcessViewAnimator

- (_UIHyperInteractor)_interactor
{
  WeakRetained = objc_loadWeakRetained(&self->__interactor);

  return WeakRetained;
}

- (_UIHyperOutOfProcessViewAnimator)initWithDimensions:(unint64_t)dimensions
{
  v9.receiver = self;
  v9.super_class = _UIHyperOutOfProcessViewAnimator;
  v4 = [(_UIHyperOutOfProcessViewAnimator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->__dimensions = dimensions;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    propertyAnimators = v5->__propertyAnimators;
    v5->__propertyAnimators = v6;
  }

  return v5;
}

- (NSString)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__dimensions);
  v9 = v3;
  v4 = NSStringFromSelector(sel__boundaryCrossedSpringParameters);
  v10 = v4;
  v5 = NSStringFromSelector(sel__interactionEndedSpringParameters);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [UIDescriptionBuilder descriptionForObject:self keys:v6, v9, v10];

  return v7;
}

- (_UISpringParameters)_boundaryCrossedSpringParameters
{
  boundaryCrossedSpringParameters = self->__boundaryCrossedSpringParameters;
  if (!boundaryCrossedSpringParameters)
  {
    v4 = [_UISpringParameters parametersWithDampingRatio:1.0 response:0.1];
    v5 = self->__boundaryCrossedSpringParameters;
    self->__boundaryCrossedSpringParameters = v4;

    boundaryCrossedSpringParameters = self->__boundaryCrossedSpringParameters;
  }

  return boundaryCrossedSpringParameters;
}

- (void)_setBoundaryCrossedSpringParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = self->__boundaryCrossedSpringParameters;
  v6 = parametersCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)v5 isEqual:v6];

  if (!v7)
  {
LABEL_8:
    [(_UIHyperOutOfProcessViewAnimator *)self willChangeValueForKey:@"_boundaryCrossedSpringParameters"];
    v8 = [(_UISpringParameters *)v10 copy];
    boundaryCrossedSpringParameters = self->__boundaryCrossedSpringParameters;
    self->__boundaryCrossedSpringParameters = v8;

    [(_UIHyperOutOfProcessViewAnimator *)self didChangeValueForKey:@"_boundaryCrossedSpringParameters"];
  }

LABEL_9:
}

- (_UISpringParameters)_interactionEndedSpringParameters
{
  interactionEndedSpringParameters = self->__interactionEndedSpringParameters;
  if (!interactionEndedSpringParameters)
  {
    v4 = [_UISpringParameters parametersWithDampingRatio:1.0 response:0.3];
    v5 = self->__interactionEndedSpringParameters;
    self->__interactionEndedSpringParameters = v4;

    interactionEndedSpringParameters = self->__interactionEndedSpringParameters;
  }

  return interactionEndedSpringParameters;
}

- (void)_setInteractionEndedSpringParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = self->__interactionEndedSpringParameters;
  v6 = parametersCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UISpringParameters *)v5 isEqual:v6];

  if (!v7)
  {
LABEL_8:
    [(_UIHyperOutOfProcessViewAnimator *)self willChangeValueForKey:@"_interactionEndedSpringParameters"];
    v8 = [(_UISpringParameters *)v10 copy];
    interactionEndedSpringParameters = self->__interactionEndedSpringParameters;
    self->__interactionEndedSpringParameters = v8;

    [(_UIHyperOutOfProcessViewAnimator *)self didChangeValueForKey:@"_interactionEndedSpringParameters"];
  }

LABEL_9:
}

- (void)_interactionBegan
{
  v31 = *MEMORY[0x1E69E9840];
  _delegate = [(_UIHyperOutOfProcessViewAnimator *)self _delegate];
  if ([(_UIHyperOutOfProcessViewAnimator *)self _isAnimating]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    _interactor = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    _delegate2 = [_interactor _delegate];
    _interactor2 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    [_delegate2 _hyperInteractorApplyPresentationPoint:_interactor2];

    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v26 = 0u;
    _propertyAnimators = [(_UIHyperOutOfProcessViewAnimator *)self _propertyAnimators];
    v8 = [_propertyAnimators copy];

    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          [v13 stopAnimation:0];
          [v13 finishAnimationAtPosition:2];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v15 = MEMORY[0x1EEE9AC00](v14);
    v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    _delegate3 = [(_UIHyperOutOfProcessViewAnimator *)self _delegate];
    [_delegate3 _hyperOutOfProcessViewAnimator:self getPresentationPointForInterruptedAnimation:v17];

    v20 = MEMORY[0x1EEE9AC00](v19);
    v22 = (&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    _interactor3 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    [_interactor3 _getUnconstrainedPoint:v22 forConstrainedPoint:v17];

    _interactor4 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    vDSP_vsubD([_interactor4 _unconstrainedPoint], 1, v22, 1, v22, 1, self->__dimensions);

    _interactor5 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    [_interactor5 _copyInitialTranslation:v22];
  }
}

- (void)_interactionChanged
{
  v25[5] = *MEMORY[0x1E69E9840];
  _interactor = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _region = [_interactor _region];
  _interactor2 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _lastConstrainedPoint = [_interactor2 _lastConstrainedPoint];
  _interactor3 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  LOBYTE(_lastConstrainedPoint) = _UIHyperregionIsBoundaryCrossedFromPointToPoint(_region, _lastConstrainedPoint, [_interactor3 _constrainedPoint]);

  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _interactor4 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor4 _closestPoint];
  cblas_dcopy_NEWLAPACK();

  _interactor5 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _interactor6 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor5 _copyOverridePresentationPoint:{objc_msgSend(_interactor6, "_lastConstrainedPoint")}];

  _interactor7 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor7 _setOverridingPresentationPoint:1];

  _interactor8 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _delegate = [_interactor8 _delegate];
  _interactor9 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_delegate _hyperInteractorApplyPresentationPoint:_interactor9];

  _interactor10 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor10 _setOverridingPresentationPoint:0];

  _interactor11 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  v21 = memcmp(v11, [_interactor11 _closestPoint], 8 * self->__dimensions);

  if ((_lastConstrainedPoint & 1) != 0 || v21)
  {
    _boundaryCrossedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _boundaryCrossedSpringParameters];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55___UIHyperOutOfProcessViewAnimator__interactionChanged__block_invoke;
    v25[3] = &unk_1E70F3590;
    v25[4] = self;
    [(_UIHyperOutOfProcessViewAnimator *)self _animateWithParameters:_boundaryCrossedSpringParameters animations:v25];
  }

  else
  {
    _boundaryCrossedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    _delegate2 = [_boundaryCrossedSpringParameters _delegate];
    _interactor12 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    [_delegate2 _hyperInteractorApplyPresentationPoint:_interactor12];
  }
}

- (void)_interactionEndedMutatingState:(id)state
{
  v36[4] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v30 = &v30;
  v5 = MEMORY[0x1EEE9AC00](stateCopy);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _interactor = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor _constrainedVelocity];
  cblas_dcopy_NEWLAPACK();

  _interactor2 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _interactor3 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor2 _copyOverridePresentationPoint:{objc_msgSend(_interactor3, "_constrainedPoint")}];

  _interactor4 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor4 _setOverridingPresentationPoint:1];

  v12 = stateCopy[2];
  v31 = stateCopy;
  v12(stateCopy);
  _interactor5 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  _delegate = [_interactor5 _delegate];
  _interactor6 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_delegate _hyperInteractorApplyPresentationPoint:_interactor6];

  if (self->__dimensions)
  {
    v16 = 0;
    v32 = v36;
    while (1)
    {
      _interactor7 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
      v18 = *([_interactor7 _constrainedPoint] + 8 * v16);
      _interactor8 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
      v20 = v18 - *([_interactor8 _presentationPoint] + 8 * v16);

      if (v20 != 0.0)
      {
        goto LABEL_6;
      }

      v21 = *&v7[8 * v16];
      if (v21 != 0.0)
      {
        break;
      }

LABEL_7:
      if (++v16 >= self->__dimensions)
      {
        goto LABEL_8;
      }
    }

    _interactor9 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v36[0] = __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke;
    v36[1] = &__block_descriptor_48_e9_v16__0_d8l;
    v36[2] = v16;
    *&v36[3] = v21 * 0.001;
    [_interactor9 _mutateOverridePresentationPoint:v35];

    v20 = -(v21 * 0.001);
    _interactor10 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    _delegate2 = [_interactor10 _delegate];
    _interactor11 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    [_delegate2 _hyperInteractorApplyPresentationPoint:_interactor11];

LABEL_6:
    _interactor12 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke_2;
    v34[3] = &unk_1E70F59D8;
    v34[4] = self;
    v34[5] = v16;
    [_interactor12 _mutateOverridePresentationPoint:v34];

    v27 = *&v7[8 * v16] / v20;
    _interactionEndedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _interactionEndedSpringParameters];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67___UIHyperOutOfProcessViewAnimator__interactionEndedMutatingState___block_invoke_3;
    v33[3] = &unk_1E70F3590;
    v33[4] = self;
    [(_UIHyperOutOfProcessViewAnimator *)self _animateWithParameters:_interactionEndedSpringParameters velocity:v33 animations:v27];

    goto LABEL_7;
  }

LABEL_8:
  _interactor13 = [(_UIHyperOutOfProcessViewAnimator *)self _interactor];
  [_interactor13 _setOverridingPresentationPoint:0];
}

- (void)_animateWithParameters:(id)parameters velocity:(double)velocity animations:(id)animations
{
  parametersCopy = parameters;
  animationsCopy = animations;
  velocity = [[UISpringTimingParameters alloc] initWithParameters:parametersCopy initialVelocity:velocity, velocity];
  v11 = [[UIViewPropertyAnimator alloc] initWithDuration:velocity timingParameters:0.0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79___UIHyperOutOfProcessViewAnimator__animateWithParameters_velocity_animations___block_invoke;
  v22[3] = &unk_1E70F37C0;
  v22[4] = self;
  v12 = animationsCopy;
  v23 = v12;
  [(UIViewPropertyAnimator *)v11 addAnimations:v22];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79___UIHyperOutOfProcessViewAnimator__animateWithParameters_velocity_animations___block_invoke_2;
  v17 = &unk_1E70F5A00;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  [(UIViewPropertyAnimator *)v11 addCompletion:&v14];
  v13 = [(_UIHyperOutOfProcessViewAnimator *)self _propertyAnimators:v14];
  [v13 addObject:v11];

  [(UIViewPropertyAnimator *)v11 startAnimation];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (BOOL)_isAnimating
{
  _propertyAnimators = [(_UIHyperOutOfProcessViewAnimator *)self _propertyAnimators];
  v3 = [_propertyAnimators count] != 0;

  return v3;
}

- (_UIHyperOutOfProcessViewAnimator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[_UIHyperOutOfProcessViewAnimator initWithDimensions:](self, "initWithDimensions:", [coderCopy decodeIntegerForKey:@"_dimensions"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_boundaryCrossedSpringParameters"];
  [(_UIHyperOutOfProcessViewAnimator *)v5 _setBoundaryCrossedSpringParameters:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interactionEndedSpringParameters"];

  [(_UIHyperOutOfProcessViewAnimator *)v5 _setInteractionEndedSpringParameters:v7];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_UIHyperOutOfProcessViewAnimator _dimensions](self forKey:{"_dimensions"), @"_dimensions"}];
  _boundaryCrossedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _boundaryCrossedSpringParameters];
  [coderCopy encodeObject:_boundaryCrossedSpringParameters forKey:@"_boundaryCrossedSpringParameters"];

  _interactionEndedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _interactionEndedSpringParameters];
  [coderCopy encodeObject:_interactionEndedSpringParameters forKey:@"_interactionEndedSpringParameters"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIHyperOutOfProcessViewAnimator alloc] initWithDimensions:[(_UIHyperOutOfProcessViewAnimator *)self _dimensions]];
  _boundaryCrossedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _boundaryCrossedSpringParameters];
  [(_UIHyperOutOfProcessViewAnimator *)v4 _setBoundaryCrossedSpringParameters:_boundaryCrossedSpringParameters];

  _interactionEndedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _interactionEndedSpringParameters];
  [(_UIHyperOutOfProcessViewAnimator *)v4 _setInteractionEndedSpringParameters:_interactionEndedSpringParameters];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperOutOfProcessViewAnimator *)self _dimensions];
    if (_dimensions != [v5 _dimensions])
    {
      LOBYTE(v12) = 0;
LABEL_19:

      goto LABEL_20;
    }

    _boundaryCrossedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _boundaryCrossedSpringParameters];
    _boundaryCrossedSpringParameters2 = [v5 _boundaryCrossedSpringParameters];
    v9 = _boundaryCrossedSpringParameters;
    v10 = _boundaryCrossedSpringParameters2;
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

    _interactionEndedSpringParameters = [(_UIHyperOutOfProcessViewAnimator *)self _interactionEndedSpringParameters];
    _interactionEndedSpringParameters2 = [v5 _interactionEndedSpringParameters];
    v14 = _interactionEndedSpringParameters;
    v17 = _interactionEndedSpringParameters2;
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

- (CAFrameRateRange)_preferredFrameRateRange
{
  minimum = self->__preferredFrameRateRange.minimum;
  maximum = self->__preferredFrameRateRange.maximum;
  preferred = self->__preferredFrameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

- (_UIHyperOutOfProcessViewAnimatorDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end