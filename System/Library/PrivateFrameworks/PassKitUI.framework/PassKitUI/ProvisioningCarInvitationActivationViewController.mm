@interface ProvisioningCarInvitationActivationViewController
- (_TtC9PassKitUI49ProvisioningCarInvitationActivationViewController)initWithContext:(int64_t)context;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
@end

@implementation ProvisioningCarInvitationActivationViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD2FE310();
}

- (_TtC9PassKitUI49ProvisioningCarInvitationActivationViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD2FEFBC();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningCarInvitationActivationViewController *)selfCopy view];
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