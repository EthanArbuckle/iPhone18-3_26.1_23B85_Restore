@interface ProvisioningManualEntryViewController
- (BOOL)fieldCell:(id)a3 supportsKeyboardAccessory:(unint64_t)a4;
- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)_skipCardButtonPressed;
- (void)_tapToProvisionButtonPressed;
- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4;
- (void)fieldCell:(id)a3 didTapKeyboardAccessory:(unint64_t)a4;
- (void)fieldCellEditableTextFieldValueDidChange:(id)a3;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation ProvisioningManualEntryViewController

- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD659E98();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(PKPaymentSetupFieldsViewController *)&v8 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = PKSecureElementPassProductTypeAnalyticsDescriptor();
  if (v6)
  {
    v7 = v6;
    [v5 setProductType:v6 subtype:{0, v8.receiver, v8.super_class}];

LABEL_4:
    [v5 reportViewAppeared];

    return;
  }

  __break(1u);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ProvisioningManualEntryViewController *)&v6 viewDidDisappear:v3];
  if ([v4 isMovingFromParentViewController])
  {
    v5 = *&v4[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter];
    if (v5)
    {
      [v5 resetProductTypes];
    }
  }
}

- (void)_skipCardButtonPressed
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator);
  if (v2)
  {
    v4 = self;
    v3 = v2;
    sub_1BD81521C();
  }
}

- (void)_tapToProvisionButtonPressed
{
  v2 = self;
  sub_1BD65A3EC();
}

- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  v2 = self;
  v3 = sub_1BD65A578();

  if (v3)
  {
    v4 = sub_1BE052724();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleNextButtonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1BD65A824();

  sub_1BD14EC0C(v6);
}

- (id)defaultHeaderViewTitle
{
  v2 = self;
  sub_1BD65A940();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = self;
  sub_1BD65A940();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1BE052404();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultFields
{
  v2 = [objc_opt_self() defaultPaymentSetupProvisioningFields];
  if (v2)
  {
    v3 = v2;
    sub_1BE052744();

    v4 = sub_1BE052724();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fieldCellEditableTextFieldValueDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD65ADE8(a3);
}

- (BOOL)fieldCell:(id)a3 supportsKeyboardAccessory:(unint64_t)a4
{
  if (a4 == 2)
  {
    return *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton);
  }

  if (a4 != 1)
  {
    return 0;
  }

  v9 = v4;
  v10 = v5;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(PKPaymentSetupFieldsViewController *)&v8 fieldCell:a3 supportsKeyboardAccessory:1];
}

- (void)fieldCell:(id)a3 didTapKeyboardAccessory:(unint64_t)a4
{
  if (a4 == 1)
  {
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    [(PKPaymentSetupFieldsViewController *)&v8 fieldCell:a3 didTapKeyboardAccessory:1];
  }

  else if (a4 == 2)
  {
    v5 = a3;
    v7 = self;
    sub_1BD65B028();
  }
}

- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4
{
  if (a4)
  {
    v6 = sub_1BE052744();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1BD65C260(a3, v6);
}

@end