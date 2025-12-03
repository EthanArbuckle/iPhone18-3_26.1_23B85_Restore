@interface NLSessionActivityEnergyBurnAccumulator
- (NLSessionActivityEnergyBurnAccumulator)initWithBuilder:(id)builder;
- (double)totalActiveCaloriesBurned;
- (double)totalBasalCaloriesBurned;
- (void)updateCaloriesWithStatistics:(id)statistics;
@end

@implementation NLSessionActivityEnergyBurnAccumulator

- (NLSessionActivityEnergyBurnAccumulator)initWithBuilder:(id)builder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionActivityEnergyBurnAccumulator;
  v8 = [(NLSessionActivityBuilderAccumulator *)&v9 initWithBuilder:location[0]];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    kcalUnit = selfCopy->_kcalUnit;
    selfCopy->_kcalUnit = kilocalorieUnit;
    MEMORY[0x277D82BD8](kcalUnit);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)updateCaloriesWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  quantityType = [location[0] quantityType];
  identifier = [quantityType identifier];
  v10 = [identifier isEqualToString:*MEMORY[0x277CCC918]];
  MEMORY[0x277D82BD8](identifier);
  if (v10)
  {
    sumQuantity = [location[0] sumQuantity];
    [sumQuantity doubleValueForUnit:selfCopy->_kcalUnit];
    selfCopy->_totalActiveCaloriesBurned = v3;
    MEMORY[0x277D82BD8](sumQuantity);
  }

  else
  {
    identifier2 = [quantityType identifier];
    v7 = [identifier2 isEqualToString:*MEMORY[0x277CCC960]];
    MEMORY[0x277D82BD8](identifier2);
    if (v7)
    {
      sumQuantity2 = [location[0] sumQuantity];
      [sumQuantity2 doubleValueForUnit:selfCopy->_kcalUnit];
      selfCopy->_totalBasalCaloriesBurned = v4;
      MEMORY[0x277D82BD8](sumQuantity2);
    }
  }

  [(NLSessionActivityBuilderAccumulator *)selfCopy update];
  objc_storeStrong(&quantityType, 0);
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