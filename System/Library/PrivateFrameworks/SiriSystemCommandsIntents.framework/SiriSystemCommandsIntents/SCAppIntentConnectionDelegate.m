@interface SCAppIntentConnectionDelegate
- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4;
- (void)executor:(LNActionExecutor *)a3 environmentForViewSnippetWithCompletion:(id)a4;
- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation SCAppIntentConnectionDelegate

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DC2B0(v8, v7);
}

- (void)executor:(id)a3 needsActionConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DC334(v8, v7);
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DC654(v8, v7);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DC6D8(v8, v7);
}

- (void)executor:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_2691DC75C(v11, a4, a5);
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

  sub_2691DD1AC(&unk_2691E3F68, v7);
}

- (BOOL)executor:(id)a3 shouldRunShowOutputAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DD2BC();

  return 0;
}

- (void)executor:(id)a3 needsContinueInAppWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2691DD464(v8, v7);
}

@end