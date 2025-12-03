@interface PKSavingsInterstitialViewController
- (PKSavingsInterstitialViewController)initWithCoder:(id)coder;
- (PKSavingsInterstitialViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)performAuthenticationWithCompletion:(id)completion;
@end

@implementation PKSavingsInterstitialViewController

- (PKSavingsInterstitialViewController)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD1A9ABC();
}

- (void)performAuthenticationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1BD1B6214(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PKSavingsInterstitialViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end