@interface WFBetaFilteringActionsMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFBetaFilteringActionsMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  versionCopy = version;
  v5 = WFCompareBundleVersions(versionCopy, @"121") - 1;
  v6 = WFCompareBundleVersions(versionCopy, @"123");

  return v5 < 2 && v6 == 3;
}

- (void)migrateWorkflow
{
  v32 = *MEMORY[0x1E69E9840];
  actionIdentifierMapping = [objc_opt_class() actionIdentifierMapping];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v3;
        v4 = *(*(&v26 + 1) + 8 * v3);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        allKeys = [actionIdentifierMapping allKeys];
        v6 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v23;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v22 + 1) + 8 * i);
              actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
              v12 = [v4 objectForKeyedSubscript:actionIdentifierKey];
              v13 = [v12 isEqualToString:v10];

              if (v13)
              {
                v14 = [actionIdentifierMapping objectForKeyedSubscript:v10];
                actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
                [v4 setObject:v14 forKeyedSubscript:actionIdentifierKey2];

                goto LABEL_16;
              }
            }

            v7 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v3 = v21 + 1;
      }

      while (v21 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  [(WFWorkflowMigration *)self finish];
  v16 = *MEMORY[0x1E69E9840];
}

@end