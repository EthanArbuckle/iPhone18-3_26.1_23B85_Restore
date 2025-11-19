@interface StockSearchViewController
- (UISplitViewController)splitViewController;
- (_TtC8StocksUI25StockSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation StockSearchViewController

- (_TtC8StocksUI25StockSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220627F7C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2206284CC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(StockSearchViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2206281E8(v6);
}

- (UISplitViewController)splitViewController
{
  v2 = self;
  v3 = [(StockSearchViewController *)v2 presentingViewController];
  v4 = [v3 splitViewController];

  return v4;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  sub_22062C434();
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220886A4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = self;
  sub_22062887C(v7);

  sub_22062C09C(v7, type metadata accessor for StockSearchMode);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22062C4FC();
}

@end