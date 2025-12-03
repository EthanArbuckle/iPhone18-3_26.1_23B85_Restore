@interface RTLocationStoreMetricOptions
- (RTLocationStoreMetricOptions)initWithDateInterval:(id)interval uncertaintyThreshold:(double)threshold;
- (RTLocationStoreMetricOptions)initWithDateInterval:(id)interval uncertaintyThreshold:(double)threshold includeFixMetrics:(BOOL)metrics includeSignalEnvironment:(BOOL)environment;
- (id)description;
@end

@implementation RTLocationStoreMetricOptions

- (RTLocationStoreMetricOptions)initWithDateInterval:(id)interval uncertaintyThreshold:(double)threshold
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = RTLocationStoreMetricOptions;
  v8 = [(RTLocationStoreMetricOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, interval);
    v9->_uncertaintyThreshold = threshold;
  }

  return v9;
}

- (RTLocationStoreMetricOptions)initWithDateInterval:(id)interval uncertaintyThreshold:(double)threshold includeFixMetrics:(BOOL)metrics includeSignalEnvironment:(BOOL)environment
{
  result = [(RTLocationStoreMetricOptions *)self initWithDateInterval:interval uncertaintyThreshold:threshold];
  if (result)
  {
    result->_includeFixMetrics = metrics;
    result->_includeSignalEnvironment = environment;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v8 = stringFromDate2;
  v9 = @"NO";
  if (self->_includeFixMetrics)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_includeSignalEnvironment)
  {
    v9 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"startDate, %@, endDate, %@, uncertaintyThreshold, %.2f, includeFixMetrics, %@, includeSignalEnvironment, %@", stringFromDate, stringFromDate2, *&self->_uncertaintyThreshold, v10, v9];

  return v11;
}

@end