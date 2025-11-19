@interface WFChooseFromMenuAction
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4;
- (WFChooseFromMenuAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (id)createAccompanyingActions;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)newIntermediaryActionWithMenuItemTitle:(id)a3;
- (id)serializedParameters;
- (void)arrayParameter:(id)a3 confirmDeletionOfItemAtIndex:(unint64_t)a4 withHandler:(id)a5;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)setItemTitle:(id)a3;
- (void)showAlertWithInput:(id)a3;
@end

@implementation WFChooseFromMenuAction

- (void)arrayParameter:(id)a3 confirmDeletionOfItemAtIndex:(unint64_t)a4 withHandler:(id)a5
{
  v12 = a5;
  v7 = [(WFControlFlowAction *)self groupedIntermediaryActions];
  if ([v7 count] <= a4)
  {
    v12[2](v12, 0);
  }

  else
  {
    v8 = [(WFAction *)self workflow];
    v9 = [v8 editingDelegate];
    v10 = [(WFAction *)self workflow];
    v11 = [v7 objectAtIndexedSubscript:a4];
    [v9 workflow:v10 askToRemoveNestedActionsWithinAction:v11 completionHandler:v12];
  }
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFControlFlowAction *)self mode])
  {
    v8 = v6 == 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFChooseFromMenuAction;
    v8 = [(WFAction *)&v10 legacyBehaviorIgnoresOutputFromAction:v6 inWorkflow:v7];
  }

  return v8;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Menu Result", @"Menu Result");
  v5 = [v3 localize:v4];

  return v5;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  if ([(WFControlFlowAction *)self mode])
  {
    self->_latestMenuChoice = -1;
    [(WFAction *)self finishRunningWithError:0];
  }

  else
  {
    [(WFChooseFromMenuAction *)self showAlertWithInput:v4];
  }
}

- (void)showAlertWithInput:(id)a3
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
      v7 = [(WFAction *)self localizedDefaultDisambiguationPrompt];
      [v5 setTitle:v7];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke;
    v14[3] = &unk_1E837DFA8;
    v14[4] = self;
    v8 = v5;
    v15 = v8;
    [v4 enumerateObjectsUsingBlock:v14];
    v9 = [(WFAction *)self userInterface];
    v10 = [v9 isRunningWithSiriUI];

    if ((v10 & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__WFChooseFromMenuAction_showAlertWithInput___block_invoke_3;
      v13[3] = &unk_1E837FA70;
      v13[4] = self;
      v11 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:v13];
      [v8 addButton:v11];
    }

    v12 = [(WFAction *)self userInterface];
    [v12 presentAlert:v8];
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

- (id)newIntermediaryActionWithMenuItemTitle:(id)a3
{
  v4 = a3;
  v5 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:1];
  [v5 setItemTitle:v4];

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
    v5 = [v4 values];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = WFTitleForParameterValue(*(*(&v15 + 1) + 8 * i));
          v11 = [(WFChooseFromMenuAction *)self newIntermediaryActionWithMenuItemTitle:v10];
          [v3 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [(WFControlFlowAction *)self createAccompanyingActionWithMode:2];
    [v3 addObject:v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFControlFlowAction *)self mode];
  if (v5 == 2)
  {
    v6 = WFLocalizedStringResourceWithKey(@"Choose From Menu - End Menu", @"End Menu");
    v7 = [v4 localize:v6];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [(WFChooseFromMenuAction *)self itemTitle];
    v7 = [v6 stringByReplacingVariablesWithNames];
LABEL_5:
    v8 = v7;

    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = WFChooseFromMenuAction;
  v8 = [(WFAction *)&v10 localizedNameWithContext:v4];
LABEL_7:

  return v8;
}

- (void)setItemTitle:(id)a3
{
  v11 = a3;
  v4 = [(WFControlFlowAction *)self mode];
  itemTitle = self->_itemTitle;
  if (v4 == 1)
  {
    v6 = [(WFVariableString *)itemTitle isEqual:v11];
    [(WFVariableString *)self->_itemTitle removeVariableDelegate:self];
    v7 = [v11 copy];
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
    v9 = [v11 copy];
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
  v4 = [(WFControlFlowAction *)&v14 serializedParameters];
  v5 = [v3 initWithDictionary:v4];

  v6 = [(WFChooseFromMenuAction *)self itemTitle];
  v7 = [v6 stringByReplacingVariablesWithNames];
  [v5 setValue:v7 forKey:@"WFMenuItemTitle"];

  v8 = [(WFChooseFromMenuAction *)self itemTitle];
  v9 = [v8 variables];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(WFChooseFromMenuAction *)self itemTitle];
    v12 = [v11 serializedRepresentation];
    [v5 setValue:v12 forKey:@"WFMenuItemAttributedTitle"];
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

- (WFChooseFromMenuAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 mutableCopy];
  v11 = [v10 wf_popObjectForKey:@"WFMenuItemTitle"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  v14 = [v10 wf_popObjectForKey:@"WFMenuItemAttributedTitle"];
  v15 = objc_opt_class();
  v16 = WFEnforceClass_1501(v14, v15);

  v22.receiver = self;
  v22.super_class = WFChooseFromMenuAction;
  v17 = [(WFControlFlowAction *)&v22 initWithIdentifier:v9 definition:v8 serializedParameters:v10];

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