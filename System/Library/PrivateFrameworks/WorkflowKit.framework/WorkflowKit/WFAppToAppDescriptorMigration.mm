@interface WFAppToAppDescriptorMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (BOOL)actionDictionaryContainsSystemIntentAction:(id)a3;
- (void)migrateAppToAppDescriptorForParameterKey:(id)a3 parameters:(id)a4;
- (void)migrateOpenAppWithParameters:(id)a3;
- (void)migrateOpenInWithParameters:(id)a3;
- (void)migrateSplitScreenWithParameters:(id)a3;
- (void)migrateWorkflow;
@end

@implementation WFAppToAppDescriptorMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openapp", v5);
  v8 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openin", v5);
  v9 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.quit.app", v5);
  v10 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.hide.app", v5);
  v11 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.splitscreen", v5);
  if (WFWorkflowHasActionsWithIdentifier(@"com.apple.mobilenotes.SharingExtension", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.appendnote", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.ride.requestride", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.sendmessage", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.mobilephone.call", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.facetime.facetime", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.pay", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.workout.start", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.request", v5))
  {
    v12 = 1;
  }

  else
  {
    v12 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.timer.start", v5);
  }

  if (((HasActionsWithIdentifier | v8) | (v9 | v10)))
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 | v12;
  }

  if (WFCompareBundleVersions(v6, @"0") == 2)
  {
    if (WFCompareBundleVersions(v6, @"1136") != 3)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)migrateAppToAppDescriptorForParameterKey:(id)a3 parameters:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 objectForKey:v12];

  if (v6)
  {
    v7 = [v5 objectForKey:v12];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v7];
        v9 = [MEMORY[0x1E696E748] sharedResolver];
        v10 = [v9 resolvedAppMatchingDescriptor:v8];

        if (v10)
        {
          v11 = [v10 serializedRepresentation];
          [v5 setObject:v11 forKey:v12];
        }
      }
    }
  }
}

- (void)migrateSplitScreenWithParameters:(id)a3
{
  v5 = a3;
  [(WFAppToAppDescriptorMigration *)self migrateAppToAppDescriptorForParameterKey:@"WFPrimaryAppIdentifier" parameters:v5];
  v4 = [v5 objectForKey:@"WFSecondaryAppIdentifier"];

  if (v4)
  {
    [(WFAppToAppDescriptorMigration *)self migrateAppToAppDescriptorForParameterKey:@"WFSecondaryAppIdentifier" parameters:v5];
  }
}

- (void)migrateOpenInWithParameters:(id)a3
{
  v10 = a3;
  v3 = [v10 objectForKey:@"WFOpenInAppIdentifier"];
  if (v3)
  {
  }

  else
  {
    v9 = [v10 objectForKey:@"WFSelectedApp"];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v4 = [v10 objectForKey:@"WFOpenInAppIdentifier"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v4];
      v6 = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [v6 resolvedAppMatchingDescriptor:v5];

      if (v7)
      {
        v8 = [v7 serializedRepresentation];
        [v10 setObject:v8 forKey:@"WFSelectedApp"];
      }
    }
  }

LABEL_10:
}

- (void)migrateOpenAppWithParameters:(id)a3
{
  v10 = a3;
  v3 = [v10 objectForKey:@"WFAppIdentifier"];
  if (v3)
  {
  }

  else
  {
    v9 = [v10 objectForKey:@"WFSelectedApp"];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v4 = [v10 objectForKey:@"WFAppIdentifier"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v4];
      v6 = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [v6 resolvedAppMatchingDescriptor:v5];

      if (v7)
      {
        v8 = [v7 serializedRepresentation];
        [v10 setObject:v8 forKey:@"WFSelectedApp"];
      }
    }
  }

LABEL_10:
}

- (void)migrateWorkflow
{
  v3 = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__WFAppToAppDescriptorMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];

  [(WFWorkflowMigration *)self finish];
}

void __48__WFAppToAppDescriptorMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(a1 + 32) actionParametersKey];
  v4 = [v25 objectForKeyedSubscript:v3];

  v5 = [*(a1 + 32) actionIdentifierKey];
  v6 = [v25 objectForKeyedSubscript:v5];
  v7 = [v6 isEqualToString:@"is.workflow.actions.openapp"];

  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 migrateOpenAppWithParameters:v4];
  }

  else
  {
    v9 = [v8 actionIdentifierKey];
    v10 = [v25 objectForKeyedSubscript:v9];
    v11 = [v10 isEqualToString:@"is.workflow.actions.openin"];

    v12 = *(a1 + 32);
    if (v11)
    {
      [v12 migrateOpenInWithParameters:v4];
    }

    else
    {
      v13 = [v12 actionIdentifierKey];
      v14 = [v25 objectForKeyedSubscript:v13];
      v15 = [v14 isEqualToString:@"is.workflow.actions.quit.app"];

      v16 = *(a1 + 32);
      if (v15)
      {
        [v16 migrateQuitAppWithParameters:v4];
      }

      else
      {
        v17 = [v16 actionIdentifierKey];
        v18 = [v25 objectForKeyedSubscript:v17];
        v19 = [v18 isEqualToString:@"is.workflow.actions.hide.app"];

        v20 = *(a1 + 32);
        if (v19)
        {
          [v20 migrateHideAppWithParameters:v4];
        }

        else
        {
          v21 = [v20 actionIdentifierKey];
          v22 = [v25 objectForKeyedSubscript:v21];
          v23 = [v22 isEqualToString:@"is.workflow.actions.splitscreen"];

          v24 = *(a1 + 32);
          if (v23)
          {
            [v24 migrateSplitScreenWithParameters:v4];
          }

          else if ([v24 actionDictionaryContainsSystemIntentAction:v4])
          {
            [*(a1 + 32) migrateSystemIntentActionsWithParameters:v4];
          }
        }
      }
    }
  }
}

- (BOOL)actionDictionaryContainsSystemIntentAction:(id)a3
{
  v11[10] = *MEMORY[0x1E69E9840];
  v11[0] = @"com.apple.mobilenotes.SharingExtension";
  v11[1] = @"is.workflow.actions.appendnote";
  v11[2] = @"is.workflow.actions.ride.requestride";
  v11[3] = @"is.workflow.actions.sendmessage";
  v11[4] = @"com.apple.mobilephone.call";
  v11[5] = @"com.apple.facetime.facetime";
  v11[6] = @"is.workflow.actions.venmo.pay";
  v11[7] = @"is.workflow.actions.workout.start";
  v11[8] = @"is.workflow.actions.venmo.request";
  v11[9] = @"is.workflow.actions.timer.start";
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v11 count:10];
  v7 = [(WFWorkflowMigration *)self actionIdentifierKey];
  v8 = [v5 objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v6 containsObject:v8];
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

@end