@interface RTLocationStoreMetricOptions
- (RTLocationStoreMetricOptions)initWithDateInterval:(id)a3 uncertaintyThreshold:(double)a4;
- (RTLocationStoreMetricOptions)initWithDateInterval:(id)a3 uncertaintyThreshold:(double)a4 includeFixMetrics:(BOOL)a5 includeSignalEnvironment:(BOOL)a6;
- (id)description;
@end

@implementation RTLocationStoreMetricOptions

- (RTLocationStoreMetricOptions)initWithDateInterval:(id)a3 uncertaintyThreshold:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RTLocationStoreMetricOptions;
  v8 = [(RTLocationStoreMetricOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, a3);
    v9->_uncertaintyThreshold = a4;
  }

  return v9;
}

- (RTLocationStoreMetricOptions)initWithDateInterval:(id)a3 uncertaintyThreshold:(double)a4 includeFixMetrics:(BOOL)a5 includeSignalEnvironment:(BOOL)a6
{
  result = [(RTLocationStoreMetricOptions *)self initWithDateInterval:a3 uncertaintyThreshold:a4];
  if (result)
  {
    result->_includeFixMetrics = a5;
    result->_includeSignalEnvironment = a6;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [v4 stringFromDate];
  v6 = [(NSDateInterval *)self->_dateInterval endDate];
  v7 = [v6 stringFromDate];
  v8 = v7;
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

  v11 = [v3 stringWithFormat:@"startDate, %@, endDate, %@, uncertaintyThreshold, %.2f, includeFixMetrics, %@, includeSignalEnvironment, %@", v5, v7, *&self->_uncertaintyThreshold, v10, v9];

  return v11;
}

@end