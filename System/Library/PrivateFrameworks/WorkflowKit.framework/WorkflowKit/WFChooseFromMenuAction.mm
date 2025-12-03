@interface WFChooseFromMenuAction
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow;
- (WFChooseFromMenuAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)newIntermediaryActionWithMenuItemTitle:(id)title;
- (id)serializedParameters;
- (void)arrayParameter:(id)parameter confirmDeletionOfItemAtIndex:(unint64_t)index withHandler:(id)handler;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setItemTitle:(id)title;
- (void)showAlertWithInput:(id)input;
@end

@implementation WFChooseFromMenuAction

- (void)arrayParameter:(id)parameter confirmDeletionOfItemAtIndex:(unint64_t)index withHandler:(id)handler
{
  handlerCopy = handler;
  groupedIntermediaryActions = [(WFControlFlowAction *)self groupedIntermediaryActions];
  if ([groupedIntermediaryActions count] <= index)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    workflow = [(WFAction *)self workflow];
    editingDelegate = [workflow editingDelegate];
    workflow2 = [(WFAction *)self workflow];
    v11 = [groupedIntermediaryActions objectAtIndexedSubscript:index];
    [editingDelegate workflow:workflow2 askToRemoveNestedActionsWithinAction:v11 completionHandler:handlerCopy];
  }
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow
{
  actionCopy = action;
  workflowCopy = workflow;
  if ([(WFControlFlowAction *)self mode])
  {
    v8 = actionCopy == 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFChooseFromMenuAction;
    v8 = [(WFAction *)&v10 legacyBehaviorIgnoresOutputFromAction:actionCopy inWorkflow:workflowCopy];
  }

  return v8;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Menu Result", @"Menu Result");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  if ([(WFControlFlowAction *)self mode])
  {
    self->_latestMenuChoice = -1;
    [(WFAction *)self finishRunningWithError:0];
  }

  else
  {
    [(WFChooseFromMenuAction *)self showAlertWithInput:inputCopy];
  }
}

- (void)showAlertWithInput:(id)input
{
  v4 = [(WFAction *)self parameterValueForKey:@"WFMenuItems" ofClass:objc_opt_class()];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:1];
    v6 = [(WFAction *)self parameterValueForKey:@"WFMenuPrompt" ofClass:objc_opt_class()];
    if ([v6 length])
    {
      [v5 setTitle:v6];
    }

    else
    {
      localizedDefaultDisambiguationPrompt = [(WFAction *)self localizedDefaultDisambiguationPrompt];
      [v5 setTitle:localizedDefaultDisambiguationPrompt];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke;
    v14[3] = &unk_1E837DFA8;
    v14[4] = self;
    v8 = v5;
    v15 = v8;
    [v4 enumerateObjectsUsingBlock:v14];
    userInterface = [(WFAction *)self userInterface];
    isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

    if ((isRunningWithSiriUI & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke_3;
      v13[3] = &unk_1E837FA70;
      v13[4] = self;
      v11 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:v13];
      [v8 addButton:v11];
    }

    userInterface2 = [(WFAction *)self userInterface];
    [userInterface2 presentAlert:v8];
  }

  else
  {
    self->_latestMenuChoice = -1;
    [(WFAction *)self finishRunningWithError:0];
  }
}

void __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 subtitle];
  if ([v6 length])
  {
    v7 = [v5 subtitle];
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E6996F48];
  v9 = [v5 string];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke_2;
  v12[3] = &unk_1E837DF80;
  v12[4] = *(a1 + 32);
  v12[5] = a3;
  v10 = [v8 buttonWithTitle:v9 subtitle:v7 selected:0 style:0 handler:v12];

  v11 = [v5 synonyms];
  [v10 setAlternativeSpeakableMatches:v11];

  [*(a1 + 40) addButton:v10];
}

void __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 360) = -1;
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v1 finishRunningWithError:v2];
}

- (id)newIntermediaryActionWithMenuItemTitle:(id)title
{
  titleCopy = title;
  v5 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:1];
  [v5 setItemTitle:titleCopy];

  return v5;
}

