@interface WFHomeAccessoryPickerParameterEditingController
- (void)actionBuilderEditor:(id)editor didFinishWithTriggerActionSetBuilder:(id)builder;
- (void)createViewControllerWithInitialState:(id)state completionHandler:(id)handler;
- (void)finishWithActionSets:(id)sets home:(id)home;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
@end

@implementation WFHomeAccessoryPickerParameterEditingController

- (void)finishWithActionSets:(id)sets home:(id)home
{
  v6 = MEMORY[0x277D7C4A8];
  homeCopy = home;
  setsCopy = sets;
  v9 = [v6 alloc];
  v10 = WFSerializableHomeIdentifier();

  v12 = [v9 initWithActionSets:setsCopy homeIdentifier:v10];
  delegate = [(WFUIKitParameterEditingController *)self delegate];
  [delegate finishEditingWithParameterState:v12];
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v9 = builderCopy;
  if (builderCopy)
  {
    triggerActionSets = [builderCopy triggerActionSets];
    allActionSets = [triggerActionSets allActionSets];
    home = [v9 home];
    [(WFHomeAccessoryPickerParameterEditingController *)self finishWithActionSets:allActionSets home:home];
  }

  else
  {
    triggerActionSets = [(WFUIKitParameterEditingController *)self delegate];
    [triggerActionSets cancelEditing];
  }
}

- (void)actionBuilderEditor:(id)editor didFinishWithTriggerActionSetBuilder:(id)builder
{
  builderCopy = builder;
  v8 = builderCopy;
  if (builderCopy)
  {
    allActionSets = [builderCopy allActionSets];
    home = [v8 home];
    [(WFHomeAccessoryPickerParameterEditingController *)self finishWithActionSets:allActionSets home:home];
  }

  else
  {
    allActionSets = [(WFUIKitParameterEditingController *)self delegate];
    [allActionSets cancelEditing];
  }
}

- (void)createViewControllerWithInitialState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  mEMORY[0x277D7C4F0] = [MEMORY[0x277D7C4F0] sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__WFHomeAccessoryPickerParameterEditingController_createViewControllerWithInitialState_completionHandler___block_invoke;
  v11[3] = &unk_279EDBFF0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = stateCopy;
  v9 = handlerCopy;
  v10 = stateCopy;
  [mEMORY[0x277D7C4F0] ensureHomesAreLoadedWithCompletionHandler:v11];
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