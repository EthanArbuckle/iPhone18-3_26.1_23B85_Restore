@interface SPTrackingAvoidancePolicy
- (BOOL)isEqual:(id)a3;
- (SPTrackingAvoidancePolicy)initWithCoder:(id)a3;
- (SPTrackingAvoidancePolicy)initWithType:(int64_t)a3 expiryTimeInterval:(double)a4 keepAliveInterval:(double)a5 minimumStagingInterval:(double)a6 stagingBackstopHour:(int64_t)a7 assumedKeyRollHour:(int64_t)a8 scanInterval:(double)a9 surfaceImmediatelyBetweenBackstopAndKeyroll:(BOOL)a10 maxExpectedWildInterval:(double)a11 shouldAlertImmediatelyForImmediateTypes:(BOOL)a12 durationOfConsideration:(double)a13 thresholdOfLocationRelevance:(double)a14 thresholdOfSignificantDuration:(double)a15 thresholdOfSignificantDistance:(double)a16 capOfReasonableWalkingSpeed:(double)a17 allowNavGeoHintAsPrivateVehicleHint:(BOOL)a18;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPTrackingAvoidancePolicy

- (SPTrackingAvoidancePolicy)initWithType:(int64_t)a3 expiryTimeInterval:(double)a4 keepAliveInterval:(double)a5 minimumStagingInterval:(double)a6 stagingBackstopHour:(int64_t)a7 assumedKeyRollHour:(int64_t)a8 scanInterval:(double)a9 surfaceImmediatelyBetweenBackstopAndKeyroll:(BOOL)a10 maxExpectedWildInterval:(double)a11 shouldAlertImmediatelyForImmediateTypes:(BOOL)a12 durationOfConsideration:(double)a13 thresholdOfLocationRelevance:(double)a14 thresholdOfSignificantDuration:(double)a15 thresholdOfSignificantDistance:(double)a16 capOfReasonableWalkingSpeed:(double)a17 allowNavGeoHintAsPrivateVehicleHint:(BOOL)a18
{
  v32.receiver = self;
  v32.super_class = SPTrackingAvoidancePolicy;
  result = [(SPTrackingAvoidancePolicy *)&v32 init:a4];
  if (result)
  {
    result->_type = a3;
    result->_expiryTimeInterval = a4;
    result->_keepAliveInterval = a5;
    result->_minimumStagingInterval = a6;
    result->_stagingBackstopHour = a7;
    result->_assumedKeyRollHour = a8;
    result->_scanInterval = a9;
    result->_surfaceImmediatelyBetweenBackstopAndKeyroll = a10;
    result->_shouldAlertImmediatelyForImmediateTypes = a12;
    result->_durationOfConsideration = a13;
    result->_thresholdOfLocationRelevance = a14;
    result->_thresholdOfSignificantDuration = a15;
    result->_thresholdOfSignificantDistance = a16;
    result->_capOfReasonableWalkingSpeed = a17;
    result->_allowNavGeoHintAsPrivateVehicleHint = a18;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPTrackingAvoidancePolicy *)self type];
      v7 = [(SPTrackingAvoidancePolicy *)v5 type];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeDouble:@"expiryTimeInterval" forKey:self->_expiryTimeInterval];
  [v5 encodeDouble:@"keepAliveInterval" forKey:self->_keepAliveInterval];
  [v5 encodeDouble:@"minimumStagingInterval" forKey:self->_minimumStagingInterval];
  [v5 encodeInteger:self->_stagingBackstopHour forKey:@"stagingBackstopHour"];
  [v5 encodeInteger:self->_assumedKeyRollHour forKey:@"assumedKeyRollHour"];
  [v5 encodeBool:self->_surfaceImmediatelyBetweenBackstopAndKeyroll forKey:@"surfaceImmediatelyBetweenBackstopAndKeyroll"];
  [v5 encodeDouble:@"maxExpectedWildInterval" forKey:self->_maxExpectedWildInterval];
  [v5 encodeBool:self->_shouldAlertImmediatelyForImmediateTypes forKey:@"shouldAlertImmediatelyForImmediateTypes"];
  [v5 encodeDouble:@"durationOfConsideration" forKey:self->_durationOfConsideration];
  [v5 encodeDouble:@"thresholdOfLocationRelevance" forKey:self->_thresholdOfLocationRelevance];
  [v5 encodeDouble:@"thresholdOfSignificantDuration" forKey:self->_thresholdOfSignificantDuration];
  [v5 encodeDouble:@"thresholdOfSignificantDistance" forKey:self->_thresholdOfSignificantDistance];
  [v5 encodeDouble:@"capOfReasonableWalkingSpeed" forKey:self->_capOfReasonableWalkingSpeed];
  [v5 encodeBool:self->_allowNavGeoHintAsPrivateVehicleHint forKey:@"allowNavGeoHintAsPrivateVehicleHint"];
}

- (SPTrackingAvoidancePolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SPTrackingAvoidancePolicy;
  v5 = [(SPTrackingAvoidancePolicy *)&v16 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    [v4 decodeDoubleForKey:@"expiryTimeInterval"];
    v5->_expiryTimeInterval = v6;
    [v4 decodeDoubleForKey:@"keepAliveInterval"];
    v5->_keepAliveInterval = v7;
    [v4 decodeDoubleForKey:@"minimumStagingInterval"];
    v5->_minimumStagingInterval = v8;
    v5->_stagingBackstopHour = [v4 decodeIntegerForKey:@"stagingBackstopHour"];
    v5->_assumedKeyRollHour = [v4 decodeIntegerForKey:@"assumedKeyRollHour"];
    v5->_surfaceImmediatelyBetweenBackstopAndKeyroll = [v4 decodeBoolForKey:@"surfaceImmediatelyBetweenBackstopAndKeyroll"];
    [v4 decodeDoubleForKey:@"maxExpectedWildInterval"];
    v5->_maxExpectedWildInterval = v9;
    v5->_shouldAlertImmediatelyForImmediateTypes = [v4 decodeBoolForKey:@"shouldAlertImmediatelyForImmediateTypes"];
    [v4 decodeDoubleForKey:@"durationOfConsideration"];
    v5->_durationOfConsideration = v10;
    [v4 decodeDoubleForKey:@"thresholdOfLocationRelevance"];
    v5->_thresholdOfLocationRelevance = v11;
    [v4 decodeDoubleForKey:@"thresholdOfSignificantDuration"];
    v5->_thresholdOfSignificantDuration = v12;
    [v4 decodeDoubleForKey:@"thresholdOfSignificantDistance"];
    v5->_thresholdOfSignificantDistance = v13;
    [v4 decodeDoubleForKey:@"capOfReasonableWalkingSpeed"];
    v5->_capOfReasonableWalkingSpeed = v14;
    v5->_allowNavGeoHintAsPrivateVehicleHint = [v4 decodeBoolForKey:@"allowNavGeoHintAsPrivateVehicleHint"];
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