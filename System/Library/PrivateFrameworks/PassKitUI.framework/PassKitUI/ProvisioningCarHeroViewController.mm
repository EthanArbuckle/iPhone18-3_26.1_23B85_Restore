@interface ProvisioningCarHeroViewController
- (_TtC9PassKitUI33ProvisioningCarHeroViewController)initWithContext:(int64_t)context;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)skipCardButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ProvisioningCarHeroViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD1E5D94();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ProvisioningCarHeroViewController *)&v5 viewDidAppear:appearCopy];
  [*&v4[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter] reportViewAppeared];
}

- (void)skipCardButtonPressed
{
  selfCopy = self;
  sub_1BD1E753C();
}

- (_TtC9PassKitUI33ProvisioningCarHeroViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD1E8238();
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1BD1E82EC();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningCarHeroViewController *)selfCopy view];
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