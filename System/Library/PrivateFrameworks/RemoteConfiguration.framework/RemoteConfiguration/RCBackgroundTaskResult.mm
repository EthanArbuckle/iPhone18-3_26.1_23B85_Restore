@interface RCBackgroundTaskResult
- (RCBackgroundTaskResult)initWithTaskIdentifier:(id)identifier configurationResourcesByRequestKey:(id)key error:(id)error;
@end

@implementation RCBackgroundTaskResult

- (RCBackgroundTaskResult)initWithTaskIdentifier:(id)identifier configurationResourcesByRequestKey:(id)key error:(id)error
{
  identifierCopy = identifier;
  keyCopy = key;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = RCBackgroundTaskResult;
  v12 = [(RCBackgroundTaskResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskIdentifier, identifier);
    objc_storeStrong(&v13->_configurationResourcesByRequestKey, key);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end