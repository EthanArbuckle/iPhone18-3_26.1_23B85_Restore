@interface PASUIExtensionHostViewController
- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithCoder:(id)a3;
- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)extensionDidFinishWith:(id)a3 context:(id)a4 completion:(id)a5;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)promptForFlowCancelWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation PASUIExtensionHostViewController

- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy) = 0;
  result = sub_26115B994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PASUIExtensionHostViewController();
  v2 = v6.receiver;
  [(PASUIExtensionHostViewController *)&v6 viewDidLoad];
  v3 = sub_261149D60();
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    sub_26111DAF8(v3, v4);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26114A814(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_26114B8C0(a4);
}

- (void)extensionDidFinishWith:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_26114ABA4(v10, v11, sub_2611262F4, v9);
}

- (void)promptForFlowCancelWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_26114B1A0(sub_2611262F4, v5);
}

@end