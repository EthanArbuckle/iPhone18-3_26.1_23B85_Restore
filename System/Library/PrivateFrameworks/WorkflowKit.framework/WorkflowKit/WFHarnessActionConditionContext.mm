@interface WFHarnessActionConditionContext
- (WFHarnessActionConditionContext)initWithVariableDataSource:(id)source;
@end

@implementation WFHarnessActionConditionContext

- (WFHarnessActionConditionContext)initWithVariableDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = WFHarnessActionConditionContext;
  v6 = [(WFHarnessActionConditionContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_variableDataSource, source);
    v8 = v7;
  }

  return v7;
}

@end