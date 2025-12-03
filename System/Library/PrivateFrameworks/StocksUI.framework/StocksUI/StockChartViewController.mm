@interface StockChartViewController
- (_TtC8StocksUI24StockChartViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation StockChartViewController

- (_TtC8StocksUI24StockChartViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  StockChartViewController.viewDidLoad()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  StockChartViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  StockChartViewController.viewDidLayoutSubviews()();
}

@end