@interface WFWorkflowParameterStateDescriptor
+ (unint64_t)storageBehaviorForPropertyWithKey:(id)key;
- (WFWorkflowParameterStateDescriptor)initWithWorkflowName:(id)name workflowIdentifier:(id)identifier isSelf:(BOOL)self;
- (id)displayNameWithDatabase:(id)database containingWorkflow:(id)workflow;
- (id)matchingWorkflowInDatabase:(id)database containingWorkflow:(id)workflow;
@end

@implementation WFWorkflowParameterStateDescriptor

+ (unint64_t)storageBehaviorForPropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cachedDisplayName"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WFWorkflowParameterStateDescriptor;
    v5 = objc_msgSendSuper2(&v7, sel_storageBehaviorForPropertyWithKey_, keyCopy);
  }

  return v5;
}

- (id)matchingWorkflowInDatabase:(id)database containingWorkflow:(id)workflow
{
  databaseCopy = database;
  workflowCopy = workflow;
  isSelf = [(WFWorkflowParameterStateDescriptor *)self isSelf];
  if (workflowCopy && isSelf)
  {
    v9 = workflowCopy;
  }

  else
  {
    workflowIdentifier = [(WFWorkflowParameterStateDescriptor *)self workflowIdentifier];
    if (!workflowIdentifier || ([databaseCopy referenceForWorkflowID:workflowIdentifier], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      workflowName = [(WFWorkflowParameterStateDescriptor *)self workflowName];
      v9 = [databaseCopy uniqueVisibleReferenceForWorkflowName:workflowName];
    }
  }

  return v9;
}

- (id)displayNameWithDatabase:(id)database containingWorkflow:(id)workflow
{
  cachedDisplayName = self->_cachedDisplayName;
  if (!cachedDisplayName)
  {
    v6 = [(WFWorkflowParameterStateDescriptor *)self matchingWorkflowInDatabase:database containingWorkflow:workflow];
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

- (WFWorkflowParameterStateDescriptor)initWithWorkflowName:(id)name workflowIdentifier:(id)identifier isSelf:(BOOL)self
{
  nameCopy = name;
  identifierCopy = identifier;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowParameterState.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"workflowName"}];
  }

  v19.receiver = self;
  v19.super_class = WFWorkflowParameterStateDescriptor;
  v11 = [(MTLModel *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    workflowName = v11->_workflowName;
    v11->_workflowName = v12;

    v14 = [identifierCopy copy];
    workflowIdentifier = v11->_workflowIdentifier;
    v11->_workflowIdentifier = v14;

    v11->_isSelf = self;
    v16 = v11;
  }

  return v11;
}

@end