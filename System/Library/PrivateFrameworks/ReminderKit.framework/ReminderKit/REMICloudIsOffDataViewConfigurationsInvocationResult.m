@interface REMICloudIsOffDataViewConfigurationsInvocationResult
- (BOOL)isEqual:(id)a3;
- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithCoder:(id)a3;
- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithTimeIntervalSinceLastPrompt:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMICloudIsOffDataViewConfigurationsInvocationResult

- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithTimeIntervalSinceLastPrompt:(double)a3
{
  v5.receiver = self;
  v5.super_class = REMICloudIsOffDataViewConfigurationsInvocationResult;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_timeIntervalSinceLastPrompt = a3;
  }

  return result;
}

- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithCoder:(id)a3
{
  [a3 decodeDoubleForKey:@"timeIntervalSinceLastPrompt"];

  return [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self initWithTimeIntervalSinceLastPrompt:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
  [v4 encodeDouble:@"timeIntervalSinceLastPrompt" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
    v6 = v5;
    [v4 timeIntervalSinceLastPrompt];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end