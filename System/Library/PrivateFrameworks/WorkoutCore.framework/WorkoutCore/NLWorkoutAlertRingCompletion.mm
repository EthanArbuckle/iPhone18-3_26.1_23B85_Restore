@interface NLWorkoutAlertRingCompletion
+ (id)ringCompletionAlertWithCompletedRing:(int64_t)ring activitySummary:(id)summary;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlertRingCompletion

+ (id)ringCompletionAlertWithCompletedRing:(int64_t)ring activitySummary:(id)summary
{
  selfCopy = self;
  v10 = a2;
  ringCopy = ring;
  location = 0;
  objc_storeStrong(&location, summary);
  v7 = objc_alloc_init(NLWorkoutAlertRingCompletion);
  date = [MEMORY[0x277CBEAA8] date];
  [(NLWorkoutAlert *)v7 setEventDate:?];
  MEMORY[0x277D82BD8](date);
  [(NLWorkoutAlert *)v7 setType:4];
  [(NLWorkoutAlertRingCompletion *)v7 setCompletedRing:ringCopy];
  [(NLWorkoutAlertRingCompletion *)v7 setActivitySummary:location];
  v6 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);

  return v6;
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
  v33[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  completedRing = [(NLWorkoutAlertRingCompletion *)selfCopy completedRing];
  if (completedRing)
  {
    if (completedRing == 1)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v15 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_1_EXERCISE" value:? table:?];
      v28 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_2_EXERCISE" value:&stru_28225A4E8 table:@"Localizable"];
      v27 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_3_EXERCISE" value:&stru_28225A4E8 table:@"Localizable"];
      v26 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v20 = v29;
      v33[0] = v28;
      v33[1] = v27;
      v33[2] = v26;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
      [v20 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_1_MOVE" value:? table:?];
    v25 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_2_MOVE" value:&stru_28225A4E8 table:@"Localizable"];
    v24 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"ACTIVITY_RING_COMPLETION_LINE_3_MOVE" value:&stru_28225A4E8 table:@"Localizable"];
    v23 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:"stringWithValueString:unitString:" unitString:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v12 = v29;
    v32[0] = v25;
    v32[1] = v24;
    v32[2] = v23;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    [v12 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  v5 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  completedRing = [(NLWorkoutAlertRingCompletion *)selfCopy completedRing];
  if (completedRing)
  {
    if (completedRing == 1)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v6 localizedStringForKey:@"EXERCISE_RING_COMPLETION_SPOKEN" value:&stru_28225A4E8 table:@"Localizable"];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v10 = MEMORY[0x277D82BE0](&stru_28225A4E8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v5 localizedStringForKey:@"MOVE_RING_COMPLETION_SPOKEN" value:&stru_28225A4E8 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized NLWorkoutAlertRingCompletion.spokenUserData(with:)();

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end