@interface StockFeedViewerViewController
- (_TtC8StocksUI29StockFeedViewerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapAttributionButton;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation StockFeedViewerViewController

- (_TtC8StocksUI29StockFeedViewerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2205C69C4();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2205C79F4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2205C806C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(StockFeedViewerViewController *)&v6 viewDidAppear:v3];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_shareMenuItemManager], *&v4[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_shareMenuItemManager + 24]);
  if (qword_281296F60 != -1)
  {
    swift_once();
  }

  v5 = sub_22088E5CC();
  __swift_project_value_buffer(v5, qword_2812B6BD0);
  sub_22088CB1C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2205C836C(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2205C8514(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2205C8674(a3);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_2205C88E4();
}

- (void)didTapAttributionButton
{
  v2 = self;
  sub_2206AAD4C();
}

@end