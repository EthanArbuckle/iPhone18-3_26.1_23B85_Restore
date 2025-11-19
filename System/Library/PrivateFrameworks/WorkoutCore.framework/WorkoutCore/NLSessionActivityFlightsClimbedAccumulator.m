@interface NLSessionActivityFlightsClimbedAccumulator
- (NLSessionActivityFlightsClimbedAccumulator)initWithBuilder:(id)a3;
- (double)totalFlightsClimbed;
- (void)updateWithStatistics:(id)a3;
@end

@implementation NLSessionActivityFlightsClimbedAccumulator

- (NLSessionActivityFlightsClimbedAccumulator)initWithBuilder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = NLSessionActivityFlightsClimbedAccumulator;
  v10 = [(NLSessionActivityBuilderAccumulator *)&v8 initWithBuilder:location[0]];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [MEMORY[0x277CCDAB0] countUnit];
    countUnit = v10->_countUnit;
    v10->_countUnit = v4;
    MEMORY[0x277D82BD8](countUnit);
  }

  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)updateWithStatistics:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] sumQuantity];
  [v5 doubleValueForUnit:v7->_countUnit];
  v7->_totalFlightsClimbed = v3;
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [(NLSessionActivityBuilderAccumulator *)v7 update];
  objc_storeStrong(location, 0);
}

- (double)totalFlightsClimbed
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_totalFlightsClimbed;
  }

  +[NLSessionActivityFakeDataManager fakeValueForFlightsClimbed];
  return v2;
}

@end