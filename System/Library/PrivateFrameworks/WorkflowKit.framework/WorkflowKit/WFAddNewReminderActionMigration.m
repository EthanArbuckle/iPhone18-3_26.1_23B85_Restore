@interface WFAddNewReminderActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFAddNewReminderActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.addnewreminder", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v34;
    v31 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        v8 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:v8];

        if ([v9 isEqualToString:@"is.workflow.actions.addnewreminder"])
        {
          v10 = v4;
          v11 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v7 objectForKeyedSubscript:v11];

          v13 = [v12 objectForKeyedSubscript:@"WFCalendarItemAlert"];

          if (v13)
          {
            [v12 removeObjectForKey:@"WFCalendarItemAlert"];
          }

          v14 = [v12 objectForKey:@"WFAlertTrigger"];
          if (!v14)
          {
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setObject:@"Alert" forKey:@"WFAlertEnabled"];
            v15 = v14;
            if ([(__CFString *)v15 isEqualToString:@"At Location"])
            {
              v16 = [v12 objectForKey:@"WFAlertLocationProximity"];
              if (!v16)
              {
                goto LABEL_15;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v18 = v16;
              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_16;
              }

              if (([(__CFString *)v16 isEqualToString:@"Enter"]& 1) != 0)
              {
LABEL_15:
                v18 = @"When I Arrive";
                goto LABEL_16;
              }

              v26 = [(__CFString *)v16 isEqualToString:@"Leave"];
              v18 = @"When I Leave";
              if (v26)
              {
LABEL_16:
                [v12 setObject:v18 forKey:@"WFAlertCondition"];
              }

              v19 = [v12 objectForKey:@"WFAlertLocationRadius"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v40[0] = @"Value";
                v38[0] = @"Magnitude";
                v29 = [v19 stringValue];
                v38[1] = @"Unit";
                v39[0] = v29;
                v39[1] = @"m";
                [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
                v20 = v30 = v16;
                v40[1] = @"WFSerializationType";
                v41[0] = v20;
                v41[1] = @"WFQuantityFieldValue";
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

                v16 = v30;
                [v12 setObject:v21 forKey:@"WFAlertLocationRadius"];
              }

LABEL_22:
              v37[0] = @"WFAlertLocationRadius";
              v37[1] = @"WFAlertLocationProximity";
              v37[2] = @"WFAlertTrigger";
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
              [v12 removeObjectsForKeys:v25];

LABEL_23:
              v4 = v10;
              v5 = v31;
              goto LABEL_24;
            }

            if (![(__CFString *)v15 isEqualToString:@"At Time"])
            {
              goto LABEL_22;
            }

            v22 = v12;
            v23 = @"At Time";
            v24 = @"WFAlertCondition";
          }

          else
          {
            v15 = [v12 objectForKey:@"WFAlertTrigger"];
            v22 = v12;
            v23 = v15;
            v24 = @"WFAlertEnabled";
          }

          [v22 setObject:v23 forKey:v24];
          goto LABEL_22;
        }

LABEL_24:

        ++v6;
      }

      while (v4 != v6);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      v4 = v27;
    }

    while (v27);
  }

  [(WFWorkflowMigration *)self finish];
  v28 = *MEMORY[0x1E69E9840];
}

@end