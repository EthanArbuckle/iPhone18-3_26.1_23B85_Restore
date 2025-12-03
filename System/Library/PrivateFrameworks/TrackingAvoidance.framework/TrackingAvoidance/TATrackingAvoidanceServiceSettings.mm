@interface TATrackingAvoidanceServiceSettings
- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneral:(BOOL)general enableTAFilterVisits:(BOOL)visits enableTAFilterSingleVisit:(BOOL)visit enableTAFilterLeavingLOI:(BOOL)i classificationTimeInterval:(double)interval dailyAccessoryAlertLimit:(unint64_t)limit;
- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneralOrDefault:(id)default enableTAFilterVisitsOrDefault:(id)orDefault enableTAFilterSingleVisitOrDefault:(id)visitOrDefault enableTAFilterLeavingLOIOrDefault:(id)iOrDefault classificationTimeIntervalOrDefault:(id)intervalOrDefault dailyAccessoryAlertLimitOrDefault:(id)limitOrDefault;
@end

@implementation TATrackingAvoidanceServiceSettings

- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneral:(BOOL)general enableTAFilterVisits:(BOOL)visits enableTAFilterSingleVisit:(BOOL)visit enableTAFilterLeavingLOI:(BOOL)i classificationTimeInterval:(double)interval dailyAccessoryAlertLimit:(unint64_t)limit
{
  v16.receiver = self;
  v16.super_class = TATrackingAvoidanceServiceSettings;
  result = [(TATrackingAvoidanceServiceSettings *)&v16 init];
  if (result)
  {
    result->_enableTAFilterGeneral = general;
    result->_enableTAFilterVisits = visits;
    result->_enableTAFilterSingleVisit = visit;
    result->_enableTAFilterLeavingLOI = i;
    result->_dailyAccessoryAlertLimit = limit;
    intervalCopy = 120.0;
    if (interval > 0.0)
    {
      intervalCopy = interval;
    }

    result->_classificationTimeInterval = intervalCopy;
  }

  return result;
}

- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneralOrDefault:(id)default enableTAFilterVisitsOrDefault:(id)orDefault enableTAFilterSingleVisitOrDefault:(id)visitOrDefault enableTAFilterLeavingLOIOrDefault:(id)iOrDefault classificationTimeIntervalOrDefault:(id)intervalOrDefault dailyAccessoryAlertLimitOrDefault:(id)limitOrDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  visitOrDefaultCopy = visitOrDefault;
  iOrDefaultCopy = iOrDefault;
  intervalOrDefaultCopy = intervalOrDefault;
  limitOrDefaultCopy = limitOrDefault;
  if (defaultCopy)
  {
    bOOLValue = [defaultCopy BOOLValue];
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    bOOLValue = 1;
    if (orDefaultCopy)
    {
LABEL_3:
      bOOLValue2 = [orDefaultCopy BOOLValue];
      if (visitOrDefaultCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  bOOLValue2 = 1;
  if (visitOrDefaultCopy)
  {
LABEL_4:
    bOOLValue3 = [visitOrDefaultCopy BOOLValue];
    if (iOrDefaultCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  bOOLValue3 = 1;
  if (iOrDefaultCopy)
  {
LABEL_5:
    bOOLValue4 = [iOrDefaultCopy BOOLValue];
    if (intervalOrDefaultCopy)
    {
      goto LABEL_6;
    }

LABEL_12:
    v24 = 120.0;
    if (limitOrDefaultCopy)
    {
      goto LABEL_7;
    }

LABEL_13:
    unsignedLongValue = 3;
    goto LABEL_14;
  }

LABEL_11:
  bOOLValue4 = 1;
  if (!intervalOrDefaultCopy)
  {
    goto LABEL_12;
  }

LABEL_6:
  [intervalOrDefaultCopy doubleValue];
  v24 = v23;
  if (!limitOrDefaultCopy)
  {
    goto LABEL_13;
  }

LABEL_7:
  unsignedLongValue = [limitOrDefaultCopy unsignedLongValue];
LABEL_14:
  v26 = [(TATrackingAvoidanceServiceSettings *)self initWithEnableTAFilterGeneral:bOOLValue enableTAFilterVisits:bOOLValue2 enableTAFilterSingleVisit:bOOLValue3 enableTAFilterLeavingLOI:bOOLValue4 classificationTimeInterval:unsignedLongValue dailyAccessoryAlertLimit:v24];

  return v26;
}

@end