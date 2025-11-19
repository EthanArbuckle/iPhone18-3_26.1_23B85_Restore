@interface StockChartViewController
- (_TtC8StocksUI24StockChartViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation StockChartViewController

- (_TtC8StocksUI24StockChartViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  StockChartViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  StockChartViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  StockChartViewController.viewDidLayoutSubviews()();
}

@end