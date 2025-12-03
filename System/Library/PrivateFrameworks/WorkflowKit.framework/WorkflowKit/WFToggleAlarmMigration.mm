@interface WFToggleAlarmMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFToggleAlarmMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.alarm.toggle", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v63 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v49;
    *&v4 = 136315906;
    v44 = v4;
    v45 = *v49;
    do
    {
      v7 = 0;
      v46 = v5;
      do
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:actionIdentifierKey];
        v11 = [v10 isEqualToString:@"is.workflow.actions.alarm.toggle"];

        if (v11)
        {
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v14 = [v8 objectForKeyedSubscript:actionParametersKey];

          v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
          v16 = [v14 objectForKeyedSubscript:@"WFEnabled"];

          if (v16)
          {
            v17 = [v14 objectForKeyedSubscript:@"WFEnabled"];
            [v15 setObject:v17 forKey:@"enabled"];
          }

          v18 = [v14 objectForKeyedSubscript:@"WFAlarm"];

          if (v18)
          {
            v19 = [v14 objectForKeyedSubscript:@"WFAlarm"];
            v20 = objc_opt_class();
            v21 = v19;
            if (v21 && (objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = getWFGeneralLogObject();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                v24 = objc_opt_class();
                *buf = v44;
                v56 = "WFEnforceClass";
                v57 = 2114;
                v58 = v21;
                v59 = 2114;
                v60 = v24;
                v61 = 2114;
                v62 = v20;
                v25 = v24;
                _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
              }

              v22 = 0;
            }

            else
            {
              v22 = v21;
            }

            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v27 = [v22 objectForKeyedSubscript:@"WFAlarmHour"];
            if (v27)
            {

              goto LABEL_19;
            }

            v28 = [v22 objectForKeyedSubscript:@"WFAlarmMinute"];

            if (v28)
            {
LABEL_19:
              v52[0] = @"hour";
              v29 = [v22 objectForKeyedSubscript:@"WFAlarmHour"];
              v30 = v29;
              if (v29)
              {
                v31 = v29;
              }

              else
              {
                v31 = &unk_1F4A9ADE0;
              }

              v52[1] = @"minute";
              v53[0] = v31;
              v32 = [v22 objectForKeyedSubscript:@"WFAlarmMinute"];
              v33 = v32;
              if (v32)
              {
                v34 = v32;
              }

              else
              {
                v34 = &unk_1F4A9ADE0;
              }

              v53[1] = v34;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
              [dictionary setObject:v35 forKey:@"dateComponents"];
            }

            v36 = [v22 objectForKeyedSubscript:@"WFAlarmLabel"];

            if (v36)
            {
              v37 = [v22 objectForKeyedSubscript:@"WFAlarmLabel"];
              [dictionary setObject:v37 forKey:@"displayString"];

              v38 = [v22 objectForKeyedSubscript:@"WFAlarmLabel"];
              [dictionary setObject:v38 forKey:@"label"];
            }

            v39 = [v22 objectForKeyedSubscript:@"WFAlarmIdentifier"];

            if (v39)
            {
              v40 = [v22 objectForKeyedSubscript:@"WFAlarmIdentifier"];
              v41 = [v40 substringFromIndex:{objc_msgSend(@"x-apple-clock:alarm?id=", "length")}];
              [dictionary setObject:v41 forKey:@"identifier"];
            }

            [v15 setObject:dictionary forKey:@"alarm"];

            v6 = v45;
          }

          if ([v15 count])
          {
            actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
            [v8 setObject:v15 forKeyedSubscript:actionParametersKey2];
          }

          v5 = v46;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v43 = *MEMORY[0x1E69E9840];
}

@end