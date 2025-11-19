@interface SBApplicationLaunchAlertEvaluatorFactory
+ (id)defaultApplicationLaunchAlertEvaluators;
@end

@implementation SBApplicationLaunchAlertEvaluatorFactory

+ (id)defaultApplicationLaunchAlertEvaluators
{
  if (defaultApplicationLaunchAlertEvaluators___once != -1)
  {
    +[SBApplicationLaunchAlertEvaluatorFactory defaultApplicationLaunchAlertEvaluators];
  }

  v3 = defaultApplicationLaunchAlertEvaluators___evaluators;

  return v3;
}

void __83__SBApplicationLaunchAlertEvaluatorFactory_defaultApplicationLaunchAlertEvaluators__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = defaultApplicationLaunchAlertEvaluators___evaluators;
  defaultApplicationLaunchAlertEvaluators___evaluators = v0;

  v2 = defaultApplicationLaunchAlertEvaluators___evaluators;
  v3 = objc_alloc_init(SBApplicationLaunchAlertEvaluatorForNetworkBasedAlertItems);
  [v2 addObject:v3];
}

@end