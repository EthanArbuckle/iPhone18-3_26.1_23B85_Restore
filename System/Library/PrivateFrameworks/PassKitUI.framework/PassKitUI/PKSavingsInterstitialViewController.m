@interface PKSavingsInterstitialViewController
- (PKSavingsInterstitialViewController)initWithCoder:(id)a3;
- (PKSavingsInterstitialViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)performAuthenticationWithCompletion:(id)a3;
@end

@implementation PKSavingsInterstitialViewController

- (PKSavingsInterstitialViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD1A9ABC();
}

- (void)performAuthenticationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1BD1B6214(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PKSavingsInterstitialViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end