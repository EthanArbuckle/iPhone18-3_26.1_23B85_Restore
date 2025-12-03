@interface ReadThisAppIntentConnectionDelegate
- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action;
- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion;
- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error;
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation ReadThisAppIntentConnectionDelegate

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_268C4DEF8();
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_268C4DF7C();
}

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_268C4E278();
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_268C4E2FC();
}

- (void)executor:(id)executor didFinishWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_268C4E740();
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

  sub_268C4F104(&unk_268C5B7F0, v7);
}

- (BOOL)executor:(id)executor shouldRunShowOutputAction:(id)action
{
  executorCopy = executor;
  actionCopy = action;
  selfCopy = self;
  sub_268C4F214();

  return 0;
}

- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_268C4F3B8();
}

@end