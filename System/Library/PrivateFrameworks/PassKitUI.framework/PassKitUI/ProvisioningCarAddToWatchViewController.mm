@interface ProvisioningCarAddToWatchViewController
- (_TtC9PassKitUI39ProvisioningCarAddToWatchViewController)initWithContext:(int64_t)context;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ProvisioningCarAddToWatchViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD44D540();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ProvisioningCarAddToWatchViewController *)&v7 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_reporter];
  if (v5)
  {
    v6 = v5;
    [v6 reportViewAppeared];
  }
}

- (_TtC9PassKitUI39ProvisioningCarAddToWatchViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD44EB90();
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1BD44EC3C();
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  laterCopy = later;
  selfCopy = self;
  sub_1BD44ECC4();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningCarAddToWatchViewController *)selfCopy view];
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