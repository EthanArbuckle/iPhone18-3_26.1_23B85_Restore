@interface PKDataReleaseViewController
- (UIColor)_backgroundColorForModalFormSheet;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRequest:(id)request delegate:(id)delegate;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRootViewController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)dataReleaseCompletedWithError:(id)error;
- (void)dataReleaseContentViewController:(id)controller didAuthorizeWithExternalAuthorizationData:(id)data dataToRelease:(id)release;
- (void)dataReleaseContentViewController:(id)controller didFinishWithError:(id)error;
- (void)dataReleaseContentViewController:(id)controller didResolveToMerchant:(id)merchant;
- (void)dataReleaseContentViewControllerDidChangePhysicalButtonState:(id)state;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKDataReleaseViewController

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  swift_unknownObjectRetain();
  return PKDataReleaseViewController.init(request:delegate:)(requestCopy);
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect);
  v5 = *(MEMORY[0x1E695F050] + 16);
  *v4 = *MEMORY[0x1E695F050];
  v4[1] = v5;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PKDataReleaseViewController *)&v3 viewDidLoad];
  if ([objc_opt_self() userIntentStyle] == 1)
  {
    sub_1BD5B9E1C();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKDataReleaseViewController *)&v5 viewWillDisappear:disappearCopy];
  if ([v4 isBeingDismissed])
  {
    sub_1BD5B9E1C();
  }
}

- (UIColor)_backgroundColorForModalFormSheet
{
  blackColor = [objc_opt_self() blackColor];
  IsAvailable = PKUserIntentIsAvailable();
  v4 = 0.4;
  if (IsAvailable)
  {
    v4 = 0.52;
  }

  colorWithAlphaComponent_ = [blackColor colorWithAlphaComponent_];

  return colorWithAlphaComponent_;
}

- (void)dataReleaseCompletedWithError:(id)error
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController);
  selfCopy = self;
  v5 = v4;
  if (error)
  {
    errorCopy = error;
    v7 = sub_1BE04A844();
  }

  else
  {
    v7 = 0;
  }

  [v5 dataReleaseCompletedWithError_];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(PKDataReleaseViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  sub_1BD5BA390();
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataReleaseContentViewController:(id)controller didAuthorizeWithExternalAuthorizationData:(id)data dataToRelease:(id)release
{
  dataCopy = data;
  releaseCopy = release;
  selfCopy = self;
  v10 = sub_1BE04AAC4();
  v12 = v11;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1BE04AAB4();
    [v14 dataReleaseViewController:selfCopy didAuthorizeWithExternalAuthorizationData:v15 dataToRelease:releaseCopy];

    sub_1BD1245AC(v10, v12);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1BD1245AC(v10, v12);
  }
}

- (void)dataReleaseContentViewController:(id)controller didFinishWithError:(id)error
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = error;
  v14[4] = sub_1BD5BBE68;
  v14[5] = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD126964;
  v14[3] = &block_descriptor_19_4;
  v8 = _Block_copy(v14);
  selfCopy = self;
  errorCopy = error;
  v11 = selfCopy;
  v12 = errorCopy;
  controllerCopy = controller;

  [controllerCopy dismissViewControllerAnimated:1 completion:v8];

  _Block_release(v8);
}

- (void)dataReleaseContentViewController:(id)controller didResolveToMerchant:(id)merchant
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v7 dataReleaseViewController:self didResolveToMerchant:merchant];
    }

    swift_unknownObjectRelease();
  }
}

- (void)dataReleaseContentViewControllerDidChangePhysicalButtonState:(id)state
{
  selfCopy = self;
  sub_1BD5B9E1C();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s9PassKitUI27PKDataReleaseViewControllerC012presentationG10DidDismissyySo014UIPresentationG0CF_0();
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = _s9PassKitUI27PKDataReleaseViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(controllerCopy, viewController);

  return v12;
}

@end