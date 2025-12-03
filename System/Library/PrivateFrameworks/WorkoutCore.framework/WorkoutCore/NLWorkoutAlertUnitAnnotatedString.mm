@interface NLWorkoutAlertUnitAnnotatedString
+ (id)emptyString;
+ (id)stringWithValueString:(id)string shortDescriptionString:(id)descriptionString unitString:(id)unitString;
+ (id)stringWithValueString:(id)string unitString:(id)unitString;
- (id)spokenString;
@end

@implementation NLWorkoutAlertUnitAnnotatedString

+ (id)emptyString
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(self);
  [v4[0] setValueString:&stru_28225A4E8];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)stringWithValueString:(id)string unitString:(id)unitString
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v7 = 0;
  objc_storeStrong(&v7, unitString);
  v6 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:location[0] shortDescriptionString:0 unitString:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)stringWithValueString:(id)string shortDescriptionString:(id)descriptionString unitString:(id)unitString
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v11 = 0;
  objc_storeStrong(&v11, descriptionString);
  v10 = 0;
  objc_storeStrong(&v10, unitString);
  v9 = objc_alloc_init(selfCopy);
  [v9 setValueString:location[0]];
  [v9 setShortDescriptionString:v11];
  [v9 setUnitString:v10];
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)spokenString
{
  if (self->_unitString)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_valueString, self->_unitString];
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](self->_valueString);
  }

  return v3;
}

@end