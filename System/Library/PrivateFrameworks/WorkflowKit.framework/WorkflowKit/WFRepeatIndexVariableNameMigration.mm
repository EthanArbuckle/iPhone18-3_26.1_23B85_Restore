@interface WFRepeatIndexVariableNameMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)calculateVariableNamesAtActionIndex:(unint64_t)index oldRepeatScopeVariables:(id *)variables;
- (void)migrateWorkflow;
@end

@implementation WFRepeatIndexVariableNameMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  v6 = (WFCompareBundleVersions(version, @"154") - 1) >= 2 && WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getvariable", migrationCopy) && ((WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.repeat.each", migrationCopy) & 1) != 0 || WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.repeat.count", migrationCopy));

  return v6;
}

- (void)calculateVariableNamesAtActionIndex:(unint64_t)index oldRepeatScopeVariables:(id *)variables
{
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  actions = [(WFWorkflowMigration *)self actions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__WFRepeatIndexVariableNameMigration_calculateVariableNamesAtActionIndex_oldRepeatScopeVariables___block_invoke;
  v11[3] = &unk_1E837F820;
  v13 = v17;
  v14 = v16;
  v11[4] = self;
  indexCopy = index;
  v9 = strongToStrongObjectsMapTable;
  v12 = v9;
  [actions enumerateObjectsUsingBlock:v11];

  if (variables)
  {
    v10 = v9;
    *variables = v9;
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
}

void __98__WFRepeatIndexVariableNameMigration_calculateVariableNamesAtActionIndex_oldRepeatScopeVariables___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (*(a1 + 64) < a3 && !*(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) actionIdentifierKey];
  v8 = [v16 objectForKey:v7];

  if (([v8 isEqualToString:@"is.workflow.actions.repeat.each"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"is.workflow.actions.repeat.count"))
  {
    v9 = [*(a1 + 32) actionParametersKey];
    v10 = [v16 objectForKey:v9];

    v11 = [v10 objectForKey:@"WFControlFlowMode"];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = [v11 integerValue];
    if (v13 == 2)
    {
      --*(*(*(a1 + 48) + 8) + 24);
    }

    else if (!v13)
    {
LABEL_8:
      ++*(*(*(a1 + 48) + 8) + 24);
      ++*(*(*(a1 + 56) + 8) + 24);
      if (*(a1 + 64) != a3)
      {
        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          v14 = @"Repeat Index";
        }

        else
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Repeat Index %ld", *(*(*(a1 + 56) + 8) + 24)];
        }

        if (*(*(*(a1 + 48) + 8) + 24) == 1)
        {
          v15 = @"Repeat Index";
        }

        else
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Repeat Index %ld", *(*(*(a1 + 48) + 8) + 24)];
        }

        [*(a1 + 40) setObject:v15 forKey:v14];
      }
    }
  }

LABEL_20:
}

- (void)migrateWorkflow
{
  actions = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__WFRepeatIndexVariableNameMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [actions enumerateObjectsUsingBlock:v4];

  [(WFWorkflowMigration *)self finish];
}

void __53__WFRepeatIndexVariableNameMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) actionIdentifierKey];
  v7 = [v5 objectForKey:v6];

  if ([v7 isEqualToString:@"is.workflow.actions.getvariable"])
  {
    v8 = *(a1 + 32);
    v31 = 0;
    [v8 calculateVariableNamesAtActionIndex:a3 oldRepeatScopeVariables:&v31];
    v9 = v31;
    v10 = [*(a1 + 32) actionParametersKey];
    v11 = [v5 objectForKey:v10];

    v12 = [v11 objectForKey:@"WFVariable"];
    v13 = [v12 objectForKey:@"Value"];
    v14 = [v13 objectForKey:@"VariableName"];
    v15 = [v13 objectForKey:@"VariableUUID"];
    v16 = [v9 objectForKey:v14];
    if (v16)
    {
      v17 = v16;
      [v13 setObject:v16 forKey:@"VariableName"];
      v26 = [*(a1 + 32) workflow];
      [v26 objectForKey:@"WFWorkflowVariables"];
      v27 = v12;
      v18 = v28 = v9;
      v19 = MEMORY[0x1E696AE18];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __53__WFRepeatIndexVariableNameMigration_migrateWorkflow__block_invoke_2;
      v29[3] = &unk_1E837F7D0;
      v30 = v15;
      v25 = v15;
      v20 = [v19 predicateWithBlock:v29];
      v21 = [v18 filteredArrayUsingPredicate:v20];
      [v21 firstObject];
      v22 = v14;
      v24 = v23 = v11;

      v9 = v28;
      v12 = v27;

      [v24 setObject:v17 forKey:@"Name"];
      v11 = v23;
      v14 = v22;

      v15 = v17;
    }
  }
}

uint64_t __53__WFRepeatIndexVariableNameMigration_migrateWorkflow__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"UUID"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end