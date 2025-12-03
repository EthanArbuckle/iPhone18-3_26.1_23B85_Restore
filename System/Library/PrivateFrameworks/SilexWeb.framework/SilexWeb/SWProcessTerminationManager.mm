@interface SWProcessTerminationManager
- (SWProcessTerminationManager)initWithTerminationThrottler:(id)throttler errorReporter:(id)reporter;
- (void)onRetry:(id)retry;
- (void)webContentProcessTerminated;
@end

@implementation SWProcessTerminationManager

- (SWProcessTerminationManager)initWithTerminationThrottler:(id)throttler errorReporter:(id)reporter
{
  throttlerCopy = throttler;
  reporterCopy = reporter;
  v9 = reporterCopy;
  selfCopy = 0;
  if (throttlerCopy && reporterCopy)
  {
    v16.receiver = self;
    v16.super_class = SWProcessTerminationManager;
    v11 = [(SWProcessTerminationManager *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_throttler, throttler);
      objc_storeStrong(&v12->_errorReporter, reporter);
      array = [MEMORY[0x1E695DF70] array];
      onRetryBlocks = v12->_onRetryBlocks;
      v12->_onRetryBlocks = array;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)webContentProcessTerminated
{
  v19 = *MEMORY[0x1E69E9840];
  throttler = [(SWProcessTerminationManager *)self throttler];
  retryPolicy = [throttler retryPolicy];

  if (!retryPolicy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    onRetryBlocks = [(SWProcessTerminationManager *)self onRetryBlocks];
    v8 = [onRetryBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(onRetryBlocks);
          }

          (*(*(*(&v14 + 1) + 8 * i) + 16))();
        }

        v9 = [onRetryBlocks countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    goto LABEL_14;
  }

  if (retryPolicy != 1)
  {
LABEL_14:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:2 userInfo:0];
  errorReporter = [(SWProcessTerminationManager *)self errorReporter];
  [errorReporter reportError:v13];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)onRetry:(id)retry
{
  if (retry)
  {
    retryCopy = retry;
    onRetryBlocks = [(SWProcessTerminationManager *)self onRetryBlocks];
    v5 = MEMORY[0x1DA6FDA60](retryCopy);

    [onRetryBlocks addObject:v5];
  }
}

@end