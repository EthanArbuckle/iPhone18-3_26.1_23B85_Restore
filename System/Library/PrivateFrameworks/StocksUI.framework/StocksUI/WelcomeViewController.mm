@interface WelcomeViewController
- (_TtC8StocksUI21WelcomeViewController)initWithCoder:(id)coder;
- (_TtC8StocksUI21WelcomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)didTapContinueButton;
- (void)showPrivacyText;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation WelcomeViewController

- (_TtC8StocksUI21WelcomeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI21WelcomeViewController_allowRendering) = 0;
  v3 = OBJC_IVAR____TtC8StocksUI21WelcomeViewController_statusBarView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (_TtC8StocksUI21WelcomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_22083E91C();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(WelcomeViewController *)&v5 viewWillAppear:appearCopy];
  swift_getObjectType();
  sub_22088BB9C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_22083EF1C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_22083F078(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_22083F1B8();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(WelcomeViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_22083EBC4(traitCollection);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI21WelcomeViewController_styler);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5, v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = (*(*(v4 + 16) + 8))(v3);
  (*(v6 + 8))(v9, v3);
  return v10;
}

- (void)didTapContinueButton
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
  selfCopy = self;
  sub_22088726C();
  v4 = off_283424EE8;
  type metadata accessor for WelcomeInteractor();
  v4();
  __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
  sub_22071CE94();
}

- (void)showPrivacyText
{
  selfCopy = self;
  sub_22083E684();
}

@end