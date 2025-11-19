@interface WFLinkDynamicOptionsEnumerationParameter
- (BOOL)allowsMultipleValues;
- (BOOL)displaysMultipleValueEditor;
- (BOOL)preferParameterValuePicker;
- (BOOL)shouldUseToolKitDialogs;
- (BOOL)wf_allowsMultipleSelection;
- (WFAppIntentExecutionAction)action;
- (WFLinkDynamicOptionsEnumerationParameter)initWithDefinition:(id)a3;
- (id)localizedTitleForButtonWithState:(id)a3;
- (int64_t)searchType;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)createParameterStateFromDialogResponse:(id)a3 completionHandler:(id)a4;
- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4;
@end

@implementation WFLinkDynamicOptionsEnumerationParameter

- (BOOL)allowsMultipleValues
{
  LOBYTE(v2) = self->_allowsMultipleValues;
  if (!v2)
  {
    v3 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
    v4 = [v3 valueType];
    objc_opt_class();
    v2 = objc_opt_isKindOfClass() & 1;
  }

  return v2;
}

- (WFAppIntentExecutionAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)createParameterStateFromDialogResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
    v10 = [v9 variableSource];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = MEMORY[0x1E69ACA90];
    v15 = [v8 queryResults];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__WFLinkDynamicOptionsEnumerationParameter_createParameterStateFromDialogResponse_completionHandler___block_invoke;
    v16[3] = &unk_1E837F020;
    v16[4] = self;
    v17 = v7;
    [v14 produceValuesFromEncodedTypedValues:v15 variableDataSource:v13 associatedParameter:self completionHandler:v16];

    v12 = v8;
  }

  else
  {

    v18.receiver = self;
    v18.super_class = WFLinkDynamicOptionsEnumerationParameter;
    v12 = [(WFEnumerationParameter *)&v18 parameterStateFromDialogResponse:v8];
    (*(v7 + 2))(v7, v12);
  }
}

void __101__WFLinkDynamicOptionsEnumerationParameter_createParameterStateFromDialogResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 if_map:&__block_literal_global_2842];
  if ([*(a1 + 32) allowsMultipleValues])
  {
    v3 = [WFMultipleValueParameterState alloc];
    v4 = [v8 if_map:&__block_literal_global_200];
    v5 = [(WFMultipleValueParameterState *)v3 initWithParameterStates:v4];
LABEL_5:
    v7 = v5;

    goto LABEL_6;
  }

  if ([v8 count])
  {
    v6 = [WFLinkDynamicOptionSubstitutableState alloc];
    v4 = [v8 firstObject];
    v5 = [(WFVariableSubstitutableParameterState *)v6 initWithValue:v4];
    goto LABEL_5;
  }

  (*(*(a1 + 40) + 16))();
  v7 = 0;
LABEL_6:
  (*(*(a1 + 40) + 16))();
}

WFLinkDynamicOptionSubstitutableState *__101__WFLinkDynamicOptionsEnumerationParameter_createParameterStateFromDialogResponse_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFLinkDynamicOptionSubstitutableState alloc] initWithValue:v2];

  return v3;
}

id __101__WFLinkDynamicOptionsEnumerationParameter_createParameterStateFromDialogResponse_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69ACEC8];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3 indentationLevel:0];

  return v4;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v15 = [v14 valueType];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v16 = [(WFLinkDynamicOptionsEnumerationParameter *)self shouldUseToolKitDialogs];

  if (!v16)
  {
LABEL_5:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __117__WFLinkDynamicOptionsEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke;
    v21[3] = &unk_1E83739E0;
    v22 = v13;
    v20.receiver = self;
    v20.super_class = WFLinkDynamicOptionsEnumerationParameter;
    [(WFDynamicEnumerationParameter *)&v20 createDialogRequestWithAttribution:v10 defaultState:v11 prompt:v12 completionHandler:v21];

    goto LABEL_6;
  }

  v17 = objc_alloc(MEMORY[0x1E69E0C30]);
  v18 = [(WFParameter *)self key];
  v19 = [v17 initWithParameterKey:v18 attribution:v10 prompt:v12];

  (*(v13 + 2))(v13, v19);
LABEL_6:
}

void __117__WFLinkDynamicOptionsEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = objc_alloc_init(MEMORY[0x1E69E0BD8]);
    [v3 setTitleLineLimit:&unk_1F4A9A138];
    [v4 setDisplayConfiguration:v3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {

    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)shouldUseToolKitDialogs
{
  v3 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
  v5 = [v4 runningInToolKit];

  if (!v5)
  {
    return 0;
  }

  v6 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
  v7 = [v6 runningViaSpotlight];

  return v7 ^ 1;
}

- (id)localizedTitleForButtonWithState:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WFLinkDynamicOptionsEnumerationParameter;
  v5 = [(WFEnumerationParameter *)&v20 localizedTitleForButtonWithState:v4];
  if (v5)
  {
    goto LABEL_2;
  }

  v9 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v10 = [v9 valueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = WFLocalizedString(@"Loading…");
    goto LABEL_3;
  }

  v12 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v13 = [v12 valueType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 memberValueType];

    v13 = v14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_2:
    v6 = v5;
LABEL_3:
    v7 = v6;
    goto LABEL_4;
  }

  v15 = v4;
  v16 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v17 = [v13 wf_parameterDefinitionWithParameterMetadata:v16];

  v18 = [v15 value];

  v19 = [v18 value];
  v7 = [v17 localizedTitleForLinkValue:v19];

LABEL_4:

  return v7;
}

- (BOOL)preferParameterValuePicker
{
  v3 = [(WFParameter *)self definition];
  v4 = [v3 objectForKey:@"PreferParameterValuePicker"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 BOOLValue];
  return ([(WFLinkDynamicOptionsEnumerationParameter *)self dynamicOptionsSupportsSearch]| v7) & 1;
}

- (BOOL)displaysMultipleValueEditor
{
  if ([(WFLinkDynamicOptionsEnumerationParameter *)self dynamicOptionsSupportsSearch])
  {
    return 1;
  }

  return [(WFParameter *)self isRangedSizeArray];
}

- (int64_t)searchType
{
  v3 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v4 = [v3 dynamicOptionsSupport];

  if (v4 == 2)
  {
    return 1;
  }

  v6 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v7 = [v6 typeSpecificMetadata];
  v8 = [v7 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 systemProtocolMetadata];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69AC278]];

  v13 = [v10 properties];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__WFLinkDynamicOptionsEnumerationParameter_searchType__block_invoke;
  v17[3] = &unk_1E837E080;
  v17[4] = self;
  v14 = [v13 if_firstObjectPassingTest:v17];

  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

BOOL __54__WFLinkDynamicOptionsEnumerationParameter_searchType__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFIndexingKeyForForcedLinkEntityFindAction();
  v5 = [*(a1 + 32) action];
  v6 = [v5 identifier];
  v7 = [v4 objectForKey:v6];
  v8 = [v3 identifier];
  v9 = [v7 objectForKey:v8];

  v10 = [v3 spotlightAttributeKey];
  if ([v10 length])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v3 spotlightCustomAttributeKey];
    v11 = ([v12 length] | v9) != 0;
  }

  return v11;
}

- (WFLinkDynamicOptionsEnumerationParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WFLinkDynamicOptionsEnumerationParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v15 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"AllowsMultipleValues"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 BOOLValue];
    v5->_allowsMultipleValues = v9;
    v10 = [v4 objectForKey:@"DefaultValue"];
    serializedDefaultParameterOption = v5->_serializedDefaultParameterOption;
    v5->_serializedDefaultParameterOption = v10;

    v12 = [v4 objectForKey:@"LinkUnionSubparameterMetadata"];
    if (v12)
    {
      objc_storeStrong(&v5->_parameterMetadata, v12);
    }

    v13 = v5;
  }

  return v5;
}

- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDynamicEnumerationParameter *)self dataSource];

  if (v8)
  {
    v9 = [(WFDynamicEnumerationParameter *)self dataSource];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __109__WFLinkDynamicOptionsEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
    v10[3] = &unk_1E837E298;
    v11 = v7;
    [v9 loadPossibleStatesForEnumeration:self searchTerm:v6 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0);
  }
}

void __109__WFLinkDynamicOptionsEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__WFLinkDynamicOptionsEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2;
  block[3] = &unk_1E837ECE0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)wf_allowsMultipleSelection
{
  v3 = [(WFLinkDynamicOptionsEnumerationParameter *)self allowsMultipleValues];
  if (v3)
  {
    LOBYTE(v3) = ![(WFLinkDynamicOptionsEnumerationParameter *)self wf_supportsSearch];
  }

  return v3;
}

@end