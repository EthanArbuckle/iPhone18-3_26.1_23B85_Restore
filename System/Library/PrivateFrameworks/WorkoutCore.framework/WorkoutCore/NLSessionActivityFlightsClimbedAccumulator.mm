@interface NLSessionActivityFlightsClimbedAccumulator
- (NLSessionActivityFlightsClimbedAccumulator)initWithBuilder:(id)builder;
- (double)totalFlightsClimbed;
- (void)updateWithStatistics:(id)statistics;
@end

@implementation NLSessionActivityFlightsClimbedAccumulator

- (NLSessionActivityFlightsClimbedAccumulator)initWithBuilder:(id)builder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = NLSessionActivityFlightsClimbedAccumulator;
  selfCopy = [(NLSessionActivityBuilderAccumulator *)&v8 initWithBuilder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    countUnit = selfCopy->_countUnit;
    selfCopy->_countUnit = countUnit;
    MEMORY[0x277D82BD8](countUnit);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)updateWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  sumQuantity = [location[0] sumQuantity];
  [sumQuantity doubleValueForUnit:selfCopy->_countUnit];
  selfCopy->_totalFlightsClimbed = v3;
  *&v4 = MEMORY[0x277D82BD8](sumQuantity).n128_u64[0];
  [(NLSessionActivityBuilderAccumulator *)selfCopy update];
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