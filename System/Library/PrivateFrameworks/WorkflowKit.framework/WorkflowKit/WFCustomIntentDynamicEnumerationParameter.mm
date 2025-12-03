@interface WFCustomIntentDynamicEnumerationParameter
- (BOOL)displaysMultipleValueEditor;
- (BOOL)parameterStateIsValid:(id)valid;
- (BOOL)wf_allowsMultipleSelection;
- (BOOL)wf_supportsSearch;
- (NSString)localizedConfigurationPromptDialog;
- (NSString)wf_displayLocalizedPrompt;
- (id)accessoryImageForPossibleState:(id)state;
- (id)localizedSubtitleLabelForPossibleState:(id)state;
- (id)wf_pickerLocalizedImageForState:(id)state;
- (void)getStatesWithSearchTerm:(id)term completionHandler:(id)handler;
- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFCustomIntentDynamicEnumerationParameter

- (void)getStatesWithSearchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  termCopy = term;
  dataSource = [(WFDynamicEnumerationParameter *)self dataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__WFCustomIntentDynamicEnumerationParameter_getStatesWithSearchTerm_completionHandler___block_invoke;
  v10[3] = &unk_1E837E298;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [dataSource loadPossibleStatesForEnumeration:self searchTerm:termCopy completionHandler:v10];
}

void __87__WFCustomIntentDynamicEnumerationParameter_getStatesWithSearchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WFCustomIntentDynamicEnumerationParameter_getStatesWithSearchTerm_completionHandler___block_invoke_2;
  block[3] = &unk_1E837ECE0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)displaysMultipleValueEditor
{
  codableAttribute = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  v4 = ([codableAttribute supportsSearch] & 1) != 0 || -[WFParameter isRangedSizeArray](self, "isRangedSizeArray");

  return v4;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  codableAttribute = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  supportsSearch = [codableAttribute supportsSearch];

  if (supportsSearch)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFCustomIntentDynamicEnumerationParameter;
    v7 = [(WFDynamicEnumerationParameter *)&v9 parameterStateIsValid:validCopy];
  }

  return v7;
}

- (id)localizedSubtitleLabelForPossibleState:(id)state
{
  value = [state value];
  stringLocalizer = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  v6 = stringLocalizer;
  if (!stringLocalizer)
  {
    v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  }

  codableAttribute = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  metadata = [codableAttribute metadata];
  v9 = [value _intents_readableSubtitleWithLocalizer:v6 metadata:metadata];

  if (!stringLocalizer)
  {
  }

  return v9;
}

- (id)accessoryImageForPossibleState:(id)state
{
  value = [state value];
  stringLocalizer = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  if (stringLocalizer)
  {
    v6 = [value _intents_displayImageWithLocalizer:stringLocalizer];
  }

  else
  {
    v7 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v6 = [value _intents_displayImageWithLocalizer:v7];
  }

  wf_image = [v6 wf_image];

  return wf_image;
}

- (NSString)localizedConfigurationPromptDialog
{
  dataSource = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(WFDynamicEnumerationParameter *)self dataSource];
    v6 = [dataSource2 localizedConfigurationPromptDialogForPamameter:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wf_pickerLocalizedImageForState:(id)state
{
  value = [state value];
  stringLocalizer = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  v6 = stringLocalizer;
  if (!stringLocalizer)
  {
    v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  }

  v7 = [value _intents_displayImageWithLocalizer:v6];
  wf_image = [v7 wf_image];

  if (!stringLocalizer)
  {
  }

  return wf_image;
}

- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  termCopy = term;
  dataSource = [(WFDynamicEnumerationParameter *)self dataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__WFCustomIntentDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v10[3] = &unk_1E837E298;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [dataSource loadPossibleStatesForEnumeration:self searchTerm:termCopy completionHandler:v10];
}

void __110__WFCustomIntentDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__WFCustomIntentDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2;
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
  allowsMultipleValues = [(WFDynamicEnumerationParameter *)self allowsMultipleValues];
  if (allowsMultipleValues)
  {
    if ([(WFCustomIntentDynamicEnumerationParameter *)self wf_supportsSearch])
    {
      LOBYTE(allowsMultipleValues) = 0;
    }

    else
    {
      LOBYTE(allowsMultipleValues) = ![(WFParameter *)self isRangedSizeArray];
    }
  }

  return allowsMultipleValues;
}

- (NSString)wf_displayLocalizedPrompt
{
  localizedConfigurationPromptDialog = [(WFCustomIntentDynamicEnumerationParameter *)self localizedConfigurationPromptDialog];
  v4 = localizedConfigurationPromptDialog;
  if (localizedConfigurationPromptDialog)
  {
    localizedLabel = localizedConfigurationPromptDialog;
  }

  else
  {
    localizedLabel = [(WFParameter *)self localizedLabel];
  }

  v6 = localizedLabel;

  return v6;
}

- (BOOL)wf_supportsSearch
{
  codableAttribute = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  supportsSearch = [codableAttribute supportsSearch];

  return supportsSearch;
}

@end