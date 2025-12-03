@interface NLWorkoutAlert
+ (id)splitStringOnNewlines:(id)newlines;
+ (id)spokenDescriptionForUnitAnnotatedStrings:(id)strings;
- (BOOL)isMoreImportantThanAlert:(id)alert;
- (BOOL)isNonVisualAlert;
- (BOOL)isPowerAlert;
- (BOOL)isTrainerTimerAlert;
- (id)description;
- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager;
- (id)spokenDescriptionWithFormattingManager:(id)manager;
- (id)spokenUserDataWithFormattingManager:(id)manager;
- (unint64_t)optimalUnitStyleFittingWidth:(double)width withFont:(id)font formattingManager:(id)manager;
@end

@implementation NLWorkoutAlert

- (BOOL)isMoreImportantThanAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v9 = 0;
  if (location[0])
  {
    type = selfCopy->_type;
    if (type <= [location[0] type])
    {
      v7 = selfCopy->_type;
      if (v7 == [location[0] type])
      {
        eventDate = selfCopy->_eventDate;
        eventDate = [location[0] eventDate];
        v6 = [(NSDate *)eventDate compare:?];
        MEMORY[0x277D82BD8](eventDate);
        v9 = v6 == 1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (BOOL)isTrainerTimerAlert
{
  v3 = 1;
  if (self->_type != 1)
  {
    return self->_type == 2;
  }

  return v3;
}

- (BOOL)isNonVisualAlert
{
  v3 = 1;
  if (self->_type != 3)
  {
    return self->_type == 25;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() description];
  v4 = NLWorkoutAlertTypeString([(NLWorkoutAlert *)self type]);
  v6 = [v3 stringWithFormat:@"%@(alertType=%@)", v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

+ (id)splitStringOnNewlines:(id)newlines
{
  v19 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, newlines);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [location[0] componentsSeparatedByString:@"\n"];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v15);
  v12 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = v16;
      v6 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:v14 unitString:0];
      [v5 addObject:?];
      MEMORY[0x277D82BD8](v6);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = [v16 copy];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)spokenDescriptionForUnitAnnotatedStrings:(id)strings
{
  v22 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, strings);
  v19 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v16 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v16)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(__b[1] + 8 * v13);
      v9 = v19;
      spokenString = [v18 spokenString];
      v3 = [v9 stringByAppendingFormat:@"%@ ", spokenString];
      v4 = v19;
      v19 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](spokenString);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = v19;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:?];
  MEMORY[0x277D82BD8](whitespaceAndNewlineCharacterSet);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)localizedProgressDescriptionWithUnitStyle:(unint64_t)style formattingManager:(id)manager
{
  location[3] = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  objc_storeStrong(location, 0);

  return v5;
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

- (id)spokenDescriptionWithFormattingManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v4 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)spokenUserDataWithFormattingManager:(id)manager
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v4 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)isPowerAlert
{
  type metadata accessor for WorkoutAlertZone();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    v4 = v2;
    swift_beginAccess();
    LOBYTE(v2) = [*(v4 + v3) primaryType] == 3;
  }

  return v2;
}

@end