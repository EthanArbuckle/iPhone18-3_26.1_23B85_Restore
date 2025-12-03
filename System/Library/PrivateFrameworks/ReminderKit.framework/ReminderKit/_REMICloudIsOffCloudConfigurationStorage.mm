@interface _REMICloudIsOffCloudConfigurationStorage
- (_REMICloudIsOffCloudConfigurationStorage)initWithTimeIntervalSinceLastPrompt:(double)prompt;
@end

@implementation _REMICloudIsOffCloudConfigurationStorage

- (_REMICloudIsOffCloudConfigurationStorage)initWithTimeIntervalSinceLastPrompt:(double)prompt
{
  v5.receiver = self;
  v5.super_class = _REMICloudIsOffCloudConfigurationStorage;
  result = [(_REMICloudIsOffCloudConfigurationStorage *)&v5 init];
  if (result)
  {
    result->_iCloudIsOffTimeIntervalSinceLastPrompt = prompt;
  }

  return result;
}

@end