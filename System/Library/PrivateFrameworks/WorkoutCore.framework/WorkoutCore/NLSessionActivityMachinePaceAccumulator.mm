@interface NLSessionActivityMachinePaceAccumulator
- (NLSessionActivityMachinePaceAccumulator)initWithActivityType:(id)type;
- (NLSessionActivityPaceAccumulatorDelegate)paceDelegate;
- (double)averagePaceInMetersPerSecond;
- (double)currentPaceInMetersPerSecond;
- (double)fastestPaceInMetersPerSecond;
- (void)setAveragePaceInMetersPerSecond:(double)second;
- (void)setCurrentPaceInMetersPerSecond:(double)second;
@end

@implementation NLSessionActivityMachinePaceAccumulator

- (NLSessionActivityMachinePaceAccumulator)initWithActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = NLSessionActivityMachinePaceAccumulator;
  selfCopy = [(NLSessionActivityMachinePaceAccumulator *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_activityType, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setCurrentPaceInMetersPerSecond:(double)second
{
  self->_currentPaceInMetersPerSecond = second;
  if (self->_fastestPaceInMetersPerSecond >= second)
  {
    fastestPaceInMetersPerSecond = self->_fastestPaceInMetersPerSecond;
  }

  else
  {
    fastestPaceInMetersPerSecond = second;
  }

  self->_fastestPaceInMetersPerSecond = fastestPaceInMetersPerSecond;
  updateHandler = [(NLSessionActivityDataAccumulator *)self updateHandler];
  *&v3 = MEMORY[0x277D82BD8](updateHandler).n128_u64[0];
  if (updateHandler)
  {
    updateHandler2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    updateHandler2[2]();
    MEMORY[0x277D82BD8](updateHandler2);
  }
}

- (double)currentPaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_currentPaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForCurrentPace];
  return v2;
}

- (double)fastestPaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_fastestPaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForFastestPace];
  return v2;
}

- (void)setAveragePaceInMetersPerSecond:(double)second
{
  self->_averagePaceInMetersPerSecond = second;
  updateHandler = [(NLSessionActivityDataAccumulator *)self updateHandler];
  *&v3 = MEMORY[0x277D82BD8](updateHandler).n128_u64[0];
  if (updateHandler)
  {
    updateHandler2 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    updateHandler2[2]();
    MEMORY[0x277D82BD8](updateHandler2);
  }
}

- (double)averagePaceInMetersPerSecond
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_averagePaceInMetersPerSecond;
  }

  +[NLSessionActivityFakeDataManager fakeValueForAveragePace];
  return v2;
}

- (NLSessionActivityPaceAccumulatorDelegate)paceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paceDelegate);

  return WeakRetained;
}

@end