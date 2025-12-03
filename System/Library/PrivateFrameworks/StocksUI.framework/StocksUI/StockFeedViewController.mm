@interface StockFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC8StocksUI23StockFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation StockFeedViewController

- (_TtC8StocksUI23StockFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220640420();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_220641A7C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_220641CD4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(StockFeedViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_220641E18();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_220641F74();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_220642110(change);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_styler);
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

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(StockFeedViewController *)&v6 didMoveToParentViewController:controllerCopy];
  sub_22088A97C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_220645448(scrollCopy);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = sub_22064A494();

  return self & 1;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  selfCopy = self;
  sub_22064799C(controllerCopy, action);
}

@end