@interface TATrackingAvoidanceServiceSettings
- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneral:(BOOL)a3 enableTAFilterVisits:(BOOL)a4 enableTAFilterSingleVisit:(BOOL)a5 enableTAFilterLeavingLOI:(BOOL)a6 classificationTimeInterval:(double)a7 dailyAccessoryAlertLimit:(unint64_t)a8;
- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneralOrDefault:(id)a3 enableTAFilterVisitsOrDefault:(id)a4 enableTAFilterSingleVisitOrDefault:(id)a5 enableTAFilterLeavingLOIOrDefault:(id)a6 classificationTimeIntervalOrDefault:(id)a7 dailyAccessoryAlertLimitOrDefault:(id)a8;
@end

@implementation TATrackingAvoidanceServiceSettings

- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneral:(BOOL)a3 enableTAFilterVisits:(BOOL)a4 enableTAFilterSingleVisit:(BOOL)a5 enableTAFilterLeavingLOI:(BOOL)a6 classificationTimeInterval:(double)a7 dailyAccessoryAlertLimit:(unint64_t)a8
{
  v16.receiver = self;
  v16.super_class = TATrackingAvoidanceServiceSettings;
  result = [(TATrackingAvoidanceServiceSettings *)&v16 init];
  if (result)
  {
    result->_enableTAFilterGeneral = a3;
    result->_enableTAFilterVisits = a4;
    result->_enableTAFilterSingleVisit = a5;
    result->_enableTAFilterLeavingLOI = a6;
    result->_dailyAccessoryAlertLimit = a8;
    v15 = 120.0;
    if (a7 > 0.0)
    {
      v15 = a7;
    }

    result->_classificationTimeInterval = v15;
  }

  return result;
}

- (TATrackingAvoidanceServiceSettings)initWithEnableTAFilterGeneralOrDefault:(id)a3 enableTAFilterVisitsOrDefault:(id)a4 enableTAFilterSingleVisitOrDefault:(id)a5 enableTAFilterLeavingLOIOrDefault:(id)a6 classificationTimeIntervalOrDefault:(id)a7 dailyAccessoryAlertLimitOrDefault:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v13)
  {
    v19 = [v13 BOOLValue];
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = 1;
    if (v14)
    {
LABEL_3:
      v20 = [v14 BOOLValue];
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v20 = 1;
  if (v15)
  {
LABEL_4:
    v21 = [v15 BOOLValue];
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v21 = 1;
  if (v16)
  {
LABEL_5:
    v22 = [v16 BOOLValue];
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_12:
    v24 = 120.0;
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_13:
    v25 = 3;
    goto LABEL_14;
  }

LABEL_11:
  v22 = 1;
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_6:
  [v17 doubleValue];
  v24 = v23;
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_7:
  v25 = [v18 unsignedLongValue];
LABEL_14:
  v26 = [(TATrackingAvoidanceServiceSettings *)self initWithEnableTAFilterGeneral:v19 enableTAFilterVisits:v20 enableTAFilterSingleVisit:v21 enableTAFilterLeavingLOI:v22 classificationTimeInterval:v25 dailyAccessoryAlertLimit:v24];

  return v26;
}

@end