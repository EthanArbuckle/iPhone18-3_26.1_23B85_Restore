@interface SCBackgroundSystemTask
- (BOOL)_conformsToTaskHandling;
- (SCBackgroundSystemTask)init;
- (void)init;
- (void)registerForTaskUsingQueue:(id)queue;
- (void)rejectAndCloseTask:(id)task reason:(id)reason;
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

- (void)registerForTaskUsingQueue:(id)queue
{
  queueCopy = queue;
  isRepeating = [(SCBackgroundSystemTask *)self isRepeating];
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  identifier = [(SCBackgroundSystemTask *)self identifier];
  if (isRepeating)
  {
    [(SCBackgroundSystemTask *)self repeatingTaskHandler];
  }

  else
  {
    [(SCBackgroundSystemTask *)self nonRepeatingTaskHandler];
  }
  v7 = ;
  [mEMORY[0x277CF0810] registerForTaskWithIdentifier:identifier usingQueue:queueCopy launchHandler:v7];
}

- (void)rejectAndCloseTask:(id)task reason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  reasonCopy = reason;
  v8 = SCLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    identifier = [(SCBackgroundSystemTask *)self identifier];
    v11 = 138412802;
    v12 = identifier;
    v13 = 2112;
    v14 = taskCopy;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_error_impl(&dword_262556000, v8, OS_LOG_TYPE_ERROR, "SC task %@ will not handle BGST task %@. Reason: %@", &v11, 0x20u);
  }

  [taskCopy setTaskCompleted];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_conformsToTaskHandling
{
  identifier = [(SCBackgroundSystemTask *)self identifier];

  if (identifier)
  {
    isRepeating = [(SCBackgroundSystemTask *)self isRepeating];
    v5 = &selRef_repeatingTaskHandler;
    if (!isRepeating)
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
  identifier = [self identifier];
  isRepeating = [self isRepeating];
  v6 = @"handleNonRepeatingTask";
  if (isRepeating)
  {
    v6 = @"handleRepeatingTask";
  }

  v8 = 138412546;
  v9 = identifier;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Couldn't initialize task for identifier %@ and/or selector %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end