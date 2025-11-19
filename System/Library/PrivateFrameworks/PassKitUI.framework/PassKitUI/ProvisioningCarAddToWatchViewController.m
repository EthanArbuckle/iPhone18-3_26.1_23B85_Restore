@interface ProvisioningCarAddToWatchViewController
- (_TtC9PassKitUI39ProvisioningCarAddToWatchViewController)initWithContext:(int64_t)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ProvisioningCarAddToWatchViewController

- (void)loadView
{
  v2 = self;
  sub_1BD44D540();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ProvisioningCarAddToWatchViewController *)&v7 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter];
  if (v5)
  {
    v6 = v5;
    [v6 reportViewAppeared];
  }
}

- (_TtC9PassKitUI39ProvisioningCarAddToWatchViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD44EB90();
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD44EC3C();
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD44ECC4();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7 = self;
  v5 = [(ProvisioningCarAddToWatchViewController *)v7 view];
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