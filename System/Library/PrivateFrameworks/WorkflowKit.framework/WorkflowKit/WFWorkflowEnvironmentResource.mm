@interface WFWorkflowEnvironmentResource
- (BOOL)workflowEnvironmentIsValid;
- (WFWorkflow)workflow;
- (void)refreshAvailability;
- (void)setWorkflow:(id)workflow;
@end

@implementation WFWorkflowEnvironmentResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)refreshAvailability
{
  workflowEnvironmentIsValid = [(WFWorkflowEnvironmentResource *)self workflowEnvironmentIsValid];

  [(WFResource *)self updateAvailability:workflowEnvironmentIsValid withError:0];
}

- (BOOL)workflowEnvironmentIsValid
{
  workflow = [(WFWorkflowEnvironmentResource *)self workflow];

  if (workflow)
  {
    workflow2 = [(WFWorkflowEnvironmentResource *)self workflow];
    environment = [workflow2 environment];

    definition = [(WFResource *)self definition];
    v7 = [definition objectForKey:@"WFWorkflowEnvironment"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);

    if (v9)
    {
      if ([v9 isEqualToString:@"Default"])
      {
        v10 = 0;
LABEL_8:
        definition2 = [(WFResource *)self definition];
        v13 = [definition2 objectForKey:@"WFRelation"];
        v14 = objc_opt_class();
        v15 = WFEnforceClass_1501(v13, v14);

        if (v15)
        {
          v16 = [v15 isEqualToString:@"!="];
          if (environment == v10)
          {
            v11 = 0;
          }

          else
          {
            v11 = v16;
          }
        }

        else
        {
          v11 = environment == v10;
        }

        goto LABEL_15;
      }

      if ([v9 isEqualToString:@"HomeResident"])
      {
        v10 = 1;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_15:

    return v11;
  }

  return 0;
}

- (void)setWorkflow:(id)workflow
{
  objc_storeWeak(&self->_workflow, workflow);

  [(WFResource *)self invalidateAvailability];
}

@end