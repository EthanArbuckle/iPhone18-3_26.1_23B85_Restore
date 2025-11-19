@interface REMAppStoreDataViewConfigurationsInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCoder:(id)a3;
- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)a3 numberOfForegroundsThreshold:(unint64_t)a4 timeIntervalOfInterest:(double)a5 timeIntervalSinceInitialForeground:(double)a6 timeIntervalSinceLastPrompt:(double)a7 timeIntervalSinceLastFetch:(double)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAppStoreDataViewConfigurationsInvocationResult

- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)a3 numberOfForegroundsThreshold:(unint64_t)a4 timeIntervalOfInterest:(double)a5 timeIntervalSinceInitialForeground:(double)a6 timeIntervalSinceLastPrompt:(double)a7 timeIntervalSinceLastFetch:(double)a8
{
  v15.receiver = self;
  v15.super_class = REMAppStoreDataViewConfigurationsInvocationResult;
  result = [(REMStoreInvocationValueStorage *)&v15 init];
  if (result)
  {
    result->_createdOrCompletedRemindersCountThreshold = a3;
    result->_numberOfForegroundsThreshold = a4;
    result->_timeIntervalOfInterest = a5;
    result->_timeIntervalSinceInitialForeground = a6;
    result->_timeIntervalSinceLastPrompt = a7;
    result->_timeIntervalSinceLastFetch = a8;
  }

  return result;
}

- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"createdOrCompletedRemindersCountThreshold"];
  v6 = [v4 decodeIntForKey:@"numberOfForegroundsThreshold"];
  [v4 decodeDoubleForKey:@"timeIntervalOfInterest"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"timeIntervalSinceInitialForeground"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"timeIntervalSinceLastPrompt"];
  v12 = v11;
  [v4 decodeDoubleForKey:@"timeIntervalSinceLastFetch"];
  v14 = v13;

  return [(REMAppStoreDataViewConfigurationsInvocationResult *)self initWithCreatedOrCompletedRemindersCountThreshold:v5 numberOfForegroundsThreshold:v6 timeIntervalOfInterest:v8 timeIntervalSinceInitialForeground:v10 timeIntervalSinceLastPrompt:v12 timeIntervalSinceLastFetch:v14];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMAppStoreDataViewConfigurationsInvocationResult createdOrCompletedRemindersCountThreshold](self forKey:{"createdOrCompletedRemindersCountThreshold"), @"createdOrCompletedRemindersCountThreshold"}];
  [v4 encodeInteger:-[REMAppStoreDataViewConfigurationsInvocationResult numberOfForegroundsThreshold](self forKey:{"numberOfForegroundsThreshold"), @"numberOfForegroundsThreshold"}];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalOfInterest];
  [v4 encodeDouble:@"timeIntervalOfInterest" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceInitialForeground];
  [v4 encodeDouble:@"timeIntervalSinceInitialForeground" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
  [v4 encodeDouble:@"timeIntervalSinceLastPrompt" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastFetch];
  [v4 encodeDouble:@"timeIntervalSinceLastFetch" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(REMAppStoreDataViewConfigurationsInvocationResult *)self createdOrCompletedRemindersCountThreshold];
  if (v5 != [v4 createdOrCompletedRemindersCountThreshold])
  {
    goto LABEL_7;
  }

  v6 = [(REMAppStoreDataViewConfigurationsInvocationResult *)self numberOfForegroundsThreshold];
  if (v6 != [v4 numberOfForegroundsThreshold])
  {
    goto LABEL_7;
  }

  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalOfInterest];
  v8 = v7;
  [v4 timeIntervalOfInterest];
  if (v8 != v9)
  {
    goto LABEL_7;
  }

  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceInitialForeground];
  v11 = v10;
  [v4 timeIntervalSinceInitialForeground];
  if (v11 == v12 && (-[REMAppStoreDataViewConfigurationsInvocationResult timeIntervalSinceLastPrompt](self, "timeIntervalSinceLastPrompt"), v14 = v13, [v4 timeIntervalSinceLastPrompt], v14 == v15))
  {
    [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastFetch];
    v19 = v18;
    [v4 timeIntervalSinceLastFetch];
    v16 = v19 == v20;
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(REMAppStoreDataViewConfigurationsInvocationResult *)self createdOrCompletedRemindersCountThreshold];
  v4 = ([(REMAppStoreDataViewConfigurationsInvocationResult *)self numberOfForegroundsThreshold]+ v3);
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalOfInterest];
  v6 = v5 + v4;
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceInitialForeground];
  v8 = v7 + v6;
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
  v10 = v9 + v8;
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastFetch];
  return (v11 + v10);
}

@end