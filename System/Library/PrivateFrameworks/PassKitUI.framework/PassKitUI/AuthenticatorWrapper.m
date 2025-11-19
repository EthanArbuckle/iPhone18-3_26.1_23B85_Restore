@interface AuthenticatorWrapper
- (_TtC9PassKitUI20AuthenticatorWrapper)init;
- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4;
- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4;
- (void)contextWillBeginPresentingSecondaryUI:(id)a3;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)dismissPassphraseViewController;
- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5;
@end

@implementation AuthenticatorWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator);
  v6 = self;
  [v5 invalidate];
  [*(&self->super.isa + v4) setDelegate_];
  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(AuthenticatorWrapper *)&v7 dealloc];
}

- (_TtC9PassKitUI20AuthenticatorWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contextWillBeginPresentingSecondaryUI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD7F5070();
}

- (void)signInViewController:(id)a3 didAuthenticateWithResults:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1BD7F52D4(a4, a5);
}

- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = self;
  sub_1BD7F5384(var0, var1);
}

- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1BD7F57A8(a4);
}

- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1BD1B6FEC;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v9)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v10;
    v10 = sub_1BD7F612C;
  }

LABEL_5:
  v12 = a3;
  v13 = self;
  sub_1BD7F5A00(a3, v8, v11);
  sub_1BD0D4744(v10);
  sub_1BD0D4744(v8);
}

- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1BD1B6B00;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v9)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v10;
    v10 = sub_1BD3CD5AC;
  }

LABEL_5:
  v12 = a3;
  v13 = self;
  sub_1BD7F5CF8(a3, v8, v11);
  sub_1BD0D4744(v10);
  sub_1BD0D4744(v8);
}

- (void)dismissPasscodeViewController
{
  v2 = self;
  sub_1BD7F4C7C("AuthenticatorWrapper - dismissPasscodeViewController");
}

- (void)dismissPassphraseViewController
{
  v2 = self;
  sub_1BD7F4C7C("AuthenticatorWrapper - dismissPassphraseViewController");
}

@end