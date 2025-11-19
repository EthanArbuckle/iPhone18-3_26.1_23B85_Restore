@interface WFCustomIntentDynamicEnumerationParameter
- (BOOL)displaysMultipleValueEditor;
- (BOOL)parameterStateIsValid:(id)a3;
- (BOOL)wf_allowsMultipleSelection;
- (BOOL)wf_supportsSearch;
- (NSString)localizedConfigurationPromptDialog;
- (NSString)wf_displayLocalizedPrompt;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)localizedSubtitleLabelForPossibleState:(id)a3;
- (id)wf_pickerLocalizedImageForState:(id)a3;
- (void)getStatesWithSearchTerm:(id)a3 completionHandler:(id)a4;
- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4;
@end

@implementation WFCustomIntentDynamicEnumerationParameter

- (void)getStatesWithSearchTerm:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFDynamicEnumerationParameter *)self dataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__WFCustomIntentDynamicEnumerationParameter_getStatesWithSearchTerm_completionHandler___block_invoke;
  v10[3] = &unk_1E837E298;
  v11 = v6;
  v9 = v6;
  [v8 loadPossibleStatesForEnumeration:self searchTerm:v7 completionHandler:v10];
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
  v3 = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  v4 = ([v3 supportsSearch] & 1) != 0 || -[WFParameter isRangedSizeArray](self, "isRangedSizeArray");

  return v4;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v4 = a3;
  v5 = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  v6 = [v5 supportsSearch];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFCustomIntentDynamicEnumerationParameter;
    v7 = [(WFDynamicEnumerationParameter *)&v9 parameterStateIsValid:v4];
  }

  return v7;
}

- (id)localizedSubtitleLabelForPossibleState:(id)a3
{
  v4 = [a3 value];
  v5 = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  }

  v7 = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  v8 = [v7 metadata];
  v9 = [v4 _intents_readableSubtitleWithLocalizer:v6 metadata:v8];

  if (!v5)
  {
  }

  return v9;
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v4 = [a3 value];
  v5 = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  if (v5)
  {
    v6 = [v4 _intents_displayImageWithLocalizer:v5];
  }

  else
  {
    v7 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v6 = [v4 _intents_displayImageWithLocalizer:v7];
  }

  v8 = [v6 wf_image];

  return v8;
}

- (NSString)localizedConfigurationPromptDialog
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFDynamicEnumerationParameter *)self dataSource];
    v6 = [v5 localizedConfigurationPromptDialogForPamameter:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)wf_pickerLocalizedImageForState:(id)a3
{
  v4 = [a3 value];
  v5 = [(WFCustomIntentDynamicEnumerationParameter *)self stringLocalizer];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
  }

  v7 = [v4 _intents_displayImageWithLocalizer:v6];
  v8 = [v7 wf_image];

  if (!v5)
  {
  }

  return v8;
}

- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFDynamicEnumerationParameter *)self dataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__WFCustomIntentDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v10[3] = &unk_1E837E298;
  v11 = v6;
  v9 = v6;
  [v8 loadPossibleStatesForEnumeration:self searchTerm:v7 completionHandler:v10];
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
  v3 = [(WFDynamicEnumerationParameter *)self allowsMultipleValues];
  if (v3)
  {
    if ([(WFCustomIntentDynamicEnumerationParameter *)self wf_supportsSearch])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(WFParameter *)self isRangedSizeArray];
    }
  }

  return v3;
}

- (NSString)wf_displayLocalizedPrompt
{
  v3 = [(WFCustomIntentDynamicEnumerationParameter *)self localizedConfigurationPromptDialog];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFParameter *)self localizedLabel];
  }

  v6 = v5;

  return v6;
}

- (BOOL)wf_supportsSearch
{
  v2 = [(WFCustomIntentDynamicEnumerationParameter *)self codableAttribute];
  v3 = [v2 supportsSearch];

  return v3;
}

@end