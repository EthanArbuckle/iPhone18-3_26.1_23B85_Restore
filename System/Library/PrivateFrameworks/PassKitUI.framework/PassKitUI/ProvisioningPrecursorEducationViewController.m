@interface ProvisioningPrecursorEducationViewController
- (_TtC9PassKitUI44ProvisioningPrecursorEducationViewController)initWithContext:(int64_t)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation ProvisioningPrecursorEducationViewController

- (void)loadView
{
  v2 = self;
  sub_1BD239020();
}

- (_TtC9PassKitUI44ProvisioningPrecursorEducationViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD23A3A8();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  v4 = [(ProvisioningPrecursorEducationViewController *)v6 view];
  if (v4)
  {
    v5 = v4;
    [v4 setUserInteractionEnabled_];

    [(PKExplanationViewController *)v6 showSpinner:1];
  }

  else
  {
    __break(1u);
  }
}

@end