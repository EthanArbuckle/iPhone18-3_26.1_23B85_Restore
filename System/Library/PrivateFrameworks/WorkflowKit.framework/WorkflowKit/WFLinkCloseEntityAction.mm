@interface WFLinkCloseEntityAction
- (id)entityParameterName;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkCloseEntityAction

- (id)parameterSummary
{
  v11.receiver = self;
  v11.super_class = WFLinkCloseEntityAction;
  v3 = [(WFAppIntentExecutionAction *)&v11 parameterSummary];
  v4 = [(WFAppIntentExecutionAction *)self metadata];
  v5 = [v4 actionConfiguration];
  v6 = v5 | v3;

  if (v6)
  {
    v9 = v3;
  }

  else
  {
    v7 = [WFActionParameterSummary alloc];
    v8 = WFLocalizedStringResourceWithKey(@"Close ${target}", @"Close ${target}");
    v9 = [(WFActionParameterSummary *)v7 initWithString:v8];
  }

  return v9;
}

- (id)overrideLabelsByParameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkCloseEntityAction *)self entityParameterName];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFLinkEntityAction *)self entityName];
    if (v5)
    {
      v6 = v5;
      v7 = [(WFLinkEntityAction *)self entityName];
      v8 = [v7 key];
      v9 = [v8 length];

      if (v9)
      {
        v10 = [(WFLinkCloseEntityAction *)self entityParameterName];
        v15 = v10;
        v11 = [(WFLinkEntityAction *)self entityName];
        v16[0] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)entityParameterName
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"entity";
  v7[1] = @"target";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [(WFLinkEntityAction *)self actualEntityParameterNameFromPossibleNames:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end