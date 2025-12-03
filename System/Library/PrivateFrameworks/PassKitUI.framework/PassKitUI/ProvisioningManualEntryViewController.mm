@interface ProvisioningManualEntryViewController
- (BOOL)fieldCell:(id)cell supportsKeyboardAccessory:(unint64_t)accessory;
- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)_skipCardButtonPressed;
- (void)_tapToProvisionButtonPressed;
- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects;
- (void)fieldCell:(id)cell didTapKeyboardAccessory:(unint64_t)accessory;
- (void)fieldCellEditableTextFieldValueDidChange:(id)change;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ProvisioningManualEntryViewController

- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1BD659E98();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(PKPaymentSetupFieldsViewController *)&v8 viewDidAppear:appearCopy];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ProvisioningManualEntryViewController *)&v6 viewDidDisappear:disappearCopy];
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
    selfCopy = self;
    v3 = v2;
    sub_1BD81521C();
  }
}

- (void)_tapToProvisionButtonPressed
{
  selfCopy = self;
  sub_1BD65A3EC();
}

- (_TtC9PassKitUI37ProvisioningManualEntryViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  selfCopy = self;
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

- (void)handleNextButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BD65A824();

  sub_1BD14EC0C(v6);
}

- (id)defaultHeaderViewTitle
{
  selfCopy = self;
  sub_1BD65A940();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  selfCopy = self;
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
  defaultPaymentSetupProvisioningFields = [objc_opt_self() defaultPaymentSetupProvisioningFields];
  if (defaultPaymentSetupProvisioningFields)
  {
    v3 = defaultPaymentSetupProvisioningFields;
    sub_1BE052744();

    v4 = sub_1BE052724();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fieldCellEditableTextFieldValueDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BD65ADE8(change);
}

- (BOOL)fieldCell:(id)cell supportsKeyboardAccessory:(unint64_t)accessory
{
  if (accessory == 2)
  {
    return *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton);
  }

  if (accessory != 1)
  {
    return 0;
  }

  v9 = v4;
  v10 = v5;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(PKPaymentSetupFieldsViewController *)&v8 fieldCell:cell supportsKeyboardAccessory:1];
}

- (void)fieldCell:(id)cell didTapKeyboardAccessory:(unint64_t)accessory
{
  if (accessory == 1)
  {
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    [(PKPaymentSetupFieldsViewController *)&v8 fieldCell:cell didTapKeyboardAccessory:1];
  }

  else if (accessory == 2)
  {
    cellCopy = cell;
    selfCopy = self;
    sub_1BD65B028();
  }
}

- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects
{
  if (objects)
  {
    v6 = sub_1BE052744();
  }

  else
  {
    v6 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1BD65C260(controller, v6);
}

@end