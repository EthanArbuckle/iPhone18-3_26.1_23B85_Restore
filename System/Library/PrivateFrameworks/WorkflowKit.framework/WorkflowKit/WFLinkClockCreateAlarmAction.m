@interface WFLinkClockCreateAlarmAction
- (id)overrideDefaultValuesByParameter;
- (id)parameterOverrides;
@end

@implementation WFLinkClockCreateAlarmAction

- (id)overrideDefaultValuesByParameter
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"OpenWhenRun";
  v6[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)parameterOverrides
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFLinkClockCreateAlarmAction;
  v2 = [(WFOverridableLinkAction *)&v11 parameterOverrides];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v12 = @"Placeholder";
  v7 = WFLocalizedStringWithKey(@"Alarm (placeholderOverride)", @"Alarm");
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  WFAddEntriesToDictionary(v6, @"name", v8);

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

@end