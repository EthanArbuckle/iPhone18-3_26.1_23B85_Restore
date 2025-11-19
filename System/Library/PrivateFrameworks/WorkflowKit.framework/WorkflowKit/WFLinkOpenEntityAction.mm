@interface WFLinkOpenEntityAction
+ (id)overrideInputParameterNames;
- (id)entityParameterName;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkOpenEntityAction

- (id)parameterSummary
{
  v19.receiver = self;
  v19.super_class = WFLinkOpenEntityAction;
  v3 = [(WFAppIntentExecutionAction *)&v19 parameterSummary];
  v4 = [(WFAppIntentExecutionAction *)self metadata];
  v5 = [v4 actionConfiguration];
  v6 = v5 | v3;

  if (v6)
  {
    v16 = v3;
  }

  else
  {
    if ([(WFLinkEntityAction *)self isUniqueEntity])
    {
      v7 = WFLocalizedStringResourceWithKey(@"Open %@", @"Open %@");
      v8 = [(WFLinkEntityAction *)self entityMetadata];
      v9 = [v8 displayRepresentation];
      v10 = [v9 name];
      v11 = [v10 localizedStringWithPluralizationNumber:&unk_1F4A9A288 forLocaleIdentifier:0];

      v12 = MEMORY[0x1E696AEC0];
      v13 = [(WFAction *)self defaultLocalizationContext];
      v14 = [v13 localize:v7];
      v15 = [v12 localizedStringWithFormat:v14, v11];

      v16 = [[WFActionParameterSummary alloc] initWithLocalizedString:v15];
    }

    else
    {
      v17 = [WFActionParameterSummary alloc];
      v7 = WFLocalizedStringResourceWithKey(@"Open ${target}", @"Open ${target}");
      v16 = [(WFActionParameterSummary *)v17 initWithString:v7];
    }
  }

  return v16;
}

- (id)overrideLabelsByParameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkOpenEntityAction *)self entityParameterName];
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
        v10 = [(WFLinkOpenEntityAction *)self entityParameterName];
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

+ (id)overrideInputParameterNames
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"entity";
  v5[1] = @"target";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end