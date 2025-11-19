@interface _UITouchForceMessage
+ (id)observe:(id)a3;
+ (id)reset;
- (CGPoint)centroid;
- (void)ifObservation:(id)a3 ifReset:(id)a4;
- (void)ifObservationUnclamped:(id)a3 ifReset:(id)a4;
@end

@implementation _UITouchForceMessage

+ (id)observe:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UITouchForceMessage);
  v3[2](v3, v4);

  return v4;
}

+ (id)reset
{
  v2 = objc_alloc_init(_UITouchForceMessage);
  v2->_isReset = 1;

  return v2;
}

- (void)ifObservation:(id)a3 ifReset:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && self->_isReset)
  {
    (*(v6 + 2))(v6);
  }

  else if (v11)
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
    v11[2](v11, self->_observeReader);
  }
}

- (void)ifObservationUnclamped:(id)a3 ifReset:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && self->_isReset)
  {
    (*(v6 + 2))(v6);
  }

  else if (v11)
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
    v11[2](v11, self->_observeReader);
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