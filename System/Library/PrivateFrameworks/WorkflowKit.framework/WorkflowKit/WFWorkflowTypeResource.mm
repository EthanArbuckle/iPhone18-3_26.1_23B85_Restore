@interface WFWorkflowTypeResource
- (BOOL)workflowTypesAreValid;
- (WFWorkflow)workflow;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)refreshAvailability;
- (void)setWorkflow:(id)workflow;
@end

@implementation WFWorkflowTypeResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"workflowTypes", object, change, context}])
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)refreshAvailability
{
  workflowTypesAreValid = [(WFWorkflowTypeResource *)self workflowTypesAreValid];

  [(WFResource *)self updateAvailability:workflowTypesAreValid withError:0];
}

- (BOOL)workflowTypesAreValid
{
  workflow = [(WFWorkflowTypeResource *)self workflow];
  workflowTypes = [workflow workflowTypes];

  definition = [(WFResource *)self definition];
  v6 = [definition objectForKey:@"WFWorkflowTypes"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    definition2 = [(WFResource *)self definition];
    v11 = [definition2 objectForKey:@"WFWorkflowType"];
    v8 = [v9 arrayWithObjects:{v11, 0}];
  }

  workflow2 = [(WFWorkflowTypeResource *)self workflow];
  if (workflow2)
  {
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:workflowTypes];
    v15 = [v13 isSubsetOfSet:v14];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)dealloc
{
  workflow = [(WFWorkflowTypeResource *)self workflow];
  [workflow removeObserver:self forKeyPath:@"workflowTypes" context:0];

  v4.receiver = self;
  v4.super_class = WFWorkflowTypeResource;
  [(WFResource *)&v4 dealloc];
}

- (void)setWorkflow:(id)workflow
{
  workflowCopy = workflow;
  workflow = [(WFWorkflowTypeResource *)self workflow];
  [workflow removeObserver:self forKeyPath:@"workflowTypes" context:0];

  objc_storeWeak(&self->_workflow, workflowCopy);
  [workflowCopy addObserver:self forKeyPath:@"workflowTypes" options:0 context:0];

  [(WFResource *)self invalidateAvailability];
}

@end