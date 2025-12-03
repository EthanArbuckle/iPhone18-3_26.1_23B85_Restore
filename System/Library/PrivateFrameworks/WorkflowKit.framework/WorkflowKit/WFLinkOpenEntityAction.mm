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
  parameterSummary = [(WFAppIntentExecutionAction *)&v19 parameterSummary];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  actionConfiguration = [metadata actionConfiguration];
  v6 = actionConfiguration | parameterSummary;

  if (v6)
  {
    v16 = parameterSummary;
  }

  else
  {
    if ([(WFLinkEntityAction *)self isUniqueEntity])
    {
      v7 = WFLocalizedStringResourceWithKey(@"Open %@", @"Open %@");
      entityMetadata = [(WFLinkEntityAction *)self entityMetadata];
      displayRepresentation = [entityMetadata displayRepresentation];
      name = [displayRepresentation name];
      v11 = [name localizedStringWithPluralizationNumber:&unk_1F4A9A288 forLocaleIdentifier:0];

      v12 = MEMORY[0x1E696AEC0];
      defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
      v14 = [defaultLocalizationContext localize:v7];
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
  entityParameterName = [(WFLinkOpenEntityAction *)self entityParameterName];
  if (entityParameterName)
  {
    v4 = entityParameterName;
    entityName = [(WFLinkEntityAction *)self entityName];
    if (entityName)
    {
      v6 = entityName;
      entityName2 = [(WFLinkEntityAction *)self entityName];
      v8 = [entityName2 key];
      v9 = [v8 length];

      if (v9)
      {
        entityParameterName2 = [(WFLinkOpenEntityAction *)self entityParameterName];
        v15 = entityParameterName2;
        entityName3 = [(WFLinkEntityAction *)self entityName];
        v16[0] = entityName3;
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