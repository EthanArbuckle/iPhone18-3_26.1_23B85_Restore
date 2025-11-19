@interface WFControlFlowAction
- (BOOL)hasChildren;
- (BOOL)isCollapsed;
- (BOOL)isDeletable;
- (BOOL)snappingPassthrough;
- (WFControlFlowAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (WFControlFlowAttributionTracker)controlFlowTracker;
- (id)createAccompanyingActionWithMode:(int64_t)a3;
- (id)groupedCloseAction;
- (id)groupedIntermediaryActions;
- (id)groupedOpenAction;
- (id)iconName;
- (id)outputContentClasses;
- (id)serializedParameters;
- (void)generateGroupingIdentifierIfNecessary;
- (void)setCollapsed:(BOOL)a3;
@end

@implementation WFControlFlowAction

- (WFControlFlowAttributionTracker)controlFlowTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_controlFlowTracker);

  return WeakRetained;
}

- (id)groupedIntermediaryActions
{
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actionsGroupedWithAction:self];

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
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actionsGroupedWithAction:self];
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
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actionsGroupedWithAction:self];
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
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFControlFlowAction;
    v3 = [(WFAction *)&v6 outputContentClasses];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFControlFlowAction;
    v3 = [(WFAction *)&v5 iconName];
  }

  return v3;
}

- (id)createAccompanyingActionWithMode:(int64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  [(WFControlFlowAction *)self generateGroupingIdentifierIfNecessary];
  v12 = @"WFControlFlowMode";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = WFControlFlowAction;
  v7 = [(WFAction *)&v11 copyWithSerializedParameters:v6];

  v8 = [(WFAction *)self groupingIdentifier];
  [v7 setGroupingIdentifier:v8];

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)serializedParameters
{
  [(WFControlFlowAction *)self generateGroupingIdentifierIfNecessary];
  v7.receiver = self;
  v7.super_class = WFControlFlowAction;
  v3 = [(WFAction *)&v7 serializedParameters];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFControlFlowAction mode](self, "mode")}];
  [v4 setObject:v5 forKey:@"WFControlFlowMode"];

  return v4;
}

- (void)generateGroupingIdentifierIfNecessary
{
  v3 = [(WFAction *)self groupingIdentifier];

  if (!v3)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v5 UUIDString];
    [(WFAction *)self setGroupingIdentifier:v4];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  v3 = a3;
  if ([(WFControlFlowAction *)self mode]!= 2)
  {
    v5 = [(WFAction *)self workflow];
    v15 = [v5 workflowID];

    if ([v15 length])
    {
      v6 = [(WFAction *)self generateUUIDIfNecessaryWithUUIDProvider:0];
      v7 = [(WFAction *)self UUID];
      v8 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WFCollapsedActions-%@", v15];
      v10 = [v8 stringArrayForKey:v9];
      v11 = v10;
      v12 = MEMORY[0x1E695E0F0];
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      if (v3)
      {
        [v13 arrayByAddingObject:v7];
      }

      else
      {
        [v13 if_arrayByRemovingObject:v7];
      }
      v14 = ;

      if ([v14 count])
      {
        [v8 setObject:v14 forKey:v9];
      }

      else
      {
        [v8 removeObjectForKey:v9];
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

  v4 = [(WFAction *)self workflow];
  v5 = [v4 workflowID];

  v6 = [(WFAction *)self UUID];
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WFCollapsedActions-%@", v5];
    v9 = [v7 stringArrayForKey:v8];

    v3 = [v9 containsObject:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WFControlFlowAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 mutableCopy];
  v11 = [v10 wf_popObjectForKey:@"WFControlFlowMode"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);
  v14 = [v13 integerValue];

  if (v14)
  {
    v15 = [v9 definitionByRemovingKey:@"Parameters"];

    v9 = [v15 definitionByRemovingKey:@"RequiredResources"];
  }

  v20.receiver = self;
  v20.super_class = WFControlFlowAction;
  v16 = [(WFAction *)&v20 initWithIdentifier:v8 definition:v9 serializedParameters:v10];
  v17 = v16;
  if (v16)
  {
    v16->_mode = v14;
    v18 = v16;
  }

  return v17;
}

@end