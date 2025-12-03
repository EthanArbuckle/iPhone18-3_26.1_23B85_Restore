@interface SBSceneWatchdogProvider
+ (id)defaultSceneWatchdogProvider;
+ (id)disabledSceneWatchdogProvider;
- (id)_scaleProvisions:(id)provisions byFactor:(double)factor;
- (id)initAsDisabled:(BOOL)disabled;
- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context;
@end

@implementation SBSceneWatchdogProvider

+ (id)defaultSceneWatchdogProvider
{
  if (defaultSceneWatchdogProvider___once != -1)
  {
    +[SBSceneWatchdogProvider defaultSceneWatchdogProvider];
  }

  v3 = defaultSceneWatchdogProvider___instance;

  return v3;
}

- (id)initAsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBSceneWatchdogProvider;
  v4 = [(SBSceneWatchdogProvider *)&v13 init];
  if (v4)
  {
    if (disabledCopy)
    {
      v5 = [MEMORY[0x277D0AD88] provisionWithResourceType:1 timeInterval:600.0];
      v6 = MEMORY[0x277D0AD98];
      v14[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      v8 = [v6 policyWithName:@"watchdog disabled" forProvisions:v7];
      explicitPolicy = v4->_explicitPolicy;
      v4->_explicitPolicy = v8;
    }

    defaultPolicy = [MEMORY[0x277D0AA78] defaultPolicy];
    defaultProcessWatchdogProvider = v4->_defaultProcessWatchdogProvider;
    v4->_defaultProcessWatchdogProvider = defaultPolicy;
  }

  return v4;
}

void __55__SBSceneWatchdogProvider_defaultSceneWatchdogProvider__block_invoke()
{
  v0 = [[SBSceneWatchdogProvider alloc] initAsDisabled:0];
  v1 = defaultSceneWatchdogProvider___instance;
  defaultSceneWatchdogProvider___instance = v0;
}

+ (id)disabledSceneWatchdogProvider
{
  if (disabledSceneWatchdogProvider___once != -1)
  {
    +[SBSceneWatchdogProvider disabledSceneWatchdogProvider];
  }

  v3 = disabledSceneWatchdogProvider___instance;

  return v3;
}

void __56__SBSceneWatchdogProvider_disabledSceneWatchdogProvider__block_invoke()
{
  v0 = [[SBSceneWatchdogProvider alloc] initAsDisabled:1];
  v1 = disabledSceneWatchdogProvider___instance;
  disabledSceneWatchdogProvider___instance = v0;
}

- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context
{
  explicitPolicy = self->_explicitPolicy;
  if (explicitPolicy)
  {
    v5 = explicitPolicy;
  }

  else
  {
    defaultProcessWatchdogProvider = self->_defaultProcessWatchdogProvider;
    contextCopy = context;
    v10 = [(FBApplicationProcessWatchdogPolicy *)defaultProcessWatchdogProvider watchdogPolicyForProcess:process eventContext:contextCopy];
    sceneTransitionContext = [contextCopy sceneTransitionContext];

    if (sceneTransitionContext)
    {
      [sceneTransitionContext watchdogScaleFactor];
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    if (BSFloatIsOne())
    {
      v5 = v10;
    }

    else
    {
      provisions = [v10 provisions];
      v15 = [(SBSceneWatchdogProvider *)self _scaleProvisions:provisions byFactor:v13];

      v16 = MEMORY[0x277D0AD98];
      name = [v10 name];
      v5 = [v16 policyWithName:name forProvisions:v15];
    }
  }

  return v5;
}

- (id)_scaleProvisions:(id)provisions byFactor:(double)factor
{
  v24 = *MEMORY[0x277D85DE8];
  provisionsCopy = provisions;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = provisionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 isResourceProvision])
        {
          v17 = 0uLL;
          v18 = 0;
          if (v11)
          {
            [v11 allowance];
          }

          else
          {
            v15 = 0uLL;
            v16 = 0;
          }

          FBSProcessResourceAllowanceScale();
          v15 = v17;
          v16 = v18;
          v12 = [MEMORY[0x277D0AD88] provisionWithAllowance:&v15];
          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          [array addObject:v13];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

@end