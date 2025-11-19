@interface RMLog(configurationSubscriberClient)
+ (id)configurationSubscriberClient;
@end

@implementation RMLog(configurationSubscriberClient)

+ (id)configurationSubscriberClient
{
  if (configurationSubscriberClient_onceToken != -1)
  {
    +[RMLog(configurationSubscriberClient) configurationSubscriberClient];
  }

  v1 = configurationSubscriberClient_result;

  return v1;
}

@end