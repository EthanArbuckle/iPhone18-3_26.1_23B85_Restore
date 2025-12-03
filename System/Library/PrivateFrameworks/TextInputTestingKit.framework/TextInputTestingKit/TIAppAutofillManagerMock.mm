@interface TIAppAutofillManagerMock
- (TIAppAutofillManagerMock)init;
- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion;
- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion;
- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion;
@end

@implementation TIAppAutofillManagerMock

- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_get_global_queue(33, 0);
  v8 = completionCopy;
  v7 = completionCopy;
  TIDispatchAsync();
}

- (TIAppAutofillManagerMock)init
{
  v6.receiver = self;
  v6.super_class = TIAppAutofillManagerMock;
  v2 = [(TIAppAutofillManagerMock *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasOneTimeCode = 0;
    secureCandidateRenderer = v2->_secureCandidateRenderer;
    v2->_secureCandidateRenderer = 0;
  }

  return v3;
}

@end