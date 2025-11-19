@interface WBSCloudKitThrottler
+ (BOOL)policyStringRepresentsValidPolicy:(id)a3;
+ (id)_distributionBucketsFromConfiguration:(id)a3;
- (BOOL)_loadDistributionConfiguration:(id)a3;
- (BOOL)permitsOperationWithPriority:(int64_t)a3;
- (WBSCloudKitThrottler)initWithPolicyString:(id)a3;
- (WBSCloudKitThrottlerDataStore)dataStore;
- (double)_minimumTimeBetweenOperationsForOperations:(id)a3;
- (double)_timeIntervalUntilNextPermittedOperationAttemptWithNormalPriority;
- (double)_timeIntervalUntilOperationShouldBePruned:(id)a3;
- (id)_dateOfNextPermittedOperationAttemptWithNormalPriority;
- (id)dateOfNextPermittedOperationWithPriority:(int64_t)a3;
- (id)description;
- (void)_addOperationAtDate:(id)a3;
- (void)_loadRecordOfPastOperations;
- (void)_pruneExpiredOrInvalidOperations;
- (void)_saveRecordOfPastOperations;
- (void)operationWithPriority:(int64_t)a3 didCompleteWithResult:(int64_t)a4;
- (void)reloadRecordOfPastOperations;
- (void)setDataStore:(id)a3;
@end

@implementation WBSCloudKitThrottler

+ (BOOL)policyStringRepresentsValidPolicy:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _distributionBucketsFromConfiguration:v3];
  v5 = v4 != 0;

  return v5;
}

- (WBSCloudKitThrottler)initWithPolicyString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSCloudKitThrottler;
  v5 = [(WBSCloudKitThrottler *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pastOperationsWithinMonitoredPeriod = v5->_pastOperationsWithinMonitoredPeriod;
    v5->_pastOperationsWithinMonitoredPeriod = v6;

    [(WBSCloudKitThrottler *)v5 setPolicyString:v4];
    v8 = v5;
  }

  return v5;
}

- (void)setDataStore:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataStore, obj);
    [(WBSCloudKitThrottler *)self _loadRecordOfPastOperations];
  }
}

- (BOOL)permitsOperationWithPriority:(int64_t)a3
{
  v4 = self;
  [(WBSCloudKitThrottler *)self _pruneExpiredOrInvalidOperations];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(WBSCloudKitThrottler *)v4 dateOfNextPermittedOperationWithPriority:a3];
  LOBYTE(v4) = [v5 compare:v6] != -1;

  return v4;
}

- (id)dateOfNextPermittedOperationWithPriority:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      self = [(WBSCloudKitThrottler *)self _dateOfNextPermittedOperationAttemptWithNormalPriority];
    }
  }

  else
  {
    self = [MEMORY[0x1E695DF00] distantPast];
  }

  return self;
}

- (void)operationWithPriority:(int64_t)a3 didCompleteWithResult:(int64_t)a4
{
  v5 = a4 != 2 && a4 != 4;
  if (a3 != 2 && !v5)
  {
    if (a3 == 1 && [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod count])
    {
      [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod removeLastObject];
    }

    v7 = [MEMORY[0x1E695DF00] date];
    [(WBSCloudKitThrottler *)self _addOperationAtDate:v7];

    [(WBSCloudKitThrottler *)self _saveRecordOfPastOperations];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  throttlingDistribution = self->_throttlingDistribution;
  numberOfSecondsToMonitor = self->_numberOfSecondsToMonitor;
  maximumNumberOfOperationWithinMonitoredPeriod = self->_maximumNumberOfOperationWithinMonitoredPeriod;
  v9 = [MEMORY[0x1E695DF00] date];
  [(WBSCloudKitThrottler *)self _currentMinimumTimeIntervalBetweenOperations];
  v11 = v10;
  v12 = [(WBSCloudKitThrottler *)self _dateOfNextPermittedOperationAttemptWithNormalPriority];
  v13 = [v3 stringWithFormat:@"<%@: %p throttlingDistribution = %@; numberOfSecondsToMonitor = %lf; maximumNumberOfOperationWithinMonitoredPeriod = %lu>; now = %@; currentMinimumTimeIntervalBetweenOperations = %f; dateOfNextPermittedOperationAttemptWithNormalPriority = %@; pastOperationsWithinMonitoredPeriod = %@", v5, self, throttlingDistribution, *&numberOfSecondsToMonitor, maximumNumberOfOperationWithinMonitoredPeriod, v9, v11, v12, self->_pastOperationsWithinMonitoredPeriod];;

  return v13;
}

+ (id)_distributionBucketsFromConfiguration:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v23 componentsSeparatedByString:@" | "];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v24 + 1) + 8 * i) componentsSeparatedByString:@":"];
        if ([v8 count] != 2)
        {
          goto LABEL_18;
        }

        v9 = [v8 objectAtIndexedSubscript:0];
        if (![v9 length])
        {

LABEL_18:
          v20 = 0;
          goto LABEL_19;
        }

        v10 = [v8 objectAtIndexedSubscript:1];
        v11 = [v10 length] == 0;

        if (v11)
        {
          goto LABEL_18;
        }

        v12 = [v8 objectAtIndexedSubscript:0];
        v13 = [v12 integerValue];

        v14 = [v8 objectAtIndexedSubscript:1];
        v15 = [v14 integerValue];

        if (v13 < 1 || v15 <= 0)
        {
          goto LABEL_18;
        }

        v28[0] = @"numberOfOperations";
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
        v28[1] = @"minimumTimeIntervalBetweenOperations";
        v29[0] = v16;
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15 * 60.0];
        v29[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
        [v3 addObject:v18];
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([v3 count])
  {
    v19 = v3;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)_loadDistributionConfiguration:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = self;
  v4 = [objc_opt_class() _distributionBucketsFromConfiguration:v21];
  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v4;
    v5 = v4;
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"numberOfOperations"];
          v13 = [v12 unsignedIntegerValue];

          v14 = [v11 objectForKeyedSubscript:@"minimumTimeIntervalBetweenOperations"];
          [v14 doubleValue];
          v16 = v15;

          v6 += v13;
          v9 = v9 + v16 * v13;
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    objc_storeStrong(&v22->_throttlingDistribution, obj);
    v22->_numberOfSecondsToMonitor = v9;
    v22->_maximumNumberOfOperationWithinMonitoredPeriod = v6;
    v4 = obj;
  }

  v17 = v4 != 0;

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_dateOfNextPermittedOperationAttemptWithNormalPriority
{
  v3 = [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod firstObject];
  if (v3)
  {
    [(WBSCloudKitThrottler *)self _timeIntervalUntilNextPermittedOperationAttemptWithNormalPriority];
    [v3 dateByAddingTimeInterval:?];
  }

  else
  {
    [MEMORY[0x1E695DF00] distantPast];
  }
  v4 = ;

  return v4;
}

