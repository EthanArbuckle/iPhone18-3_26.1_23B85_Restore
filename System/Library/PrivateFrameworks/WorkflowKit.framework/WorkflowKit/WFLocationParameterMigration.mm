@interface WFLocationParameterMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFLocationParameterMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.gettraveltime", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.currentconditions", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.weather.forecast", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getdistance", migrationCopy);
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
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:actionIdentifierKey];

        if ([v10 isEqualToString:@"is.workflow.actions.gettraveltime"])
        {
LABEL_7:
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 wf_popObjectForKey:@"WFGetDirectionsFrom"];
          if ([v13 isEqual:@"Current Location"])
          {
            initWithCurrentLocation = [[WFLocationValue alloc] initWithCurrentLocation];
            serializedRepresentation = [(WFLocationValue *)initWithCurrentLocation serializedRepresentation];
            v16 = v12;
            v17 = serializedRepresentation;
            v18 = @"WFGetDirectionsCustomLocation";
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        if (([v10 isEqualToString:@"is.workflow.actions.weather.currentconditions"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"is.workflow.actions.weather.forecast"))
        {
          actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey2];

          v13 = [v12 wf_popObjectForKey:@"WFWeatherLocation"];
          if ([v13 isEqual:@"Current Location"])
          {
            initWithCurrentLocation = [[WFLocationValue alloc] initWithCurrentLocation];
            serializedRepresentation = [(WFLocationValue *)initWithCurrentLocation serializedRepresentation];
            v16 = v12;
            v17 = serializedRepresentation;
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
      v20 = [actions countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v20;
    }

    while (v20);
  }

  [(WFWorkflowMigration *)self finish];
  v21 = *MEMORY[0x1E69E9840];
}

@end