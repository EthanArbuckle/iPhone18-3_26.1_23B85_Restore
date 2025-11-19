@interface TIAppAutofillManagerMock
- (TIAppAutofillManagerMock)init;
- (void)generateAutofillFormCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completion:(id)a5;
- (void)shouldAcceptAutofill:(id)a3 withPayload:(id)a4 completion:(id)a5;
- (void)shouldAcceptOneTimeCode:(id)a3 completion:(id)a4;
@end

@implementation TIAppAutofillManagerMock

- (void)shouldAcceptOneTimeCode:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)shouldAcceptAutofill:(id)a3 withPayload:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)generateAutofillFormCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = dispatch_get_global_queue(33, 0);
  v8 = v5;
  v7 = v5;
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