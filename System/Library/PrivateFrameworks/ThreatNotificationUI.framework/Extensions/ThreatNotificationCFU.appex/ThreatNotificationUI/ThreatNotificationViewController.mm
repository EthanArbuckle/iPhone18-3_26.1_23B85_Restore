@interface ThreatNotificationViewController
- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithCoder:(id)coder;
- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ThreatNotificationViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ThreatNotificationViewController.viewDidAppear(_:)(appear);
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    v9[2] = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  }

  else
  {
    v9 = 0;
  }

  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  specialized ThreatNotificationViewController.processFollowUpItem(_:selectedAction:completion:)(item, v8, v9);
  sub_1000047C4(v8);
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FLUpdateResult) -> ();
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  specialized ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(v4, v5);
  sub_1000047C4(v4);
}

- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ThreatNotificationViewController();
  v9 = [(ThreatNotificationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithCoder:(id)coder
{
  *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ThreatNotificationViewController();
  coderCopy = coder;
  v5 = [(ThreatNotificationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end