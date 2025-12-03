@interface StockFeedPriceView
- (_TtC8StocksUI18StockFeedPriceView)initWithCoder:(id)coder;
@end

@implementation StockFeedPriceView

- (_TtC8StocksUI18StockFeedPriceView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_quoteSummaryView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_exchangeLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end