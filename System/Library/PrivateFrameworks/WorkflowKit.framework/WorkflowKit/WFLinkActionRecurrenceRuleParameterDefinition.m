@interface WFLinkActionRecurrenceRuleParameterDefinition
- (WFLinkActionRecurrenceRuleParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
@end

@implementation WFLinkActionRecurrenceRuleParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (v4)
  {
    v5 = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [v5 objectIsMemberOfType:v4];

    if (v6)
    {
      v7 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [(WFVariableSubstitutableParameterState *)[WFRecurrenceRuleParameterState alloc] initWithValue:v9];
      goto LABEL_11;
    }

    v11 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(WFLinkActionParameterDefinition *)self valueType];
      v15 = 136315650;
      v16 = "[WFLinkActionRecurrenceRuleParameterDefinition parameterStateFromLinkValue:]";
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v12;
    }
  }

  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 value];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v11 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = [a3 displayRepresentation];
  v4 = [v3 title];
  v5 = [v4 wf_localizedString];

  return v5;
}

- (WFLinkActionRecurrenceRuleParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC850];
  v5 = a3;
  v6 = [v4 recurrenceRuleType];
  v9.receiver = self;
  v9.super_class = WFLinkActionRecurrenceRuleParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end