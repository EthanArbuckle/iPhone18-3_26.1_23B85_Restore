@interface PKDataReleaseViewController
- (UIColor)_backgroundColorForModalFormSheet;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRequest:(id)a3 delegate:(id)a4;
- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRootViewController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)dataReleaseCompletedWithError:(id)a3;
- (void)dataReleaseContentViewController:(id)a3 didAuthorizeWithExternalAuthorizationData:(id)a4 dataToRelease:(id)a5;
- (void)dataReleaseContentViewController:(id)a3 didFinishWithError:(id)a4;
- (void)dataReleaseContentViewController:(id)a3 didResolveToMerchant:(id)a4;
- (void)dataReleaseContentViewControllerDidChangePhysicalButtonState:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKDataReleaseViewController

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRequest:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return PKDataReleaseViewController.init(request:delegate:)(v4);
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithCoder:(id)a3
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKDataReleaseViewController *)&v5 viewWillDisappear:v3];
  if ([v4 isBeingDismissed])
  {
    sub_1BD5B9E1C();
  }
}

- (UIColor)_backgroundColorForModalFormSheet
{
  v2 = [objc_opt_self() blackColor];
  IsAvailable = PKUserIntentIsAvailable();
  v4 = 0.4;
  if (IsAvailable)
  {
    v4 = 0.52;
  }

  v5 = [v2 colorWithAlphaComponent_];

  return v5;
}

- (void)dataReleaseCompletedWithError:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController);
  v8 = self;
  v5 = v4;
  if (a3)
  {
    v6 = a3;
    v7 = sub_1BE04A844();
  }

  else
  {
    v7 = 0;
  }

  [v5 dataReleaseCompletedWithError_];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(PKDataReleaseViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  sub_1BD5BA390();
  swift_unknownObjectRelease();
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9PassKitUI27PKDataReleaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataReleaseContentViewController:(id)a3 didAuthorizeWithExternalAuthorizationData:(id)a4 dataToRelease:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = self;
  v10 = sub_1BE04AAC4();
  v12 = v11;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1BE04AAB4();
    [v14 dataReleaseViewController:v9 didAuthorizeWithExternalAuthorizationData:v15 dataToRelease:v8];

    sub_1BD1245AC(v10, v12);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1BD1245AC(v10, v12);
  }
}

- (void)dataReleaseContentViewController:(id)a3 didFinishWithError:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a4;
  v14[4] = sub_1BD5BBE68;
  v14[5] = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD126964;
  v14[3] = &block_descriptor_19_4;
  v8 = _Block_copy(v14);
  v9 = self;
  v10 = a4;
  v11 = v9;
  v12 = v10;
  v13 = a3;

  [v13 dismissViewControllerAnimated:1 completion:v8];

  _Block_release(v8);
}

- (void)dataReleaseContentViewController:(id)a3 didResolveToMerchant:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v7 dataReleaseViewController:self didResolveToMerchant:a4];
    }

    swift_unknownObjectRelease();
  }
}

- (void)dataReleaseContentViewControllerDidChangePhysicalButtonState:(id)a3
{
  v3 = self;
  sub_1BD5B9E1C();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9PassKitUI27PKDataReleaseViewControllerC012presentationG10DidDismissyySo014UIPresentationG0CF_0();
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = _s9PassKitUI27PKDataReleaseViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(v8, a4);

  return v12;
}

@end