@interface ProvisioningCarHeroViewController
- (_TtC9PassKitUI33ProvisioningCarHeroViewController)initWithContext:(int64_t)a3;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)skipCardButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ProvisioningCarHeroViewController

- (void)loadView
{
  v2 = self;
  sub_1BD1E5D94();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProvisioningCarHeroViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter] reportViewAppeared];
}

- (void)skipCardButtonPressed
{
  v2 = self;
  sub_1BD1E753C();
}

- (_TtC9PassKitUI33ProvisioningCarHeroViewController)initWithContext:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD1E8238();
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD1E82EC();
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7 = self;
  v5 = [(ProvisioningCarHeroViewController *)v7 view];
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