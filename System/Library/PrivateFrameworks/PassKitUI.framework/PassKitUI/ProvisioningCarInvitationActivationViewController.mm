@interface ProvisioningCarInvitationActivationViewController
- (_TtC9PassKitUI49ProvisioningCarInvitationActivationViewController)initWithContext:(int64_t)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation ProvisioningCarInvitationActivationViewController

- (void)loadView
{
  v2 = self;
  sub_1BD2FE310();
}

- (_TtC9PassKitUI49ProvisioningCarInvitationActivationViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD2FEFBC();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7 = self;
  v5 = [(ProvisioningCarInvitationActivationViewController *)v7 view];
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