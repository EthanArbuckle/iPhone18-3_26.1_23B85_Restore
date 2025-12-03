@interface StockFeedViewerViewController
- (_TtC8StocksUI29StockFeedViewerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)didTapAttributionButton;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation StockFeedViewerViewController

- (_TtC8StocksUI29StockFeedViewerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2205C69C4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2205C79F4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2205C806C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(StockFeedViewerViewController *)&v6 viewDidAppear:appearCopy];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_shareMenuItemManager], *&v4[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_shareMenuItemManager + 24]);
  if (qword_281296F60 != -1)
  {
    swift_once();
  }

  v5 = sub_22088E5CC();
  __swift_project_value_buffer(v5, qword_2812B6BD0);
  sub_22088CB1C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2205C836C(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2205C8514(change);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2205C8674(controller);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_2205C88E4();
}

- (void)didTapAttributionButton
{
  selfCopy = self;
  sub_2206AAD4C();
}

@end