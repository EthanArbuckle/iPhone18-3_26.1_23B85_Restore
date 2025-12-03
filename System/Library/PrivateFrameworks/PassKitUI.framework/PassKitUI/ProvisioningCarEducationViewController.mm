@interface ProvisioningCarEducationViewController
- (_TtC9PassKitUI38ProvisioningCarEducationViewController)initWithContext:(int64_t)context;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ProvisioningCarEducationViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD65CC30();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ProvisioningCarEducationViewController *)&v7 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter];
  if (v5)
  {
    v6 = v5;
    [v6 reportViewAppeared];
  }
}

- (_TtC9PassKitUI38ProvisioningCarEducationViewController)initWithContext:(int64_t)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  selfCopy = self;
  sub_1BD65DDB0();
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  selfCopy = self;
  view = [(ProvisioningCarEducationViewController *)selfCopy view];
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