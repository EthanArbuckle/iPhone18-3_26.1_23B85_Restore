@interface ReadThisAppIntentConnectionDelegate
- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4;
- (void)executor:(LNActionExecutor *)a3 environmentForViewSnippetWithCompletion:(id)a4;
- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation ReadThisAppIntentConnectionDelegate

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4DEF8();
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4DF7C();
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4E278();
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4E2FC();
}

- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_268C4E740();
}

- (void)executor:(LNActionExecutor *)a3 environmentForViewSnippetWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_268C4F104(&unk_268C5B7F0, v7);
}

- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4F214();

  return 0;
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_268C4F3B8();
}

@end