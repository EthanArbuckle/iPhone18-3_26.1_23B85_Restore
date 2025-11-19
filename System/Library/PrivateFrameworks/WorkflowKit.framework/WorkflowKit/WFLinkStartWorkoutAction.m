@interface WFLinkStartWorkoutAction
- (id)parameterOverrides;
- (id)parameterSummary;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFLinkStartWorkoutAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameterValueForKey:@"workoutStyle" ofClass:objc_opt_class()];
  if (v5)
  {
    [(WFLinkAction *)self runAsynchronouslyWithLinkAction:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFLinkStartWorkoutAction;
    [(WFLinkAction *)&v6 runAsynchronouslyWithInput:v4];
  }
}

- (id)parameterOverrides
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFAppIntentExecutionAction *)self metadata];
  v3 = [v2 actionConfiguration];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v16 = @"workoutStyle";
    v5 = [WFParameterDefinition alloc];
    v14[0] = @"Class";
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v14[1] = @"DisallowedVariableTypes";
    v15[0] = v7;
    v13 = @"Variable";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v15[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v10 = [(WFParameterDefinition *)v5 initWithDictionary:v9];
    v17[0] = v10;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"Start ${workoutStyle} Workout", @"Start ${workoutStyle} Workout");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

- (void)initializeParameters
{
  v7.receiver = self;
  v7.super_class = WFLinkStartWorkoutAction;
  [(WFLinkAction *)&v7 initializeParameters];
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 actionConfiguration];

  if (!v4)
  {
    v5 = [(WFAction *)self parameterForKey:@"workoutStyle"];
    [v5 setAction:self];
    v6 = [(WFAction *)self parameters];
    [v6 enumerateObjectsUsingBlock:&__block_literal_global_15931];
  }
}

void __48__WFLinkStartWorkoutAction_initializeParameters__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v2 setHidden:1];
  }
}

@end