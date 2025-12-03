@interface AuthenticatorWrapper
- (_TtC9PassKitUI20AuthenticatorWrapper)init;
- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state;
- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event;
- (void)contextWillBeginPresentingSecondaryUI:(id)i;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)dismissPassphraseViewController;
- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)presentPassphraseViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
@end

@implementation AuthenticatorWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator);
  selfCopy = self;
  [v5 invalidate];
  [*(&self->super.isa + v4) setDelegate_];
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(AuthenticatorWrapper *)&v7 dealloc];
}

- (_TtC9PassKitUI20AuthenticatorWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contextWillBeginPresentingSecondaryUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_1BD7F5070();
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  controllerCopy = controller;
  resultsCopy = results;
  selfCopy = self;
  errorCopy = error;
  sub_1BD7F52D4(results, error);
}

- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event
{
  var1 = event.var1;
  var0 = event.var0;
  authenticatorCopy = authenticator;
  selfCopy = self;
  sub_1BD7F5384(var0, var1);
}

- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state
{
  authenticatorCopy = authenticator;
  selfCopy = self;
  sub_1BD7F57A8(state);
}

- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(reply);
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
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD7F5A00(controller, v8, v11);
  sub_1BD0D4744(v10);
  sub_1BD0D4744(v8);
}

- (void)presentPassphraseViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(reply);
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
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD7F5CF8(controller, v8, v11);
  sub_1BD0D4744(v10);
  sub_1BD0D4744(v8);
}

- (void)dismissPasscodeViewController
{
  selfCopy = self;
  sub_1BD7F4C7C("AuthenticatorWrapper - dismissPasscodeViewController");
}

- (void)dismissPassphraseViewController
{
  selfCopy = self;
  sub_1BD7F4C7C("AuthenticatorWrapper - dismissPassphraseViewController");
}

@end