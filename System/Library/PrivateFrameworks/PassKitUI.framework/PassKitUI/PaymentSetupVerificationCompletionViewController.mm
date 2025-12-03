@interface PaymentSetupVerificationCompletionViewController
- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PaymentSetupVerificationCompletionViewController

- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD49C888();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillAppear:appearCopy];
  dockView = [v4 dockView];
  if (dockView)
  {
    v6 = dockView;
    [dockView setButtonsEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_reporter] reportViewAppeared];
  sub_1BD49CAB0();
}

- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)defaultHeaderViewTitle
{
  selfCopy = self;
  sub_1BD49D038();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  selfCopy = self;
  sub_1BD49D038();
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
  v2 = sub_1BE052724();

  return v2;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  dockView = [(PKPaymentSetupTableViewController *)selfCopy dockView];
  if (!dockView)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = dockView;
  [(PKPaymentSetupDockView *)dockView setButtonsEnabled:0];
  primaryButton = [(PKPaymentSetupDockView *)v6 primaryButton];
  if (!primaryButton)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = primaryButton;
  [(PKLegacyButtonInterface *)primaryButton setShowSpinner:iCopy];
}

@end