@interface WFAppToAppDescriptorMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (BOOL)actionDictionaryContainsSystemIntentAction:(id)action;
- (void)migrateAppToAppDescriptorForParameterKey:(id)key parameters:(id)parameters;
- (void)migrateOpenAppWithParameters:(id)parameters;
- (void)migrateOpenInWithParameters:(id)parameters;
- (void)migrateSplitScreenWithParameters:(id)parameters;
- (void)migrateWorkflow;
@end

@implementation WFAppToAppDescriptorMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  versionCopy = version;
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openapp", migrationCopy);
  v8 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openin", migrationCopy);
  v9 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.quit.app", migrationCopy);
  v10 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.hide.app", migrationCopy);
  v11 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.splitscreen", migrationCopy);
  if (WFWorkflowHasActionsWithIdentifier(@"com.apple.mobilenotes.SharingExtension", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.appendnote", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.ride.requestride", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.sendmessage", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.mobilephone.call", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.facetime.facetime", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.pay", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.workout.start", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.request", migrationCopy))
  {
    v12 = 1;
  }

  else
  {
    v12 = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.timer.start", migrationCopy);
  }

  if (((HasActionsWithIdentifier | v8) | (v9 | v10)))
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 | v12;
  }

  if (WFCompareBundleVersions(versionCopy, @"0") == 2)
  {
    if (WFCompareBundleVersions(versionCopy, @"1136") != 3)
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

- (void)migrateAppToAppDescriptorForParameterKey:(id)key parameters:(id)parameters
{
  keyCopy = key;
  parametersCopy = parameters;
  v6 = [parametersCopy objectForKey:keyCopy];

  if (v6)
  {
    v7 = [parametersCopy objectForKey:keyCopy];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v7];
        mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
        v10 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v8];

        if (v10)
        {
          serializedRepresentation = [v10 serializedRepresentation];
          [parametersCopy setObject:serializedRepresentation forKey:keyCopy];
        }
      }
    }
  }
}

- (void)migrateSplitScreenWithParameters:(id)parameters
{
  parametersCopy = parameters;
  [(WFAppToAppDescriptorMigration *)self migrateAppToAppDescriptorForParameterKey:@"WFPrimaryAppIdentifier" parameters:parametersCopy];
  v4 = [parametersCopy objectForKey:@"WFSecondaryAppIdentifier"];

  if (v4)
  {
    [(WFAppToAppDescriptorMigration *)self migrateAppToAppDescriptorForParameterKey:@"WFSecondaryAppIdentifier" parameters:parametersCopy];
  }
}

- (void)migrateOpenInWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v3 = [parametersCopy objectForKey:@"WFOpenInAppIdentifier"];
  if (v3)
  {
  }

  else
  {
    v9 = [parametersCopy objectForKey:@"WFSelectedApp"];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v4 = [parametersCopy objectForKey:@"WFOpenInAppIdentifier"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v4];
      mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v5];

      if (v7)
      {
        serializedRepresentation = [v7 serializedRepresentation];
        [parametersCopy setObject:serializedRepresentation forKey:@"WFSelectedApp"];
      }
    }
  }

LABEL_10:
}

- (void)migrateOpenAppWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v3 = [parametersCopy objectForKey:@"WFAppIdentifier"];
  if (v3)
  {
  }

  else
  {
    v9 = [parametersCopy objectForKey:@"WFSelectedApp"];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  v4 = [parametersCopy objectForKey:@"WFAppIdentifier"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v4];
      mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v5];

      if (v7)
      {
        serializedRepresentation = [v7 serializedRepresentation];
        [parametersCopy setObject:serializedRepresentation forKey:@"WFSelectedApp"];
      }
    }
  }

LABEL_10:
}

- (void)migrateWorkflow
{
  actions = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__WFAppToAppDescriptorMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [actions enumerateObjectsUsingBlock:v4];

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

- (BOOL)actionDictionaryContainsSystemIntentAction:(id)action
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
  actionCopy = action;
  v6 = [v4 arrayWithObjects:v11 count:10];
  actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
  v8 = [actionCopy objectForKeyedSubscript:actionIdentifierKey];

  LOBYTE(actionIdentifierKey) = [v6 containsObject:v8];
  v9 = *MEMORY[0x1E69E9840];
  return actionIdentifierKey;
}

@end