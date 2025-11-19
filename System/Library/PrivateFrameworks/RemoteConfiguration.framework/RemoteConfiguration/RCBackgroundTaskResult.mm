@interface RCBackgroundTaskResult
- (RCBackgroundTaskResult)initWithTaskIdentifier:(id)a3 configurationResourcesByRequestKey:(id)a4 error:(id)a5;
@end

@implementation RCBackgroundTaskResult

- (RCBackgroundTaskResult)initWithTaskIdentifier:(id)a3 configurationResourcesByRequestKey:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RCBackgroundTaskResult;
  v12 = [(RCBackgroundTaskResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskIdentifier, a3);
    objc_storeStrong(&v13->_configurationResourcesByRequestKey, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end