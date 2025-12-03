@interface NLWorkoutAlertMilestone
+ (id)milestoneAlertWithDistanceType:(unint64_t)type alertType:(int64_t)alertType distanceValue:(double)value distanceSinceLastAlert:(double)alert elapsedTimeValue:(double)timeValue timeIntervalSinceLastAlert:(double)lastAlert;
- (double)_distanceIncrement:(id)increment;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style paceUnitStyle:(unint64_t)unitStyle formattingManager:(id)manager;
- (id)_paceStringWithFormattingManager:(id)manager unitStyle:(unint64_t)style;
- (id)description;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertMilestone

+ (id)milestoneAlertWithDistanceType:(unint64_t)type alertType:(int64_t)alertType distanceValue:(double)value distanceSinceLastAlert:(double)alert elapsedTimeValue:(double)timeValue timeIntervalSinceLastAlert:(double)lastAlert
{
  selfCopy = self;
  v18 = a2;
  typeCopy = type;
  alertTypeCopy = alertType;
  valueCopy = value;
  alertCopy = alert;
  timeValueCopy = timeValue;
  lastAlertCopy = lastAlert;
  v11 = objc_alloc_init(NLWorkoutAlertMilestone);
  [(NLWorkoutAlert *)v11 setType:alertTypeCopy];
  [(NLWorkoutAlertMilestone *)v11 setDistanceType:typeCopy];
  [(NLWorkoutAlertMilestone *)v11 setDistanceValue:valueCopy + 1.0];
  [(NLWorkoutAlertMilestone *)v11 setDistanceSinceLastAlert:alertCopy];
  [(NLWorkoutAlertMilestone *)v11 setElapsedTimeValue:timeValueCopy];
  [(NLWorkoutAlertMilestone *)v11 setTimeIntervalSinceLastAlert:lastAlertCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v11 setEventDate:?];
  MEMORY[0x277D82BD8](date);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);

  return v10;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager
{
  selfCopy = self;
  v19 = a2;
  widthCopy = width;
  location = 0;
  objc_storeStrong(&location, font);
  v16 = 0;
  objc_storeStrong(&v16, manager);
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    v10 = v16;
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    v9 = v5;
    unitManager = [v16 unitManager];
    v15 = [v10 localizedStringWithDistanceInMeters:objc_msgSend(unitManager distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:selfCopy->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v9}];
    MEMORY[0x277D82BD8](unitManager);
    v14 = [location fu_fontWithSizeFittingString:v15 withinWidth:widthCopy];
    [v14 pointSize];
    v12 = v6;
    [location pointSize];
    if (v12 >= v7)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  return v21;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v5 = [(NLWorkoutAlertMilestone *)selfCopy _localizedDescriptionForProModeWithUnitStyle:styleCopy paceUnitStyle:2 formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v37 = selfCopy;
  unitManager = [location[0] unitManager];
  [(NLWorkoutAlertMilestone *)v37 _distanceIncrement:?];
  v39 = v3;
  MEMORY[0x277D82BD8](unitManager);
  v47[1] = v39;
  unitManager2 = [location[0] unitManager];
  v47[0] = [unitManager2 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
  MEMORY[0x277D82BD8](unitManager2);
  v46 = [MEMORY[0x277CCD7E8] quantityWithUnit:v47[0] doubleValue:*&v39];
  v45 = 0;
  v44 = 0;
  v4 = *&v39;
  if (*&v39 == 1.0 && [(NLWorkoutAlert *)selfCopy type]== 6)
  {
    unitManager3 = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    [unitManager3 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:{"distanceType"), v5}];
    v28 = v6;
    MEMORY[0x277D82BD8](unitManager3);
    v43 = v28;
    unitManager4 = [location[0] unitManager];
    v29 = [unitManager4 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    _isMetricDistance = [v29 _isMetricDistance];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](unitManager4);
    v42 = _isMetricDistance;
    if (_isMetricDistance)
    {
      v7 = @"SPOKEN_MILESTONE_METRIC";
    }

    else
    {
      v7 = @"SPOKEN_MILESTONE_IMPERIAL";
    }

    v41 = MEMORY[0x277D82BE0](v7);
    v32 = MEMORY[0x277CCACA8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v34 localizedStringForKey:v41 value:&stru_28225A4E8 table:@"Localizable"];
    v8 = [v32 localizedStringWithFormat:v43];
    v9 = v45;
    v45 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    v35 = v46;
    distanceType = [(NLWorkoutAlertMilestone *)selfCopy distanceType];
    [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
    v10 = [WOSpokenUtilities spokenPaceForSingleDistanceUnitWithDistance:v35 distanceType:distanceType duration:location[0] formattingManager:?];
    v11 = v44;
    v44 = v10;
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    if ([(NLWorkoutAlert *)selfCopy type]== 6)
    {
      v24 = location[0];
      [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
      v23 = v12;
      unitManager5 = [location[0] unitManager];
      v13 = [v24 localizedStringWithDistanceInMeters:objc_msgSend(unitManager5 distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:selfCopy->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v23}];
      v14 = v45;
      v45 = v13;
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](unitManager5);
      distanceType2 = [(NLWorkoutAlertMilestone *)selfCopy distanceType];
      [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
      v15 = [WOSpokenUtilities spokenPaceWithDistance:v46 distanceType:distanceType2 duration:8 metricType:location[0] formattingManager:?];
      v16 = v44;
      v44 = v15;
      MEMORY[0x277D82BD8](v16);
    }

    else if ([(NLWorkoutAlert *)selfCopy type]== 5)
    {
      v17 = [location[0] stringWithDuration:6 durationFormat:selfCopy->_elapsedTimeValue];
      v18 = v45;
      v45 = v17;
      MEMORY[0x277D82BD8](v18);
    }

    v19 = [WOSpokenUtilities appendEndPhrasePunctuationWithPhrase:v45];
    v20 = v45;
    v45 = v19;
    MEMORY[0x277D82BD8](v20);
  }

  if (v44)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v45, v44];
  }

  else
  {
    v50 = MEMORY[0x277D82BE0](v45);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(v47, 0);
  objc_storeStrong(location, 0);
  v21 = v50;

  return v21;
}

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style paceUnitStyle:(unint64_t)unitStyle formattingManager:(id)manager
{
  selfCopy = self;
  v37 = a2;
  styleCopy = style;
  unitStyleCopy = unitStyle;
  location = 0;
  objc_storeStrong(&location, manager);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    v26 = location;
    [(NLWorkoutAlertMilestone *)selfCopy distanceValue];
    v25 = v5;
    unitManager = [location unitManager];
    v6 = [unitManager userDistanceUnitForDistanceType:selfCopy->_distanceType];
    v7 = [v26 localizedStringWithDistanceInMeters:v6 distanceUnit:styleCopy unitStyle:3 decimalPrecision:2 roundingMode:v25 decimalTrimmingMode:?];
    v8 = v32;
    v32 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](unitManager);
  }

  else
  {
    v9 = [location stringWithDuration:2 durationFormat:selfCopy->_elapsedTimeValue];
    v10 = v32;
    v32 = v9;
    MEMORY[0x277D82BD8](v10);
  }

  v31 = [NLWorkoutAlert splitStringOnNewlines:v32];
  [v33 addObjectsFromArray:v31];
  if ([(NLWorkoutAlert *)selfCopy type]== 6)
  {
    unitManager2 = [location unitManager];
    v21 = [unitManager2 paceDistanceUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    MEMORY[0x277D82BD8](unitManager2);
    v30 = v21;
    v29 = MEMORY[0x20F2E8410](selfCopy->_distanceType);
    v28 = MEMORY[0x277D82BE0](&stru_28225A4E8);
    v22 = selfCopy;
    unitManager3 = [location unitManager];
    [(NLWorkoutAlertMilestone *)v22 _distanceIncrement:?];
    v24 = v11;
    MEMORY[0x277D82BD8](unitManager3);
    v12 = v24;
    if (v24 != 1.0)
    {
      v13 = [location localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceUnit:"distanceType" paceFormat:v24) abbreviated:v30 multiline:v29, 0, 1];
      v14 = v28;
      v28 = v13;
      MEMORY[0x277D82BD8](v14);
    }

    v17 = v33;
    v19 = [(NLWorkoutAlertMilestone *)selfCopy _paceStringWithFormattingManager:location unitStyle:unitStyleCopy, v12];
    v18 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    [v17 addObject:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(&v28, 0);
  }

  v16 = MEMORY[0x277D82BE0](v33);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&location, 0);

  return v16;
}

