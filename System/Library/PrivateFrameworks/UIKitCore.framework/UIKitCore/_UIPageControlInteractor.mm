@interface _UIPageControlInteractor
- (_UIPageControlInteractor)initWithMaximumDistance:(double)distance;
- (double)boundedScrubPosition;
- (double)hyperConstrainedPosition;
- (double)joggingDistance;
- (double)unconstrainedPosition;
- (void)commitTranslation;
- (void)reduceScrubOffsetByOffset:(double)offset;
- (void)setTranslation:(double)translation velocity:(double)velocity;
- (void)setUnconstrainedPosition:(double)position offset:(double)offset;
- (void)updateRubberbandLowerBound:(double)bound upperBound:(double)upperBound;
@end

@implementation _UIPageControlInteractor

- (double)joggingDistance
{
  interactor = [(_UIPageControlInteractor *)self interactor];
  v4 = *[interactor _constrainedPoint];
  interactor2 = [(_UIPageControlInteractor *)self interactor];
  v6 = v4 - *[interactor2 _closestPoint];

  return v6;
}

- (_UIPageControlInteractor)initWithMaximumDistance:(double)distance
{
  v11.receiver = self;
  v11.super_class = _UIPageControlInteractor;
  v4 = [(_UIPageControlInteractor *)&v11 init];
  if (v4)
  {
    v5 = [[_UIHyperConstantExtender alloc] initWithDimensions:1];
    [(_UIHyperConstantExtender *)v5 _setMaximumDistance:distance];
    v6 = [[_UIHyperInteractor alloc] initWithDimensions:1];
    [(_UIPageControlInteractor *)v4 setInteractor:v6];

    v7 = [[_UIHyperrectangle alloc] initWithDimensions:1];
    interactor = [(_UIPageControlInteractor *)v4 interactor];
    [interactor _setRegion:v7];

    interactor2 = [(_UIPageControlInteractor *)v4 interactor];
    [interactor2 _setExtender:v5];
  }

  return v4;
}

- (double)unconstrainedPosition
{
  interactor = [(_UIPageControlInteractor *)self interactor];
  v3 = *[interactor _translatedUnconstrainedPoint];

  return v3;
}

- (double)hyperConstrainedPosition
{
  interactor = [(_UIPageControlInteractor *)self interactor];
  v3 = *[interactor _constrainedPoint];

  return v3;
}

- (double)boundedScrubPosition
{
  lowerBound = self->_lowerBound;
  [(_UIPageControlInteractor *)self unboundedScrubPosition];
  return fmax(lowerBound, fmin(v4, self->_upperBound));
}

- (void)updateRubberbandLowerBound:(double)bound upperBound:(double)upperBound
{
  interactor = [(_UIPageControlInteractor *)self interactor];
  _region = [interactor _region];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___UIPageControlInteractor_updateRubberbandLowerBound_upperBound___block_invoke;
  v9[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v9[4] = bound;
  [_region _mutateMinimumPoint:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___UIPageControlInteractor_updateRubberbandLowerBound_upperBound___block_invoke_2;
  v8[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v8[4] = upperBound;
  [_region _mutateMaximumPoint:v8];
}

- (void)setUnconstrainedPosition:(double)position offset:(double)offset
{
  positionCopy = position;
  interactor = [(_UIPageControlInteractor *)self interactor];
  [interactor _copyUnconstrainedPoint:&positionCopy];

  self->_scrubbingOffset = offset;
}

- (void)setTranslation:(double)translation velocity:(double)velocity
{
  v5 = [(_UIPageControlInteractor *)self interactor:*&velocity];
  [v5 _copyTranslation:&v15];

  interactor = [(_UIPageControlInteractor *)self interactor];
  [interactor _copyVelocity:&v14];

  [(_UIPageControlInteractor *)self unboundedScrubPosition];
  scrubbingOffset = self->_scrubbingOffset;
  if (scrubbingOffset < 0.0 && v7 < self->_lowerBound)
  {
    [(_UIPageControlInteractor *)self unconstrainedPosition];
    v10 = self->_scrubbingOffset - (scrubbingOffset + v9 - self->_lowerBound);
    self->_scrubbingOffset = v10;
    if (v10 <= 0.0)
    {
      return;
    }

LABEL_8:
    self->_scrubbingOffset = 0.0;
    return;
  }

  if (scrubbingOffset > 0.0)
  {
    upperBound = self->_upperBound;
    if (v7 > upperBound)
    {
      [(_UIPageControlInteractor *)self unconstrainedPosition];
      v13 = self->_scrubbingOffset - (scrubbingOffset + v12 - upperBound);
      self->_scrubbingOffset = v13;
      if (v13 < 0.0)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)commitTranslation
{
  interactor = [(_UIPageControlInteractor *)self interactor];
  [interactor _commitTranslation];
}

- (void)reduceScrubOffsetByOffset:(double)offset
{
  scrubbingOffset = self->_scrubbingOffset;
  if (scrubbingOffset >= 0.0)
  {
    if (scrubbingOffset <= 0.0)
    {
      return;
    }

    v4 = fmax(scrubbingOffset - offset, 0.0);
  }

  else
  {
    v4 = fmin(scrubbingOffset + offset, 0.0);
  }

  self->_scrubbingOffset = v4;
}

@end