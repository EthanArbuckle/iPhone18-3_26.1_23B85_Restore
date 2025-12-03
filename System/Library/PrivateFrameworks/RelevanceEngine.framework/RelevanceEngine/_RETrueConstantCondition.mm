@interface _RETrueConstantCondition
+ (id)sharedInstance;
- (BOOL)_acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation;
@end

@implementation _RETrueConstantCondition

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_RETrueConstantCondition sharedInstance];
  }

  v3 = sharedInstance_Condition;

  return v3;
}

- (BOOL)_acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation
{
  if (explanation)
  {
    *explanation = [REMLExplanation explanationForCondition:self, set];
  }

  return 1;
}

@end