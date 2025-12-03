@interface ProvisioningVerificationNoticeViewController
- (_TtC9PassKitUI44ProvisioningVerificationNoticeViewController)initWithContext:(int64_t)context;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
@end

@implementation ProvisioningVerificationNoticeViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD72986C();
}

- (_TtC9PassKitUI44ProvisioningVerificationNoticeViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD72A1A0();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningVerificationNoticeViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setUserInteractionEnabled_];

    [(PKExplanationViewController *)selfCopy showSpinner:iCopy];
  }

  else
  {
    __break(1u);
  }
}

@end