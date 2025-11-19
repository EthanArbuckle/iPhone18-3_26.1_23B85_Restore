@interface PaymentSetupVerificationOTPViewController
- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)_handlePassVerifiedNotificationWithNotification:(id)a3;
- (void)_performVerificationButtonPressed;
- (void)_selectDifferentMethodButtonPressed;
- (void)_sendNewCodeButtonPressed;
- (void)_skipCardButtonPressed;
- (void)_startVerificationObserver;
- (void)_stopVerificationObserver;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4;
- (void)verificationObserverDidTimeout:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PaymentSetupVerificationOTPViewController

- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_verificationCodeObserver) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD7F77EC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewWillAppear:v3];
  sub_1BD7F7FEC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter] reportViewAppeared];
}

- (void)_performVerificationButtonPressed
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  v3 = self;
  if (v2)
  {
    [v2 reportButtonPressed_];
  }

  sub_1BD7F82FC();
}

- (void)_skipCardButtonPressed
{
  v2 = self;
  sub_1BD7F87E0();
}

- (void)_selectDifferentMethodButtonPressed
{
  v2 = self;
  sub_1BD7F8B7C();
}

- (void)_sendNewCodeButtonPressed
{
  v2 = self;
  sub_1BD7F8E88();
}

- (_TtC9PassKitUI41PaymentSetupVerificationOTPViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
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
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI41PaymentSetupVerificationOTPViewController_reporter);
  if (v6)
  {
    [v6 reportButtonPressed_];
  }

  sub_1BD7F82FC();

  sub_1BD0DE53C(v7, &qword_1EBD3EC90);
}

- (id)defaultHeaderViewTitle
{
  v2 = self;
  sub_1BD7FAD34();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = self;
  sub_1BD7FAD34();
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

- (void)_startVerificationObserver
{
  v2 = self;
  sub_1BD7F7FEC();
}

- (void)_stopVerificationObserver
{
  v2 = self;
  sub_1BD7F89DC();
}

- (void)verificationObserver:(id)a3 didObserveVerificationCode:(id)a4
{
  v6 = sub_1BE052434();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1BD7FB17C(v9, v6, v8);
}

- (void)verificationObserverDidTimeout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD7FC040();
}

- (void)_handlePassVerifiedNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD7FB954(v4);
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_1BD7FBF3C(a3);
}

@end