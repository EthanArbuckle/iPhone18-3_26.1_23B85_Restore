@interface WFLinkStartWorkoutPickerParameter
- (WFLinkAction)action;
- (WFLinkStartWorkoutPickerParameter)initWithDefinition:(id)definition;
- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler;
@end

@implementation WFLinkStartWorkoutPickerParameter

- (WFLinkAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)loadPossibleStatesForEnumeration:(id)enumeration searchTerm:(id)term completionHandler:(id)handler
{
  enumerationCopy = enumeration;
  termCopy = term;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  action = [(WFLinkStartWorkoutPickerParameter *)self action];
  action2 = [(WFLinkStartWorkoutPickerParameter *)self action];
  processedParameters = [action2 processedParameters];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__WFLinkStartWorkoutPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke;
  v15[3] = &unk_1E8376AD8;
  v14 = handlerCopy;
  v16 = v14;
  objc_copyWeak(&v17, &location);
  [action getLinkActionWithProcessedParameters:processedParameters completionHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __99__WFLinkStartWorkoutPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained action];
    v6 = [v5 connection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __99__WFLinkStartWorkoutPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2;
    v7[3] = &unk_1E837F588;
    v8 = *(a1 + 32);
    [v6 fetchSuggestedActionsForStartWorkoutAction:v3 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __99__WFLinkStartWorkoutPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 if_map:&__block_literal_global_22158];
  v3 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v4];
  (*(*(a1 + 32) + 16))();
}

WFLinkStartWorkoutParameterState *__99__WFLinkStartWorkoutPickerParameter_loadPossibleStatesForEnumeration_searchTerm_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFLinkStartWorkoutParameterState alloc] initWithLinkAction:v2];

  return v3;
}

- (WFLinkStartWorkoutPickerParameter)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFLinkStartWorkoutPickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end