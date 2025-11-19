@interface WFHandleSystemIntentAction
+ (id)sharedEnumerator;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)shouldBeIncludedInAppsList;
- (INIntentDescriptor)intentDescriptor;
- (NSSet)supportedIdentifiers;
- (WFHandleSystemIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 intentDescription:(id)a6 stringLocalizer:(id)a7;
- (WFHandleSystemIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6;
- (id)accessoryIcon;
- (id)actionForAppIdentifier:(id)a3;
- (id)copyWithSerializedParameters:(id)a3;
- (id)displayableAppDescriptor;
- (id)displayableAppIdentifier;
- (id)enumeration:(id)a3 accessoryImageForPossibleState:(id)a4;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6;
- (id)intentClassName;
- (id)intentDescriptorFromParameterState;
- (id)intentDescriptorWithIntentClassName:(id)a3 launchableBundleId:(id)a4;
- (id)launchableAppIdentifier;
- (id)launchableAppIdentifiers;
- (id)localizedAppName;
- (id)localizedNameWithContext:(id)a3;
- (id)possibleStatesForEnumeration:(id)a3;
- (id)selectedAppNotSupportedError;
- (id)slots;
- (id)supportedAppIdentifiers;
- (int64_t)intentCategory;
- (void)dealloc;
- (void)initializeParameters;
- (void)selectedAppDidChange;
@end

@implementation WFHandleSystemIntentAction

- (id)enumeration:(id)a3 accessoryImageForPossibleState:(id)a4
{
  v5 = [a4 value];
  v6 = [v5 bundleIdentifier];

  v7 = [(WFHandleSystemIntentAction *)self customImageForBundleIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69E0B58] applicationIconImageForBundleIdentifier:v6 format:0];
  }

  v10 = v9;

  return v10;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = a4;
  v6 = [v5 value];
  v7 = [v6 bundleIdentifier];
  v8 = [(WFHandleSystemIntentAction *)self customAppNameForBundleIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v5 value];
    v9 = [v10 localizedName];
  }

  return v9;
}

- (id)possibleStatesForEnumeration:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [(WFHandleSystemIntentAction *)self intentClassName];
  v5 = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
  v6 = MEMORY[0x1E696AEB0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke;
  v17[3] = &unk_1E8376880;
  v7 = v4;
  v18 = v7;
  v8 = [v6 sortDescriptorWithKey:@"self" ascending:1 comparator:v17];
  v19[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v10 = [v5 sortedArrayUsingDescriptors:v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke_2;
  v15[3] = &unk_1E83768A8;
  v16 = v7;
  v11 = v7;
  v12 = [v10 if_map:v15];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696E890];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v7];

  v9 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v6];
  v10 = [MEMORY[0x1E696E748] sharedResolver];
  v11 = [v10 resolvedIntentMatchingDescriptor:v8];

  v12 = [MEMORY[0x1E696E748] sharedResolver];
  v13 = [v12 resolvedIntentMatchingDescriptor:v9];

  v14 = [v11 localizedName];
  v15 = [v13 localizedName];
  v16 = [v14 localizedStandardCompare:v15];

  return v16;
}

WFIntentDescriptorParameterState *__59__WFHandleSystemIntentAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [[v3 alloc] initWithIntentClassName:*(a1 + 32) launchableAppBundleId:v4];

  v6 = [MEMORY[0x1E696E748] sharedResolver];
  v7 = [v6 resolvedIntentMatchingDescriptor:v5];

  v8 = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithValue:v7];

  return v8;
}

- (id)actionForAppIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [(WFHandleSystemIntentAction *)self intentClassName];
        v11 = [(WFHandleSystemIntentAction *)self intentDescriptorWithIntentClassName:v10 launchableBundleId:v9];

        v12 = [MEMORY[0x1E696E748] sharedResolver];
        v13 = [v12 resolvedIntentMatchingDescriptor:v11];

        v14 = [v13 displayableBundleIdentifier];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v17 = [v13 appDescriptor];
          v18 = [(WFVariableSubstitutableParameterState *)[WFAppDescriptorParameterState alloc] initWithValue:v17];
          v29 = @"IntentAppDefinition";
          v19 = [(WFVariableSubstitutableParameterState *)v18 serializedRepresentation];
          v30 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v16 = [(WFHandleSystemIntentAction *)self copyWithSerializedParameters:v20];

          objc_storeStrong(v16 + 52, self->_supportedAppIdentifiers);
          goto LABEL_11;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v24.receiver = self;
  v24.super_class = WFHandleSystemIntentAction;
  v16 = [(WFAction *)&v24 actionForAppIdentifier:v4];
