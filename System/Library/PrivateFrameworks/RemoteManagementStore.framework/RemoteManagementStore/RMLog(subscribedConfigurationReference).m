@interface RMLog(subscribedConfigurationReference)
+ (id)subscribedConfigurationReference;
@end

@implementation RMLog(subscribedConfigurationReference)

+ (id)subscribedConfigurationReference
{
  if (subscribedConfigurationReference_onceToken[0] != -1)
  {
    +[RMLog(subscribedConfigurationReference) subscribedConfigurationReference];
  }

  v1 = subscribedConfigurationReference_result;

  return v1;
}

@end