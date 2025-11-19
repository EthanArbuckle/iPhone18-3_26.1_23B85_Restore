@interface StockFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC8StocksUI23StockFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)a3;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation StockFeedViewController

- (_TtC8StocksUI23StockFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220640420();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_220641A7C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_220641CD4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(StockFeedViewController *)&v5 viewWillDisappear:v3];
  sub_220641E18();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_220641F74();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_220642110(a3);
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

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(StockFeedViewController *)&v6 didMoveToParentViewController:v4];
  sub_22088A97C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220645448(v4);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_22064A494();

  return self & 1;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_22064799C(v6, a4);
}

@end