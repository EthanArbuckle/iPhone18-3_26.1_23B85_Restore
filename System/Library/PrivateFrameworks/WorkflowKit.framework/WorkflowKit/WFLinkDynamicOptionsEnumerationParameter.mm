@interface WFLinkDynamicOptionsEnumerationParameter
- (BOOL)allowsMultipleValues;
- (BOOL)displaysMultipleValueEditor;
- (BOOL)preferParameterValuePicker;
- (BOOL)shouldUseToolKitDialogs;
- (BOOL)wf_allowsMultipleSelection;
- (WFAppIntentExecutionAction)action;
- (WFLinkDynamicOptionsEnumerationParameter)initWithDefinition:(id)definition;
- (id)localizedTitleForButtonWithState:(id)state;
- (int64_t)searchType;
- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler;
- (void)createParameterStateFromDialogResponse:(id)response completionHandler:(id)handler;
- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFLinkDynamicOptionsEnumerationParameter

- (BOOL)allowsMultipleValues
{
  LOBYTE(v2) = self->_allowsMultipleValues;
  if (!v2)
  {
    parameterMetadata = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
    valueType = [parameterMetadata valueType];
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

- (void)createParameterStateFromDialogResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = responseCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    action = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
    variableSource = [action variableSource];

    if (variableSource)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = variableSource;
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
    queryResults = [v8 queryResults];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __101__WFLinkDynamicOptionsEnumerationParameter_createParameterStateFromDialogResponse_completionHandler___block_invoke;
    v16[3] = &unk_1E837F020;
    v16[4] = self;
    v17 = handlerCopy;
    [v14 produceValuesFromEncodedTypedValues:queryResults variableDataSource:v13 associatedParameter:self completionHandler:v16];

    v12 = v8;
  }

  else
  {

    v18.receiver = self;
    v18.super_class = WFLinkDynamicOptionsEnumerationParameter;
    v12 = [(WFEnumerationParameter *)&v18 parameterStateFromDialogResponse:v8];
    (*(handlerCopy + 2))(handlerCopy, v12);
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

- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler
{
  attributionCopy = attribution;
  stateCopy = state;
  promptCopy = prompt;
  handlerCopy = handler;
  parameterMetadata = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  valueType = [parameterMetadata valueType];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  shouldUseToolKitDialogs = [(WFLinkDynamicOptionsEnumerationParameter *)self shouldUseToolKitDialogs];

  if (!shouldUseToolKitDialogs)
  {
LABEL_5:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __117__WFLinkDynamicOptionsEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke;
    v21[3] = &unk_1E83739E0;
    v22 = handlerCopy;
    v20.receiver = self;
    v20.super_class = WFLinkDynamicOptionsEnumerationParameter;
    [(WFDynamicEnumerationParameter *)&v20 createDialogRequestWithAttribution:attributionCopy defaultState:stateCopy prompt:promptCopy completionHandler:v21];

    goto LABEL_6;
  }

  v17 = objc_alloc(MEMORY[0x1E69E0C30]);
  v18 = [(WFParameter *)self key];
  v19 = [v17 initWithParameterKey:v18 attribution:attributionCopy prompt:promptCopy];

  (*(handlerCopy + 2))(handlerCopy, v19);
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
  action = [(WFLinkDynamicOptionsEnumerationParameter *)self action];

  if (!action)
  {
    return 0;
  }

  action2 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
  runningInToolKit = [action2 runningInToolKit];

  if (!runningInToolKit)
  {
    return 0;
  }

  action3 = [(WFLinkDynamicOptionsEnumerationParameter *)self action];
  runningViaSpotlight = [action3 runningViaSpotlight];

  return runningViaSpotlight ^ 1;
}

- (id)localizedTitleForButtonWithState:(id)state
{
  stateCopy = state;
  v20.receiver = self;
  v20.super_class = WFLinkDynamicOptionsEnumerationParameter;
  v5 = [(WFEnumerationParameter *)&v20 localizedTitleForButtonWithState:stateCopy];
  if (v5)
  {
    goto LABEL_2;
  }

  parameterMetadata = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  valueType = [parameterMetadata valueType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = WFLocalizedString(@"Loading…");
    goto LABEL_3;
  }

  parameterMetadata2 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  valueType2 = [parameterMetadata2 valueType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memberValueType = [valueType2 memberValueType];

    valueType2 = memberValueType;
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

  v15 = stateCopy;
  parameterMetadata3 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  v17 = [valueType2 wf_parameterDefinitionWithParameterMetadata:parameterMetadata3];

  value = [v15 value];

  v18Value = [value value];
  v7 = [v17 localizedTitleForLinkValue:v18Value];

LABEL_4:

  return v7;
}

- (BOOL)preferParameterValuePicker
{
  definition = [(WFParameter *)self definition];
  v4 = [definition objectForKey:@"PreferParameterValuePicker"];

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

  bOOLValue = [v6 BOOLValue];
  return ([(WFLinkDynamicOptionsEnumerationParameter *)self dynamicOptionsSupportsSearch]| bOOLValue) & 1;
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
  parameterMetadata = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  dynamicOptionsSupport = [parameterMetadata dynamicOptionsSupport];

  if (dynamicOptionsSupport == 2)
  {
    return 1;
  }

  parameterMetadata2 = [(WFLinkDynamicOptionsEnumerationParameter *)self parameterMetadata];
  typeSpecificMetadata = [parameterMetadata2 typeSpecificMetadata];
  v8 = [typeSpecificMetadata objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

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

  systemProtocolMetadata = [v10 systemProtocolMetadata];
  v12 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC278]];

  properties = [v10 properties];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__WFLinkDynamicOptionsEnumerationParameter_searchType__block_invoke;
  v17[3] = &unk_1E837E080;
  v17[4] = self;
  v14 = [properties if_firstObjectPassingTest:v17];

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

- (WFLinkDynamicOptionsEnumerationParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v15.receiver = self;
  v15.super_class = WFLinkDynamicOptionsEnumerationParameter;
  v5 = [(WFDynamicEnumerationParameter *)&v15 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"AllowsMultipleValues"];
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

    bOOLValue = [v8 BOOLValue];
    v5->_allowsMultipleValues = bOOLValue;
    v10 = [definitionCopy objectForKey:@"DefaultValue"];
    serializedDefaultParameterOption = v5->_serializedDefaultParameterOption;
    v5->_serializedDefaultParameterOption = v10;

    v12 = [definitionCopy objectForKey:@"LinkUnionSubparameterMetadata"];
    if (v12)
    {
      objc_storeStrong(&v5->_parameterMetadata, v12);
    }

    v13 = v5;
  }

  return v5;
}

- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler
{
  termCopy = term;
  handlerCopy = handler;
  dataSource = [(WFDynamicEnumerationParameter *)self dataSource];

  if (dataSource)
  {
    dataSource2 = [(WFDynamicEnumerationParameter *)self dataSource];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __109__WFLinkDynamicOptionsEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
    v10[3] = &unk_1E837E298;
    v11 = handlerCopy;
    [dataSource2 loadPossibleStatesForEnumeration:self searchTerm:termCopy completionHandler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
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
  allowsMultipleValues = [(WFLinkDynamicOptionsEnumerationParameter *)self allowsMultipleValues];
  if (allowsMultipleValues)
  {
    LOBYTE(allowsMultipleValues) = ![(WFLinkDynamicOptionsEnumerationParameter *)self wf_supportsSearch];
  }

  return allowsMultipleValues;
}

@end