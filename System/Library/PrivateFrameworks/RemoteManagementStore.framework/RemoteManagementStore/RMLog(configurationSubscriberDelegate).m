@interface RMLog(configurationSubscriberDelegate)
+ (id)configurationSubscriberDelegate;
@end

@implementation RMLog(configurationSubscriberDelegate)

+ (id)configurationSubscriberDelegate
{
  if (configurationSubscriberDelegate_onceToken != -1)
  {
    +[RMLog(configurationSubscriberDelegate) configurationSubscriberDelegate];
  }

  v1 = configurationSubscriberDelegate_result;

  return v1;
}

@end