@interface BatchActionExecutor
- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsAppProtectionUnlockWithCompletionHandler:(id)a4;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation BatchActionExecutor

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA4FBB4C(v6, v7);
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA4FBBD4(v6, v7);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1CA4FBC5C(v6, v7);
}

- (void)executor:(id)a3 didCompleteExecutionWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1CA4FBD6C(v11, a4, a5);
}

- (void)executor:(id)a3 needsAppProtectionUnlockWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1CA4FC404(v8, sub_1CA4FCE6C, v7);
}

@end