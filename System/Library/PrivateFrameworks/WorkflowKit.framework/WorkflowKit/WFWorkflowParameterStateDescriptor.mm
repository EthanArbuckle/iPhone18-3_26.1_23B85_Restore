@interface WFWorkflowParameterStateDescriptor
+ (unint64_t)storageBehaviorForPropertyWithKey:(id)a3;
- (WFWorkflowParameterStateDescriptor)initWithWorkflowName:(id)a3 workflowIdentifier:(id)a4 isSelf:(BOOL)a5;
- (id)displayNameWithDatabase:(id)a3 containingWorkflow:(id)a4;
- (id)matchingWorkflowInDatabase:(id)a3 containingWorkflow:(id)a4;
@end

@implementation WFWorkflowParameterStateDescriptor

+ (unint64_t)storageBehaviorForPropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"cachedDisplayName"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFWorkflowParameterStateDescriptor;
    v5 = objc_msgSendSuper2(&v7, sel_storageBehaviorForPropertyWithKey_, v4);
  }

  return v5;
}

- (id)matchingWorkflowInDatabase:(id)a3 containingWorkflow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflowParameterStateDescriptor *)self isSelf];
  if (v7 && v8)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(WFWorkflowParameterStateDescriptor *)self workflowIdentifier];
    if (!v10 || ([v6 referenceForWorkflowID:v10], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(WFWorkflowParameterStateDescriptor *)self workflowName];
      v9 = [v6 uniqueVisibleReferenceForWorkflowName:v11];
    }
  }

  return v9;
}

- (id)displayNameWithDatabase:(id)a3 containingWorkflow:(id)a4
{
  cachedDisplayName = self->_cachedDisplayName;
  if (!cachedDisplayName)
  {
    v6 = [(WFWorkflowParameterStateDescriptor *)self matchingWorkflowInDatabase:a3 containingWorkflow:a4];
    v7 = v6;
    if (v6)
    {
      [v6 name];
    }

    else
    {
      [(WFWorkflowParameterStateDescriptor *)self workflowName];
    }
    v8 = ;
    v9 = [v8 copy];
    v10 = self->_cachedDisplayName;
    self->_cachedDisplayName = v9;

    cachedDisplayName = self->_cachedDisplayName;
  }

  return cachedDisplayName;
}

- (WFWorkflowParameterStateDescriptor)initWithWorkflowName:(id)a3 workflowIdentifier:(id)a4 isSelf:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFWorkflowParameterState.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"workflowName"}];
  }

  v19.receiver = self;
  v19.super_class = WFWorkflowParameterStateDescriptor;
  v11 = [(MTLModel *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    workflowName = v11->_workflowName;
    v11->_workflowName = v12;

    v14 = [v10 copy];
    workflowIdentifier = v11->_workflowIdentifier;
    v11->_workflowIdentifier = v14;

    v11->_isSelf = a5;
    v16 = v11;
  }

  return v11;
}

@end