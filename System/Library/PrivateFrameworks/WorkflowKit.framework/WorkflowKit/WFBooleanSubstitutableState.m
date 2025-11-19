@interface WFBooleanSubstitutableState
+ (Class)processingValueClass;
- (WFBooleanSubstitutableState)initWithNumberSubstitutableState:(id)a3;
- (id)numberSubstitutableState;
@end

@implementation WFBooleanSubstitutableState

+ (Class)processingValueClass
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v3 = objc_opt_class();

  return v3;
}

- (WFBooleanSubstitutableState)initWithNumberSubstitutableState:(id)a3
{
  v4 = a3;
  v5 = [v4 variable];
  if (v5)
  {
    v6 = [(WFVariableSubstitutableParameterState *)self initWithVariable:v5];
  }

  else
  {
    v7 = [v4 value];
    v6 = [(WFVariableSubstitutableParameterState *)self initWithValue:v7];
  }

  return v6;
}

- (id)numberSubstitutableState
{
  v3 = [(WFVariableSubstitutableParameterState *)self variable];
  v4 = [WFNumberSubstitutableState alloc];
  v5 = v4;
  if (v3)
  {
    v6 = [(WFVariableSubstitutableParameterState *)v4 initWithVariable:v3];
  }

  else
  {
    v7 = [(WFVariableSubstitutableParameterState *)self value];
    v6 = [(WFVariableSubstitutableParameterState *)v5 initWithValue:v7];
  }

  return v6;
}

@end