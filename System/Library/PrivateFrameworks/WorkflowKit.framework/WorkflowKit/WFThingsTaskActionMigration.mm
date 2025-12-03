@interface WFThingsTaskActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (NSDateFormatter)dateFormatter;
- (void)migrateWorkflow;
@end

@implementation WFThingsTaskActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"128") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.culturedcode.ThingsTouch.addtask", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(actions);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];
        v10 = [v9 isEqualToString:@"com.culturedcode.ThingsTouch.addtask"];

        if (v10)
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v7 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKeyedSubscript:@"thingsDueDate"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            dateFormatter = [(WFThingsTaskActionMigration *)self dateFormatter];
            v16 = [v12 objectForKeyedSubscript:@"thingsDueDate"];
            v17 = [dateFormatter stringFromDate:v16];
            [v12 setObject:v17 forKeyedSubscript:@"thingsDueDate"];
            goto LABEL_9;
          }

          v18 = [v12 objectForKeyedSubscript:@"thingsDueDate"];
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();

          if (v19)
          {
            dateFormatter = [v12 objectForKeyedSubscript:@"thingsDueDate"];
            v16 = WFDeserializedVariableObject(dateFormatter, 0, 0);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[WFVariableString alloc] initWithVariable:v16];
              WFSerializedVariableObject(v17);
              v21 = v20 = actions;
              [v12 setObject:v21 forKeyedSubscript:@"thingsDueDate"];

              actions = v20;
LABEL_9:
            }
          }
        }

        ++v6;
      }

      while (v5 != v6);
      v5 = [actions countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v22 = *MEMORY[0x1E69E9840];
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
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

@end