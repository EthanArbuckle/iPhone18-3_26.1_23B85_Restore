@interface _UILinearForceLevelClassifier
- (_UILinearForceLevelClassifier)init;
- (double)_calculateProgressOfTouchForceValue:(double)a3 toForceLevel:(int64_t)a4 minimumRequiredForceLevel:(int64_t)a5;
- (double)_instantaneousImpulseForTouchForceValue:(double)a3 atTimestamp:(double)a4;
- (double)_thresholdForForceLevel:(int64_t)a3;
- (id)transformerFromTouchForceMessageToProgressToForceLevel:(int64_t)a3 minimumRequiredForceLevel:(int64_t)a4;
- (int64_t)_forceLevelForTouchForceValue:(double)a3;
- (void)_updateForceWithTouchForceValue:(double)a3 atTimestamp:(double)a4;
- (void)_updateImpulseWithTouchForceValue:(double)a3 atTimestamp:(double)a4;
- (void)dealloc;
- (void)debuggingPropertyForKey:(id)a3 changedToValue:(id)a4;
- (void)observeTouchWithForceValue:(double)a3 atTimestamp:(double)a4 withCentroidAtLocation:(CGPoint)a5;
- (void)reset;
- (void)touchForceMultiplierDidChange;
@end

@implementation _UILinearForceLevelClassifier

- (_UILinearForceLevelClassifier)init
{
  v5.receiver = self;
  v5.super_class = _UILinearForceLevelClassifier;
  v2 = [(_UIForceLevelClassifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UILinearForceLevelClassifier *)v2 touchForceMultiplierDidChange];
    v3->_smoothingFactor = 0.4;
    v3->_impulseSmoothingFactor = 0.4;
  }

  return v3;
}

- (void)touchForceMultiplierDidChange
{
  [(_UIForceLevelClassifier *)self currentTouchForceMultiplier];
  self->_revealThreshold = v3 * 60.0 / 60.0;
  self->_standardThreshold = v3 * 240.0 / 60.0;
  self->_strongThreshold = v3 * 320.0 / 60.0;
}

- (void)debuggingPropertyForKey:(id)a3 changedToValue:(id)a4
{
  [a4 floatValue];
  v7 = v6;
  if ([a3 isEqualToString:@"Hint"])
  {
    v8 = &OBJC_IVAR____UILinearForceLevelClassifier__revealThreshold;
  }

  else if ([a3 isEqualToString:@"Standard"])
  {
    v8 = &OBJC_IVAR____UILinearForceLevelClassifier__standardThreshold;
  }

  else
  {
    if (![a3 isEqualToString:@"Strong"])
    {
      return;
    }

    v8 = &OBJC_IVAR____UILinearForceLevelClassifier__strongThreshold;
  }

  *(&self->super.super.isa + *v8) = v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UILinearForceLevelClassifier;
  [(_UIForceLevelClassifier *)&v2 dealloc];
}

- (double)_calculateProgressOfTouchForceValue:(double)a3 toForceLevel:(int64_t)a4 minimumRequiredForceLevel:(int64_t)a5
{
  if (!a4)
  {
    return 0.0;
  }

  [(_UILinearForceLevelClassifier *)self _thresholdForForceLevel:?];
  v10 = v9;
  [(_UILinearForceLevelClassifier *)self _thresholdForForceLevel:a5];
  v12 = v10 - v11;
  [(_UILinearForceLevelClassifier *)self _thresholdForForceLevel:a4];
  return 1.0 - (v13 - a3) / v12;
}

- (double)_instantaneousImpulseForTouchForceValue:(double)a3 atTimestamp:(double)a4
{
  if (self->_impulseObservationState < 1)
  {
    return 0.0;
  }

  else
  {
    return (a3 - self->_lastForceForImpulse) / (a4 - self->_lastTimestampForImpulse);
  }
}

- (void)_updateImpulseWithTouchForceValue:(double)a3 atTimestamp:(double)a4
{
  impulseObservationState = self->_impulseObservationState;
  if (impulseObservationState == 1)
  {
    [(_UILinearForceLevelClassifier *)self _instantaneousImpulseForTouchForceValue:a3 atTimestamp:a4];
LABEL_6:
    self->_smoothedImpulse = v8;
    goto LABEL_7;
  }

  if (impulseObservationState)
  {
    [(_UILinearForceLevelClassifier *)self _instantaneousImpulseForTouchForceValue:a3 atTimestamp:a4];
    v8 = v9 * self->_impulseSmoothingFactor + (1.0 - self->_impulseSmoothingFactor) * self->_smoothedImpulse;
    goto LABEL_6;
  }

  self->_impulseObservationState = 1;
LABEL_7:
  self->_lastForceForImpulse = a3;
  self->_lastTimestampForImpulse = a4;
}

- (void)_updateForceWithTouchForceValue:(double)a3 atTimestamp:(double)a4
{
  if (self->_anyForceObservations)
  {
    a3 = self->_smoothingFactor * a3 + (1.0 - self->_smoothingFactor) * self->_smoothedForce;
  }

  else
  {
    self->_anyForceObservations = 1;
  }

  self->_smoothedForce = a3;
}

- (void)observeTouchWithForceValue:(double)a3 atTimestamp:(double)a4 withCentroidAtLocation:(CGPoint)a5
{
  v8.receiver = self;
  v8.super_class = _UILinearForceLevelClassifier;
  [(_UIForceLevelClassifier *)&v8 observeTouchWithForceValue:a3 atTimestamp:a4 withCentroidAtLocation:a5.x, a5.y];
  [(_UILinearForceLevelClassifier *)self _updateForceWithTouchForceValue:a3 atTimestamp:a4];
  [(_UILinearForceLevelClassifier *)self _updateImpulseWithTouchForceValue:a3 atTimestamp:a4];
  [(_UIForceLevelClassifier *)self setCurrentForceLevel:[(_UILinearForceLevelClassifier *)self _forceLevelForTouchForceValue:self->_smoothedForce]];
}

- (void)reset
{
  self->_smoothedForce = 0.0;
  self->_anyForceObservations = 0;
  self->_smoothedImpulse = 0.0;
  self->_lastForceForImpulse = 0.0;
  self->_lastTimestampForImpulse = 0.0;
  self->_impulseObservationState = 0;
  v2.receiver = self;
  v2.super_class = _UILinearForceLevelClassifier;
  [(_UIForceLevelClassifier *)&v2 reset];
}

- (id)transformerFromTouchForceMessageToProgressToForceLevel:(int64_t)a3 minimumRequiredForceLevel:(int64_t)a4
{
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E696ADB8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114___UILinearForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke;
  v9[3] = &unk_1E710BA08;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v10[2] = a4;
  v7 = [v6 mapValuesWithBlock:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

- (int64_t)_forceLevelForTouchForceValue:(double)a3
{
  if (self->_strongThreshold <= a3)
  {
    return 3;
  }

  if (self->_standardThreshold <= a3)
  {
    return 2;
  }

  return self->_revealThreshold <= a3;
}

- (double)_thresholdForForceLevel:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 1) <= 2)
  {
    return *(&self->super.super.isa + *off_1E710BA28[a3 - 1]);
  }

  return result;
}

@end