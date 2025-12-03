@interface WFRegexFieldParameter
- (WFRegexFieldParameter)initWithDefinition:(id)definition;
- (id)hintForState:(id)state;
@end

@implementation WFRegexFieldParameter

- (id)hintForState:(id)state
{
  stateCopy = state;
  variableString = [stateCopy variableString];
  stringByRemovingVariables = [variableString stringByRemovingVariables];

  variableString2 = [stateCopy variableString];

  variables = [variableString2 variables];
  if ([variables count])
  {

LABEL_3:
    v8 = 0;
    goto LABEL_8;
  }

  v9 = [stringByRemovingVariables length];

  if (!v9)
  {
    goto LABEL_3;
  }

  v12 = 0;
  v10 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:stringByRemovingVariables options:0 error:&v12];
  v8 = 0;
  if (!v10)
  {
    v8 = WFLocalizedString(@"Invalid pattern");
  }

LABEL_8:

  return v8;
}

- (WFRegexFieldParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFRegexFieldParameter;
  v3 = [(WFTextInputParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end