- (double)_timeIntervalUntilNextPermittedOperationAttemptWithNormalPriority
{
  for (i = self->_pastOperationsWithinMonitoredPeriod; ; [(NSMutableArray *)i removeLastObject])
  {
    [(WBSCloudKitThrottler *)self _minimumTimeBetweenOperationsForOperations:i];
    v5 = v4;
    v6 = [(NSMutableArray *)i lastObject];
    [(WBSCloudKitThrottler *)self _timeIntervalUntilOperationShouldBePruned:v6];
    v8 = v7;

    if (v5 <= v8)
    {
      break;
    }

    pastOperationsWithinMonitoredPeriod = self->_pastOperationsWithinMonitoredPeriod;
    if (i == pastOperationsWithinMonitoredPeriod)
    {
      v10 = [(NSMutableArray *)pastOperationsWithinMonitoredPeriod mutableCopy];

      i = v10;
    }
  }

  return v5;
}

- (double)_timeIntervalUntilOperationShouldBePruned:(id)a3
{
  v4 = a3;
  numberOfSecondsToMonitor = self->_numberOfSecondsToMonitor;
  v6 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:v6];
  v8 = numberOfSecondsToMonitor - v7;

  return v8;
}

- (double)_minimumTimeBetweenOperationsForOperations:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_throttlingDistribution;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"numberOfOperations", v18}];
        v12 = [v11 unsignedIntegerValue];

        v7 += v12;
        if (v4 < v7)
        {
          v14 = [v10 objectForKeyedSubscript:@"minimumTimeIntervalBetweenOperations"];
          [v14 doubleValue];
          v13 = v15;

          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1.79769313e308;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_pruneExpiredOrInvalidOperations
{
  v3 = [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod count];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-self->_numberOfSecondsToMonitor];
    v6 = [MEMORY[0x1E695DF00] date];
    pastOperationsWithinMonitoredPeriod = self->_pastOperationsWithinMonitoredPeriod;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __56__WBSCloudKitThrottler__pruneExpiredOrInvalidOperations__block_invoke;
    v14 = &unk_1E7CF1A78;
    v8 = v5;
    v15 = v8;
    v9 = v6;
    v16 = v9;
    v10 = [(NSMutableArray *)pastOperationsWithinMonitoredPeriod indexesOfObjectsPassingTest:&v11];
    [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod removeObjectsAtIndexes:v10, v11, v12, v13, v14];
    if ([(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod count]!= v4)
    {
      [(WBSCloudKitThrottler *)self _saveRecordOfPastOperations];
    }
  }
}

BOOL __56__WBSCloudKitThrottler__pruneExpiredOrInvalidOperations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) compare:v3];
  v5 = [v3 compare:*(a1 + 40)];
  v7 = v4 != -1 || v5 == 1;

  return v7;
}

- (void)_addOperationAtDate:(id)a3
{
  v6 = a3;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod firstObject];
    v5 = v4;
    if (!v4 || [v4 compare:v6] == -1)
    {
      break;
    }

    [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_pastOperationsWithinMonitoredPeriod insertObject:v6 atIndex:0];
}

- (void)_loadRecordOfPastOperations
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  v4 = [WeakRetained recordOfPastOperationsForThrottler:self];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:1 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pastOperationsWithinMonitoredPeriod = self->_pastOperationsWithinMonitoredPeriod;
      self->_pastOperationsWithinMonitoredPeriod = v6;

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [v5 reverseObjectEnumerator];
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(WBSCloudKitThrottler *)self _addOperationAtDate:v12];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_saveRecordOfPastOperations
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_pastOperationsWithinMonitoredPeriod format:200 options:0 error:0];
    [v5 setRecordOfPastOperations:v4 forThrottler:self];

    WeakRetained = v5;
  }
}

- (void)reloadRecordOfPastOperations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pastOperationsWithinMonitoredPeriod = self->_pastOperationsWithinMonitoredPeriod;
  self->_pastOperationsWithinMonitoredPeriod = v3;

  [(WBSCloudKitThrottler *)self _loadRecordOfPastOperations];
}

- (WBSCloudKitThrottlerDataStore)dataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  return WeakRetained;
}

@end