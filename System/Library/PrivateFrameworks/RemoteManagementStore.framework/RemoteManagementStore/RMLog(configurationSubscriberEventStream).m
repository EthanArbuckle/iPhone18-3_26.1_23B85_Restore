@interface RMLog(configurationSubscriberEventStream)
+ (id)configurationSubscriberEventStream;
@end

@implementation RMLog(configurationSubscriberEventStream)

+ (id)configurationSubscriberEventStream
{
  if (configurationSubscriberEventStream_onceToken != -1)
  {
    +[RMLog(configurationSubscriberEventStream) configurationSubscriberEventStream];
  }

  v1 = configurationSubscriberEventStream_result;

  return v1;
}

@end