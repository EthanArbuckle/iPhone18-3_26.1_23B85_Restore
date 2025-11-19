@interface WFWorkflowEnvironmentResource
- (BOOL)workflowEnvironmentIsValid;
- (WFWorkflow)workflow;
- (void)refreshAvailability;
- (void)setWorkflow:(id)a3;
@end

@implementation WFWorkflowEnvironmentResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)refreshAvailability
{
  v3 = [(WFWorkflowEnvironmentResource *)self workflowEnvironmentIsValid];

  [(WFResource *)self updateAvailability:v3 withError:0];
}

- (BOOL)workflowEnvironmentIsValid
{
  v3 = [(WFWorkflowEnvironmentResource *)self workflow];

  if (v3)
  {
    v4 = [(WFWorkflowEnvironmentResource *)self workflow];
    v5 = [v4 environment];

    v6 = [(WFResource *)self definition];
    v7 = [v6 objectForKey:@"WFWorkflowEnvironment"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);

    if (v9)
    {
      if ([v9 isEqualToString:@"Default"])
      {
        v10 = 0;
LABEL_8:
        v12 = [(WFResource *)self definition];
        v13 = [v12 objectForKey:@"WFRelation"];
        v14 = objc_opt_class();
        v15 = WFEnforceClass_1501(v13, v14);

        if (v15)
        {
          v16 = [v15 isEqualToString:@"!="];
          if (v5 == v10)
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
          v11 = v5 == v10;
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

- (void)setWorkflow:(id)a3
{
  objc_storeWeak(&self->_workflow, a3);

  [(WFResource *)self invalidateAvailability];
}

@end