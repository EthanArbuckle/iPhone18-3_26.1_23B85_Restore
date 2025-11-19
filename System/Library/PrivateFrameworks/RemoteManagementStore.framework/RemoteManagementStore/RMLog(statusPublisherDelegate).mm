@interface RMLog(statusPublisherDelegate)
+ (id)statusPublisherDelegate;
@end

@implementation RMLog(statusPublisherDelegate)

+ (id)statusPublisherDelegate
{
  if (statusPublisherDelegate_onceToken != -1)
  {
    +[RMLog(statusPublisherDelegate) statusPublisherDelegate];
  }

  v1 = statusPublisherDelegate_result;

  return v1;
}

@end