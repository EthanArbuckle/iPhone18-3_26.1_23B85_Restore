@interface PTCinematographyFocusSmoother
- (BOOL)isEndOfSmoothedSamples;
- (PTCinematographyFocusSmoother)init;
- (PTCinematographyFocusSmoother)lastFocusSmoother;
- (float)_getSmoothedSample;
- (float)_lastAddedSample;
- (float)nextSmoothedSample;
- (void)_advanceToNextSmoothedSample;
- (void)_padByCount:(unint64_t)count;
- (void)_padToFill;
- (void)addSample:(float)sample;
@end

@implementation PTCinematographyFocusSmoother

- (PTCinematographyFocusSmoother)init
{
  v3.receiver = self;
  v3.super_class = PTCinematographyFocusSmoother;
  result = [(PTCinematographyFocusSmoother *)&v3 init];
  if (result)
  {
    result->_minSamplesNeeded = 30;
  }

  return result;
}

- (void)addSample:(float)sample
{
  if (self->_didEndSamples || (v5 = self->_cachedSamples) == 0)
  {
    v6 = 60 - self->_minSamplesNeeded;
    v7 = [[MutableFloatArray alloc] initWithCount:v6 capacity:118];
    cachedSamples = self->_cachedSamples;
    self->_cachedSamples = v7;

    *&v9 = sample;
    [(MutableFloatArray *)self->_cachedSamples setFloat:0 inRange:v6, v9];
    self->_unprocessedSampleCount = 1;
    self->_didEndSamples = 0;
  }

  else
  {
    [(MutableFloatArray *)v5 appendFloat:*&sample];
    ++self->_unprocessedSampleCount;
  }
}

- (BOOL)isEndOfSmoothedSamples
{
  if (self->_didEndSamples)
  {
    return ![(PTCinematographyFocusSmoother *)self isSmoothedSampleAvailable:v2];
  }

  else
  {
    return 0;
  }
}

- (float)nextSmoothedSample
{
  if (![(PTCinematographyFocusSmoother *)self isSmoothedSampleAvailable])
  {
    return 0.0;
  }

  [(PTCinematographyFocusSmoother *)self _getSmoothedSample];
  v4 = v3;
  [(PTCinematographyFocusSmoother *)self _advanceToNextSmoothedSample];
  return v4;
}

- (PTCinematographyFocusSmoother)lastFocusSmoother
{
  selfCopy = self;
  nextFocusSmoother = [(PTCinematographyFocusSmoother *)selfCopy nextFocusSmoother];

  if (nextFocusSmoother)
  {
    do
    {
      nextFocusSmoother2 = [(PTCinematographyFocusSmoother *)selfCopy nextFocusSmoother];

      v4NextFocusSmoother = [(PTCinematographyFocusSmoother *)nextFocusSmoother2 nextFocusSmoother];

      selfCopy = nextFocusSmoother2;
    }

    while (v4NextFocusSmoother);
  }

  else
  {
    nextFocusSmoother2 = selfCopy;
  }

  return nextFocusSmoother2;
}

- (float)_getSmoothedSample
{
  v2 = 0.0;
  if (self->_unprocessedSampleCount)
  {
    if ([(FloatArray *)self->_cachedSamples count]>= 0x1E)
    {
      [(MutableFloatArray *)self->_cachedSamples floatAtIndex:29];
      v2 = v4;
      __C = v4;
      if ([(FloatArray *)self->_cachedSamples count]>= 0x3B)
      {
        vDSP_dotpr(kCoefficients, 1, [(MutableFloatArray *)self->_cachedSamples floats], 1, &__C, 0x3BuLL);
        return __C;
      }
    }
  }

  return v2;
}

- (void)_advanceToNextSmoothedSample
{
  if (self->_unprocessedSampleCount)
  {
    [(MutableFloatArray *)self->_cachedSamples removeFromStart:1];
    --self->_unprocessedSampleCount;
    if (self->_didEndSamples)
    {

      [(PTCinematographyFocusSmoother *)self _padToFill];
    }
  }
}

- (void)_padToFill
{
  if ([(FloatArray *)self->_cachedSamples count]<= 0x3A)
  {
    v3 = 59 - [(FloatArray *)self->_cachedSamples count];

    [(PTCinematographyFocusSmoother *)self _padByCount:v3];
  }
}

- (void)_padByCount:(unint64_t)count
{
  [(PTCinematographyFocusSmoother *)self _lastAddedSample];
  if (count)
  {
    v6 = LODWORD(v5);
    do
    {
      LODWORD(v5) = v6;
      [(MutableFloatArray *)self->_cachedSamples appendFloat:v5];
      --count;
    }

    while (count);
  }
}

- (float)_lastAddedSample
{
  if (![(FloatArray *)self->_cachedSamples count])
  {
    return 0.0;
  }

  cachedSamples = self->_cachedSamples;
  v4 = [(FloatArray *)cachedSamples count]- 1;

  [(MutableFloatArray *)cachedSamples floatAtIndex:v4];
  return result;
}

@end