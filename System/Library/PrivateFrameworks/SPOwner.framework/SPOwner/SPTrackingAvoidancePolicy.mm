@interface SPTrackingAvoidancePolicy
- (BOOL)isEqual:(id)equal;
- (SPTrackingAvoidancePolicy)initWithCoder:(id)coder;
- (SPTrackingAvoidancePolicy)initWithType:(int64_t)type expiryTimeInterval:(double)interval keepAliveInterval:(double)aliveInterval minimumStagingInterval:(double)stagingInterval stagingBackstopHour:(int64_t)hour assumedKeyRollHour:(int64_t)rollHour scanInterval:(double)scanInterval surfaceImmediatelyBetweenBackstopAndKeyroll:(BOOL)self0 maxExpectedWildInterval:(double)self1 shouldAlertImmediatelyForImmediateTypes:(BOOL)self2 durationOfConsideration:(double)self3 thresholdOfLocationRelevance:(double)self4 thresholdOfSignificantDuration:(double)self5 thresholdOfSignificantDistance:(double)self6 capOfReasonableWalkingSpeed:(double)self7 allowNavGeoHintAsPrivateVehicleHint:(BOOL)self8;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPTrackingAvoidancePolicy

- (SPTrackingAvoidancePolicy)initWithType:(int64_t)type expiryTimeInterval:(double)interval keepAliveInterval:(double)aliveInterval minimumStagingInterval:(double)stagingInterval stagingBackstopHour:(int64_t)hour assumedKeyRollHour:(int64_t)rollHour scanInterval:(double)scanInterval surfaceImmediatelyBetweenBackstopAndKeyroll:(BOOL)self0 maxExpectedWildInterval:(double)self1 shouldAlertImmediatelyForImmediateTypes:(BOOL)self2 durationOfConsideration:(double)self3 thresholdOfLocationRelevance:(double)self4 thresholdOfSignificantDuration:(double)self5 thresholdOfSignificantDistance:(double)self6 capOfReasonableWalkingSpeed:(double)self7 allowNavGeoHintAsPrivateVehicleHint:(BOOL)self8
{
  v32.receiver = self;
  v32.super_class = SPTrackingAvoidancePolicy;
  result = [(SPTrackingAvoidancePolicy *)&v32 init:interval];
  if (result)
  {
    result->_type = type;
    result->_expiryTimeInterval = interval;
    result->_keepAliveInterval = aliveInterval;
    result->_minimumStagingInterval = stagingInterval;
    result->_stagingBackstopHour = hour;
    result->_assumedKeyRollHour = rollHour;
    result->_scanInterval = scanInterval;
    result->_surfaceImmediatelyBetweenBackstopAndKeyroll = keyroll;
    result->_shouldAlertImmediatelyForImmediateTypes = types;
    result->_durationOfConsideration = consideration;
    result->_thresholdOfLocationRelevance = relevance;
    result->_thresholdOfSignificantDuration = duration;
    result->_thresholdOfSignificantDistance = distance;
    result->_capOfReasonableWalkingSpeed = speed;
    result->_allowNavGeoHintAsPrivateVehicleHint = hint;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(SPTrackingAvoidancePolicy *)self type];
      type2 = [(SPTrackingAvoidancePolicy *)v5 type];

      v8 = type == type2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeDouble:@"expiryTimeInterval" forKey:self->_expiryTimeInterval];
  [coderCopy encodeDouble:@"keepAliveInterval" forKey:self->_keepAliveInterval];
  [coderCopy encodeDouble:@"minimumStagingInterval" forKey:self->_minimumStagingInterval];
  [coderCopy encodeInteger:self->_stagingBackstopHour forKey:@"stagingBackstopHour"];
  [coderCopy encodeInteger:self->_assumedKeyRollHour forKey:@"assumedKeyRollHour"];
  [coderCopy encodeBool:self->_surfaceImmediatelyBetweenBackstopAndKeyroll forKey:@"surfaceImmediatelyBetweenBackstopAndKeyroll"];
  [coderCopy encodeDouble:@"maxExpectedWildInterval" forKey:self->_maxExpectedWildInterval];
  [coderCopy encodeBool:self->_shouldAlertImmediatelyForImmediateTypes forKey:@"shouldAlertImmediatelyForImmediateTypes"];
  [coderCopy encodeDouble:@"durationOfConsideration" forKey:self->_durationOfConsideration];
  [coderCopy encodeDouble:@"thresholdOfLocationRelevance" forKey:self->_thresholdOfLocationRelevance];
  [coderCopy encodeDouble:@"thresholdOfSignificantDuration" forKey:self->_thresholdOfSignificantDuration];
  [coderCopy encodeDouble:@"thresholdOfSignificantDistance" forKey:self->_thresholdOfSignificantDistance];
  [coderCopy encodeDouble:@"capOfReasonableWalkingSpeed" forKey:self->_capOfReasonableWalkingSpeed];
  [coderCopy encodeBool:self->_allowNavGeoHintAsPrivateVehicleHint forKey:@"allowNavGeoHintAsPrivateVehicleHint"];
}

- (SPTrackingAvoidancePolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SPTrackingAvoidancePolicy;
  v5 = [(SPTrackingAvoidancePolicy *)&v16 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    [coderCopy decodeDoubleForKey:@"expiryTimeInterval"];
    v5->_expiryTimeInterval = v6;
    [coderCopy decodeDoubleForKey:@"keepAliveInterval"];
    v5->_keepAliveInterval = v7;
    [coderCopy decodeDoubleForKey:@"minimumStagingInterval"];
    v5->_minimumStagingInterval = v8;
    v5->_stagingBackstopHour = [coderCopy decodeIntegerForKey:@"stagingBackstopHour"];
    v5->_assumedKeyRollHour = [coderCopy decodeIntegerForKey:@"assumedKeyRollHour"];
    v5->_surfaceImmediatelyBetweenBackstopAndKeyroll = [coderCopy decodeBoolForKey:@"surfaceImmediatelyBetweenBackstopAndKeyroll"];
    [coderCopy decodeDoubleForKey:@"maxExpectedWildInterval"];
    v5->_maxExpectedWildInterval = v9;
    v5->_shouldAlertImmediatelyForImmediateTypes = [coderCopy decodeBoolForKey:@"shouldAlertImmediatelyForImmediateTypes"];
    [coderCopy decodeDoubleForKey:@"durationOfConsideration"];
    v5->_durationOfConsideration = v10;
    [coderCopy decodeDoubleForKey:@"thresholdOfLocationRelevance"];
    v5->_thresholdOfLocationRelevance = v11;
    [coderCopy decodeDoubleForKey:@"thresholdOfSignificantDuration"];
    v5->_thresholdOfSignificantDuration = v12;
    [coderCopy decodeDoubleForKey:@"thresholdOfSignificantDistance"];
    v5->_thresholdOfSignificantDistance = v13;
    [coderCopy decodeDoubleForKey:@"capOfReasonableWalkingSpeed"];
    v5->_capOfReasonableWalkingSpeed = v14;
    v5->_allowNavGeoHintAsPrivateVehicleHint = [coderCopy decodeBoolForKey:@"allowNavGeoHintAsPrivateVehicleHint"];
  }

  return v5;
}

- (id)description
{
  type = self->_type;
  if (type > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279B5A6E8[type];
  }

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Policy type: %@", v3];

  return v4;
}

@end