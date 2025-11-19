@interface _RETrueConstantComparisonCondition
+ (id)sharedInstance;
@end

@implementation _RETrueConstantComparisonCondition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[_RETrueConstantComparisonCondition sharedInstance];
  }

  v3 = sharedInstance_Condition_0;

  return v3;
}

@end