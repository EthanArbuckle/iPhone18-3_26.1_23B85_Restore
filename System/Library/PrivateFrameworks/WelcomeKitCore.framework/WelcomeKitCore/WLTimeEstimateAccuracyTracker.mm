@interface WLTimeEstimateAccuracyTracker
- (WLTimeEstimateAccuracyTracker)init;
- (unint64_t)_indexOfThresholdGreaterThanOrEqualToEstimate:(unint64_t)estimate;
- (unint64_t)_thresholdAtIndex:(unint64_t)index;
- (void)didCalculateTimeEstimate:(unint64_t)estimate atDate:(id)date associatedObject:(id)object;
- (void)estimatesDidResolveAtDate:(id)date block:(id)block;
@end

@implementation WLTimeEstimateAccuracyTracker

- (WLTimeEstimateAccuracyTracker)init
{
  v5.receiver = self;
  v5.super_class = WLTimeEstimateAccuracyTracker;
  v2 = [(WLTimeEstimateAccuracyTracker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WLTimeEstimateAccuracyTracker *)v2 setThresholds:&unk_2882D6DC0];
    [(WLTimeEstimateAccuracyTracker *)v3 setSamples:MEMORY[0x277CBEBF8]];
  }

  return v3;
}

- (unint64_t)_thresholdAtIndex:(unint64_t)index
{
  thresholds = [(WLTimeEstimateAccuracyTracker *)self thresholds];
  v6 = [thresholds count];

  thresholds2 = [(WLTimeEstimateAccuracyTracker *)self thresholds];
  thresholds3 = thresholds2;
  if (v6 <= index)
  {
    lastObject = [thresholds2 lastObject];
    unsignedIntegerValue = [lastObject unsignedIntegerValue];

    thresholds3 = [(WLTimeEstimateAccuracyTracker *)self thresholds];
    unsignedIntegerValue2 = (index - [thresholds3 count] + 2) * unsignedIntegerValue;
  }

  else
  {
    v9 = [thresholds2 objectAtIndexedSubscript:index];
    unsignedIntegerValue2 = [v9 unsignedIntegerValue];
  }

  return unsignedIntegerValue2;
}

- (unint64_t)_indexOfThresholdGreaterThanOrEqualToEstimate:(unint64_t)estimate
{
  v5 = -1;
  do
  {
    ++v5;
  }

  while ([(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v5]< estimate);
  return v5;
}

- (void)didCalculateTimeEstimate:(unint64_t)estimate atDate:(id)date associatedObject:(id)object
{
  dateCopy = date;
  objectCopy = object;
  if (estimate)
  {
    samples = [(WLTimeEstimateAccuracyTracker *)self samples];
    if ([samples count])
    {
      thresholdBelowLastSample = self->_thresholdBelowLastSample;

      if (thresholdBelowLastSample < estimate)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v11 = [(WLTimeEstimateAccuracyTracker *)self _indexOfThresholdGreaterThanOrEqualToEstimate:estimate];
    v12 = v11 - 1;
    v13 = objc_alloc_init(WLTimeEstimateSample);
    [(WLTimeEstimateSample *)v13 setEstimate:estimate];
    [(WLTimeEstimateSample *)v13 setStartDate:dateCopy];
    [(WLTimeEstimateSample *)v13 setThreshold:[(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v11]];
    [(WLTimeEstimateSample *)v13 setAssociatedObject:objectCopy];
    samples2 = [(WLTimeEstimateAccuracyTracker *)self samples];
    v15 = [samples2 arrayByAddingObject:v13];
    [(WLTimeEstimateAccuracyTracker *)self setSamples:v15];

    self->_thresholdBelowLastSample = [(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v12];
  }

LABEL_7:
}

- (void)estimatesDidResolveAtDate:(id)date block:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(WLTimeEstimateAccuracyTracker *)self samples];
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        startDate = [v12 startDate];
        [dateCopy timeIntervalSinceDate:startDate];
        v15 = v14;

        estimate = [v12 estimate];
        threshold = [v12 threshold];
        associatedObject = [v12 associatedObject];
        blockCopy[2](blockCopy, estimate, threshold, vcvtpd_u64_f64(v15), associatedObject);
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end