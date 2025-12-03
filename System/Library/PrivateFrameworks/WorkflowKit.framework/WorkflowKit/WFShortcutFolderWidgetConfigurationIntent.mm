@interface WFShortcutFolderWidgetConfigurationIntent
- (id)parameterOverrides;
- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values;
@end

@implementation WFShortcutFolderWidgetConfigurationIntent

- (id)serializedParametersForDonatedIntent:(id)intent allowDroppingUnconfigurableValues:(BOOL)values
{
  v56 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  customIntentClassName = [metadata customIntentClassName];
  _className = [intentCopy _className];
  v9 = [customIntentClassName isEqualToString:_className];

  if (!v9)
  {
    v10 = getWFWidgetLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _className2 = [intentCopy _className];
      *buf = 136315394;
      v53 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v54 = 2114;
      v55 = _className2;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Attempted to migrate WFShortcutFolderWidgetConfigurationIntent to App Intent but the intent was of the wrong class type: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v10 = [intentCopy valueForKey:@"folder"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = getWFWidgetLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v54 = 2112;
      v55 = intentCopy;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Did not find folder object on WFShortcutFolderWidgetConfigurationIntent: %@", buf, 0x16u);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  identifier = [v10 identifier];

  if (identifier)
  {
    v12 = MEMORY[0x1E696AEC0];
    identifier2 = [v10 identifier];
    v14 = [v12 stringWithFormat:@"shortcuts://widget/folder/%@", identifier2];
  }

  else
  {
    v14 = @"shortcuts://widget/folder/all-shortcuts";
  }

  displayString = [v10 displayString];
  v20 = displayString;
  if (displayString)
  {
    v21 = displayString;
  }

  else
  {
    v21 = WFLocalizedAllShortcutsString();
  }

  v48 = v21;

  v46 = objc_alloc(MEMORY[0x1E69AC7D0]);
  v22 = [objc_alloc(MEMORY[0x1E69AC7D8]) initWithTypeIdentifier:@"ConfiguredCollection" instanceIdentifier:v14];
  v23 = objc_alloc(MEMORY[0x1E69AC950]);
  v24 = objc_alloc(MEMORY[0x1E69ACA90]);
  v47 = v14;
  v45 = [MEMORY[0x1E695DFF8] URLWithString:v14];
  uRLValueType = [MEMORY[0x1E69AC938] URLValueType];
  v25 = [v24 initWithValue:v45 valueType:uRLValueType];
  v26 = [v23 initWithIdentifier:@"identifierURL" value:v25];
  v51[0] = v26;
  v27 = objc_alloc(MEMORY[0x1E69AC950]);
  v28 = objc_alloc(MEMORY[0x1E69ACA90]);
  stringValueType = [MEMORY[0x1E69AC938] stringValueType];
  v30 = [v28 initWithValue:v48 valueType:stringValueType];
  v31 = [v27 initWithIdentifier:@"name" value:v30];
  v51[1] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v33 = v22;
  v34 = [v46 initWithTransient:1 identifier:v22 properties:v32 managedAccountIdentifier:0];

  v35 = objc_alloc(MEMORY[0x1E69ACA90]);
  v36 = [objc_alloc(MEMORY[0x1E69AC818]) initWithIdentifier:@"ConfiguredCollection"];
  v37 = objc_alloc(MEMORY[0x1E69AC7A0]);
  v38 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:v48 table:0 bundleURL:0];
  v39 = [v37 initWithTitle:v38 subtitle:0 image:0];
  v40 = [v35 initWithValue:v34 valueType:v36 displayRepresentation:v39];

  wfSerializedRepresentation = [v40 wfSerializedRepresentation];
  v42 = wfSerializedRepresentation;
  if (wfSerializedRepresentation)
  {
    v49 = @"folder";
    v50 = wfSerializedRepresentation;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  }

  else
  {
    v43 = getWFWidgetLogObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[WFShortcutFolderWidgetConfigurationIntent serializedParametersForDonatedIntent:allowDroppingUnconfigurableValues:]";
      v54 = 2112;
      v55 = v40;
      _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_ERROR, "%s Failed to create serialized representation from entity value: %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)parameterOverrides
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = *MEMORY[0x1E69AC188];
  v3 = [MEMORY[0x1E696B098] valueWithRange:{1, 16}];
  v20[0] = v3;
  v19[1] = *MEMORY[0x1E69AC190];
  v4 = [MEMORY[0x1E696B098] valueWithRange:{1, 8}];
  v20[1] = v4;
  v19[2] = *MEMORY[0x1E69AC198];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{1, 4}];
  v20[2] = v5;
  v19[3] = *MEMORY[0x1E69AC1A0];
  v6 = [MEMORY[0x1E696B098] valueWithRange:{1, 2}];
  v20[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16.receiver = self;
  v16.super_class = WFShortcutFolderWidgetConfigurationIntent;
  parameterOverrides = [(WFOverridableLinkAction *)&v16 parameterOverrides];
  v9 = [parameterOverrides mutableCopy];

  v17[0] = @"Class";
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v18[0] = v11;
  v18[1] = &stru_1F4A1C408;
  v17[1] = @"Label";
  v17[2] = @"AllowsMultipleValues";
  v18[2] = MEMORY[0x1E695E118];
  v18[3] = MEMORY[0x1E695E118];
  v17[3] = @"RangedSizeArray";
  v17[4] = @"DefaultValue";
  v18[4] = MEMORY[0x1E695E0F0];
  v17[5] = @"Placeholder";
  v12 = WFLocalizedString(@"Shortcut");
  v17[6] = @"ArraySizeRangesForWidgetFamily";
  v18[5] = v12;
  v18[6] = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  WFAddEntriesToDictionary(v9, @"shortcut", v13);

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

@end