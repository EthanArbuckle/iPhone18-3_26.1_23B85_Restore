@interface WFLinkSafariChangeReaderModeStateAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)overrideDefaultValuesByParameter;
- (id)parameterOverrides;
- (id)parameterSummary;
@end

@implementation WFLinkSafariChangeReaderModeStateAction

- (id)parameterOverrides
{
  v17[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = WFLinkSafariChangeReaderModeStateAction;
  parameterOverrides = [(WFOverridableLinkAction *)&v12 parameterOverrides];
  v3 = [parameterOverrides mutableCopy];

  v16 = @"ItemDisplayNames";
  v4 = WFLocalizedStringResourceWithKey(@"Hide (changeOperation)", @"Hide");
  v15[0] = v4;
  v5 = WFLocalizedStringResourceWithKey(@"Show (changeOperation)", @"Show");
  v15[1] = v5;
  v6 = WFLocalizedStringResourceWithKey(@"Toggle (changeOperation)", @"Toggle");
  v15[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  WFAddEntriesToDictionary(v3, @"changeOperation", v8);

  v13 = @"Hidden";
  v14 = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  WFAddEntriesToDictionary(v3, @"setting", v9);

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)overrideDefaultValuesByParameter
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = WFLinkSafariChangeReaderModeStateAction;
  overrideDefaultValuesByParameter = [(WFLinkChangeBinarySettingAction *)&v7 overrideDefaultValuesByParameter];
  v8 = @"setting";
  v9[0] = @"reader";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [overrideDefaultValuesByParameter if_dictionaryByAddingEntriesFromDictionary:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkSafariChangeReaderModeStateAction - Action Name", @"Show/Hide Reader in Safari");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategorySafariReader", @"Safari Reader");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)parameterSummary
{
  v2 = [WFActionParameterSummary alloc];
  v3 = WFLocalizedStringResourceWithKey(@"${changeOperation} Safari Reader", @"${changeOperation} Safari Reader");
  v4 = [(WFActionParameterSummary *)v2 initWithString:v3];

  return v4;
}

@end