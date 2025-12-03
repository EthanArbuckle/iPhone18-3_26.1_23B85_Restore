@interface SMSessionTriggerDestinationETAUpdateState
- (SMSessionTriggerDestinationETAUpdateState)initWithCoder:(id)coder;
- (SMSessionTriggerDestinationETAUpdateState)initWithDistanceRemaining:(double)remaining distanceDifference:(double)difference nominalTravelTimeRemaining:(double)timeRemaining nominalTravelTimeDifference:(double)timeDifference nominalTravelTimeShorter:(BOOL)shorter remainingDistanceShorter:(BOOL)distanceShorter shouldUpdateETAUpperBound:(BOOL)bound;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionTriggerDestinationETAUpdateState

- (SMSessionTriggerDestinationETAUpdateState)initWithDistanceRemaining:(double)remaining distanceDifference:(double)difference nominalTravelTimeRemaining:(double)timeRemaining nominalTravelTimeDifference:(double)timeDifference nominalTravelTimeShorter:(BOOL)shorter remainingDistanceShorter:(BOOL)distanceShorter shouldUpdateETAUpperBound:(BOOL)bound
{
  v17.receiver = self;
  v17.super_class = SMSessionTriggerDestinationETAUpdateState;
  result = [(SMSessionTriggerDestinationETAUpdateState *)&v17 init];
  if (result)
  {
    result->_distanceRemaining = remaining;
    result->_distanceDifference = difference;
    result->_nominalTravelTimeRemaining = timeRemaining;
    result->_nominalTravelTimeDifference = timeDifference;
    result->_nominalTravelTimeShorter = shorter;
    result->_remainingDistanceShorter = distanceShorter;
    result->_shouldUpdateETAUpperBound = bound;
  }

  return result;
}

- (SMSessionTriggerDestinationETAUpdateState)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceRemainingKey"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceDifferenceKey"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeRemainingKey"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeDifferenceKey"];
  v12 = v11;
  v13 = [coderCopy decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeShorterKey"];
  v14 = [coderCopy decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateRemainingDistanceShorterKey"];
  v15 = [coderCopy decodeBoolForKey:@"__kSMSessionTriggerDestinationETAUpdateStateShouldUpdateETAUpperBoundKey"];

  return [(SMSessionTriggerDestinationETAUpdateState *)self initWithDistanceRemaining:v13 distanceDifference:v14 nominalTravelTimeRemaining:v15 nominalTravelTimeDifference:v6 nominalTravelTimeShorter:v8 remainingDistanceShorter:v10 shouldUpdateETAUpperBound:v12];
}

- (void)encodeWithCoder:(id)coder
{
  distanceRemaining = self->_distanceRemaining;
  coderCopy = coder;
  [coderCopy encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceRemainingKey" forKey:distanceRemaining];
  [coderCopy encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateDistanceDifferenceKey" forKey:self->_distanceDifference];
  [coderCopy encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeRemainingKey" forKey:self->_nominalTravelTimeRemaining];
  [coderCopy encodeDouble:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeDifferenceKey" forKey:self->_nominalTravelTimeDifference];
  [coderCopy encodeBool:self->_nominalTravelTimeShorter forKey:@"__kSMSessionTriggerDestinationETAUpdateStateNominalTravelTimeShorterKey"];
  [coderCopy encodeBool:self->_remainingDistanceShorter forKey:@"__kSMSessionTriggerDestinationETAUpdateStateRemainingDistanceShorterKey"];
  [coderCopy encodeBool:self->_shouldUpdateETAUpperBound forKey:@"__kSMSessionTriggerDestinationETAUpdateStateShouldUpdateETAUpperBoundKey"];
}

@end