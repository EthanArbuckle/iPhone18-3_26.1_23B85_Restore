@interface _UIDragMovementCadenceSettings
+ (id)defaultSettingsForMovementPhase:(int64_t)a3 cadence:(int64_t)a4;
- (_UIDragMovementCadenceSettings)initWithMovementPhase:(int64_t)a3 cadence:(int64_t)a4;
- (_UIDragMovementCadenceSettings)initWithVelocityMagnitudeThreshold:(double)a3 dwellTimeThreshold:(double)a4;
- (void)_applyDragPlaceholderInitialPhaseDefaultsForCadence:(int64_t)a3;
- (void)_applyDragPlaceholderSubsequentPhaseDefaultsForCadence:(int64_t)a3;
- (void)_applyImmediateSettings;
- (void)_applyInteractiveReorderInitialPhaseDefaultsForCadence:(int64_t)a3;
- (void)_applyInteractiveReorderSubsequentPhaseDefaultsForCadence:(int64_t)a3;
@end

@implementation _UIDragMovementCadenceSettings

- (_UIDragMovementCadenceSettings)initWithMovementPhase:(int64_t)a3 cadence:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = _UIDragMovementCadenceSettings;
  v7 = [(_UIDragMovementCadenceSettings *)&v11 init];
  v8 = v7;
  if (v7)
  {
    if (a3 == 1)
    {
      [(_UIDragMovementCadenceSettings *)v7 _applyDragPlaceholderSubsequentPhaseDefaultsForCadence:a4];
    }

    else if (a3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v8 file:@"_UIDragMovementCadenceSettings.m" lineNumber:31 description:@"Unhandled movement phase."];
    }

    else
    {
      [(_UIDragMovementCadenceSettings *)v7 _applyDragPlaceholderInitialPhaseDefaultsForCadence:a4];
    }
  }

  return v8;
}

+ (id)defaultSettingsForMovementPhase:(int64_t)a3 cadence:(int64_t)a4
{
  v4 = [[a1 alloc] initWithMovementPhase:a3 cadence:a4];

  return v4;
}

- (_UIDragMovementCadenceSettings)initWithVelocityMagnitudeThreshold:(double)a3 dwellTimeThreshold:(double)a4
{
  v7.receiver = self;
  v7.super_class = _UIDragMovementCadenceSettings;
  result = [(_UIDragMovementCadenceSettings *)&v7 init];
  if (result)
  {
    result->_velocityMagnitudeThreshold = a3;
    result->_dwellTimeThreshold = a4;
  }

  return result;
}

- (void)_applyDragPlaceholderInitialPhaseDefaultsForCadence:(int64_t)a3
{
  if (a3 == 2)
  {
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.12];
    v4 = 200.0;
  }

  else
  {
    if (a3 != 1)
    {
      if (!a3)
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

- (void)_applyDragPlaceholderSubsequentPhaseDefaultsForCadence:(int64_t)a3
{
  if (a3 == 2 || a3 == 1)
  {
    [(_UIDragMovementCadenceSettings *)self _applyDragPlaceholderInitialPhaseDefaultsForCadence:?];
    [(_UIDragMovementCadenceSettings *)self dwellTimeThreshold];
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:v4 * 0.5];
    [(_UIDragMovementCadenceSettings *)self velocityMagnitudeThreshold];
    v6 = v5 + v5;

    [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v6];
  }

  else if (!a3)
  {

    [(_UIDragMovementCadenceSettings *)self _applyImmediateSettings];
  }
}

- (void)_applyInteractiveReorderInitialPhaseDefaultsForCadence:(int64_t)a3
{
  if (a3 == 2)
  {
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:0.15];
    v4 = 200.0;
  }

  else
  {
    if (a3 != 1)
    {
      if (!a3)
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

- (void)_applyInteractiveReorderSubsequentPhaseDefaultsForCadence:(int64_t)a3
{
  if (a3 == 2 || a3 == 1)
  {
    [(_UIDragMovementCadenceSettings *)self _applyInteractiveReorderInitialPhaseDefaultsForCadence:?];
    [(_UIDragMovementCadenceSettings *)self dwellTimeThreshold];
    [(_UIDragMovementCadenceSettings *)self setDwellTimeThreshold:v4 * 0.5];
    [(_UIDragMovementCadenceSettings *)self velocityMagnitudeThreshold];
    v6 = v5 + v5;

    [(_UIDragMovementCadenceSettings *)self setVelocityMagnitudeThreshold:v6];
  }

  else if (!a3)
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