@interface SWSetupManager
- (SWSetupManager)initWithLogger:(id)logger;
- (void)addTask:(id)task;
- (void)performTasks;
@end

@implementation SWSetupManager

- (SWSetupManager)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v11.receiver = self;
  v11.super_class = SWSetupManager;
  v6 = [(SWSetupManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, logger);
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    tasks = v7->_tasks;
    v7->_tasks = orderedSet;
  }

  return v7;
}

- (void)addTask:(id)task
{
  taskCopy = task;
  logger = [(SWSetupManager *)self logger];
  v5 = MEMORY[0x1E696AEC0];
  identifier = [taskCopy identifier];
  v7 = [v5 stringWithFormat:@"Adding setup task with identifier %@", identifier];
  [logger log:v7];

  if (taskCopy)
  {
    tasks = [(SWSetupManager *)self tasks];
    [tasks addObject:taskCopy];
  }
}

- (void)performTasks
{
  v25 = *MEMORY[0x1E69E9840];
  logger = [(SWSetupManager *)self logger];
  v4 = MEMORY[0x1E696AEC0];
  tasks = [(SWSetupManager *)self tasks];
  v6 = [v4 stringWithFormat:@"Performing %li setup tasks", objc_msgSend(tasks, "count")];
  [logger log:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tasks2 = [(SWSetupManager *)self tasks];
  v8 = [tasks2 copy];

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
        logger2 = [(SWSetupManager *)self logger];
        v15 = MEMORY[0x1E696AEC0];
        identifier = [v13 identifier];
        v17 = [v15 stringWithFormat:@"Performing setup task: %@", identifier];
        [logger2 log:v17];

        [v13 performSetup];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  tasks3 = [(SWSetupManager *)self tasks];
  [tasks3 removeAllObjects];

  v19 = *MEMORY[0x1E69E9840];
}

@end