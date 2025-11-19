@interface WFWorkflowPickerParameter
- (WFWorkflow)workflow;
- (WFWorkflowPickerParameter)initWithDefinition:(id)a3;
- (id)accessoryIconForPossibleState:(id)a3;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)workflowForState:(id)a3;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
@end

@implementation WFWorkflowPickerParameter

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v5 = [a4 value];
  v6 = +[WFDatabaseProxy defaultDatabase];
  v7 = [(WFWorkflowPickerParameter *)self workflow];
  v8 = [v7 reference];
  v9 = [v5 displayNameWithDatabase:v6 containingWorkflow:v8];

  return v9;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = +[WFDatabaseProxy defaultDatabase];
  v15 = 0;
  v8 = [v7 sortedVisibleWorkflowsByNameWithError:&v15];
  v9 = v15;

  if (!v8)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[WFWorkflowPickerParameter loadPossibleStatesForEnumeration:searchTerm:completionHandler:]";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to load workflows in WFWorkflowPickerParameter: %@", buf, 0x16u);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__WFWorkflowPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v14[3] = &unk_1E8375AB0;
  v14[4] = self;
  v11 = [v8 if_map:v14];
  v12 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v11];
  v6[2](v6, v12, 0);

  v13 = *MEMORY[0x1E69E9840];
}

WFWorkflowParameterState *__91__WFWorkflowPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) workflow];
  v6 = [v5 workflowID];
  v7 = [v4 isEqualToString:v6];

  v8 = [[WFWorkflowParameterStateDescriptor alloc] initWithWorkflowReference:v3 isSelf:v7];
  v9 = [(WFVariableSubstitutableParameterState *)[WFWorkflowParameterState alloc] initWithValue:v8];

  return v9;
}

- (id)accessoryIconForPossibleState:(id)a3
{
  v3 = [(WFWorkflowPickerParameter *)self workflowForState:a3];
  v4 = [v3 attributionIcon];

  return v4;
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v3 = [(WFWorkflowPickerParameter *)self workflowForState:a3];
  v4 = [MEMORY[0x1E69E0A90] currentDevice];
  [v4 screenScale];
  v6 = [v3 attributionIconWithSize:1 scale:38.0 rounded:{38.0, v5}];

  return v6;
}

- (id)workflowForState:(id)a3
{
  v4 = [a3 value];
  if (v4)
  {
    v5 = +[WFDatabaseProxy defaultDatabase];
    v6 = [(WFWorkflowPickerParameter *)self workflow];
    v7 = [v6 reference];
    v8 = [v4 matchingWorkflowInDatabase:v5 containingWorkflow:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFWorkflowPickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFWorkflowPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end