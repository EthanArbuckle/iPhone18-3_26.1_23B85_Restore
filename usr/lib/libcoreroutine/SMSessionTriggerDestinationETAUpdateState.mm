@interface SMSessionTriggerDestinationETAUpdateState
- (SMSessionTriggerDestinationETAUpdateState)initWithCoder:(id)a3;
- (SMSessionTriggerDestinationETAUpdateState)initWithDistanceRemaining:(double)a3 distanceDifference:(double)a4 nominalTravelTimeRemaining:(double)a5 nominalTravelTimeDifference:(double)a6 nominalTravelTimeShorter:(BOOL)a7 remainingDistanceShorter:(BOOL)a8 shouldUpdateETAUpperBound:(BOOL)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMSessionTriggerDestinationETAUpdateState

- (SMSessionTriggerDestinationETAUpdateState)initWithDistanceRemaining:(double)a3 distanceDifference:(double)a4 nominalTravelTimeRemaining:(double)a5 nominalTravelTimeDifference:(double)a6 nominalTravelTimeShorter:(BOOL)a7 remainingDistanceShorter:(BOOL)a8 shouldUpdateETAUpperBound:(BOOL)a9
{
  v17.receiver = self;
  v17.super_class = SMSessionTriggerDestinationETAUpdateState;
  result = [(SMSessionTriggerDestinationETAUpdateState *)&v17 init];
  if (result)
  {
    result->_distanceRemaining = a3;
    result->_distanceDifference = a4;
    result->_nominalTravelTimeRemaining = a5;
    result->_nominalTravelTimeDifference = a6;
    result->_nominalTravelTimeShorter = a7;
    result->_remainingDistanceShorter = a8;
    result->_shouldUpdateETAUpperBound = a9;
  }

  return result;
}

- (SMSessionTriggerDestinationETAUpdateState)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceRemainingKey"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceDifferenceKey"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeRemainingKey"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeDifferenceKey"];
  v12 = v11;
  v13 = [v4 decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeShorterKey"];
  v14 = [v4 decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateRemainingDistanceShorterKey"];
  v15 = [v4 decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateShouldUpdateETAUpperBoundKey"];

  return [(SMSessionTriggerDestinationETAUpdateState *)self initWithDistanceRemaining:v13 distanceDifference:v14 nominalTravelTimeRemaining:v15 nominalTravelTimeDifference:v6 nominalTravelTimeShorter:v8 remainingDistanceShorter:v10 shouldUpdateETAUpperBound:v12];
}

- (void)encodeWithCoder:(id)a3
{
  distanceRemaining = self->_distanceRemaining;
  v5 = a3;
  [v5 encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceRemainingKey" forKey:distanceRemaining];
  [v5 encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceDifferenceKey" forKey:self->_distanceDifference];
  [v5 encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeRemainingKey" forKey:self->_nominalTravelTimeRemaining];
  [v5 encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeDifferenceKey" forKey:self->_nominalTravelTimeDifference];
  [v5 encodeBool:self->_nominalTravelTimeShorter forKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeShorterKey"];
  [v5 encodeBool:self->_remainingDistanceShorter forKey:@"__kSMSessionTriggerDestinationETAUpdateStateRemainingDistanceShorterKey"];
  [v5 encodeBool:self->_shouldUpdateETAUpperBound forKey:@"__kSMSessionTriggerDestinationETAUpdateStateShouldUpdateETAUpperBoundKey"];
}

@end