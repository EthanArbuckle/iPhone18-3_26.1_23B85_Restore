@interface _REFalseConstantCondition
+ (id)sharedInstance;
@end

@implementation _REFalseConstantCondition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[_REFalseConstantCondition sharedInstance];
  }

  v3 = sharedInstance_Condition_10;

  return v3;
}

@end