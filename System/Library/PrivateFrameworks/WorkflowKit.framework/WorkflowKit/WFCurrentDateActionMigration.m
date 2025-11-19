@interface WFCurrentDateActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (NSDateFormatter)dateFormatter;
- (void)migrateWorkflow;
@end

@implementation WFCurrentDateActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"128") == 3)
  {
    if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.currentdate", v5))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.date", v5);
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
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v27;
    v5 = @"WFDateActionDate";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = v5;
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:v9];

        if ([v10 isEqualToString:@"is.workflow.actions.currentdate"])
        {
          goto LABEL_7;
        }

        if (![v10 isEqualToString:@"is.workflow.actions.date"])
        {
          goto LABEL_10;
        }

        v14 = [(WFWorkflowMigration *)self actionParametersKey];
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:v5];

        if (!v16)
        {
LABEL_7:
          v11 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.date" forKeyedSubscript:v11];

          v12 = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKeyedSubscript:v12];

          [v13 setObject:@"Current Date" forKeyedSubscript:@"WFDateActionMode"];
        }

        else
        {
LABEL_10:
          v5 = v7;
          if (![v10 isEqualToString:@"is.workflow.actions.date"])
          {
            goto LABEL_14;
          }

          v17 = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKey:v17];

          [v13 setObject:@"Specified Date" forKeyedSubscript:@"WFDateActionMode"];
          v18 = [v13 objectForKeyedSubscript:v7];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = [(WFCurrentDateActionMigration *)self dateFormatter];
            v21 = [v13 objectForKeyedSubscript:v7];
            v22 = [v20 stringFromDate:v21];
            [v13 setObject:v22 forKeyedSubscript:v7];
          }
        }

        v5 = v7;
LABEL_14:
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v23 = *MEMORY[0x1E69E9840];
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:1];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

@end