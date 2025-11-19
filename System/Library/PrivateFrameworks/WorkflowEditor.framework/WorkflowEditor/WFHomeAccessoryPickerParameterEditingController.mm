@interface WFHomeAccessoryPickerParameterEditingController
- (void)actionBuilderEditor:(id)a3 didFinishWithTriggerActionSetBuilder:(id)a4;
- (void)createViewControllerWithInitialState:(id)a3 completionHandler:(id)a4;
- (void)finishWithActionSets:(id)a3 home:(id)a4;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
@end

@implementation WFHomeAccessoryPickerParameterEditingController

- (void)finishWithActionSets:(id)a3 home:(id)a4
{
  v6 = MEMORY[0x277D7C4A8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = WFSerializableHomeIdentifier();

  v12 = [v9 initWithActionSets:v8 homeIdentifier:v10];
  v11 = [(WFUIKitParameterEditingController *)self delegate];
  [v11 finishEditingWithParameterState:v12];
}

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v5 = a4;
  v9 = v5;
  if (v5)
  {
    v6 = [v5 triggerActionSets];
    v7 = [v6 allActionSets];
    v8 = [v9 home];
    [(WFHomeAccessoryPickerParameterEditingController *)self finishWithActionSets:v7 home:v8];
  }

  else
  {
    v6 = [(WFUIKitParameterEditingController *)self delegate];
    [v6 cancelEditing];
  }
}

- (void)actionBuilderEditor:(id)a3 didFinishWithTriggerActionSetBuilder:(id)a4
{
  v5 = a4;
  v8 = v5;
  if (v5)
  {
    v6 = [v5 allActionSets];
    v7 = [v8 home];
    [(WFHomeAccessoryPickerParameterEditingController *)self finishWithActionSets:v6 home:v7];
  }

  else
  {
    v6 = [(WFUIKitParameterEditingController *)self delegate];
    [v6 cancelEditing];
  }
}

- (void)createViewControllerWithInitialState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D7C4F0] sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__WFHomeAccessoryPickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke;
  v11[3] = &unk_279EDBFF0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 ensureHomesAreLoadedWithCompletionHandler:v11];
}

void __106__WFHomeAccessoryPickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) triggerActionSetsBuilder];
  v3 = v2;
  if (v2)
  {
    if ([v2 hasActions])
    {
      HUTriggerSummaryViewControllerClass = getHUTriggerSummaryViewControllerClass();
      v5 = [v3 home];
      v6 = [(objc_class *)HUTriggerSummaryViewControllerClass createTriggerSummaryViewControllerForHome:v5 withTriggerActionSetBuilder:v3 andTriggerActionBuilderEditorDelegate:*(a1 + 40)];
    }

    else
    {
      HFPlaceholderTriggerBuilderClass = getHFPlaceholderTriggerBuilderClass();
      v9 = [v3 home];
      getHUTriggerBuilderContextClass();
      v10 = objc_opt_new();
      v5 = [(objc_class *)HFPlaceholderTriggerBuilderClass createPlaceholderTriggerForHome:v9 withTriggerActionSetBuilder:v3 context:v10];

      v11 = [objc_alloc(getHUTriggerActionFlowClass()) initWithFlowState:4];
      v6 = [(objc_class *)getHUShortcutsTriggerViewUtilitiesClass() triggerActionPickerViewControllerWithTriggerBuilder:v5 flow:v11 delegate:*(a1 + 40)];
      v12 = [v6 hu_preloadContent];
    }

    v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[WFHomeAccessoryPickerParameterEditingController createViewControllerWithInitialState:completionHandler:]_block_invoke";
      _os_log_impl(&dword_2743F0000, v7, OS_LOG_TYPE_FAULT, "%s Missing trigger action sets builder.", &v14, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

@end