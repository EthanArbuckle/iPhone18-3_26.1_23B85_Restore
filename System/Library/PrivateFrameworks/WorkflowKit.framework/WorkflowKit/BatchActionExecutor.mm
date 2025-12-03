@interface BatchActionExecutor
- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation BatchActionExecutor

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_1CA4FBB4C(executorCopy, requestCopy);
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_1CA4FBBD4(executorCopy, requestCopy);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_1CA4FBC5C(executorCopy, requestCopy);
}

- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_1CA4FBD6C(errorCopy, result, error);
}

- (void)executor:(id)executor needsAppProtectionUnlockWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  executorCopy = executor;
  selfCopy = self;
  sub_1CA4FC404(executorCopy, sub_1CA4FCE6C, v7);
}

@end