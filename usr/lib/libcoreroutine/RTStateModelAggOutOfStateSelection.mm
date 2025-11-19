@interface RTStateModelAggOutOfStateSelection
- (RTStateModelAggOutOfStateSelection)init;
- (RTStateModelAggOutOfStateSelection)initWithSelectOOStStates:(id)a3 dailyDensityCorrection:(double)a4 weeklyDensityCorrection:(double)a5;
@end

@implementation RTStateModelAggOutOfStateSelection

- (RTStateModelAggOutOfStateSelection)init
{
  v6.receiver = self;
  v6.super_class = RTStateModelAggOutOfStateSelection;
  v2 = [(RTStateModelAggOutOfStateSelection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(RTStateModelAggOutOfStateSelection *)v2 setWeeklyDensityCorrection:1.0];
    [(RTStateModelAggOutOfStateSelection *)v3 setDailyDensityCorrection:1.0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(RTStateModelAggOutOfStateSelection *)v3 setSelectOOStStates:v4];
  }

  return v3;
}

- (RTStateModelAggOutOfStateSelection)initWithSelectOOStStates:(id)a3 dailyDensityCorrection:(double)a4 weeklyDensityCorrection:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RTStateModelAggOutOfStateSelection;
  v10 = [(RTStateModelAggOutOfStateSelection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectOOStStates, a3);
    v11->_weeklyDensityCorrection = a5;
    v11->_dailyDensityCorrection = a4;
  }

  return v11;
}

@end