LABEL_11:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)shouldBeIncludedInAppsList
{
  v3 = [(WFHandleSystemIntentAction *)self supportedAppIdentifiers];
  if ([v3 count])
  {
    v4 = ![(WFAction *)self isDiscontinued];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)launchableAppIdentifiers
{
  launchableIdentifiers = self->_launchableIdentifiers;
  if (!launchableIdentifiers)
  {
    v4 = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__WFHandleSystemIntentAction_launchableAppIdentifiers__block_invoke;
    v8[3] = &unk_1E8376830;
    v8[4] = self;
    v5 = [v4 if_compactMap:v8];
    v6 = self->_launchableIdentifiers;
    self->_launchableIdentifiers = v5;

    launchableIdentifiers = self->_launchableIdentifiers;
  }

  return launchableIdentifiers;
}

id __54__WFHandleSystemIntentAction_launchableAppIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 bundleIdentifier];

  return v10;
}

- (id)supportedAppIdentifiers
{
  supportedAppIdentifiers = self->_supportedAppIdentifiers;
  if (!supportedAppIdentifiers)
  {
    v4 = [(WFHandleSystemIntentAction *)self supportedIdentifiers];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WFHandleSystemIntentAction_supportedAppIdentifiers__block_invoke;
    v9[3] = &unk_1E8376830;
    v9[4] = self;
    v5 = [v4 if_compactMap:v9];
    v6 = [v5 allObjects];
    v7 = self->_supportedAppIdentifiers;
    self->_supportedAppIdentifiers = v6;

    supportedAppIdentifiers = self->_supportedAppIdentifiers;
  }

  return supportedAppIdentifiers;
}

id __53__WFHandleSystemIntentAction_supportedAppIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 displayableBundleIdentifier];

  return v10;
}

- (NSSet)supportedIdentifiers
{
  if (!self->_supportedIdentifiers)
  {
    v3 = +[WFHandleSystemIntentAction sharedEnumerator];
    v4 = [(WFHandleSystemIntentAction *)self intentClassName];
    v5 = [v3 supportedIdentifiersForIntentClassName:v4 includingUserActivityBasedApps:1];
    v6 = [v5 set];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke;
    v22[3] = &unk_1E8376830;
    v22[4] = self;
    v7 = [v6 if_compactMap:v22];
    supportedIdentifiers = self->_supportedIdentifiers;
    self->_supportedIdentifiers = v7;
  }

  v9 = [(WFAction *)self appDefinition];
  v10 = [v9 objectForKey:*MEMORY[0x1E69E0900]];

  v11 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v10];
  v12 = [MEMORY[0x1E696E748] sharedResolver];
  v13 = [v12 resolvedAppMatchingDescriptor:v11];

  v14 = [v13 bundleIdentifier];

  v15 = [(WFAction *)self processedParameters];

  if (v15)
  {
    v16 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
    if ([v16 isHidden] && v14)
    {
      v17 = self->_supportedIdentifiers;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke_2;
      v20[3] = &unk_1E8376858;
      v20[4] = self;
      v21 = v14;
      v18 = [(NSSet *)v17 if_compactMap:v20];

      goto LABEL_9;
    }
  }

  v18 = self->_supportedIdentifiers;
LABEL_9:

  return v18;
}

