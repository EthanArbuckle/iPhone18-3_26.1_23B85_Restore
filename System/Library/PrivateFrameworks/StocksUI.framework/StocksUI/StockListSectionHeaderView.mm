@interface StockListSectionHeaderView
- (_TtC8StocksUI26StockListSectionHeaderView)initWithCoder:(id)coder;
@end

@implementation StockListSectionHeaderView

- (_TtC8StocksUI26StockListSectionHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(sub_22088AC2C()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_onWatchlistSwitcherMenuPresentation;
  sub_22049D9F4();
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(v6) init];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end