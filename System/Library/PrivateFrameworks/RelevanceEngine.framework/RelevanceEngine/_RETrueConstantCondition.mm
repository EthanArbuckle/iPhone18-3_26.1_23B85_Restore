@interface _RETrueConstantCondition
+ (id)sharedInstance;
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
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

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  if (a5)
  {
    *a5 = [REMLExplanation explanationForCondition:self, a4];
  }

  return 1;
}

@end