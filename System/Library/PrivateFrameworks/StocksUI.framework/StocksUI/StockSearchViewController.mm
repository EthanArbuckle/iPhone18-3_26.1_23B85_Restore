@interface StockSearchViewController
- (UISplitViewController)splitViewController;
- (_TtC8StocksUI25StockSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation StockSearchViewController

- (_TtC8StocksUI25StockSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220627F7C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2206284CC();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(StockSearchViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2206281E8(traitCollection);
}

- (UISplitViewController)splitViewController
{
  selfCopy = self;
  presentingViewController = [(StockSearchViewController *)selfCopy presentingViewController];
  splitViewController = [presentingViewController splitViewController];

  return splitViewController;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  sub_22062C434();
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v4 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220886A4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  selfCopy = self;
  sub_22062887C(v7);

  sub_22062C09C(v7, type metadata accessor for StockSearchMode);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_22062C4FC();
}

@end