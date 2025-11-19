@interface ProvisioningVerificationNoticeViewController
- (_TtC9PassKitUI44ProvisioningVerificationNoticeViewController)initWithContext:(int64_t)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation ProvisioningVerificationNoticeViewController

- (void)loadView
{
  v2 = self;
  sub_1BD72986C();
}

- (_TtC9PassKitUI44ProvisioningVerificationNoticeViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD72A1A0();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7 = self;
  v5 = [(ProvisioningVerificationNoticeViewController *)v7 view];
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