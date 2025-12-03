@interface PASUIExtensionHostViewController
- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithCoder:(id)coder;
- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)extensionDidFinishWith:(id)with context:(id)context completion:(id)completion;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)promptForFlowCancelWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PASUIExtensionHostViewController

- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithCoder:(id)coder
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
  view = [v2 view];
  if (view)
  {
    v5 = view;
    sub_26111DAF8(v3, view);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_26114A814(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_26114B8C0(error);
}

- (void)extensionDidFinishWith:(id)with context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  withCopy = with;
  contextCopy = context;
  selfCopy = self;
  sub_26114ABA4(withCopy, contextCopy, sub_2611262F4, v9);
}

- (void)promptForFlowCancelWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_26114B1A0(sub_2611262F4, v5);
}

@end