@interface WFWorkflowTypeResource
- (BOOL)workflowTypesAreValid;
- (WFWorkflow)workflow;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refreshAvailability;
- (void)setWorkflow:(id)a3;
@end

@implementation WFWorkflowTypeResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"workflowTypes", a4, a5, a6}])
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)refreshAvailability
{
  v3 = [(WFWorkflowTypeResource *)self workflowTypesAreValid];

  [(WFResource *)self updateAvailability:v3 withError:0];
}

- (BOOL)workflowTypesAreValid
{
  v3 = [(WFWorkflowTypeResource *)self workflow];
  v4 = [v3 workflowTypes];

  v5 = [(WFResource *)self definition];
  v6 = [v5 objectForKey:@"WFWorkflowTypes"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];
    v10 = [(WFResource *)self definition];
    v11 = [v10 objectForKey:@"WFWorkflowType"];
    v8 = [v9 arrayWithObjects:{v11, 0}];
  }

  v12 = [(WFWorkflowTypeResource *)self workflow];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v14 = [MEMORY[0x1E695DFD8] setWithArray:v4];
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
  v3 = [(WFWorkflowTypeResource *)self workflow];
  [v3 removeObserver:self forKeyPath:@"workflowTypes" context:0];

  v4.receiver = self;
  v4.super_class = WFWorkflowTypeResource;
  [(WFResource *)&v4 dealloc];
}

- (void)setWorkflow:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflowTypeResource *)self workflow];
  [v5 removeObserver:self forKeyPath:@"workflowTypes" context:0];

  objc_storeWeak(&self->_workflow, v4);
  [v4 addObserver:self forKeyPath:@"workflowTypes" options:0 context:0];

  [(WFResource *)self invalidateAvailability];
}

@end