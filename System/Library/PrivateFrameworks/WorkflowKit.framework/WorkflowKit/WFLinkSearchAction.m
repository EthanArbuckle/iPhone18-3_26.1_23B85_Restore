@interface WFLinkSearchAction
- (id)localizedNameWithContext:(id)a3;
- (id)overrideLabelsByParameter;
- (id)parameterOverrides;
- (id)parameterSummary;
@end

@implementation WFLinkSearchAction

- (id)parameterOverrides
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFLinkSearchAction;
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

  v12 = @"Prompt";
  v7 = WFLocalizedStringWithKey(@"What do you want to search for? (searchPhrase)", @"What do you want to search for?");
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  WFAddEntriesToDictionary(v6, @"searchPhrase", v8);

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)overrideLabelsByParameter
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"searchPhrase";
  v2 = WFLocalizedStringResourceWithKey(@"Text (searchPhrase)", @"Text");
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)parameterSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Search ${searchPhrase} in %@");
  v5 = [(WFOverridableLinkAction *)self appName];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  v7 = [[WFActionParameterSummary alloc] initWithLocalizedString:v6];

  return v7;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = WFLocalizedStringResourceWithKey(@"WFLinkSearchAction - Action Name", @"Search in %@");
  v7 = [v5 localize:v6];

  v8 = [(WFOverridableLinkAction *)self appName];
  v9 = [v4 localizedStringWithFormat:v7, v8];

  return v9;
}

@end