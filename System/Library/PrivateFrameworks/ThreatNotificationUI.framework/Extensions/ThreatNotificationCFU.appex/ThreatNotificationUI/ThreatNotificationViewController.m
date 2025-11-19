@interface ThreatNotificationViewController
- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithCoder:(id)a3;
- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ThreatNotificationViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ThreatNotificationViewController.viewDidAppear(_:)(a3);
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = a4;
  v12 = self;
  specialized ThreatNotificationViewController.processFollowUpItem(_:selectedAction:completion:)(a3, v8, v9);
  sub_1000047C4(v8);
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  specialized ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(v4, v5);
  sub_1000047C4(v4);
}

- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
    *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ThreatNotificationViewController();
  v9 = [(ThreatNotificationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC21ThreatNotificationCFU32ThreatNotificationViewController)initWithCoder:(id)a3
{
  *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&self->FLExtensionViewController_opaque[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ThreatNotificationViewController();
  v4 = a3;
  v5 = [(ThreatNotificationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end