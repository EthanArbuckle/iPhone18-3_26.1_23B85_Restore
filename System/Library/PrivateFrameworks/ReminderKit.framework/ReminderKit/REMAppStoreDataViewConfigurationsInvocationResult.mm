@interface REMAppStoreDataViewConfigurationsInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCoder:(id)coder;
- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)threshold numberOfForegroundsThreshold:(unint64_t)foregroundsThreshold timeIntervalOfInterest:(double)interest timeIntervalSinceInitialForeground:(double)foreground timeIntervalSinceLastPrompt:(double)prompt timeIntervalSinceLastFetch:(double)fetch;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAppStoreDataViewConfigurationsInvocationResult

- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCreatedOrCompletedRemindersCountThreshold:(unint64_t)threshold numberOfForegroundsThreshold:(unint64_t)foregroundsThreshold timeIntervalOfInterest:(double)interest timeIntervalSinceInitialForeground:(double)foreground timeIntervalSinceLastPrompt:(double)prompt timeIntervalSinceLastFetch:(double)fetch
{
  v15.receiver = self;
  v15.super_class = REMAppStoreDataViewConfigurationsInvocationResult;
  result = [(REMStoreInvocationValueStorage *)&v15 init];
  if (result)
  {
    result->_createdOrCompletedRemindersCountThreshold = threshold;
    result->_numberOfForegroundsThreshold = foregroundsThreshold;
    result->_timeIntervalOfInterest = interest;
    result->_timeIntervalSinceInitialForeground = foreground;
    result->_timeIntervalSinceLastPrompt = prompt;
    result->_timeIntervalSinceLastFetch = fetch;
  }

  return result;
}

- (REMAppStoreDataViewConfigurationsInvocationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"createdOrCompletedRemindersCountThreshold"];
  v6 = [coderCopy decodeIntForKey:@"numberOfForegroundsThreshold"];
  [coderCopy decodeDoubleForKey:@"timeIntervalOfInterest"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"timeIntervalSinceInitialForeground"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"timeIntervalSinceLastPrompt"];
  v12 = v11;
  [coderCopy decodeDoubleForKey:@"timeIntervalSinceLastFetch"];
  v14 = v13;

  return [(REMAppStoreDataViewConfigurationsInvocationResult *)self initWithCreatedOrCompletedRemindersCountThreshold:v5 numberOfForegroundsThreshold:v6 timeIntervalOfInterest:v8 timeIntervalSinceInitialForeground:v10 timeIntervalSinceLastPrompt:v12 timeIntervalSinceLastFetch:v14];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMAppStoreDataViewConfigurationsInvocationResult createdOrCompletedRemindersCountThreshold](self forKey:{"createdOrCompletedRemindersCountThreshold"), @"createdOrCompletedRemindersCountThreshold"}];
  [coderCopy encodeInteger:-[REMAppStoreDataViewConfigurationsInvocationResult numberOfForegroundsThreshold](self forKey:{"numberOfForegroundsThreshold"), @"numberOfForegroundsThreshold"}];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalOfInterest];
  [coderCopy encodeDouble:@"timeIntervalOfInterest" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceInitialForeground];
  [coderCopy encodeDouble:@"timeIntervalSinceInitialForeground" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
  [coderCopy encodeDouble:@"timeIntervalSinceLastPrompt" forKey:?];
  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastFetch];
  [coderCopy encodeDouble:@"timeIntervalSinceLastFetch" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  createdOrCompletedRemindersCountThreshold = [(REMAppStoreDataViewConfigurationsInvocationResult *)self createdOrCompletedRemindersCountThreshold];
  if (createdOrCompletedRemindersCountThreshold != [equalCopy createdOrCompletedRemindersCountThreshold])
  {
    goto LABEL_7;
  }

  numberOfForegroundsThreshold = [(REMAppStoreDataViewConfigurationsInvocationResult *)self numberOfForegroundsThreshold];
  if (numberOfForegroundsThreshold != [equalCopy numberOfForegroundsThreshold])
  {
    goto LABEL_7;
  }

  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalOfInterest];
  v8 = v7;
  [equalCopy timeIntervalOfInterest];
  if (v8 != v9)
  {
    goto LABEL_7;
  }

  [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceInitialForeground];
  v11 = v10;
  [equalCopy timeIntervalSinceInitialForeground];
  if (v11 == v12 && (-[REMAppStoreDataViewConfigurationsInvocationResult timeIntervalSinceLastPrompt](self, "timeIntervalSinceLastPrompt"), v14 = v13, [equalCopy timeIntervalSinceLastPrompt], v14 == v15))
  {
    [(REMAppStoreDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastFetch];
    v19 = v18;
    [equalCopy timeIntervalSinceLastFetch];
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
  createdOrCompletedRemindersCountThreshold = [(REMAppStoreDataViewConfigurationsInvocationResult *)self createdOrCompletedRemindersCountThreshold];
  v4 = ([(REMAppStoreDataViewConfigurationsInvocationResult *)self numberOfForegroundsThreshold]+ createdOrCompletedRemindersCountThreshold);
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