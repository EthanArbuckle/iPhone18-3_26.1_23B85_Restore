@interface SWProcessTerminationManager
- (SWProcessTerminationManager)initWithTerminationThrottler:(id)a3 errorReporter:(id)a4;
- (void)onRetry:(id)a3;
- (void)webContentProcessTerminated;
@end

@implementation SWProcessTerminationManager

- (SWProcessTerminationManager)initWithTerminationThrottler:(id)a3 errorReporter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v16.receiver = self;
    v16.super_class = SWProcessTerminationManager;
    v11 = [(SWProcessTerminationManager *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_throttler, a3);
      objc_storeStrong(&v12->_errorReporter, a4);
      v13 = [MEMORY[0x1E695DF70] array];
      onRetryBlocks = v12->_onRetryBlocks;
      v12->_onRetryBlocks = v13;
    }

    self = v12;
    v10 = self;
  }

  return v10;
}

- (void)webContentProcessTerminated
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(SWProcessTerminationManager *)self throttler];
  v4 = [v3 retryPolicy];

  if (!v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(SWProcessTerminationManager *)self onRetryBlocks];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v14 + 1) + 8 * i) + 16))();
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    goto LABEL_14;
  }

  if (v4 != 1)
  {
LABEL_14:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"web_content" code:2 userInfo:0];
  v5 = [(SWProcessTerminationManager *)self errorReporter];
  [v5 reportError:v13];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)onRetry:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(SWProcessTerminationManager *)self onRetryBlocks];
    v5 = MEMORY[0x1DA6FDA60](v4);

    [v6 addObject:v5];
  }
}

@end