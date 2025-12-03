@interface WFCreateAlarmMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFCreateAlarmMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.alarm.create", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v73 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v2 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v58;
    *&v3 = 136315906;
    v43 = v3;
    v49 = *v58;
    do
    {
      v6 = 0;
      v44 = v4;
      do
      {
        if (*v58 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v6;
        v7 = *(*(&v57 + 1) + 8 * v6);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKeyedSubscript:actionIdentifierKey];
        v10 = [v9 isEqualToString:@"is.workflow.actions.alarm.create"];

        if (v10)
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v7 setObject:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v7 objectForKeyedSubscript:actionParametersKey];

          v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
          v15 = [v13 objectForKeyedSubscript:@"WFTime"];

          if (v15)
          {
            v16 = [v13 objectForKeyedSubscript:@"WFTime"];
            [v14 setObject:v16 forKey:@"dateComponents"];
          }

          v50 = v14;
          v17 = [v13 objectForKeyedSubscript:@"WFLabel"];

          if (v17)
          {
            v18 = [v13 objectForKeyedSubscript:@"WFLabel"];
            [v14 setObject:v18 forKey:@"label"];
          }

          v19 = [v13 objectForKeyedSubscript:@"WFFrequency"];

          v5 = v49;
          if (v19)
          {
            v47 = v13;
            v48 = v7;
            v20 = [v13 objectForKeyedSubscript:@"WFFrequency"];
            v21 = objc_opt_class();
            v22 = v20;
            if (v22 && (objc_opt_isKindOfClass() & 1) == 0)
            {
              v24 = getWFGeneralLogObject();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                v25 = objc_opt_class();
                *buf = v43;
                v66 = "WFEnforceClass";
                v67 = 2114;
                v68 = v22;
                v69 = 2114;
                v70 = v25;
                v71 = 2114;
                v72 = v21;
                v26 = v25;
                _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
              }

              v23 = 0;
            }

            else
            {
              v23 = v22;
            }

            v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v23, "count")}];
            v46 = objc_alloc_init(MEMORY[0x1E696AB78]);
            weekdaySymbols = [v46 weekdaySymbols];
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v29 = v23;
            v30 = [v29 countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v54;
              do
              {
                v33 = 0;
                do
                {
                  if (*v54 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = (softLinkSAAlarmDayOfWeekForString)(*(*(&v53 + 1) + 8 * v33));
                  v35 = 0;
                  if (v34 <= 4)
                  {
                    if (v34 > 2)
                    {
                      if (v34 == 3)
                      {
                        v35 = 1;
                        v36 = 1;
                      }

                      else
                      {
                        v35 = 2;
                        v36 = 2;
                      }
                    }

                    else
                    {
                      if (v34 < 2)
                      {
                        goto LABEL_41;
                      }

                      if (v34 != 2)
                      {
                        v37 = 0;
                        goto LABEL_40;
                      }

                      v36 = 64;
                    }

                    goto LABEL_39;
                  }

                  if (v34 <= 6)
                  {
                    if (v34 == 5)
                    {
                      v35 = 3;
                      v36 = 4;
                    }

                    else
                    {
                      v35 = 4;
                      v36 = 8;
                    }

                    goto LABEL_39;
                  }

                  if (v34 == 7)
                  {
                    v35 = 5;
                    v36 = 16;
                    goto LABEL_39;
                  }

                  v37 = 0;
                  if (v34 == 8)
                  {
                    v35 = 6;
                    v36 = 32;
LABEL_39:
                    v37 = [weekdaySymbols objectAtIndexedSubscript:v35];
                    v35 = v36;
                  }

LABEL_40:
                  v61[0] = @"displayString";
                  v61[1] = @"value";
                  v62[0] = v37;
                  v38 = [MEMORY[0x1E696AD98] numberWithInteger:v35];
                  v62[1] = v38;
                  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
                  [v27 addObject:v39];

LABEL_41:
                  ++v33;
                }

                while (v31 != v33);
                v40 = [v29 countByEnumeratingWithState:&v53 objects:v63 count:16];
                v31 = v40;
              }

              while (v40);
            }

            [v50 setObject:v27 forKey:@"repeatSchedule"];
            v7 = v48;
            v5 = v49;
            v4 = v44;
            v13 = v47;
          }

          if ([v50 count])
          {
            actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
            [v7 setObject:v50 forKeyedSubscript:actionParametersKey2];
          }
        }

        v6 = v52 + 1;
      }

      while (v52 + 1 != v4);
      v4 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v42 = *MEMORY[0x1E69E9840];
}

@end