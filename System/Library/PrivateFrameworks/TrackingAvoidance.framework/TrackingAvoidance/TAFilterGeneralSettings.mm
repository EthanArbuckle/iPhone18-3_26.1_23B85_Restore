@interface TAFilterGeneralSettings
- (TAFilterGeneralSettings)initWithDurationOfConsideration:(double)consideration thresholdOfLocationRelevance:(double)relevance thresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance capOfReasonableWalkingSpeed:(double)speed allowNavGeoHintAsPrivateVehicleHint:(BOOL)hint vehicularImmediacyType:(unint64_t)type beepOnMoveVehicularImmediacyType:(unint64_t)self0 beepOnMovePedestrianImmediacyType:(unint64_t)self1 nextPLOIVehicularImmediacyType:(unint64_t)self2 nextPLOIPedestrianImmediacyType:(unint64_t)self3 beepOnMoveConsiderationTimeInterval:(unint64_t)self4;
- (TAFilterGeneralSettings)initWithDurationOfConsiderationOrDefault:(id)default thresholdOfLocationRelevanceOrDefault:(id)orDefault thresholdOfSignificantDurationOrDefault:(id)durationOrDefault thresholdOfSignificantDistanceOrDefault:(id)distanceOrDefault capOfReasonableWalkingSpeedOrDefault:(id)speedOrDefault allowNavGeoHintAsPrivateVehicleHintOrDefault:(id)hintOrDefault vehicularImmediacyTypeOrDefault:(id)typeOrDefault beepOnMoveVehicularImmediacyTypeOrDefault:(id)self0 beepOnMovePedestrianImmediacyTypeOrDefault:(id)self1 nextPLOIVehicularImmediacyTypeOrDefault:(id)self2 nextPLOIPedestrianImmediacyTypeOrDefault:(id)self3 beepOnMoveConsiderationTimeIntervalOrDefault:(id)self4;
@end

@implementation TAFilterGeneralSettings

- (TAFilterGeneralSettings)initWithDurationOfConsideration:(double)consideration thresholdOfLocationRelevance:(double)relevance thresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance capOfReasonableWalkingSpeed:(double)speed allowNavGeoHintAsPrivateVehicleHint:(BOOL)hint vehicularImmediacyType:(unint64_t)type beepOnMoveVehicularImmediacyType:(unint64_t)self0 beepOnMovePedestrianImmediacyType:(unint64_t)self1 nextPLOIVehicularImmediacyType:(unint64_t)self2 nextPLOIPedestrianImmediacyType:(unint64_t)self3 beepOnMoveConsiderationTimeInterval:(unint64_t)self4
{
  v26.receiver = self;
  v26.super_class = TAFilterGeneralSettings;
  result = [(TAFilterGeneralSettings *)&v26 init];
  if (result)
  {
    result->_durationOfConsideration = consideration;
    result->_thresholdOfLocationRelevance = relevance;
    result->_thresholdOfSignificantDuration = duration;
    result->_thresholdOfSignificantDistance = distance;
    result->_capOfReasonableWalkingSpeed = speed;
    result->_allowNavGeoHintAsPrivateVehicleHint = hint;
    result->_vehicularImmediacyType = type;
    result->_beepOnMoveVehicularImmediacyType = immediacyType;
    result->_beepOnMovePedestrianImmediacyType = pedestrianImmediacyType;
    result->_nextPLOIVehicularImmediacyType = vehicularImmediacyType;
    result->_nextPLOIPedestrianImmediacyType = iPedestrianImmediacyType;
    result->_beepOnMoveConsiderationTimeInterval = interval;
  }

  return result;
}

