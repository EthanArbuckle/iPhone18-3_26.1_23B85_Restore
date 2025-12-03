@interface ProvisioningPrecursorEducationViewController
- (_TtC9PassKitUI44ProvisioningPrecursorEducationViewController)initWithContext:(int64_t)context;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
@end

@implementation ProvisioningPrecursorEducationViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD239020();
}

- (_TtC9PassKitUI44ProvisioningPrecursorEducationViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD23A3A8();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  selfCopy = self;
  view = [(ProvisioningPrecursorEducationViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    [view setUserInteractionEnabled_];

    [(PKExplanationViewController *)selfCopy showSpinner:1];
  }

  else
  {
    __break(1u);
  }
}

@end