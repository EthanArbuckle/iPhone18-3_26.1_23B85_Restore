@interface NLWorkoutAlertUnitAnnotatedString
+ (id)emptyString;
+ (id)stringWithValueString:(id)a3 shortDescriptionString:(id)a4 unitString:(id)a5;
+ (id)stringWithValueString:(id)a3 unitString:(id)a4;
- (id)spokenString;
@end

@implementation NLWorkoutAlertUnitAnnotatedString

+ (id)emptyString
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = objc_alloc_init(a1);
  [v4[0] setValueString:&stru_28225A4E8];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)stringWithValueString:(id)a3 unitString:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [NLWorkoutAlertUnitAnnotatedString stringWithValueString:location[0] shortDescriptionString:0 unitString:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)stringWithValueString:(id)a3 shortDescriptionString:(id)a4 unitString:(id)a5
{
  v13 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = objc_alloc_init(v13);
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