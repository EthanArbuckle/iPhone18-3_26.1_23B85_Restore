@interface SWSetupManager
- (SWSetupManager)initWithLogger:(id)a3;
- (void)addTask:(id)a3;
- (void)performTasks;
@end

@implementation SWSetupManager

- (SWSetupManager)initWithLogger:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SWSetupManager;
  v6 = [(SWSetupManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
    v8 = [MEMORY[0x1E695DFA0] orderedSet];
    tasks = v7->_tasks;
    v7->_tasks = v8;
  }

  return v7;
}

- (void)addTask:(id)a3
{
  v9 = a3;
  v4 = [(SWSetupManager *)self logger];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v9 identifier];
  v7 = [v5 stringWithFormat:@"Adding setup task with identifier %@", v6];
  [v4 log:v7];

  if (v9)
  {
    v8 = [(SWSetupManager *)self tasks];
    [v8 addObject:v9];
  }
}

- (void)performTasks
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(SWSetupManager *)self logger];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SWSetupManager *)self tasks];
  v6 = [v4 stringWithFormat:@"Performing %li setup tasks", objc_msgSend(v5, "count")];
  [v3 log:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(SWSetupManager *)self tasks];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [(SWSetupManager *)self logger];
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v13 identifier];
        v17 = [v15 stringWithFormat:@"Performing setup task: %@", v16];
        [v14 log:v17];

        [v13 performSetup];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = [(SWSetupManager *)self tasks];
  [v18 removeAllObjects];

  v19 = *MEMORY[0x1E69E9840];
}

@end