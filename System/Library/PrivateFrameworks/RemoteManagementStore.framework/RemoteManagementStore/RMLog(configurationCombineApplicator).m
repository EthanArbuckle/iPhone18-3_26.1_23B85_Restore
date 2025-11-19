@interface RMLog(configurationCombineApplicator)
+ (id)configurationCombineApplicator;
@end

@implementation RMLog(configurationCombineApplicator)

+ (id)configurationCombineApplicator
{
  if (configurationCombineApplicator_onceToken != -1)
  {
    +[RMLog(configurationCombineApplicator) configurationCombineApplicator];
  }

  v1 = configurationCombineApplicator_result;

  return v1;
}

@end