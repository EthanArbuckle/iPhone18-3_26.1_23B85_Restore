@interface _REFalseConstantComparisonCondition
+ (id)sharedInstance;
@end

@implementation _REFalseConstantComparisonCondition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[_REFalseConstantComparisonCondition sharedInstance];
  }

  v3 = sharedInstance_Condition_11;

  return v3;
}

@end