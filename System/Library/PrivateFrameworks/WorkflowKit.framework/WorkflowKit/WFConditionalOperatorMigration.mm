@interface WFConditionalOperatorMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFConditionalOperatorMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.conditional", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.conditional" usingBlock:&__block_literal_global_67109];

  [(WFWorkflowMigration *)self finish];
}

void __49__WFConditionalOperatorMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v3 = [v12 objectForKeyedSubscript:@"WFControlFlowMode"];
  v4 = [v3 integerValue];

  v5 = v12;
  if (!v4)
  {
    v6 = [v12 objectForKeyedSubscript:@"WFCondition"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v6 isEqualToString:@"Equals"])
      {
        v7 = 4;
      }

      else if ([v6 isEqualToString:@"Is Greater Than"])
      {
        v7 = 2;
      }

      else if ([v6 isEqualToString:@"Is Less Than"])
      {
        v7 = 0;
      }

      else
      {
        v7 = 99;
      }

      v8 = [WFNumberSubstitutableState alloc];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v10 = [(WFNumberSubstitutableState *)v8 initWithNumber:v9];
      v11 = [(WFVariableSubstitutableParameterState *)v10 serializedRepresentation];
      [v12 setObject:v11 forKeyedSubscript:@"WFCondition"];

      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WFConditionalLegacyComparisonBehavior"];
    }

    v5 = v12;
  }
}

@end