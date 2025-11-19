@interface NLSessionActivityEnergyBurnAccumulator
- (NLSessionActivityEnergyBurnAccumulator)initWithBuilder:(id)a3;
- (double)totalActiveCaloriesBurned;
- (double)totalBasalCaloriesBurned;
- (void)updateCaloriesWithStatistics:(id)a3;
@end

@implementation NLSessionActivityEnergyBurnAccumulator

- (NLSessionActivityEnergyBurnAccumulator)initWithBuilder:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionActivityEnergyBurnAccumulator;
  v8 = [(NLSessionActivityBuilderAccumulator *)&v9 initWithBuilder:location[0]];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    kcalUnit = v11->_kcalUnit;
    v11->_kcalUnit = v4;
    MEMORY[0x277D82BD8](kcalUnit);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)updateCaloriesWithStatistics:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] quantityType];
  v9 = [v11 identifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC918]];
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    v8 = [location[0] sumQuantity];
    [v8 doubleValueForUnit:v13->_kcalUnit];
    v13->_totalActiveCaloriesBurned = v3;
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    v6 = [v11 identifier];
    v7 = [v6 isEqualToString:*MEMORY[0x277CCC960]];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      v5 = [location[0] sumQuantity];
      [v5 doubleValueForUnit:v13->_kcalUnit];
      v13->_totalBasalCaloriesBurned = v4;
      MEMORY[0x277D82BD8](v5);
    }
  }

  [(NLSessionActivityBuilderAccumulator *)v13 update];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (double)totalActiveCaloriesBurned
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_totalActiveCaloriesBurned;
  }

  +[NLSessionActivityFakeDataManager fakeValueForActiveCalories];
  return v2;
}

- (double)totalBasalCaloriesBurned
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_totalBasalCaloriesBurned;
  }

  +[NLSessionActivityFakeDataManager fakeValueForBasalCalories];
  return v2;
}

@end