- (id)description
{
  selfCopy = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertMilestone(eventType=%@, distanceValue=%f, timeIntervalSinceLastAlert=%f)", v5, *&selfCopy->_distanceValue, *&selfCopy->_timeIntervalSinceLastAlert];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)_paceStringWithFormattingManager:(id)manager unitStyle:(unint64_t)style
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  styleCopy = style;
  [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
  if (v4 <= 2.22044605e-16)
  {
    v24 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  else
  {
    v9 = selfCopy;
    unitManager = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)v9 _distanceIncrement:?];
    v11 = v5;
    MEMORY[0x277D82BD8](unitManager);
    v20 = v11;
    unitManager2 = [location[0] unitManager];
    v19 = [unitManager2 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](selfCopy, "distanceType")}];
    MEMORY[0x277D82BD8](unitManager2);
    v18 = [MEMORY[0x277CCD7E8] quantityWithUnit:v19 doubleValue:v20];
    v17 = MEMORY[0x20F2E8410]([(NLWorkoutAlertMilestone *)selfCopy distanceType]);
    v14 = location[0];
    v13 = v18;
    [(NLWorkoutAlertMilestone *)selfCopy timeIntervalSinceLastAlert];
    v16 = [v14 localizedPaceStringWithDistance:v13 overDuration:v17 paceFormat:styleCopy unitStyle:1 decimalTrimmingMode:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:"distanceType"), v6];
    v24 = MEMORY[0x277D82BE0](v16);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
  v7 = v24;

  return v7;
}

- (double)_distanceIncrement:(id)increment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, increment);
  [(NLWorkoutAlertMilestone *)selfCopy distanceSinceLastAlert];
  if (v3 == 2.22044605e-16)
  {
    v8 = NLDistanceNotificationIntervalForDistanceType([(NLWorkoutAlertMilestone *)selfCopy distanceType]);
  }

  else
  {
    v7 = location[0];
    [(NLWorkoutAlertMilestone *)selfCopy distanceSinceLastAlert];
    [v7 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](selfCopy distanceType:{"distanceType"), v4}];
    v8 = v5;
  }

  objc_storeStrong(location, 0);
  return v8;
}

@end