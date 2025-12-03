@interface WFLinkActionRecurrenceRuleParameterDefinition
- (WFLinkActionRecurrenceRuleParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterStateFromLinkValue:(id)value;
@end

@implementation WFLinkActionRecurrenceRuleParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (value)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:value];

    if (v6)
    {
      v7 = value;
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
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v15 = 136315650;
      v16 = "[WFLinkActionRecurrenceRuleParameterDefinition parameterStateFromLinkValue:]";
      v17 = 2114;
      v18 = value;
      v19 = 2114;
      v20 = valueType2;
    }
  }

  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = [v8 value];
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = value;
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

- (id)localizedTitleForLinkValue:(id)value
{
  displayRepresentation = [value displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];

  return wf_localizedString;
}

- (WFLinkActionRecurrenceRuleParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC850];
  metadataCopy = metadata;
  recurrenceRuleType = [v4 recurrenceRuleType];
  v9.receiver = self;
  v9.super_class = WFLinkActionRecurrenceRuleParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:recurrenceRuleType parameterMetadata:metadataCopy];

  return v7;
}

@end