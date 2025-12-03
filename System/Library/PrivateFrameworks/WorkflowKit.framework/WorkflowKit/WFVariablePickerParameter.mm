@interface WFVariablePickerParameter
- (id)defaultSupportedVariableTypes;
- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFVariablePickerParameter

- (id)defaultSupportedVariableTypes
{
  allInsertableVariableTypes = [objc_opt_class() allInsertableVariableTypes];
  v3 = [allInsertableVariableTypes mutableCopy];

  [v3 removeObject:@"Ask"];

  return v3;
}

- (void)wf_loadStatesWithSearchTerm:(id)term completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x1E696E918]);
  v6 = [v5 initWithItems:MEMORY[0x1E695E0F0]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__WFVariablePickerParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v9[3] = &unk_1E837E1F8;
  v10 = v6;
  v11 = handlerCopy;
  v7 = v6;
  v8 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

@end