- (id)createAccompanyingActions
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(WFControlFlowAction *)self mode])
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    v4 = [(WFAction *)self parameterStateForKey:@"WFMenuItems"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    values = [v4 values];
    v6 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(values);
          }

          v10 = WFTitleForParameterValue(*(*(&v15 + 1) + 8 * i));
          v11 = [(WFChooseFromMenuAction *)self newIntermediaryActionWithMenuItemTitle:v10];
          [v3 addObject:v11];
        }

        v7 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:2];
    [v3 addObject:v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  mode = [(WFControlFlowAction *)self mode];
  if (mode == 2)
  {
    itemTitle = WFLocalizedStringResourceWithKey(@"Choose From Menu - End Menu", @"End Menu");
    stringByReplacingVariablesWithNames = [contextCopy localize:itemTitle];
    goto LABEL_5;
  }

  if (mode == 1)
  {
    itemTitle = [(WFChooseFromMenuAction *)self itemTitle];
    stringByReplacingVariablesWithNames = [itemTitle stringByReplacingVariablesWithNames];
LABEL_5:
    v8 = stringByReplacingVariablesWithNames;

    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = WFChooseFromMenuAction;
  v8 = [(WFAction *)&v10 localizedNameWithContext:contextCopy];
LABEL_7:

  return v8;
}

- (void)setItemTitle:(id)title
{
  titleCopy = title;
  mode = [(WFControlFlowAction *)self mode];
  itemTitle = self->_itemTitle;
  if (mode == 1)
  {
    v6 = [(WFVariableString *)itemTitle isEqual:titleCopy];
    [(WFVariableString *)self->_itemTitle removeVariableDelegate:self];
    v7 = [titleCopy copy];
    v8 = self->_itemTitle;
    self->_itemTitle = v7;

    [(WFVariableString *)self->_itemTitle addVariableDelegate:self];
    if (!v6)
    {
      [(WFAction *)self nameUpdated];
    }
  }

  else
  {
    [(WFVariableString *)itemTitle removeVariableDelegate:self];
    v9 = [titleCopy copy];
    v10 = self->_itemTitle;
    self->_itemTitle = v9;

    [(WFVariableString *)self->_itemTitle addVariableDelegate:self];
  }
}

- (id)serializedParameters
{
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v14.receiver = self;
  v14.super_class = WFChooseFromMenuAction;
  serializedParameters = [(WFControlFlowAction *)&v14 serializedParameters];
  v5 = [v3 initWithDictionary:serializedParameters];

  itemTitle = [(WFChooseFromMenuAction *)self itemTitle];
  stringByReplacingVariablesWithNames = [itemTitle stringByReplacingVariablesWithNames];
  [v5 setValue:stringByReplacingVariablesWithNames forKey:@"WFMenuItemTitle"];

  itemTitle2 = [(WFChooseFromMenuAction *)self itemTitle];
  variables = [itemTitle2 variables];
  v10 = [variables count];

  if (v10)
  {
    itemTitle3 = [(WFChooseFromMenuAction *)self itemTitle];
    serializedRepresentation = [itemTitle3 serializedRepresentation];
    [v5 setValue:serializedRepresentation forKey:@"WFMenuItemAttributedTitle"];
  }

  return v5;
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFChooseFromMenuAction;
  [(WFAction *)&v4 initializeParameters];
  v3 = [(WFAction *)self parameterForKey:@"WFMenuItems"];
  [v3 addEventObserver:self];
}

- (WFChooseFromMenuAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  definitionCopy = definition;
  identifierCopy = identifier;
  v10 = [parameters mutableCopy];
  v11 = [v10 wf_popObjectForKey:@"WFMenuItemTitle"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  v14 = [v10 wf_popObjectForKey:@"WFMenuItemAttributedTitle"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_1501(v14, v15);

  v22.receiver = self;
  v22.super_class = WFChooseFromMenuAction;
  v17 = [(WFControlFlowAction *)&v22 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:v10];

  if (v17)
  {
    if (v16)
    {
      v18 = [[WFVariableString alloc] initWithSerializedRepresentation:v16 variableProvider:v17 parameter:0];
    }

    else
    {
      if (!v13)
      {
        goto LABEL_7;
      }

      v18 = [[WFVariableString alloc] initWithString:v13];
    }

    itemTitle = v17->_itemTitle;
    v17->_itemTitle = v18;

LABEL_7:
    [(WFVariableString *)v17->_itemTitle addVariableDelegate:v17];
    v20 = v17;
  }

  return v17;
}

@end