id __50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696E890]);
  v5 = [*(a1 + 32) intentClassName];
  v6 = [v4 initWithIntentClassName:v5 launchableAppBundleId:v3];

  v7 = [MEMORY[0x1E696E748] sharedResolver];
  v8 = [v7 resolvedIntentMatchingDescriptor:v6];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = [v8 bundleIdentifier];

  if (v10)
  {
    v11 = [v8 bundleIdentifier];
    [v9 addObject:v11];
  }

  v12 = [v8 displayableBundleIdentifier];

  if (v12)
  {
    v13 = [v8 displayableBundleIdentifier];
    [v9 addObject:v13];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = objc_alloc(MEMORY[0x1E69635F8]);
        v24 = 0;
        v20 = [v19 initWithBundleIdentifier:v18 allowPlaceholder:0 error:&v24];
        v21 = v24;
        if (v20 && ([v20 wf_isAvailableInContext:0] & 1) != 0)
        {
          v15 = v3;

          goto LABEL_16;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

void *__50__WFHandleSystemIntentAction_supportedIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696E890];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) intentClassName];
  v7 = [v5 initWithIntentClassName:v6 launchableAppBundleId:v4];

  v8 = [MEMORY[0x1E696E748] sharedResolver];
  v9 = [v8 resolvedIntentMatchingDescriptor:v7];

  v10 = [v9 displayableBundleIdentifier];
  if ([v10 isEqualToString:*(a1 + 40)])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)intentDescriptorFromParameterState
{
  v2 = [(WFAction *)self serializedParameterStateForKey:@"IntentAppDefinition"];
  v3 = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithSerializedRepresentation:v2 variableProvider:0 parameter:0];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFVariableSubstitutableParameterState *)v3 value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)intentDescriptorWithIntentClassName:(id)a3 launchableBundleId:(id)a4
{
  v5 = MEMORY[0x1E696E890];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithIntentClassName:v7 launchableAppBundleId:v6];

  return v8;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFHandleSystemIntentAction;
  v8 = [(WFAction *)&v15 setParameterState:v6 forKey:v7];
  if (v8 && [v7 isEqualToString:@"IntentAppDefinition"])
  {
    [(WFHandleSystemIntentAction *)self selectedAppDidChange];
    v9 = v6;
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

    v11 = v10;

    v12 = [v11 value];

    v13 = [v12 bundleIdentifier];
    [(WFAction *)self setSupplementalParameterValue:v13 forKey:@"IntentAppIdentifier"];

    [(WFAction *)self recreateResourcesIfNeeded];
  }

  return v8;
}

- (id)selectedAppNotSupportedError
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = WFLocalizedString(@"Invalid App");
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"Please select a valid app for %@.");
  v6 = [(WFAction *)self localizedName];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v14[0] = *MEMORY[0x1E696A588];
  v14[1] = v9;
  v15[0] = v3;
  v15[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v8 errorWithDomain:@"WFActionErrorDomain" code:10 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)generatedIntentWithIdentifier:(id)a3 input:(id)a4 processedParameters:(id)a5 error:(id *)a6
{
  v8 = [(WFHandleSystemIntentAction *)self intentDescription:a3];
  v9 = objc_alloc_init([v8 facadeClass]);

  v10 = [(WFHandleSystemIntentAction *)self intentDescriptor];
  v11 = [v10 bundleIdentifier];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [v10 extensionBundleIdentifier];
    v12 = v13 != 0;
  }

  v14 = [(WFHandleSystemIntentAction *)self launchableAppIdentifiers];
  v15 = [v10 bundleIdentifier];
  v16 = [v14 containsObject:v15];

  v17 = [v10 extensionBundleIdentifier];

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v12 && (v18 & 1) != 0)
  {
    v19 = [v10 bundleIdentifier];
    [v9 _setLaunchId:v19];

    v20 = [v10 extensionBundleIdentifier];
    [v9 _setExtensionBundleId:v20];

    v21 = v9;
  }

  else if (a6)
  {
    [(WFHandleSystemIntentAction *)self selectedAppNotSupportedError];
    *a6 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithSerializedParameters:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [(WFAction *)self serializedParameters];
    v6 = [v5 objectForKey:@"IntentAppDefinition"];

    if (v6)
    {
      v13 = @"IntentAppDefinition";
      v7 = [(WFAction *)self serializedParameters];
      v8 = [v7 objectForKey:@"IntentAppDefinition"];
      v14[0] = v8;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  v12.receiver = self;
  v12.super_class = WFHandleSystemIntentAction;
  v9 = [(WFAction *)&v12 copyWithSerializedParameters:v4];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFHandleSystemIntentAction;
  [(WFHandleIntentAction *)&v4 initializeParameters];
  v3 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
  [v3 setDataSource:self];
}

- (id)slots
{
  v2 = [(WFHandleSystemIntentAction *)self intentDescription];
  v3 = [v2 slotDescriptions];

  return v3;
}

- (id)intentClassName
{
  v2 = [(WFHandleSystemIntentAction *)self intentDescription];
  v3 = NSStringFromClass([v2 facadeClass]);

  return v3;
}

- (int64_t)intentCategory
{
  v2 = [(WFHandleSystemIntentAction *)self intentDescription];
  v3 = objc_alloc_init([v2 facadeClass]);
  v4 = [v3 _intentCategory];

  return v4;
}

- (id)accessoryIcon
{
  v3 = [(WFHandleSystemIntentAction *)self intentDescriptor];
  v4 = [v3 bundleIdentifier];
  v5 = [(WFHandleSystemIntentAction *)self customImageForBundleIdentifier:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E0B58];
    v8 = [(WFHandleSystemIntentAction *)self displayableAppIdentifier];
    v6 = [v7 applicationIconImageForBundleIdentifier:v8 format:0];
  }

  return v6;
}

