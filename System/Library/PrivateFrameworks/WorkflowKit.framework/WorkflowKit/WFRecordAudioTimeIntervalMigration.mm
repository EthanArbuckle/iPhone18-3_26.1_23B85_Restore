@interface WFRecordAudioTimeIntervalMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFRecordAudioTimeIntervalMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1113.1"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.recordaudio", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.recordaudio" usingBlock:&__block_literal_global_35611];

  [(WFWorkflowMigration *)self finish];
}

void __53__WFRecordAudioTimeIntervalMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"WFRecordingTimeInterval"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [WFQuantityParameterState alloc];
    v6 = [[WFNumberStringSubstitutableState alloc] initWithValue:&stru_1F4A1C408];
    v7 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v6 unitString:@"sec"];
LABEL_5:
    v10 = v7;

    v11 = [v10 serializedRepresentation];
    [v3 setObject:v11 forKeyedSubscript:@"WFRecordingTimeInterval"];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v9 = v8;
    v24[0] = @"sec";
    v24[1] = @"min";
    v24[2] = @"hr";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v7 = [WFDurationQuantityFieldParameter stateForDuration:v6 possibleUnits:v9];
    goto LABEL_5;
  }

  v13 = v4;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v10 = v14;

  v15 = [v10 objectForKeyedSubscript:@"WFSerializationType"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v11 = v16;

  if (([v11 isEqualToString:@"WFQuantityFieldValue"] & 1) == 0 && objc_msgSend(v11, "isEqualToString:", @"WFTextTokenAttachment"))
  {
    v17 = [v10 objectForKeyedSubscript:@"Value"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = objc_opt_new();
    [v20 setValue:v19 forKey:@"Magnitude"];

    [v20 setValue:@"sec" forKey:@"Unit"];
    v22[0] = @"WFSerializationType";
    v22[1] = @"Value";
    v23[0] = @"WFQuantityFieldValue";
    v23[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v3 setObject:v21 forKeyedSubscript:@"WFRecordingTimeInterval"];
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
}

@end