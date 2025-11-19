@interface PaymentSetupVerificationCompletionViewController
- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PaymentSetupVerificationCompletionViewController

- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD49C888();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 dockView];
  if (v5)
  {
    v6 = v5;
    [v5 setButtonsEnabled_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI48PaymentSetupVerificationCompletionViewController_reporter] reportViewAppeared];
  sub_1BD49CAB0();
}

- (_TtC9PassKitUI48PaymentSetupVerificationCompletionViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)defaultHeaderViewTitle
{
  v2 = self;
  sub_1BD49D038();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = self;
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

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v9 = self;
  v5 = [(PKPaymentSetupTableViewController *)v9 dockView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [(PKPaymentSetupDockView *)v5 setButtonsEnabled:0];
  v7 = [(PKPaymentSetupDockView *)v6 primaryButton];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [(PKLegacyButtonInterface *)v7 setShowSpinner:v4];
}

@end