- (id)launchableAppIdentifier
{
  v2 = [(WFHandleSystemIntentAction *)self intentDescriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)displayableAppIdentifier
{
  v2 = [(WFHandleSystemIntentAction *)self intentDescriptor];
  v3 = [v2 displayableBundleIdentifier];

  return v3;
}

- (id)localizedAppName
{
  v3 = [(WFHandleSystemIntentAction *)self intentDescriptor];
  v4 = [v3 bundleIdentifier];
  v5 = [(WFHandleSystemIntentAction *)self customAppNameForBundleIdentifier:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(WFHandleSystemIntentAction *)self intentDescriptor];
    v6 = [v7 localizedName];
  }

  return v6;
}

- (id)displayableAppDescriptor
{
  v2 = [(WFHandleSystemIntentAction *)self displayableAppIdentifier];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 name];

  if (v6)
  {
    v14.receiver = self;
    v14.super_class = WFHandleSystemIntentAction;
    v7 = [(WFHandleIntentAction *)&v14 localizedNameWithContext:v4];
  }

  else
  {
    v8 = [(WFHandleSystemIntentAction *)self intentDescription];
    v9 = [v8 name];
    v10 = [v9 rangeOfString:@"Intent" options:12];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v9 substringToIndex:v10];
    }

    v12 = v11;

    v7 = WFAddSpacesToCamelCaseName(v12);
  }

  return v7;
}

- (INIntentDescriptor)intentDescriptor
{
  intentDescriptor = self->_intentDescriptor;
  if (!intentDescriptor)
  {
    v4 = [(WFHandleSystemIntentAction *)self intentDescriptorFromParameterState];
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = v4;
    v6 = [MEMORY[0x1E696E748] sharedResolver];
    v7 = [v6 resolvedIntentMatchingDescriptor:v5];
    v8 = self->_intentDescriptor;
    self->_intentDescriptor = v7;

    intentDescriptor = self->_intentDescriptor;
  }

  v4 = intentDescriptor;
LABEL_5:

  return v4;
}

- (void)selectedAppDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  intentDescriptor = self->_intentDescriptor;
  self->_intentDescriptor = 0;

  [(WFHandleSystemIntentAction *)self intentDescriptor];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(WFAction *)self parameters];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) resourceManager];
        v16 = objc_opt_class();
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        [v9 refreshAvailabilityOfRequiredResourcesOfClasses:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  [(WFAction *)self iconUpdated];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WFHandleSystemIntentAction;
  [(WFHandleSystemIntentAction *)&v3 dealloc];
}

- (WFHandleSystemIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 intentDescription:(id)a6 stringLocalizer:(id)a7
{
  v68[4] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  obj = a6;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = [WFActionDefinition alloc];
    v12 = [(WFActionDefinition *)v16 initWithDictionary:MEMORY[0x1E695E0F8]];
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v17 = [(WFActionDefinition *)v12 objectForKey:@"Parameters"];

  if (!v17)
  {
    v18 = objc_opt_new();
    v19 = [v14 slotDescriptions];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke;
    v59[3] = &unk_1E83767E0;
    v60 = self;
    v61 = v11;
    v62 = v18;
    v52 = v18;
    [v19 enumerateObjectsUsingBlock:v59];

    v20 = [WFParameterDefinition alloc];
    v67[0] = @"Class";
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v68[0] = v22;
    v68[1] = @"IntentAppDefinition";
    v67[1] = @"Key";
    v67[2] = @"Label";
    v23 = WFLocalizedStringResourceWithKey(@"App (SystemIntentAppIdentifier)", @"App");
    v68[2] = v23;
    v67[3] = @"IntentName";
    v24 = NSStringFromClass([v14 facadeClass]);
    v68[3] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:4];
    v26 = [(WFParameterDefinition *)v20 initWithDictionary:v25];

    [v52 insertObject:v26 atIndex:0];
    v27 = [WFParameterDefinition alloc];
    v65[0] = @"Class";
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v66[0] = v29;
    v66[1] = @"OpenInApp";
    v65[1] = @"Key";
    v65[2] = @"Label";
    v30 = WFLocalizedStringResourceWithKey(@"Open in App (SystemIntentOpenInApp)", @"Open in App");
    v66[2] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:3];
    v32 = [(WFParameterDefinition *)v27 initWithDictionary:v31];

    [v52 addObject:v32];
    v63 = @"Parameters";
    v64 = v52;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v34 = [(WFActionDefinition *)v12 definitionByAddingEntriesInDictionary:v33];

    v12 = v34;
  }

