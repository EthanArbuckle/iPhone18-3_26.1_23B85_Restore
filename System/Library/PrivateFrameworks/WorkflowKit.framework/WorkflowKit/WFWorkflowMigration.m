@interface WFWorkflowMigration
- (NSMutableArray)actions;
- (NSMutableSet)warnings;
- (void)enumerateActionsWithIdentifier:(id)a3 usingBlock:(id)a4;
- (void)finish;
- (void)migrateWorkflowIfNeeded:(id)a3 completion:(id)a4;
@end

@implementation WFWorkflowMigration

- (void)enumerateActionsWithIdentifier:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflowMigration *)self actions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__WFWorkflowMigration_enumerateActionsWithIdentifier_usingBlock___block_invoke;
  v11[3] = &unk_1E8375908;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __65__WFWorkflowMigration_enumerateActionsWithIdentifier_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v6 = [*(a1 + 32) actionIdentifierKey];
  v7 = [v12 objectForKeyedSubscript:v6];
  v8 = [v7 isEqualToString:*(a1 + 40)];

  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) actionParametersKey];
    v11 = [v12 objectForKeyedSubscript:v10];
    (*(v9 + 16))(v9, v12, v11, a4);
  }
}

- (NSMutableArray)actions
{
  v2 = [(WFWorkflowMigration *)self workflow];
  v3 = [v2 objectForKeyedSubscript:@"WFWorkflowActions"];

  return v3;
}

- (void)finish
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self->_warnings);
  }
}

- (NSMutableSet)warnings
{
  warnings = self->_warnings;
  if (!warnings)
  {
    v4 = objc_opt_new();
    v5 = self->_warnings;
    self->_warnings = v4;

    warnings = self->_warnings;
  }

  return warnings;
}

- (void)migrateWorkflowIfNeeded:(id)a3 completion:(id)a4
{
  objc_storeStrong(&self->_workflow, a3);
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(v8);

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  [(WFWorkflowMigration *)self migrateWorkflow];
}

@end