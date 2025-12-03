@interface _UIDragMovementCadenceSettings
+ (id)defaultSettingsForMovementPhase:(int64_t)phase cadence:(int64_t)cadence;
- (_UIDragMovementCadenceSettings)initWithMovementPhase:(int64_t)phase cadence:(int64_t)cadence;
- (_UIDragMovementCadenceSettings)initWithVelocityMagnitudeThreshold:(double)threshold dwellTimeThreshold:(double)timeThreshold;
- (void)_applyDragPlaceholderInitialPhaseDefaultsForCadence:(int64_t)cadence;
- (void)_applyDragPlaceholderSubsequentPhaseDefaultsForCadence:(int64_t)cadence;
- (void)_applyImmediateSettings;
- (void)_applyInteractiveReorderInitialPhaseDefaultsForCadence:(int64_t)cadence;
- (void)_applyInteractiveReorderSubsequentPhaseDefaultsForCadence:(int64_t)cadence;
@end

@implementation _UIDragMovementCadenceSettings

- (_UIDragMovementCadenceSettings)initWithMovementPhase:(int64_t)phase cadence:(int64_t)cadence
{
  v11.receiver = self;
  v11.super_class = _UIDragMovementCadenceSettings;
  v7 = [(_UIDragMovementCadenceSettings *)&v11 init];
  v8 = v7;
  if (v7)
  {
    if (phase == 1)
    {
      [(_UIDragMovementCadenceSettings *)v7 _applyDragPlaceholderSubsequentPhaseDefaultsForCadence:cadence];
    }

    else if (phase)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"_UIDragMovementCadenceSettings.m" lineNumber:31 description:@"Unhandled movement phase."];
    }

    else
    {
      [(_UIDragMovementCadenceSettings *)v7 _applyDragPlaceholderInitialPhaseDefaultsForCadence:cadence];
    }
  }

  return v8;
}

+ (id)defaultSettingsForMovementPhase:(int64_t)phase cadence:(int64_t)cadence
{
  v4 = [[self alloc] initWithMovementPhase:phase cadence:cadence];

  return v4;
}

- (_UIDragMovementCadenceSettings)initWithVelocityMagnitudeThreshold:(double)threshold dwellTimeThreshold:(double)timeThreshold
{
  v7.receiver = self;
  v7.super_class = _UIDragMovementCadenceSettings;
  result = [(_UIDragMovementCadenceSettings *)&v7 init];
  if (result)
  {
    result->_velocityMagnitudeThreshold = threshold;
    result->_dwellTimeThreshold = timeThreshold;
  }

  return result;
}

- (void)_applyDragPlaceholderInitialPhaseDefaultsForCadence:(int64_t)cadence
{
  if (cadence == 2)
  {
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.12];
    v4 = 200.0;
  }

  else
  {
    if (cadence != 1)
    {
      if (!cadence)
      {

        [(_UIDragMovementCadenceSettings *)self _applyImmediateSettings];
      }

      return;
    }

    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.06];
    v4 = 350.0;
  }

  [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v4];
}

- (void)_applyDragPlaceholderSubsequentPhaseDefaultsForCadence:(int64_t)cadence
{
  if (cadence == 2 || cadence == 1)
  {
    [(_UIDragMovementCadenceSettings *)self _applyDragPlaceholderInitialPhaseDefaultsForCadence:?];
    [(_UIDragMovementCadenceSettings *)self dwellTimeThreshold];
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:v4 * 0.5];
    [(_UIDragMovementCadenceSettings *)self velocityMagnitudeThreshold];
    v6 = v5 + v5;

    [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v6];
  }

  else if (!cadence)
  {

    [(_UIDragMovementCadenceSettings *)self _applyImmediateSettings];
  }
}

- (void)_applyInteractiveReorderInitialPhaseDefaultsForCadence:(int64_t)cadence
{
  if (cadence == 2)
  {
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.15];
    v4 = 200.0;
  }

  else
  {
    if (cadence != 1)
    {
      if (!cadence)
      {

        [(_UIDragMovementCadenceSettings *)self _applyImmediateSettings];
      }

      return;
    }

    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.075];
    v4 = 400.0;
  }

  [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v4];
}

- (void)_applyInteractiveReorderSubsequentPhaseDefaultsForCadence:(int64_t)cadence
{
  if (cadence == 2 || cadence == 1)
  {
    [(_UIDragMovementCadenceSettings *)self _applyInteractiveReorderInitialPhaseDefaultsForCadence:?];
    [(_UIDragMovementCadenceSettings *)self dwellTimeThreshold];
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:v4 * 0.5];
    [(_UIDragMovementCadenceSettings *)self velocityMagnitudeThreshold];
    v6 = v5 + v5;

    [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v6];
  }

  else if (!cadence)
  {

    [(_UIDragMovementCadenceSettings *)self _applyImmediateSettings];
  }
}

- (void)_applyImmediateSettings
{
  [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.0];

  [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:1.79769313e308];
}

@end