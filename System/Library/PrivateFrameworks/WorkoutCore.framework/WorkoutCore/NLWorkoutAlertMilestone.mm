@interface NLWorkoutAlertMilestone
+ (id)milestoneAlertWithDistanceType:(unint64_t)a3 alertType:(int64_t)a4 distanceValue:(double)a5 distanceSinceLastAlert:(double)a6 elapsedTimeValue:(double)a7 timeIntervalSinceLastAlert:(double)a8;
- (double)_distanceIncrement:(id)a3;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)a3 paceUnitStyle:(unint64_t)a4 formattingManager:(id)a5;
- (id)_paceStringWithFormattingManager:(id)a3 unitStyle:(unint64_t)a4;
- (id)description;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (unint64_t)optimalUnitStyleFittingWidth:(double)a3 withFont:(id)a4 formattingManager:(id)a5;
@end

@implementation NLWorkoutAlertMilestone

+ (id)milestoneAlertWithDistanceType:(unint64_t)a3 alertType:(int64_t)a4 distanceValue:(double)a5 distanceSinceLastAlert:(double)a6 elapsedTimeValue:(double)a7 timeIntervalSinceLastAlert:(double)a8
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = a7;
  v12 = a8;
  v11 = objc_alloc_init(NLWorkoutAlertMilestone);
  [(NLWorkoutAlert *)v11 setType:v16];
  [(NLWorkoutAlertMilestone *)v11 setDistanceType:v17];
  [(NLWorkoutAlertMilestone *)v11 setDistanceValue:v15 + 1.0];
  [(NLWorkoutAlertMilestone *)v11 setDistanceSinceLastAlert:v14];
  [(NLWorkoutAlertMilestone *)v11 setElapsedTimeValue:v13];
  [(NLWorkoutAlertMilestone *)v11 setTimeIntervalSinceLastAlert:v12];
  v9 = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v11 setEventDate:?];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);

  return v10;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)a3 withFont:(id)a4 formattingManager:(id)a5
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  if ([(NLWorkoutAlert *)v20 type]== 6)
  {
    v10 = v16;
    [(NLWorkoutAlertMilestone *)v20 distanceValue];
    v9 = v5;
    v11 = [v16 unitManager];
    v15 = [v10 localizedStringWithDistanceInMeters:objc_msgSend(v11 distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:v20->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v9}];
    MEMORY[0x277D82BD8](v11);
    v14 = [location fu_fontWithSizeFittingString:v15 withinWidth:v18];
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

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = [(NLWorkoutAlertMilestone *)v9 _localizedDescriptionForProModeWithUnitStyle:v7 paceUnitStyle:2 formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = v49;
  v38 = [location[0] unitManager];
  [(NLWorkoutAlertMilestone *)v37 _distanceIncrement:?];
  v39 = v3;
  MEMORY[0x277D82BD8](v38);
  v47[1] = v39;
  v40 = [location[0] unitManager];
  v47[0] = [v40 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](v49, "distanceType")}];
  MEMORY[0x277D82BD8](v40);
  v46 = [MEMORY[0x277CCD7E8] quantityWithUnit:v47[0] doubleValue:*&v39];
  v45 = 0;
  v44 = 0;
  v4 = *&v39;
  if (*&v39 == 1.0 && [(NLWorkoutAlert *)v49 type]== 6)
  {
    v27 = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)v49 distanceValue];
    [v27 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](v49 distanceType:{"distanceType"), v5}];
    v28 = v6;
    MEMORY[0x277D82BD8](v27);
    v43 = v28;
    v30 = [location[0] unitManager];
    v29 = [v30 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](v49, "distanceType")}];
    v31 = [v29 _isMetricDistance];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    v42 = v31;
    if (v31)
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
    v36 = [(NLWorkoutAlertMilestone *)v49 distanceType];
    [(NLWorkoutAlertMilestone *)v49 timeIntervalSinceLastAlert];
    v10 = [WOSpokenUtilities spokenPaceForSingleDistanceUnitWithDistance:v35 distanceType:v36 duration:location[0] formattingManager:?];
    v11 = v44;
    v44 = v10;
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v41, 0);
  }

  else
  {
    if ([(NLWorkoutAlert *)v49 type]== 6)
    {
      v24 = location[0];
      [(NLWorkoutAlertMilestone *)v49 distanceValue];
      v23 = v12;
      v25 = [location[0] unitManager];
      v13 = [v24 localizedStringWithDistanceInMeters:objc_msgSend(v25 distanceUnit:"userDistanceUnitForDistanceType:" unitStyle:v49->_distanceType) decimalPrecision:3 roundingMode:3 decimalTrimmingMode:{2, v23}];
      v14 = v45;
      v45 = v13;
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v25);
      v26 = [(NLWorkoutAlertMilestone *)v49 distanceType];
      [(NLWorkoutAlertMilestone *)v49 timeIntervalSinceLastAlert];
      v15 = [WOSpokenUtilities spokenPaceWithDistance:v46 distanceType:v26 duration:8 metricType:location[0] formattingManager:?];
      v16 = v44;
      v44 = v15;
      MEMORY[0x277D82BD8](v16);
    }

    else if ([(NLWorkoutAlert *)v49 type]== 5)
    {
      v17 = [location[0] stringWithDuration:6 durationFormat:v49->_elapsedTimeValue];
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

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)a3 paceUnitStyle:(unint64_t)a4 formattingManager:(id)a5
{
  v38 = self;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0;
  if ([(NLWorkoutAlert *)v38 type]== 6)
  {
    v26 = location;
    [(NLWorkoutAlertMilestone *)v38 distanceValue];
    v25 = v5;
    v27 = [location unitManager];
    v6 = [v27 userDistanceUnitForDistanceType:v38->_distanceType];
    v7 = [v26 localizedStringWithDistanceInMeters:v6 distanceUnit:v36 unitStyle:3 decimalPrecision:2 roundingMode:v25 decimalTrimmingMode:?];
    v8 = v32;
    v32 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v27);
  }

  else
  {
    v9 = [location stringWithDuration:2 durationFormat:v38->_elapsedTimeValue];
    v10 = v32;
    v32 = v9;
    MEMORY[0x277D82BD8](v10);
  }

  v31 = [NLWorkoutAlert splitStringOnNewlines:v32];
  [v33 addObjectsFromArray:v31];
  if ([(NLWorkoutAlert *)v38 type]== 6)
  {
    v20 = [location unitManager];
    v21 = [v20 paceDistanceUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](v38, "distanceType")}];
    MEMORY[0x277D82BD8](v20);
    v30 = v21;
    v29 = MEMORY[0x20F2E8410](v38->_distanceType);
    v28 = MEMORY[0x277D82BE0](&stru_28225A4E8);
    v22 = v38;
    v23 = [location unitManager];
    [(NLWorkoutAlertMilestone *)v22 _distanceIncrement:?];
    v24 = v11;
    MEMORY[0x277D82BD8](v23);
    v12 = v24;
    if (v24 != 1.0)
    {
      v13 = [location localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:-[NLWorkoutAlertMilestone distanceType](v38 distanceUnit:"distanceType" paceFormat:v24) abbreviated:v30 multiline:v29, 0, 1];
      v14 = v28;
      v28 = v13;
      MEMORY[0x277D82BD8](v14);
    }

    v17 = v33;
    v19 = [(NLWorkoutAlertMilestone *)v38 _paceStringWithFormattingManager:location unitStyle:v35, v12];
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
  v8 = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertMilestone(eventType=%@, distanceValue=%f, timeIntervalSinceLastAlert=%f)", v5, *&v8->_distanceValue, *&v8->_timeIntervalSinceLastAlert];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)_paceStringWithFormattingManager:(id)a3 unitStyle:(unint64_t)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  [(NLWorkoutAlertMilestone *)v23 timeIntervalSinceLastAlert];
  if (v4 <= 2.22044605e-16)
  {
    v24 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  else
  {
    v9 = v23;
    v10 = [location[0] unitManager];
    [(NLWorkoutAlertMilestone *)v9 _distanceIncrement:?];
    v11 = v5;
    MEMORY[0x277D82BD8](v10);
    v20 = v11;
    v12 = [location[0] unitManager];
    v19 = [v12 userDistanceHKUnitForDistanceType:{-[NLWorkoutAlertMilestone distanceType](v23, "distanceType")}];
    MEMORY[0x277D82BD8](v12);
    v18 = [MEMORY[0x277CCD7E8] quantityWithUnit:v19 doubleValue:v20];
    v17 = MEMORY[0x20F2E8410]([(NLWorkoutAlertMilestone *)v23 distanceType]);
    v14 = location[0];
    v13 = v18;
    [(NLWorkoutAlertMilestone *)v23 timeIntervalSinceLastAlert];
    v16 = [v14 localizedPaceStringWithDistance:v13 overDuration:v17 paceFormat:v21 unitStyle:1 decimalTrimmingMode:-[NLWorkoutAlertMilestone distanceType](v23 distanceType:"distanceType"), v6];
    v24 = MEMORY[0x277D82BE0](v16);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
  v7 = v24;

  return v7;
}

- (double)_distanceIncrement:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLWorkoutAlertMilestone *)v10 distanceSinceLastAlert];
  if (v3 == 2.22044605e-16)
  {
    v8 = NLDistanceNotificationIntervalForDistanceType([(NLWorkoutAlertMilestone *)v10 distanceType]);
  }

  else
  {
    v7 = location[0];
    [(NLWorkoutAlertMilestone *)v10 distanceSinceLastAlert];
    [v7 distanceInUserDistanceUnitForDistanceInMeters:-[NLWorkoutAlertMilestone distanceType](v10 distanceType:{"distanceType"), v4}];
    v8 = v5;
  }

  objc_storeStrong(location, 0);
  return v8;
}

@end