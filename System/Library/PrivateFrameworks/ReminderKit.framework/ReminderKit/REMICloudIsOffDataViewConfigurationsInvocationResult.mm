@interface REMICloudIsOffDataViewConfigurationsInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithCoder:(id)coder;
- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithTimeIntervalSinceLastPrompt:(double)prompt;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMICloudIsOffDataViewConfigurationsInvocationResult

- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithTimeIntervalSinceLastPrompt:(double)prompt
{
  v5.receiver = self;
  v5.super_class = REMICloudIsOffDataViewConfigurationsInvocationResult;
  result = [(REMStoreInvocationValueStorage *)&v5 init];
  if (result)
  {
    result->_timeIntervalSinceLastPrompt = prompt;
  }

  return result;
}

- (REMICloudIsOffDataViewConfigurationsInvocationResult)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"timeIntervalSinceLastPrompt"];

  return [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self initWithTimeIntervalSinceLastPrompt:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
  [coderCopy encodeDouble:@"timeIntervalSinceLastPrompt" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(REMICloudIsOffDataViewConfigurationsInvocationResult *)self timeIntervalSinceLastPrompt];
    v6 = v5;
    [equalCopy timeIntervalSinceLastPrompt];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end