- (TAFilterGeneralSettings)initWithDurationOfConsiderationOrDefault:(id)default thresholdOfLocationRelevanceOrDefault:(id)orDefault thresholdOfSignificantDurationOrDefault:(id)durationOrDefault thresholdOfSignificantDistanceOrDefault:(id)distanceOrDefault capOfReasonableWalkingSpeedOrDefault:(id)speedOrDefault allowNavGeoHintAsPrivateVehicleHintOrDefault:(id)hintOrDefault vehicularImmediacyTypeOrDefault:(id)typeOrDefault beepOnMoveVehicularImmediacyTypeOrDefault:(id)self0 beepOnMovePedestrianImmediacyTypeOrDefault:(id)self1 nextPLOIVehicularImmediacyTypeOrDefault:(id)self2 nextPLOIPedestrianImmediacyTypeOrDefault:(id)self3 beepOnMoveConsiderationTimeIntervalOrDefault:(id)self4
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  durationOrDefaultCopy = durationOrDefault;
  distanceOrDefaultCopy = distanceOrDefault;
  speedOrDefaultCopy = speedOrDefault;
  hintOrDefaultCopy = hintOrDefault;
  typeOrDefaultCopy = typeOrDefault;
  immediacyTypeOrDefaultCopy = immediacyTypeOrDefault;
  pedestrianImmediacyTypeOrDefaultCopy = pedestrianImmediacyTypeOrDefault;
  vehicularImmediacyTypeOrDefaultCopy = vehicularImmediacyTypeOrDefault;
  iPedestrianImmediacyTypeOrDefaultCopy = iPedestrianImmediacyTypeOrDefault;
  intervalOrDefaultCopy = intervalOrDefault;
  v55 = defaultCopy;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
    v29 = v28;
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 900.0;
    if (orDefaultCopy)
    {
LABEL_3:
      [orDefaultCopy doubleValue];
      v31 = v30;
      if (durationOrDefaultCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      v33 = 600.0;
      if (distanceOrDefaultCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v31 = 60.0;
  if (!durationOrDefaultCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  [durationOrDefaultCopy doubleValue];
  v33 = v32;
  if (distanceOrDefaultCopy)
  {
LABEL_5:
    [distanceOrDefaultCopy doubleValue];
    v35 = v34;
    goto LABEL_10;
  }

LABEL_9:
  v35 = 840.0;
LABEL_10:
  if (speedOrDefaultCopy)
  {
    [speedOrDefaultCopy doubleValue];
    v37 = v36;
  }

  else
  {
    v37 = 5.5;
  }

  v52 = distanceOrDefaultCopy;
  if (hintOrDefaultCopy)
  {
    bOOLValue = [hintOrDefaultCopy BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v53 = durationOrDefaultCopy;
  if (typeOrDefaultCopy)
  {
    unsignedIntegerValue = [typeOrDefaultCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v54 = orDefaultCopy;
  v50 = immediacyTypeOrDefaultCopy;
  if (immediacyTypeOrDefaultCopy)
  {
    unsignedIntegerValue2 = [immediacyTypeOrDefaultCopy unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 2;
  }

  v41 = typeOrDefaultCopy;
  if (pedestrianImmediacyTypeOrDefaultCopy)
  {
    unsignedIntegerValue3 = [pedestrianImmediacyTypeOrDefaultCopy unsignedIntegerValue];
    if (vehicularImmediacyTypeOrDefaultCopy)
    {
LABEL_24:
      v43 = vehicularImmediacyTypeOrDefaultCopy;
      unsignedIntegerValue4 = [vehicularImmediacyTypeOrDefaultCopy unsignedIntegerValue];
      goto LABEL_27;
    }
  }

  else
  {
    unsignedIntegerValue3 = 2;
    if (vehicularImmediacyTypeOrDefaultCopy)
    {
      goto LABEL_24;
    }
  }

  v43 = vehicularImmediacyTypeOrDefaultCopy;
  unsignedIntegerValue4 = 3;
LABEL_27:
  v45 = pedestrianImmediacyTypeOrDefaultCopy;
  if (!iPedestrianImmediacyTypeOrDefaultCopy)
  {
    unsignedIntegerValue5 = 3;
    if (intervalOrDefaultCopy)
    {
      goto LABEL_29;
    }

LABEL_31:
    unsignedIntegerValue6 = 25;
    goto LABEL_32;
  }

  unsignedIntegerValue5 = [iPedestrianImmediacyTypeOrDefaultCopy unsignedIntegerValue];
  if (!intervalOrDefaultCopy)
  {
    goto LABEL_31;
  }

LABEL_29:
  unsignedIntegerValue6 = [intervalOrDefaultCopy unsignedIntegerValue];
LABEL_32:
  v48 = [(TAFilterGeneralSettings *)self initWithDurationOfConsideration:bOOLValue thresholdOfLocationRelevance:unsignedIntegerValue thresholdOfSignificantDuration:unsignedIntegerValue2 thresholdOfSignificantDistance:unsignedIntegerValue3 capOfReasonableWalkingSpeed:unsignedIntegerValue4 allowNavGeoHintAsPrivateVehicleHint:unsignedIntegerValue5 vehicularImmediacyType:v29 beepOnMoveVehicularImmediacyType:v31 beepOnMovePedestrianImmediacyType:v33 nextPLOIVehicularImmediacyType:v35 nextPLOIPedestrianImmediacyType:v37 beepOnMoveConsiderationTimeInterval:unsignedIntegerValue6];

  return v48;
}

@end