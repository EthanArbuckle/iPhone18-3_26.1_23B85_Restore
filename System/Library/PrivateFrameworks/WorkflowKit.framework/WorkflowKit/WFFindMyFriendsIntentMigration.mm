@interface WFFindMyFriendsIntentMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
+ (id)classNameConversion;
+ (id)launchIdConversion;
+ (id)parameterConversion;
- (BOOL)convertParametersAndUpdateIntent:(id *)a3;
- (BOOL)updateBundleIdentifierForIntent:(id)a3;
- (BOOL)updateClassNameForIntent:(id)a3;
- (void)migrateWorkflow;
@end

@implementation WFFindMyFriendsIntentMigration

- (BOOL)convertParametersAndUpdateIntent:(id *)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = [v4 launchId];
  v6 = [v4 _className];
  v7 = +[WFFindMyFriendsIntentMigration parameterConversion];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v4 backingStore];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, 0}];
    [MEMORY[0x1E696E878] sharedConnection];
    v45 = v52 = 0;
    v46 = v11;
    v12 = [v45 loadSchemasForBundleIdentifiers:v11 error:&v52];
    v13 = v52;
    v47 = [v12 objectForKey:v5];

    if (v13)
    {
      v14 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v55 = "[WFFindMyFriendsIntentMigration convertParametersAndUpdateIntent:]";
        v56 = 2114;
        v57 = v5;
        v58 = 2114;
        v59 = v6;
        v60 = 2114;
        v61 = v13;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Error loading schema for %{public}@ when converting %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    v44 = v13;
    if (v47)
    {
      v39 = a3;
      v40 = v8;
      v41 = v7;
      v43 = v5;
      v15 = objc_alloc(MEMORY[0x1E696E880]);
      [v4 identifier];
      v17 = v16 = v10;
      v42 = v6;
      v18 = [v15 _initWithIdentifier:v17 schema:v47 name:v6 data:0];

      v38 = v16;
      v19 = [v16 _objectDescription];
      v20 = [v19 attributes];
      v21 = [v20 allValues];
      v22 = [v21 valueForKey:@"propertyName"];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v49;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v49 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v48 + 1) + 8 * i);
            v29 = [v9 objectForKeyedSubscript:v28];
            v30 = v29;
            if (v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = v28;
            }

            v32 = v31;

            v33 = [v4 valueForKey:v28];
            [v18 setValue:v33 forKey:v32];
          }

          v25 = [v23 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v25);
      }

      v34 = v18;
      *v39 = v18;
      v35 = [v9 count] != 0;

      v6 = v42;
      v5 = v43;
      v8 = v40;
      v7 = v41;
      v10 = v38;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {

    v35 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)updateClassNameForIntent:(id)a3
{
  v3 = a3;
  v4 = +[WFFindMyFriendsIntentMigration classNameConversion];
  v5 = [v3 launchId];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v3 _className];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v3 _codableDescription];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 setClassName:v8];
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)updateBundleIdentifierForIntent:(id)a3
{
  v3 = a3;
  v4 = +[WFFindMyFriendsIntentMigration launchIdConversion];
  v5 = [v3 launchId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v3 _setLaunchId:v6];
  }

  return v6 != 0;
}

- (void)migrateWorkflow
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v33;
    v7 = @"is.workflow.actions.sirikit.donation.handle";
    *&v4 = 136315394;
    v27 = v4;
    do
    {
      v8 = 0;
      v28 = v5;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v11 = [v9 objectForKey:v10];
        v12 = [v11 isEqualToString:v7];

        if (v12)
        {
          v13 = [(WFWorkflowMigration *)self actionParametersKey];
          v14 = [v9 objectForKey:v13];

          v15 = WFExtractDonatedIntentFromSerializedParameters(v14);
          if (v15)
          {
            v16 = v15;
            v17 = v6;
            v18 = v7;
            v19 = [(WFFindMyFriendsIntentMigration *)self updateBundleIdentifierForIntent:v15];
            v20 = [(WFFindMyFriendsIntentMigration *)self updateClassNameForIntent:v16];
            v31 = v16;
            v21 = [(WFFindMyFriendsIntentMigration *)self convertParametersAndUpdateIntent:&v31];
            v22 = v31;

            if (v19 || v20 || v21)
            {
              v30 = 0;
              v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v30];
              v24 = v30;
              if (v23)
              {
                [v14 setObject:v23 forKey:@"IntentData"];
                v7 = v18;
              }

              else
              {
                v25 = getWFWorkflowMigrationLogObject();
                v7 = v18;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = v27;
                  v37 = "[WFFindMyFriendsIntentMigration migrateWorkflow]";
                  v38 = 2114;
                  v39 = v24;
                  _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_ERROR, "%s Error archiving intent data: %{public}@", buf, 0x16u);
                }
              }

              v6 = v17;
            }

            else
            {
              v7 = v18;
              v6 = v17;
            }

            v5 = v28;
          }

          else
          {
            v22 = 0;
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v26 = *MEMORY[0x1E69E9840];
}

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a4;
  if (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.sirikit.donation.handle", a3))
  {
    v6 = WFCompareBundleVersions(v5, @"900") == 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)parameterConversion
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6[0] = @"LocateDeviceIntent";
  v6[1] = @"PlaySoundIntent";
  v7[0] = &unk_1F4A99FF0;
  v7[1] = &unk_1F4A9A018;
  v8 = @"com.apple.findmy";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)classNameConversion
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"com.apple.findmy";
  v6[0] = @"FMIPLocateIntent";
  v6[1] = @"FMIPPlaySoundIntent";
  v7[0] = @"LocateDeviceIntent";
  v7[1] = @"PlaySoundIntent";
  v6[2] = @"FMFLocateIntent";
  v7[2] = @"LocateIntent";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)launchIdConversion
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.mobileme.fmf1";
  v5[1] = @"com.apple.mobileme.fmip1";
  v6[0] = @"com.apple.findmy";
  v6[1] = @"com.apple.findmy";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end