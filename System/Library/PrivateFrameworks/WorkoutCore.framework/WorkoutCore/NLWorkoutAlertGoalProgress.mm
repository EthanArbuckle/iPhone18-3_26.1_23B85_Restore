@interface NLWorkoutAlertGoalProgress
+ (id)goalProgressAlertWithGoal:(id)a3 distanceType:(unint64_t)a4 alertType:(int64_t)a5 currentValue:(double)a6;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4;
- (id)description;
- (id)goalCompletionStringWithUnitStyle:(unint64_t)a3 decimalTrimmingMode:(unint64_t)a4 formattingManager:(id)a5 textCase:(unint64_t)a6;
- (id)goalProgressString;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4;
- (id)spokenDescriptionWithFormattingManager:(id)a3;
- (id)spokenUserDataWithFormattingManager:(id)a3;
- (unint64_t)optimalUnitStyleFittingWidth:(double)a3 withFont:(id)a4 formattingManager:(id)a5;
@end

@implementation NLWorkoutAlertGoalProgress

+ (id)goalProgressAlertWithGoal:(id)a3 distanceType:(unint64_t)a4 alertType:(int64_t)a5 currentValue:(double)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = objc_alloc_init(NLWorkoutAlertGoalProgress);
  [(NLWorkoutAlert *)v12 setType:a5];
  [(NLWorkoutAlertGoalProgress *)v12 setDistanceType:v15];
  [(NLWorkoutAlertGoalProgress *)v12 setCurrentValue:v13];
  [(NLWorkoutAlertGoalProgress *)v12 setGoal:location[0]];
  v10 = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v12 setEventDate:?];
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)a3 withFont:(id)a4 formattingManager:(id)a5
{
  location[3] = self;
  location[2] = a2;
  location[1] = *&a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = [(NLWorkoutAlertGoalProgress *)v9 _localizedDescriptionForProModeWithUnitStyle:v7 formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)goalCompletionStringWithUnitStyle:(unint64_t)a3 decimalTrimmingMode:(unint64_t)a4 formattingManager:(id)a5 textCase:(unint64_t)a6
{
  v55 = self;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v50 = a6;
  v49 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  v48 = 0;
  v42 = [(NLWorkoutAlertGoalProgress *)v55 goal];
  v43 = [(NLSessionActivityGoal *)v42 goalTypeIdentifier];
  MEMORY[0x277D82BD8](v42);
  if (v43)
  {
    switch(v43)
    {
      case 1:
        v37 = location;
        [(NLWorkoutAlertGoalProgress *)v55 currentValue];
        v36 = v6;
        v38 = [location unitManager];
        v7 = [v38 userDistanceUnitForDistanceType:v55->_distanceType];
        v8 = [v37 localizedStringWithDistanceInMeters:v7 distanceUnit:0 unitStyle:3 decimalPrecision:4 roundingMode:v52 decimalTrimmingMode:v36];
        v9 = v49;
        v49 = v8;
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v38);
        v39 = [location unitManager];
        v40 = [v39 userDistanceUnitForDistanceType:v55->_distanceType];
        MEMORY[0x277D82BD8](v39);
        v47 = v40;
        if (v53 == 3)
        {
          v31 = MEMORY[0x277CCD7E8];
          v32 = [MEMORY[0x277CCDAB0] meterUnit];
          v46 = [v31 quantityWithUnit:v55->_currentValue doubleValue:?];
          MEMORY[0x277D82BD8](v32);
          v33 = v46;
          v34 = MEMORY[0x20F2E8320](v47);
          [v33 doubleValueForUnit:?];
          v35 = v10;
          MEMORY[0x277D82BD8](v34);
          v45[1] = v35;
          v11 = [location localizedLongUnitStringForDistanceUnit:v47 distanceInUnit:v50 textCase:*&v35];
          v12 = v48;
          v48 = v11;
          MEMORY[0x277D82BD8](v12);
          objc_storeStrong(&v46, 0);
        }

        else
        {
          v13 = [location localizedShortUnitStringForDistanceUnit:v47 textCase:v50];
          v14 = v48;
          v48 = v13;
          MEMORY[0x277D82BD8](v14);
        }

        break;
      case 2:
        if (v53 == 3)
        {
          v30 = location;
          [(NLWorkoutAlertGoalProgress *)v55 currentValue];
          v15 = [v30 stringWithDuration:6 durationFormat:?];
        }

        else
        {
          v29 = location;
          [(NLWorkoutAlertGoalProgress *)v55 currentValue];
          v15 = [v29 stringWithDuration:2 durationFormat:?];
        }

        v16 = v49;
        v49 = v15;
        MEMORY[0x277D82BD8](v16);
        break;
      case 3:
        v27 = MEMORY[0x277CCD7E8];
        v28 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
        [(NLWorkoutAlertGoalProgress *)v55 currentValue];
        v45[0] = [v27 quantityWithUnit:v28 doubleValue:?];
        MEMORY[0x277D82BD8](v28);
        v17 = [location localizedStringWithActiveEnergy:v45[0] unitStyle:0];
        v18 = v49;
        v49 = v17;
        MEMORY[0x277D82BD8](v18);
        if (v53 == 3)
        {
          v19 = [location localizedLongActiveEnergyUnitStringWithTextCase:v50];
          v20 = v48;
          v48 = v19;
          MEMORY[0x277D82BD8](v20);
        }

        else
        {
          v25 = location;
          v26 = [location localizedShortActiveEnergyUnitString];
          v21 = [v25 applyTextCase:v50 toString:?];
          v22 = v48;
          v48 = v21;
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v26);
        }

        objc_storeStrong(v45, 0);
        break;
    }
  }

  v44 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:v49 unitString:v48];
  v24 = MEMORY[0x277D82BE0](v44);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&location, 0);

  return v24;
}

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)a3 formattingManager:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(NLWorkoutAlertGoalProgress *)v14 goalProgressString];
  v8 = [NLWorkoutAlertGoalProgress splitStringOnNewlines:v9];
  [v10 addObjectsFromArray:v8];
  v5 = v10;
  v6 = [(NLWorkoutAlertGoalProgress *)v14 goalCompletionStringWithUnitStyle:v12 decimalTrimmingMode:1 formattingManager:location textCase:?];
  [v5 addObject:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)goalProgressString
{
  v5 = [(NLWorkoutAlert *)self type];
  if (v5 == 7)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 localizedStringForKey:@"GOAL_PROGRESS_HALFWAY" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else if (v5 == 13)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"GOAL_PROGRESS_COMPLETION" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v6 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  return v6;
}

- (id)description
{
  v8 = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertGoalProgress(eventType=%@, currentValue=%f)", v5, *&v8->_currentValue];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)spokenDescriptionWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = NLWorkoutAlertGoalProgress.spokenDescription(with:)(v4);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (id)spokenUserDataWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  NLWorkoutAlertGoalProgress.spokenUserData(with:)(v4);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end