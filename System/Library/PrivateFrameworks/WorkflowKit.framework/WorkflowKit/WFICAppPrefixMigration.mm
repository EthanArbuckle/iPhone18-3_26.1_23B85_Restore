@interface WFICAppPrefixMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFICAppPrefixMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  v20 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  if ((WFCompareBundleVersions(version, @"128") - 1) >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [migrationCopy objectForKey:{@"WFWorkflowActions", 0}];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) objectForKey:@"WFWorkflowActionIdentifier"];
          if ([v12 hasPrefix:@"com.tapbots.Tweetbot3"] & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.tapbots.TweetbotPad") & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.flexibits.fantastical2.ipad") & 1) != 0 || (objc_msgSend(v12, "hasPrefix:", @"com.flexibits.fantastical2.iphone"))
          {

            v6 = 1;
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v6 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)migrateWorkflow
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v2 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v2;
        v3 = *(*(&v26 + 1) + 8 * v2);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v5 = [v3 objectForKey:actionIdentifierKey];

        v31[0] = @"com.tapbots.Tweetbot3";
        v31[1] = @"com.tapbots.TweetbotPad";
        v32[0] = @"com.tapbots.Tweetbot";
        v32[1] = @"com.tapbots.Tweetbot";
        v31[2] = @"com.flexibits.fantastical2.ipad";
        v31[3] = @"com.flexibits.fantastical2.iphone";
        v32[2] = @"com.flexibits.fantastical2";
        v32[3] = @"com.flexibits.fantastical2";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        allKeys = [v6 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              if ([v5 hasPrefix:v12])
              {
                v13 = [v6 objectForKey:v12];
                v14 = [v5 stringByReplacingOccurrencesOfString:v12 withString:v13];
                actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
                [v3 setObject:v14 forKeyedSubscript:actionIdentifierKey2];
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v2 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v19);
  }

  [(WFWorkflowMigration *)self finish];
  v16 = *MEMORY[0x1E69E9840];
}

@end