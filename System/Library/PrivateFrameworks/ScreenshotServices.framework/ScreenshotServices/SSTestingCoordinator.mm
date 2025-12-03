@interface SSTestingCoordinator
- (SSTestingCoordinatorDelegate)delegate;
- (void)_delayedHandleRunPPTRequest:(id)request;
- (void)handleRunPPTRequest:(id)request;
@end

@implementation SSTestingCoordinator

- (void)_delayedHandleRunPPTRequest:(id)request
{
  requestCopy = request;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  testName = [requestCopy testName];
  [mEMORY[0x1E69DC668] startedIPTest:testName];

  if ([requestCopy numberOfRequiredScreenshots])
  {
    delegate = [(SSTestingCoordinator *)self delegate];
    [delegate testingCoordinator:self requestsTakingScreenshotForRunPPTRequest:requestCopy];
  }

  else
  {
    delegate = [MEMORY[0x1E69DC668] sharedApplication];
    testName2 = [requestCopy testName];
    [delegate finishedIPTest:testName2];
  }
}

- (void)handleRunPPTRequest:(id)request
{
  requestCopy = request;
  v5 = dispatch_time(0, 5000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSTestingCoordinator_handleRunPPTRequest___block_invoke;
  v7[3] = &unk_1E85903B8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
}

- (SSTestingCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end