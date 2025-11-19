@interface WFRoundNumberActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFRoundNumberActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.round", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v2 = self;
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"is.workflow.actions.round";
    v6 = *v44;
    v40 = *v44;
    do
    {
      v7 = 0;
      v39 = v4;
      do
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * v7);
        v9 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
        v10 = [v8 objectForKey:v9];

        if ([v10 isEqualToString:v5])
        {
          v11 = [(WFWorkflowMigration *)v2 actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:v11];

          v42 = [v12 objectForKeyedSubscript:@"WFRoundType"];
          v13 = [v42 isEqualToString:@"Left of Decimal"];
          v14 = v13;
          v47[0] = &unk_1F4A9A5D0;
          v47[1] = &unk_1F4A9A5E8;
          v15 = @"Tenths";
          if (v13)
          {
            v15 = @"Tens Place";
          }

          v48[0] = @"Ones Place";
          v48[1] = v15;
          v16 = @"Hundredths";
          if (v13)
          {
            v16 = @"Hundreds Place";
          }

          v47[2] = &unk_1F4A9A600;
          v47[3] = &unk_1F4A9A618;
          v17 = @"Thousandths";
          if (v13)
          {
            v17 = @"Thousands";
          }

          v48[2] = v16;
          v48[3] = v17;
          v18 = @"Ten Thousandths";
          if (v13)
          {
            v18 = @"Ten Thousands";
          }

          v47[4] = &unk_1F4A9A630;
          v47[5] = &unk_1F4A9A648;
          v19 = @"Hundred Thousandths";
          if (v13)
          {
            v19 = @"Hundred Thousands";
          }

          v48[4] = v18;
          v48[5] = v19;
          v20 = @"Millionths";
          if (v13)
          {
            v20 = @"Millions";
          }

          v47[6] = &unk_1F4A9A660;
          v47[7] = &unk_1F4A9A678;
          v21 = @"Ten Millionths";
          if (v13)
          {
            v21 = @"10 ^";
          }

          v48[6] = v20;
          v48[7] = v21;
          v22 = @"Hundred Millionths";
          if (v13)
          {
            v22 = @"10 ^";
          }

          v47[8] = &unk_1F4A9A690;
          v47[9] = &unk_1F4A9A6A8;
          v23 = @"Billionths";
          if (v13)
          {
            v23 = @"10 ^";
          }

          v48[8] = v22;
          v48[9] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:10];
          v25 = [v12 objectForKey:@"WFRoundType"];

          if (v25)
          {
LABEL_28:
            v27 = [v12 objectForKey:@"WFRoundDecimalPlaces"];
            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v12 setObject:v27 forKey:@"WFRoundTo"];
            }

            else
            {
              v28 = v2;
              v29 = v5;

              v30 = [v12 objectForKey:@"WFRoundDecimalPlaces"];
              v31 = [v30 integerValue];
              if (v31 >= 0)
              {
                v32 = v31;
              }

              else
              {
                v32 = -v31;
              }

              v33 = [MEMORY[0x1E696AD98] numberWithInteger:v32];
              v27 = [v24 objectForKey:v33];

              if (v27 && ([v27 isEqualToString:@"10 ^"] & 1) == 0)
              {
                [v12 setObject:v27 forKey:@"WFRoundTo"];
              }

              else
              {
                [v12 setObject:@"10 ^" forKey:@"WFRoundTo"];
                if (v14)
                {
                  v34 = v32;
                }

                else
                {
                  v34 = -v32;
                }

                v35 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
                [v12 setObject:v35 forKey:@"TenToThePowerOf"];
              }

              v5 = v29;
              v2 = v28;
              v4 = v39;
            }

            v36 = [v12 objectForKey:@"WFRoundType"];

            if (v36)
            {
              [v12 removeObjectForKey:@"WFRoundType"];
            }

            v37 = [v12 objectForKey:@"WFRoundDecimalPlaces"];

            if (v37)
            {
              [v12 removeObjectForKey:@"WFRoundDecimalPlaces"];
            }
          }

          else
          {
            v26 = [v12 objectForKey:@"WFRoundDecimalPlaces"];

            if (v26)
            {
              v14 = 1;
              goto LABEL_28;
            }
          }

          v6 = v40;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)v2 finish];
  v38 = *MEMORY[0x1E69E9840];
}

@end