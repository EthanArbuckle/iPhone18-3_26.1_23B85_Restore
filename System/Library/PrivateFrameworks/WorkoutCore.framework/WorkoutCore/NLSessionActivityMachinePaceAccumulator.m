@interface NLSessionActivityMachinePaceAccumulator
- (NLSessionActivityMachinePaceAccumulator)initWithActivityType:(id)a3;
- (NLSessionActivityPaceAccumulatorDelegate)paceDelegate;
- (double)averagePaceInMetersPerSecond;
- (double)currentPaceInMetersPerSecond;
- (double)fastestPaceInMetersPerSecond;
- (void)setAveragePaceInMetersPerSecond:(double)a3;
- (void)setCurrentPaceInMetersPerSecond:(double)a3;
@end

@implementation NLSessionActivityMachinePaceAccumulator

- (NLSessionActivityMachinePaceAccumulator)initWithActivityType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = NLSessionActivityMachinePaceAccumulator;
  v8 = [(NLSessionActivityMachinePaceAccumulator *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_activityType, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)setCurrentPaceInMetersPerSecond:(double)a3
{
  self->_currentPaceInMetersPerSecond = a3;
  if (self->_fastestPaceInMetersPerSecond >= a3)
  {
    fastestPaceInMetersPerSecond = self->_fastestPaceInMetersPerSecond;
  }

  else
  {
    fastestPaceInMetersPerSecond = a3;
  }

  self->_fastestPaceInMetersPerSecond = fastestPaceInMetersPerSecond;
  v5 = [(NLSessionActivityDataAccumulator *)self updateHandler];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    v4[2]();
    MEMORY[0x277D82BD8](v4);
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

- (void)setAveragePaceInMetersPerSecond:(double)a3
{
  self->_averagePaceInMetersPerSecond = a3;
  v5 = [(NLSessionActivityDataAccumulator *)self updateHandler];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(NLSessionActivityDataAccumulator *)self updateHandler];
    v4[2]();
    MEMORY[0x277D82BD8](v4);
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