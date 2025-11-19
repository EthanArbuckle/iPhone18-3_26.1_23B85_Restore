@interface WLTimeEstimateAccuracyTracker
- (WLTimeEstimateAccuracyTracker)init;
- (unint64_t)_indexOfThresholdGreaterThanOrEqualToEstimate:(unint64_t)a3;
- (unint64_t)_thresholdAtIndex:(unint64_t)a3;
- (void)didCalculateTimeEstimate:(unint64_t)a3 atDate:(id)a4 associatedObject:(id)a5;
- (void)estimatesDidResolveAtDate:(id)a3 block:(id)a4;
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

- (unint64_t)_thresholdAtIndex:(unint64_t)a3
{
  v5 = [(WLTimeEstimateAccuracyTracker *)self thresholds];
  v6 = [v5 count];

  v7 = [(WLTimeEstimateAccuracyTracker *)self thresholds];
  v8 = v7;
  if (v6 <= a3)
  {
    v11 = [v7 lastObject];
    v12 = [v11 unsignedIntegerValue];

    v8 = [(WLTimeEstimateAccuracyTracker *)self thresholds];
    v10 = (a3 - [v8 count] + 2) * v12;
  }

  else
  {
    v9 = [v7 objectAtIndexedSubscript:a3];
    v10 = [v9 unsignedIntegerValue];
  }

  return v10;
}

- (unint64_t)_indexOfThresholdGreaterThanOrEqualToEstimate:(unint64_t)a3
{
  v5 = -1;
  do
  {
    ++v5;
  }

  while ([(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v5]< a3);
  return v5;
}

- (void)didCalculateTimeEstimate:(unint64_t)a3 atDate:(id)a4 associatedObject:(id)a5
{
  v16 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = [(WLTimeEstimateAccuracyTracker *)self samples];
    if ([v9 count])
    {
      thresholdBelowLastSample = self->_thresholdBelowLastSample;

      if (thresholdBelowLastSample < a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v11 = [(WLTimeEstimateAccuracyTracker *)self _indexOfThresholdGreaterThanOrEqualToEstimate:a3];
    v12 = v11 - 1;
    v13 = objc_alloc_init(WLTimeEstimateSample);
    [(WLTimeEstimateSample *)v13 setEstimate:a3];
    [(WLTimeEstimateSample *)v13 setStartDate:v16];
    [(WLTimeEstimateSample *)v13 setThreshold:[(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v11]];
    [(WLTimeEstimateSample *)v13 setAssociatedObject:v8];
    v14 = [(WLTimeEstimateAccuracyTracker *)self samples];
    v15 = [v14 arrayByAddingObject:v13];
    [(WLTimeEstimateAccuracyTracker *)self setSamples:v15];

    self->_thresholdBelowLastSample = [(WLTimeEstimateAccuracyTracker *)self _thresholdAtIndex:v12];
  }

LABEL_7:
}

- (void)estimatesDidResolveAtDate:(id)a3 block:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
        v13 = [v12 startDate];
        [v6 timeIntervalSinceDate:v13];
        v15 = v14;

        v16 = [v12 estimate];
        v17 = [v12 threshold];
        v18 = [v12 associatedObject];
        v7[2](v7, v16, v17, vcvtpd_u64_f64(v15), v18);
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end