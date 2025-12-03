@interface _UITouchForceMessage
+ (id)observe:(id)observe;
+ (id)reset;
- (CGPoint)centroid;
- (void)ifObservation:(id)observation ifReset:(id)reset;
- (void)ifObservationUnclamped:(id)unclamped ifReset:(id)reset;
@end

@implementation _UITouchForceMessage

+ (id)observe:(id)observe
{
  observeCopy = observe;
  v4 = objc_alloc_init(_UITouchForceMessage);
  observeCopy[2](observeCopy, v4);

  return v4;
}

+ (id)reset
{
  v2 = objc_alloc_init(_UITouchForceMessage);
  v2->_isReset = 1;

  return v2;
}

- (void)ifObservation:(id)observation ifReset:(id)reset
{
  observationCopy = observation;
  resetCopy = reset;
  v7 = resetCopy;
  if (resetCopy && self->_isReset)
  {
    (*(resetCopy + 2))(resetCopy);
  }

  else if (observationCopy)
  {
    observeReader = self->_observeReader;
    if (!observeReader)
    {
      v9 = objc_alloc_init(_UITouchForceObservationMessageReader);
      v10 = self->_observeReader;
      self->_observeReader = v9;

      observeReader = self->_observeReader;
    }

    [(_UITouchForceObservationMessageReader *)observeReader setTouchForce:fmin(self->_unclampedTouchForce, self->_maximumPossibleForce)];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setTimestamp:self->_timestamp];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setCentroid:self->_centroid.x, self->_centroid.y];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setShouldFilterDueToSystemGestures:self->_shouldFilterDueToSystemGestures];
    observationCopy[2](observationCopy, self->_observeReader);
  }
}

- (void)ifObservationUnclamped:(id)unclamped ifReset:(id)reset
{
  unclampedCopy = unclamped;
  resetCopy = reset;
  v7 = resetCopy;
  if (resetCopy && self->_isReset)
  {
    (*(resetCopy + 2))(resetCopy);
  }

  else if (unclampedCopy)
  {
    observeReader = self->_observeReader;
    if (!observeReader)
    {
      v9 = objc_alloc_init(_UITouchForceObservationMessageReader);
      v10 = self->_observeReader;
      self->_observeReader = v9;

      observeReader = self->_observeReader;
    }

    [(_UITouchForceObservationMessageReader *)observeReader setTouchForce:self->_unclampedTouchForce];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setTimestamp:self->_timestamp];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setCentroid:self->_centroid.x, self->_centroid.y];
    [(_UITouchForceObservationMessageReader *)self->_observeReader setShouldFilterDueToSystemGestures:self->_shouldFilterDueToSystemGestures];
    unclampedCopy[2](unclampedCopy, self->_observeReader);
  }
}

- (CGPoint)centroid
{
  x = self->_centroid.x;
  y = self->_centroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end