@interface CACRecordedUserActionFlow
- (BOOL)doesNextSpokenCommandMatchIdentifier:(id)a3;
- (CACRecordedUserActionFlow)init;
- (CACRecordedUserActionFlow)initWithCoder:(id)a3;
- (CACRecordedUserActionFlow)initWithUserActions:(id)a3;
- (id)description;
- (id)plistDescription;
- (void)_configureEnvironment;
- (void)_executeNextActionWithCompletionBlock:(id)a3;
- (void)_exitFlowWithError:(id)a3 completionBlock:(id)a4;
- (void)_restoreEnvironment;
- (void)beginExecutingWithCompletionBlock:(id)a3;
- (void)cancelExecution;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CACRecordedUserActionFlow

- (CACRecordedUserActionFlow)init
{
  v7.receiver = self;
  v7.super_class = CACRecordedUserActionFlow;
  v2 = [(CACRecordedUserActionFlow *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_executingTaskIndex = -1;
    v4 = objc_opt_new();
    orignalEnvironmentSettings = v3->_orignalEnvironmentSettings;
    v3->_orignalEnvironmentSettings = v4;
  }

  return v3;
}

- (CACRecordedUserActionFlow)initWithUserActions:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CACRecordedUserActionFlow *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tasks, a3);
    v15[0] = @"OverlayType";
    v8 = +[CACPreferences sharedPreferences];
    v9 = [v8 alwaysShowOverlayType];
    v15[1] = @"LocaleIdentifier";
    v16[0] = v9;
    v10 = +[CACPreferences sharedPreferences];
    v11 = [v10 bestLocaleIdentifier];
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    environmentSettings = v7->_environmentSettings;
    v7->_environmentSettings = v12;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"Version"];
  [v4 encodeObject:self->_tasks forKey:@"Tasks"];
  [v4 encodeObject:self->_environmentSettings forKey:@"EnvironmentSettings"];
}

- (CACRecordedUserActionFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CACRecordedUserActionFlow *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Tasks"];
    tasks = v5->_tasks;
    v5->_tasks = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"EnvironmentSettings"];
    environmentSettings = v5->_environmentSettings;
    v5->_environmentSettings = v14;
  }

  return v5;
}

- (BOOL)doesNextSpokenCommandMatchIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  executingTaskIndex = v5->_executingTaskIndex;
  if (executingTaskIndex + 1 >= [(NSArray *)v5->_tasks count])
  {
    v10 = 0;
  }

  else
  {
    v7 = [(NSArray *)v5->_tasks objectAtIndex:v5->_executingTaskIndex + 1];
    v8 = [v7 spokenCommand];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:v4];
  }

  objc_sync_exit(v5);

  return v10;
}

- (void)beginExecutingWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  *&v5->_isExecuting = 1;
  objc_sync_exit(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CACRecordedUserActionFlow_beginExecutingWithCompletionBlock___block_invoke;
  v7[3] = &unk_279CEB3E0;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __63__CACRecordedUserActionFlow_beginExecutingWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureEnvironment];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _executeNextActionWithCompletionBlock:v3];
}

- (void)cancelExecution
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCancelled = 1;
  objc_sync_exit(obj);
}

- (void)_executeNextActionWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = 1;
  if (v5->_skipNextAction)
  {
    v6 = 2;
  }

  v7 = v6 + v5->_executingTaskIndex;
  v5->_executingTaskIndex = v7;
  v5->_skipNextAction = 0;
  isCancelled = v5->_isCancelled;
  v9 = [(NSArray *)v5->_tasks count];
  v10 = v9;
  if (isCancelled || v7 >= v9)
  {
    objc_sync_exit(v5);

    if (isCancelled)
    {
      v12 = v5;
      objc_sync_enter(v12);
      v12->_isExecuting = 0;
      objc_sync_exit(v12);

      v11 = [CACLocaleUtilities localizedUIStringForKey:@"CommandPlayback.Error.CancelledByUser"];
      v13 = CACMakeError(3000, v11);
      [(CACRecordedUserActionFlow *)v12 _exitFlowWithError:v13 completionBlock:v4];

      goto LABEL_12;
    }

    v11 = 0;
  }

  else
  {
    v11 = [(NSArray *)v5->_tasks objectAtIndex:v5->_executingTaskIndex];
    objc_sync_exit(v5);
  }

  if (v7 < v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__CACRecordedUserActionFlow__executeNextActionWithCompletionBlock___block_invoke;
    v15[3] = &unk_279CEB690;
    v15[4] = v5;
    v16 = v4;
    [v11 beginExecutingWithCompletionBlock:v15];
  }

  else
  {
    v14 = v5;
    objc_sync_enter(v14);
    v14->_isExecuting = 0;
    objc_sync_exit(v14);

    [(CACRecordedUserActionFlow *)v14 _exitFlowWithError:0 completionBlock:v4];
  }

LABEL_12:
}

void __67__CACRecordedUserActionFlow__executeNextActionWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code])
  {
    [*(a1 + 32) _exitFlowWithError:v3 completionBlock:*(a1 + 40)];
  }

  else
  {
    +[CACSpokenCommand defaultDelayBetweenCommands];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    v6 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__CACRecordedUserActionFlow__executeNextActionWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_279CEB3E0;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_after(v5, v6, v8);
  }
}

- (void)_exitFlowWithError:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CACRecordedUserActionFlow *)self _restoreEnvironment];
  v6[2](v6, v7);
}

- (void)_configureEnvironment
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSDictionary *)self->_environmentSettings allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isEqualToString:@"OverlayType"])
        {
          v9 = [(NSDictionary *)self->_environmentSettings objectForKey:v8];
          v10 = +[CACPreferences sharedPreferences];
          v11 = [v10 alwaysShowOverlayType];

          if (([v9 isEqualToString:v11] & 1) == 0)
          {
            v12 = +[CACPreferences sharedPreferences];
            [v12 setAlwaysShowOverlayType:v9];

            [(NSMutableDictionary *)self->_orignalEnvironmentSettings setObject:v11 forKey:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_restoreEnvironment
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_orignalEnvironmentSettings allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isEqualToString:@"OverlayType"])
        {
          v9 = +[CACPreferences sharedPreferences];
          v10 = [(NSMutableDictionary *)self->_orignalEnvironmentSettings objectForKey:v8];
          [v9 setAlwaysShowOverlayType:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)plistDescription
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tasks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) plistDescription];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setObject:self->_environmentSettings forKey:@"UserActionFlowEnvironment"];
  [v3 setObject:v4 forKey:@"UserActionFlowTasks"];

  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tasks;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        [v3 appendFormat:@"%ld\t%@\n", v10++, *(*(&v12 + 1) + 8 * v9++), v12];
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end