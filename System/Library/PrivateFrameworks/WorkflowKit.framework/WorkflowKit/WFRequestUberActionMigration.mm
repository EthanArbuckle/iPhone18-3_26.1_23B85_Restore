@interface WFRequestUberActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFRequestUberActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1050.8"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.ubercab.UberClient.requestuber", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"UberShowEstimate";
    v6 = *v35;
    v31 = *v35;
    do
    {
      v7 = 0;
      v32 = v4;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if ([v10 isEqualToString:@"com.ubercab.UberClient.requestuber"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKeyedSubscript:v5];

          if (v13)
          {
            [v12 removeObjectForKey:v5];
          }

          v14 = v5;
          v15 = [v12 objectForKeyedSubscript:@"UberProductId"];

          if (v15)
          {
            [v12 removeObjectForKey:@"UberProductId"];
          }

          [v12 setObject:@"com.ubercab.UberClient" forKeyedSubscript:@"IntentAppIdentifier"];
          v16 = [v12 wf_popObjectForKey:@"UberSeatCount"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;

            v20 = MEMORY[0x1E696AD98];
            integerValue = [v19 integerValue];

            if (integerValue <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = integerValue;
            }

            v23 = [v20 numberWithInteger:v22];
            [v12 setObject:v23 forKeyedSubscript:@"PartySize"];
          }

          else
          {
            [v12 setObject:v16 forKeyedSubscript:@"PartySize"];
          }

          v24 = [v12 wf_popObjectForKey:@"UberPickupAt"];
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          if ([v26 isEqualToString:@"Current Location"])
          {
            initWithCurrentLocation = [[WFLocationValue alloc] initWithCurrentLocation];
            serializedRepresentation = [(WFLocationValue *)initWithCurrentLocation serializedRepresentation];
            [v12 setValue:serializedRepresentation forKey:@"PickupLocation"];
          }

          else if ([v26 isEqualToString:@"Custom Location"])
          {
            [v12 removeObjectForKey:@"UberCustomLocation"];
          }

          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.ride.requestride" forKeyedSubscript:actionIdentifierKey2];

          v5 = v14;
          v6 = v31;
          v4 = v32;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v30 = *MEMORY[0x1E69E9840];
}

@end