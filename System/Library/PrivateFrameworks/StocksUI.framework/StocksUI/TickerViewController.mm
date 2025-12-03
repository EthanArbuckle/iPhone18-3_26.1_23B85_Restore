@interface TickerViewController
- (_TtC8StocksUI20TickerViewController)initWithCoder:(id)coder;
- (_TtC8StocksUI20TickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2204E4E60();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(TickerViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC8StocksUI20TickerViewController_blueprintViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TickerViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2204FA0C8(traitCollection);
}

- (_TtC8StocksUI20TickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling) = 0;
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (_TtC8StocksUI20TickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_22088C71C();
    v5 = sub_22088BFCC();

    type metadata accessor for TickerCollectionView();
    *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = 1;
    sub_2207A7D00();
  }
}

@end