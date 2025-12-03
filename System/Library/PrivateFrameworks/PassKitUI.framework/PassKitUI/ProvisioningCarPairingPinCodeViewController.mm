@interface ProvisioningCarPairingPinCodeViewController
- (_TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController)initWithContext:(int64_t)context;
- (void)doneButtonPressed;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)keyboardDidChange:(id)change;
- (void)loadView;
- (void)pinCodeTextFieldWasUpdated:(id)updated isComplete:(BOOL)complete;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ProvisioningCarPairingPinCodeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD4E84A0();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD4E87B8(appear);
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD4E888C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD4E9228();
}

- (void)doneButtonPressed
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter);
  selfCopy = self;
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

- (void)keyboardDidChange:(id)change
{
  v4 = sub_1BE04A2E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  selfCopy = self;
  view = [(ProvisioningCarPairingPinCodeViewController *)selfCopy view];
  if (view)
  {
    v11 = view;
    [view setNeedsLayout];

    view2 = [(ProvisioningCarPairingPinCodeViewController *)selfCopy view];
    if (view2)
    {
      v13 = view2;
      [view2 layoutIfNeeded];

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

- (_TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pinCodeTextFieldWasUpdated:(id)updated isComplete:(BOOL)complete
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1BD4E96EC(updated, complete);
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_reporter);
  cancelCopy = cancel;
  selfCopy = self;
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

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPairingPinCodeViewController_delegate;
  swift_unknownObjectUnownedLoadStrong();
  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  selfCopy = self;
  v7(ObjectType, v5);
  swift_unknownObjectRelease();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningCarPairingPinCodeViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setUserInteractionEnabled_];

    [(PKExplanationViewController *)selfCopy showSpinner:iCopy];
  }

  else
  {
    __break(1u);
  }
}

@end