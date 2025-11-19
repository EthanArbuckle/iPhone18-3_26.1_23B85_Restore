@interface WFLocationParameterMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFLocationParameterMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"900"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.gettraveltime", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.currentconditions", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.forecast", v5))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getdistance", v5);
    }
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:v9];

        if ([v10 isEqualToString:@"is.workflow.actions.gettraveltime"])
        {
LABEL_7:
          v11 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:v11];

          v13 = [v12 wf_popObjectForKey:@"WFGetDirectionsFrom"];
          if ([v13 isEqual:@"Current Location"])
          {
            v14 = [[WFLocationValue alloc] initWithCurrentLocation];
            v15 = [(WFLocationValue *)v14 serializedRepresentation];
            v16 = v12;
            v17 = v15;
            v18 = @"WFGetDirectionsCustomLocation";
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        if (([v10 isEqualToString:@"is.workflow.actions.weather.currentconditions"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"is.workflow.actions.weather.forecast"))
        {
          v19 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:v19];

          v13 = [v12 wf_popObjectForKey:@"WFWeatherLocation"];
          if ([v13 isEqual:@"Current Location"])
          {
            v14 = [[WFLocationValue alloc] initWithCurrentLocation];
            v15 = [(WFLocationValue *)v14 serializedRepresentation];
            v16 = v12;
            v17 = v15;
            v18 = @"WFWeatherCustomLocation";
LABEL_13:
            [v16 setValue:v17 forKey:v18];
          }

LABEL_14:

          goto LABEL_15;
        }

        if ([v10 isEqualToString:@"is.workflow.actions.getdistance"])
        {
          goto LABEL_7;
        }

LABEL_15:

        ++v7;
      }

      while (v5 != v7);
      v20 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v20;
    }

    while (v20);
  }

  [(WFWorkflowMigration *)self finish];
  v21 = *MEMORY[0x1E69E9840];
}

@end