LABEL_7:
  v35 = [(WFActionDefinition *)v12 objectForKey:@"Parameters"];
  v36 = [v35 if_firstObjectPassingTest:&__block_literal_global_202_21235];

  if (!v13 || ([v13 objectForKeyedSubscript:@"IntentAppDefinition"], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, v38))
  {
    v39 = [v36 objectForKey:@"DefaultValue"];
    v40 = v39 == 0;

    if (!v40)
    {
      if (v13)
      {
        v41 = [v13 mutableCopy];
      }

      else
      {
        v41 = objc_opt_new();
      }

      v42 = v41;
      v43 = [v36 objectForKey:@"DefaultValue"];
      [v42 setObject:v43 forKeyedSubscript:@"IntentAppDefinition"];

      v44 = [v42 copy];
      v13 = v44;
    }
  }

  v58.receiver = self;
  v58.super_class = WFHandleSystemIntentAction;
  v45 = [(WFHandleIntentAction *)&v58 initWithIdentifier:v11 definition:v12 serializedParameters:v13 stringLocalizer:v15];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_intentDescription, obj);
    objc_initWeak(&location, v46);
    v47 = [*MEMORY[0x1E6963548] UTF8String];
    v48 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_3;
    handler[3] = &unk_1E837C5F8;
    objc_copyWeak(&v56, &location);
    notify_register_dispatch(v47, &v46->_token, MEMORY[0x1E69E96A0], handler);

    v49 = v46;
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v46;
}

void __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 wf_parameterClass];
  if (v4)
  {
    v5 = v4;
    v6 = [WFParameterDefinition alloc];
    v7 = [(WFParameterDefinition *)v6 initWithDictionary:MEMORY[0x1E695E0F8]];
    v8 = [*(a1 + 32) stringLocalizer];
    v9 = [v3 wf_updatedParameterDefinition:v7 parameterClass:v5 localizer:v8];

    v10 = [v9 objectForKey:@"Class"];
    v11 = NSClassFromString(v10);
    LODWORD(v11) = [(objc_class *)v11 isSubclassOfClass:objc_opt_class()];

    if (v11)
    {
      v12 = *(a1 + 40);
      v17[0] = @"IntentType";
      v17[1] = @"SlotName";
      v18[0] = v12;
      v13 = [v3 wf_slotName];
      v18[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v15 = [v9 definitionByAddingEntriesInDictionary:v14];

      v9 = v15;
    }

    [*(a1 + 48) addObject:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[52];
    WeakRetained[52] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

uint64_t __115__WFHandleSystemIntentAction_initWithIdentifier_definition_serializedParameters_intentDescription_stringLocalizer___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"Key"];
  v3 = [v2 isEqualToString:@"IntentAppDefinition"];

  return v3;
}

- (WFHandleSystemIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 objectForKey:@"IntentIdentifier"];
  v15 = objc_opt_class();
  v16 = v14;
  if (v16 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = getWFGeneralLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *v24 = 136315906;
      *&v24[4] = "WFEnforceClass";
      *&v24[12] = 2114;
      *&v24[14] = v16;
      *&v24[22] = 2114;
      v25 = objc_opt_class();
      LOWORD(v26) = 2114;
      *(&v26 + 2) = v15;
      v19 = v25;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", v24, 0x2Au);
    }

    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v20 = INIntentSchemaGetIntentDescriptionWithType();
  }

  else
  {
    v20 = 0;
  }

  v21 = [(WFHandleSystemIntentAction *)self initWithIdentifier:v10 definition:v11 serializedParameters:v12 intentDescription:v20 stringLocalizer:v13, *v24, *&v24[16], v25, v26];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)sharedEnumerator
{
  if (sharedEnumerator_onceToken != -1)
  {
    dispatch_once(&sharedEnumerator_onceToken, &__block_literal_global_21259);
  }

  v3 = sharedEnumerator_enumerator;

  return v3;
}

void __46__WFHandleSystemIntentAction_sharedEnumerator__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedEnumerator_enumerator;
  sharedEnumerator_enumerator = v0;
}

@end