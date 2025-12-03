@interface WFAppPickerParameter
- (WFAppListProvider)appListProvider;
- (WFAppPickerParameter)initWithDefinition:(id)definition;
- (id)appEnumerator;
- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state;
- (id)enumeration:(id)enumeration accessoryImageForPossibleState:(id)state;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)stateForRecord:(id)record;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFAppPickerParameter

- (WFAppListProvider)appListProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_appListProvider);

  return WeakRetained;
}

- (id)stateForRecord:(id)record
{
  v4 = MEMORY[0x1E696E720];
  recordCopy = record;
  v6 = [[v4 alloc] initWithApplicationRecord:recordCopy];

  if ([(WFAppPickerParameter *)self useLegacyIdentifiers])
  {
    bundleIdentifier = [v6 bundleIdentifier];
    v8 = [WFInterchangeAppRegistry legacyAppIdentifierForBundleIdentifier:bundleIdentifier];

    v9 = objc_alloc(MEMORY[0x1E696E720]);
    localizedName = [v6 localizedName];
    extensionBundleIdentifier = [v6 extensionBundleIdentifier];
    counterpartIdentifiers = [v6 counterpartIdentifiers];
    teamIdentifier = [v6 teamIdentifier];
    supportedIntents = [v6 supportedIntents];
    bundleURL = [v6 bundleURL];
    documentTypes = [v6 documentTypes];
    v17 = [v9 initWithLocalizedName:localizedName bundleIdentifier:v8 extensionBundleIdentifier:extensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];

    v6 = v17;
  }

  v18 = [(WFVariableSubstitutableParameterState *)[WFAppDescriptorParameterState alloc] initWithValue:v6];

  return v18;
}

- (id)enumeration:(id)enumeration accessoryImageForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[WFInterchangeAppRegistry sharedRegistry];
    value = [stateCopy value];
    bundleIdentifier = [value bundleIdentifier];
    v11 = [v8 appWithIdentifier:bundleIdentifier];
    icon = [v11 icon];
  }

  else
  {
    icon = 0;
  }

  return icon;
}

- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state
{
  if (state)
  {
    v4 = MEMORY[0x1E69E0960];
    stateCopy = state;
    v6 = [v4 alloc];
    value = [stateCopy value];

    bundleIdentifier = [value bundleIdentifier];
    v9 = [v6 initWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  if (state)
  {
    value = [state value];
    localizedName = [value localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(25, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__WFAppPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v9[3] = &unk_1E837E1F8;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, v9);
}

void __86__WFAppPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = [*(a1 + 32) appEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v35;
    v7 = 0x1E695E000;
    v8 = @"WFShowInternalAppsInOpenApp";
    *&v4 = 136315138;
    v27 = v4;
    do
    {
      v9 = 0;
      v28 = v5;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = [*v7 workflowUserDefaults];
        v12 = [v11 BOOLForKey:v8];

        if (v12)
        {
          v13 = getWFGeneralLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v40 = "[WFAppPickerParameter loadPossibleStatesForEnumeration:searchTerm:completionHandler:]_block_invoke";
            _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Showing internal apps in WFAppPickerParameter because the Show Internal Apps in Open App default is on", buf, 0xCu);
          }

          v14 = 2;
        }

        else
        {
          v14 = 0;
        }

        if ([v10 wf_isAvailableInContext:v14])
        {
          if ([*(a1 + 32) appSearchType] == 1)
          {
            v15 = v8;
            v16 = v7;
            v17 = v2;
            v18 = a1;
            v19 = [v10 claimRecords];
            v20 = [v19 allObjects];
            v21 = [v20 if_flatMap:&__block_literal_global_29943];

            if (![v21 count] || (objc_msgSend(v21, "isEqualToArray:", &unk_1F4A9B518) & 1) != 0)
            {

              a1 = v18;
              v2 = v17;
              v7 = v16;
              v8 = v15;
              v5 = v28;
              goto LABEL_18;
            }

            a1 = v18;
            v2 = v17;
            v7 = v16;
            v8 = v15;
            v5 = v28;
          }

          [v29 addObject:v10];
        }

LABEL_18:
        ++v9;
      }

      while (v5 != v9);
      v5 = [v2 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v5);
  }

  v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localizedName" ascending:1 selector:sel_localizedStandardCompare_];
  v38 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  [v29 sortUsingDescriptors:v23];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __86__WFAppPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2;
  v33[3] = &unk_1E83781B0;
  v33[4] = *(a1 + 32);
  v24 = [v29 if_map:v33];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WFAppPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3;
  block[3] = &unk_1E837E1F8;
  v31 = v24;
  v32 = *(a1 + 40);
  v25 = v24;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v26 = *MEMORY[0x1E69E9840];
}

void __86__WFAppPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

- (id)appEnumerator
{
  appListProvider = [(WFAppPickerParameter *)self appListProvider];
  appEnumerator = [appListProvider appEnumerator];

  if (!appEnumerator)
  {
    appEnumerator = WFInstalledAppsEnumerator();
  }

  return appEnumerator;
}

- (WFAppPickerParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v15.receiver = self;
  v15.super_class = WFAppPickerParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v15 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AppSearchType"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_29964(v6, v7);

    if ([v8 isEqualToString:@"OpenApp"])
    {
      v9 = 0;
    }

    else
    {
      if (![v8 isEqualToString:@"OpenIn"])
      {
LABEL_7:
        v10 = [definitionCopy objectForKey:@"UseLegacyIdentifiers"];
        v11 = objc_opt_class();
        v12 = WFEnforceClass_29964(v10, v11);
        v5->_useLegacyIdentifiers = [v12 BOOLValue];

        [(WFDynamicEnumerationParameter *)v5 setDataSource:v5];
        v13 = v5;

        goto LABEL_8;
      }

      v9 = 1;
    }

    v5->_appSearchType = v9;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

@end