@interface SESecureCaptureOpenApplicationAfterTransitionCompletionAction
- (NSSet)launchActions;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)init;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithCoder:(id)a3;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)a3 responder:(id)a4;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithUserActivity:(id)a3 responder:(id)a4;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithXPCDictionary:(id)a3;
@end

@implementation SESecureCaptureOpenApplicationAfterTransitionCompletionAction

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)init
{
  v3.receiver = self;
  v3.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  return [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v3 initWithInfo:0 responder:0];
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithUserActivity:(id)a3 responder:(id)a4
{
  v5 = a3;
  v6 = a4;
  return SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(userActivity:responder:)(v5, a4);
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v3 = a3;
  v4 = [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  swift_unknownObjectRetain();
  v4 = [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (NSSet)launchActions
{
  v2 = self;
  SESecureCaptureOpenApplicationAfterTransitionCompletionAction.launchActions.getter();

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  return v3;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end