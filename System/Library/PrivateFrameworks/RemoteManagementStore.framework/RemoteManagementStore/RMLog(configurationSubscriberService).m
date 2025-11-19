@interface RMLog(configurationSubscriberService)
+ (id)configurationSubscriberService;
@end

@implementation RMLog(configurationSubscriberService)

+ (id)configurationSubscriberService
{
  if (configurationSubscriberService_onceToken != -1)
  {
    +[RMLog(configurationSubscriberService) configurationSubscriberService];
  }

  v1 = configurationSubscriberService_result;

  return v1;
}

@end