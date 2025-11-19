@interface SSTestingCoordinator
- (SSTestingCoordinatorDelegate)delegate;
- (void)_delayedHandleRunPPTRequest:(id)a3;
- (void)handleRunPPTRequest:(id)a3;
@end

@implementation SSTestingCoordinator

- (void)_delayedHandleRunPPTRequest:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v8 testName];
  [v4 startedIPTest:v5];

  if ([v8 numberOfRequiredScreenshots])
  {
    v6 = [(SSTestingCoordinator *)self delegate];
    [v6 testingCoordinator:self requestsTakingScreenshotForRunPPTRequest:v8];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v7 = [v8 testName];
    [v6 finishedIPTest:v7];
  }
}

- (void)handleRunPPTRequest:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 5000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSTestingCoordinator_handleRunPPTRequest___block_invoke;
  v7[3] = &unk_1E85903B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

- (SSTestingCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end