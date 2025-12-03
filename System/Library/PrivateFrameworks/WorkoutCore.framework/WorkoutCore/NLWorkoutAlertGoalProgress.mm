@interface NLWorkoutAlertGoalProgress
+ (id)goalProgressAlertWithGoal:(id)goal distanceType:(unint64_t)type alertType:(int64_t)alertType currentValue:(double)value;
- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)description;
- (id)goalCompletionStringWithUnitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode formattingManager:(id)manager textCase:(unint64_t)case;
- (id)goalProgressString;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertGoalProgress

+ (id)goalProgressAlertWithGoal:(id)goal distanceType:(unint64_t)type alertType:(int64_t)alertType currentValue:(double)value
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, goal);
  typeCopy = type;
  alertTypeCopy = alertType;
  valueCopy = value;
  v12 = objc_alloc_init(NLWorkoutAlertGoalProgress);
  [(NLWorkoutAlert *)v12 setType:alertType];
  [(NLWorkoutAlertGoalProgress *)v12 setDistanceType:typeCopy];
  [(NLWorkoutAlertGoalProgress *)v12 setCurrentValue:valueCopy];
  [(NLWorkoutAlertGoalProgress *)v12 setGoal:location[0]];
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v12 setEventDate:?];
  MEMORY[0x277D82BD8](date);
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager
{
  location[3] = self;
  location[2] = a2;
  location[1] = *&width;
  location[0] = 0;
  objc_storeStrong(location, font);
  v7 = 0;
  objc_storeStrong(&v7, manager);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v5 = [(NLWorkoutAlertGoalProgress *)selfCopy _localizedDescriptionForProModeWithUnitStyle:styleCopy formattingManager:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)goalCompletionStringWithUnitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode formattingManager:(id)manager textCase:(unint64_t)case
{
  selfCopy = self;
  v54 = a2;
  styleCopy = style;
  modeCopy = mode;
  location = 0;
  objc_storeStrong(&location, manager);
  caseCopy = case;
  v49 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  v48 = 0;
  goal = [(NLWorkoutAlertGoalProgress *)selfCopy goal];
  goalTypeIdentifier = [(NLSessionActivityGoal *)goal goalTypeIdentifier];
  MEMORY[0x277D82BD8](goal);
  if (goalTypeIdentifier)
  {
    switch(goalTypeIdentifier)
    {
      case 1:
        v37 = location;
        [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
        v36 = v6;
        unitManager = [location unitManager];
        v7 = [unitManager userDistanceUnitForDistanceType:selfCopy->_distanceType];
        v8 = [v37 localizedStringWithDistanceInMeters:v7 distanceUnit:0 unitStyle:3 decimalPrecision:4 roundingMode:modeCopy decimalTrimmingMode:v36];
        v9 = v49;
        v49 = v8;
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](unitManager);
        unitManager2 = [location unitManager];
        v40 = [unitManager2 userDistanceUnitForDistanceType:selfCopy->_distanceType];
        MEMORY[0x277D82BD8](unitManager2);
        v47 = v40;
        if (styleCopy == 3)
        {
          v31 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v46 = [v31 quantityWithUnit:selfCopy->_currentValue doubleValue:?];
          MEMORY[0x277D82BD8](meterUnit);
          v33 = v46;
          v34 = MEMORY[0x20F2E8320](v47);
          [v33 doubleValueForUnit:?];
          v35 = v10;
          MEMORY[0x277D82BD8](v34);
          v45[1] = v35;
          v11 = [location localizedLongUnitStringForDistanceUnit:v47 distanceInUnit:caseCopy textCase:*&v35];
          v12 = v48;
          v48 = v11;
          MEMORY[0x277D82BD8](v12);
          objc_storeStrong(&v46, 0);
        }

        else
        {
          v13 = [location localizedShortUnitStringForDistanceUnit:v47 textCase:caseCopy];
          v14 = v48;
          v48 = v13;
          MEMORY[0x277D82BD8](v14);
        }

        break;
      case 2:
        if (styleCopy == 3)
        {
          v30 = location;
          [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
          v15 = [v30 stringWithDuration:6 durationFormat:?];
        }

        else
        {
          v29 = location;
          [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
          v15 = [v29 stringWithDuration:2 durationFormat:?];
        }

        v16 = v49;
        v49 = v15;
        MEMORY[0x277D82BD8](v16);
        break;
      case 3:
        v27 = MEMORY[0x277CCD7E8];
        kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
        [(NLWorkoutAlertGoalProgress *)selfCopy currentValue];
        v45[0] = [v27 quantityWithUnit:kilocalorieUnit doubleValue:?];
        MEMORY[0x277D82BD8](kilocalorieUnit);
        v17 = [location localizedStringWithActiveEnergy:v45[0] unitStyle:0];
        v18 = v49;
        v49 = v17;
        MEMORY[0x277D82BD8](v18);
        if (styleCopy == 3)
        {
          v19 = [location localizedLongActiveEnergyUnitStringWithTextCase:caseCopy];
          v20 = v48;
          v48 = v19;
          MEMORY[0x277D82BD8](v20);
        }

        else
        {
          v25 = location;
          localizedShortActiveEnergyUnitString = [location localizedShortActiveEnergyUnitString];
          v21 = [v25 applyTextCase:caseCopy toString:?];
          v22 = v48;
          v48 = v21;
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](localizedShortActiveEnergyUnitString);
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

- (id)_localizedDescriptionForProModeWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  selfCopy = self;
  v13 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, manager);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  goalProgressString = [(NLWorkoutAlertGoalProgress *)selfCopy goalProgressString];
  v8 = [NLWorkoutAlertGoalProgress splitStringOnNewlines:goalProgressString];
  [v10 addObjectsFromArray:v8];
  v5 = v10;
  v6 = [(NLWorkoutAlertGoalProgress *)selfCopy goalCompletionStringWithUnitStyle:styleCopy decimalTrimmingMode:1 formattingManager:location textCase:?];
  [v5 addObject:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&goalProgressString, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

- (id)goalProgressString
{
  type = [(NLWorkoutAlert *)self type];
  if (type == 7)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 localizedStringForKey:@"GOAL_PROGRESS_HALFWAY" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else if (type == 13)
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
  selfCopy = self;
  v7 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v4 stringWithFormat:@"NLWorkoutAlertGoalProgress(eventType=%@, currentValue=%f)", v5, *&selfCopy->_currentValue];
  MEMORY[0x277D82BD8](v5);
  v2 = v6;

  return v2;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = NLWorkoutAlertGoalProgress.spokenDescription(with:)(managerCopy);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  NLWorkoutAlertGoalProgress.spokenUserData(with:)(managerCopy);

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end