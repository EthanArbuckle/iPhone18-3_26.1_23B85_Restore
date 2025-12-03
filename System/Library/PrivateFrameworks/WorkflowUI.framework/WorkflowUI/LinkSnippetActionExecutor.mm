@interface LinkSnippetActionExecutor
- (void)executor:(LNActionExecutor *)executor environmentForViewSnippetWithCompletion:(id)completion;
- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error;
@end

@implementation LinkSnippetActionExecutor

- (void)executor:(id)executor didCompleteExecutionWithResult:(id)result error:(id)error
{
  executorCopy = executor;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_274915E3C(errorCopy, result, error);
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

  sub_2749166B0(&unk_274A23E20, v7);
}

@end