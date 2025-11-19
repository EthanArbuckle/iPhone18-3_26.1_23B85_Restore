@interface RMLog(configurationMultipleApplicator)
+ (id)configurationMultipleApplicator;
@end

@implementation RMLog(configurationMultipleApplicator)

+ (id)configurationMultipleApplicator
{
  if (configurationMultipleApplicator_onceToken != -1)
  {
    +[RMLog(configurationMultipleApplicator) configurationMultipleApplicator];
  }

  v1 = configurationMultipleApplicator_result;

  return v1;
}

@end