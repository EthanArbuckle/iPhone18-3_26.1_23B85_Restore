@interface WFControlFlowAction
- (BOOL)hasChildren;
- (BOOL)isCollapsed;
- (BOOL)isDeletable;
- (BOOL)snappingPassthrough;
- (WFControlFlowAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (WFControlFlowAttributionTracker)controlFlowTracker;
- (id)createAccompanyingActionWithMode:(int64_t)mode;
- (id)groupedCloseAction;
- (id)groupedIntermediaryActions;
- (id)groupedOpenAction;
- (id)iconName;
- (id)outputContentClasses;
- (id)serializedParameters;
- (void)generateGroupingIdentifierIfNecessary;
- (void)setCollapsed:(BOOL)collapsed;
@end

@implementation WFControlFlowAction

- (WFControlFlowAttributionTracker)controlFlowTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_controlFlowTracker);

  return WeakRetained;
}

- (id)groupedIntermediaryActions
{
  workflow = [(WFAction *)self workflow];
  v4 = [workflow actionsGroupedWithAction:self];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WFControlFlowAction_groupedIntermediaryActions__block_invoke;
  v7[3] = &unk_1E8377558;
  v7[4] = self;
  v5 = [v4 if_objectsPassingTest:v7];

  return v5;
}

BOOL __49__WFControlFlowAction_groupedIntermediaryActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  v6 = [v5 mode] == 1;
  return v6;
}

- (id)groupedCloseAction
{
  workflow = [(WFAction *)self workflow];
  v4 = [workflow actionsGroupedWithAction:self];
  v5 = [v4 if_firstObjectPassingTest:&__block_literal_global_25341];

  return v5;
}

BOOL __41__WFControlFlowAction_groupedCloseAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);

  v5 = [v4 mode] == 2;
  return v5;
}

- (id)groupedOpenAction
{
  workflow = [(WFAction *)self workflow];
  v4 = [workflow actionsGroupedWithAction:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__WFControlFlowAction_groupedOpenAction__block_invoke;
  v7[3] = &unk_1E8377558;
  v7[4] = self;
  v5 = [v4 if_firstObjectPassingTest:v7];

  return v5;
}

BOOL __40__WFControlFlowAction_groupedOpenAction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  v6 = [v5 mode] == 0;
  return v6;
}

- (id)outputContentClasses
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    v7[0] = objc_opt_class();
    outputContentClasses = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFControlFlowAction;
    outputContentClasses = [(WFAction *)&v6 outputContentClasses];
  }

  v4 = *MEMORY[0x1E69E9840];

  return outputContentClasses;
}

- (BOOL)hasChildren
{
  if (![(WFControlFlowAction *)self mode])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = WFControlFlowAction;
  return [(WFAction *)&v4 hasChildren];
}

- (BOOL)isDeletable
{
  if ([(WFControlFlowAction *)self mode])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = WFControlFlowAction;
  return [(WFAction *)&v4 isDeletable];
}

- (BOOL)snappingPassthrough
{
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = WFControlFlowAction;
  return [(WFAction *)&v4 snappingPassthrough];
}

- (id)iconName
{
  if ([(WFControlFlowAction *)self mode])
  {
    iconName = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFControlFlowAction;
    iconName = [(WFAction *)&v5 iconName];
  }

  return iconName;
}

- (id)createAccompanyingActionWithMode:(int64_t)mode
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(WFControlFlowAction *)self generateGroupingIdentifierIfNecessary];
  v12 = @"WFControlFlowMode";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = WFControlFlowAction;
  v7 = [(WFAction *)&v11 copyWithSerializedParameters:v6];

  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  [v7 setGroupingIdentifier:groupingIdentifier];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)serializedParameters
{
  [(WFControlFlowAction *)self generateGroupingIdentifierIfNecessary];
  v7.receiver = self;
  v7.super_class = WFControlFlowAction;
  serializedParameters = [(WFAction *)&v7 serializedParameters];
  v4 = [serializedParameters mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFControlFlowAction mode](self, "mode")}];
  [v4 setObject:v5 forKey:@"WFControlFlowMode"];

  return v4;
}

- (void)generateGroupingIdentifierIfNecessary
{
  groupingIdentifier = [(WFAction *)self groupingIdentifier];

  if (!groupingIdentifier)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(WFAction *)self setGroupingIdentifier:uUIDString];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  if ([(WFControlFlowAction *)self mode]!= 2)
  {
    workflow = [(WFAction *)self workflow];
    workflowID = [workflow workflowID];

    if ([workflowID length])
    {
      v6 = [(WFAction *)self generateUUIDIfNecessaryWithUUIDProvider:0];
      uUID = [(WFAction *)self UUID];
      systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WFCollapsedActions-%@", workflowID];
      v10 = [systemShortcutsUserDefaults stringArrayForKey:v9];
      v11 = v10;
      v12 = MEMORY[0x1E695E0F0];
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      if (collapsedCopy)
      {
        [v13 arrayByAddingObject:uUID];
      }

      else
      {
        [v13 if_arrayByRemovingObject:uUID];
      }
      v14 = ;

      if ([v14 count])
      {
        [systemShortcutsUserDefaults setObject:v14 forKey:v9];
      }

      else
      {
        [systemShortcutsUserDefaults removeObjectForKey:v9];
      }
    }
  }
}

- (BOOL)isCollapsed
{
  if ([(WFControlFlowAction *)self mode]== 2)
  {
    return 0;
  }

  workflow = [(WFAction *)self workflow];
  workflowID = [workflow workflowID];

  uUID = [(WFAction *)self UUID];
  if ([workflowID length] && objc_msgSend(uUID, "length"))
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WFCollapsedActions-%@", workflowID];
    v9 = [systemShortcutsUserDefaults stringArrayForKey:v8];

    v3 = [v9 containsObject:uUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFControlFlowAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  definitionCopy = definition;
  v10 = [parameters mutableCopy];
  v11 = [v10 wf_popObjectForKey:@"WFControlFlowMode"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);
  integerValue = [v13 integerValue];

  if (integerValue)
  {
    v15 = [definitionCopy definitionByRemovingKey:@"Parameters"];

    definitionCopy = [v15 definitionByRemovingKey:@"RequiredResources"];
  }

  v20.receiver = self;
  v20.super_class = WFControlFlowAction;
  v16 = [(WFAction *)&v20 initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:v10];
  v17 = v16;
  if (v16)
  {
    v16->_mode = integerValue;
    v18 = v16;
  }

  return v17;
}

@end