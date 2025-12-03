@interface SCAppIntentConnectionDelegate
- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action;
- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion;
- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation SCAppIntentConnectionDelegate

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2691DC2B0(selfCopy, requestCopy);
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2691DC334(selfCopy, requestCopy);
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2691DC654(selfCopy, requestCopy);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2691DC6D8(selfCopy, requestCopy);
}

- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_2691DC75C(errorCopy, result, error);
}

- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = executor;
  v7[3] = v6;
  v7[4] = self;
  executorCopy = executor;
  selfCopy = self;

  sub_2691DD1AC(&unk_2691E3F68, v7);
}

- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action
{
  executorCopy = executor;
  actionCopy = action;
  selfCopy = self;
  sub_2691DD2BC();

  return 0;
}

- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2691DD464(selfCopy, requestCopy);
}

@end