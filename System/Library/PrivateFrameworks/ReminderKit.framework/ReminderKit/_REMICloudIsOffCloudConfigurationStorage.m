@interface _REMICloudIsOffCloudConfigurationStorage
- (_REMICloudIsOffCloudConfigurationStorage)initWithTimeIntervalSinceLastPrompt:(double)a3;
@end

@implementation _REMICloudIsOffCloudConfigurationStorage

- (_REMICloudIsOffCloudConfigurationStorage)initWithTimeIntervalSinceLastPrompt:(double)a3
{
  v5.receiver = self;
  v5.super_class = _REMICloudIsOffCloudConfigurationStorage;
  result = [(_REMICloudIsOffCloudConfigurationStorage *)&v5 init];
  if (result)
  {
    result->_iCloudIsOffTimeIntervalSinceLastPrompt = a3;
  }

  return result;
}

@end