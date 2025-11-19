@interface ProvisioningCarPairingPinCodeViewController
- (_TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController)initWithContext:(int64_t)a3;
- (void)doneButtonPressed;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)keyboardDidChange:(id)a3;
- (void)loadView;
- (void)pinCodeTextFieldWasUpdated:(id)a3 isComplete:(BOOL)a4;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProvisioningCarPairingPinCodeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD4E84A0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD4E87B8(a3);
}

- (void)loadView
{
  v2 = self;
  sub_1BD4E888C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD4E9228();
}

- (void)doneButtonPressed
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter);
  v4 = self;
  if (v3)
  {
    [v3 reportButtonPressed_];
  }

  v5 = self + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate;
  swift_unknownObjectUnownedLoadStrong();
  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(ObjectType, v6);

  swift_unknownObjectRelease();
}

- (void)keyboardDidChange:(id)a3
{
  v4 = sub_1BE04A2E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  v9 = self;
  v10 = [(ProvisioningCarPairingPinCodeViewController *)v9 view];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];

    v12 = [(ProvisioningCarPairingPinCodeViewController *)v9 view];
    if (v12)
    {
      v13 = v12;
      [v12 layoutIfNeeded];

      (*(v5 + 8))(v8, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pinCodeTextFieldWasUpdated:(id)a3 isComplete:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_1BD4E96EC(a3, a4);
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter);
  v6 = a3;
  v7 = self;
  if (v5)
  {
    [v5 reportButtonPressed_];
  }

  v8 = self + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate;
  swift_unknownObjectUnownedLoadStrong();
  v9 = *(v8 + 1);
  ObjectType = swift_getObjectType();
  (*(v9 + 16))(ObjectType, v9);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate;
  swift_unknownObjectUnownedLoadStrong();
  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = self;
  v7(ObjectType, v5);
  swift_unknownObjectRelease();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7 = self;
  v5 = [(ProvisioningCarPairingPinCodeViewController *)v7 view];
  if (v5)
  {
    v6 = v5;
    [v5 setUserInteractionEnabled_];

    [(PKExplanationViewController *)v7 showSpinner:v4];
  }

  else
  {
    __break(1u);
  }
}

@end