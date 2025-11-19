@interface WFSetSilentModeAction
- (id)defaultParameterStatesForStaccato;
- (id)hiddenParameterKeysForStaccato;
- (id)localizedFocusFilterDescriptionWithContext:(id)a3;
- (id)staccatoNameOverride;
@end

@implementation WFSetSilentModeAction

- (id)staccatoNameOverride
{
  v2 = WFLocalizedString(@"Silent Mode");
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x1E696B100]);
  v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v7 = [v5 initWithKey:@"Silent Mode" table:@"Localizable" locale:v6 bundleURL:v4];

  v8 = [v7 localize];

  return v8;
}

- (id)hiddenParameterKeysForStaccato
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"operation";
  v7[1] = @"state";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)defaultParameterStatesForStaccato
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"operation";
  v2 = [(WFVariableSubstitutableParameterState *)[WFLinkEnumerationSubstitutableState alloc] initWithValue:@"toggle"];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedFocusFilterDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Turn Silent Mode on or off while in this Focus.", @"Turn Silent Mode on or off while in this Focus.");
  v5 = [v3 localize:v4];

  return v5;
}

@end