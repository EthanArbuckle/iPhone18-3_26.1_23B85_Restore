@interface SESecureCaptureOpenApplicationAfterTransitionCompletionAction
- (NSSet)launchActions;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)init;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithCoder:(id)coder;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)info responder:(id)responder;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithUserActivity:(id)activity responder:(id)responder;
- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithXPCDictionary:(id)dictionary;
@end

@implementation SESecureCaptureOpenApplicationAfterTransitionCompletionAction

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)init
{
  v3.receiver = self;
  v3.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  return [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v3 initWithInfo:0 responder:0];
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithUserActivity:(id)activity responder:(id)responder
{
  activityCopy = activity;
  responderCopy = responder;
  return SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(userActivity:responder:)(activityCopy, responder);
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  coderCopy = coder;
  v4 = [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  swift_unknownObjectRetain();
  v4 = [(SESecureCaptureOpenApplicationAfterTransitionCompletionAction *)&v6 initWithXPCDictionary:dictionary];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (NSSet)launchActions
{
  selfCopy = self;
  SESecureCaptureOpenApplicationAfterTransitionCompletionAction.launchActions.getter();

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  return v3;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)info responder:(id)responder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SESecureCaptureOpenApplicationAfterTransitionCompletionAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end