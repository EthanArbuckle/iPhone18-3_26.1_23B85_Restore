@interface WFLinkChangeBinarySettingAction
- (id)overrideDefaultValuesByParameter;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkChangeBinarySettingAction

- (id)overrideLabelsByParameter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"changeOperation";
  v2 = WFLocalizedStringResourceWithKey(@"Operation (changeOperation)", @"Operation");
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)overrideDefaultValuesByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"changeOperation";
  v6[0] = @"enable";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"${changeOperation} ${setting}", @"${changeOperation} ${setting}");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

@end