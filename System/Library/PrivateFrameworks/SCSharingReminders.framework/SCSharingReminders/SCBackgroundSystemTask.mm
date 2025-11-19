@interface SCBackgroundSystemTask
- (BOOL)_conformsToTaskHandling;
- (SCBackgroundSystemTask)init;
- (void)init;
- (void)registerForTaskUsingQueue:(id)a3;
- (void)rejectAndCloseTask:(id)a3 reason:(id)a4;
@end

@implementation SCBackgroundSystemTask

- (SCBackgroundSystemTask)init
{
  v7.receiver = self;
  v7.super_class = SCBackgroundSystemTask;
  v2 = [(SCBackgroundSystemTask *)&v7 init];
  v3 = v2;
  if (v2 && ![(SCBackgroundSystemTask *)v2 _conformsToTaskHandling])
  {
    v5 = SCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SCBackgroundSystemTask *)v3 init];
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)registerForTaskUsingQueue:(id)a3
{
  v4 = a3;
  v5 = [(SCBackgroundSystemTask *)self isRepeating];
  v8 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = [(SCBackgroundSystemTask *)self identifier];
  if (v5)
  {
    [(SCBackgroundSystemTask *)self repeatingTaskHandler];
  }

  else
  {
    [(SCBackgroundSystemTask *)self nonRepeatingTaskHandler];
  }
  v7 = ;
  [v8 registerForTaskWithIdentifier:v6 usingQueue:v4 launchHandler:v7];
}

- (void)rejectAndCloseTask:(id)a3 reason:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SCLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [(SCBackgroundSystemTask *)self identifier];
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_error_impl(&dword_262556000, v8, OS_LOG_TYPE_ERROR, "SC task %@ will not handle BGST task %@. Reason: %@", &v11, 0x20u);
  }

  [v6 setTaskCompleted];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_conformsToTaskHandling
{
  v3 = [(SCBackgroundSystemTask *)self identifier];

  if (v3)
  {
    v4 = [(SCBackgroundSystemTask *)self isRepeating];
    v5 = &selRef_repeatingTaskHandler;
    if (!v4)
    {
      v5 = &selRef_nonRepeatingTaskHandler;
    }

    v6 = *v5;
    v7 = objc_opt_respondsToSelector();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 identifier];
  v5 = [a1 isRepeating];
  v6 = @"handleNonRepeatingTask";
  if (v5)
  {
    v6 = @"handleRepeatingTask";
  }

  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Couldn't initialize task for identifier %@ and/or selector %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end