@interface _UIPageControlInteractor
- (_UIPageControlInteractor)initWithMaximumDistance:(double)a3;
- (double)boundedScrubPosition;
- (double)hyperConstrainedPosition;
- (double)joggingDistance;
- (double)unconstrainedPosition;
- (void)commitTranslation;
- (void)reduceScrubOffsetByOffset:(double)a3;
- (void)setTranslation:(double)a3 velocity:(double)a4;
- (void)setUnconstrainedPosition:(double)a3 offset:(double)a4;
- (void)updateRubberbandLowerBound:(double)a3 upperBound:(double)a4;
@end

@implementation _UIPageControlInteractor

- (double)joggingDistance
{
  v3 = [(_UIPageControlInteractor *)self interactor];
  v4 = *[v3 _constrainedPoint];
  v5 = [(_UIPageControlInteractor *)self interactor];
  v6 = v4 - *[v5 _closestPoint];

  return v6;
}

- (_UIPageControlInteractor)initWithMaximumDistance:(double)a3
{
  v11.receiver = self;
  v11.super_class = _UIPageControlInteractor;
  v4 = [(_UIPageControlInteractor *)&v11 init];
  if (v4)
  {
    v5 = [[_UIHyperConstantExtender alloc] initWithDimensions:1];
    [(_UIHyperConstantExtender *)v5 _setMaximumDistance:a3];
    v6 = [[_UIHyperInteractor alloc] initWithDimensions:1];
    [(_UIPageControlInteractor *)v4 setInteractor:v6];

    v7 = [[_UIHyperrectangle alloc] initWithDimensions:1];
    v8 = [(_UIPageControlInteractor *)v4 interactor];
    [v8 _setRegion:v7];

    v9 = [(_UIPageControlInteractor *)v4 interactor];
    [v9 _setExtender:v5];
  }

  return v4;
}

- (double)unconstrainedPosition
{
  v2 = [(_UIPageControlInteractor *)self interactor];
  v3 = *[v2 _translatedUnconstrainedPoint];

  return v3;
}

- (double)hyperConstrainedPosition
{
  v2 = [(_UIPageControlInteractor *)self interactor];
  v3 = *[v2 _constrainedPoint];

  return v3;
}

- (double)boundedScrubPosition
{
  lowerBound = self->_lowerBound;
  [(_UIPageControlInteractor *)self unboundedScrubPosition];
  return fmax(lowerBound, fmin(v4, self->_upperBound));
}

- (void)updateRubberbandLowerBound:(double)a3 upperBound:(double)a4
{
  v6 = [(_UIPageControlInteractor *)self interactor];
  v7 = [v6 _region];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___UIPageControlInteractor_updateRubberbandLowerBound_upperBound___block_invoke;
  v9[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v9[4] = a3;
  [v7 _mutateMinimumPoint:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___UIPageControlInteractor_updateRubberbandLowerBound_upperBound___block_invoke_2;
  v8[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v8[4] = a4;
  [v7 _mutateMaximumPoint:v8];
}

- (void)setUnconstrainedPosition:(double)a3 offset:(double)a4
{
  v7 = a3;
  v6 = [(_UIPageControlInteractor *)self interactor];
  [v6 _copyUnconstrainedPoint:&v7];

  self->_scrubbingOffset = a4;
}

- (void)setTranslation:(double)a3 velocity:(double)a4
{
  v5 = [(_UIPageControlInteractor *)self interactor:*&a4];
  [v5 _copyTranslation:&v15];

  v6 = [(_UIPageControlInteractor *)self interactor];
  [v6 _copyVelocity:&v14];

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
  v2 = [(_UIPageControlInteractor *)self interactor];
  [v2 _commitTranslation];
}

- (void)reduceScrubOffsetByOffset:(double)a3
{
  scrubbingOffset = self->_scrubbingOffset;
  if (scrubbingOffset >= 0.0)
  {
    if (scrubbingOffset <= 0.0)
    {
      return;
    }

    v4 = fmax(scrubbingOffset - a3, 0.0);
  }

  else
  {
    v4 = fmin(scrubbingOffset + a3, 0.0);
  }

  self->_scrubbingOffset = v4;
}

@end