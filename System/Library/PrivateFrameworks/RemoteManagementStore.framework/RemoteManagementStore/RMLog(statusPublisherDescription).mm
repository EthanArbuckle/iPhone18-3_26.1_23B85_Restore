@interface RMLog(statusPublisherDescription)
+ (id)statusPublisherDescription;
@end

@implementation RMLog(statusPublisherDescription)

+ (id)statusPublisherDescription
{
  if (statusPublisherDescription_onceToken != -1)
  {
    +[RMLog(statusPublisherDescription) statusPublisherDescription];
  }

  v1 = statusPublisherDescription_result;

  return v1;
}

@end