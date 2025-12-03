@interface StockChartCalloutView
- (_TtC8StocksUI21StockChartCalloutView)initWithCoder:(id)coder;
@end

@implementation StockChartCalloutView

- (_TtC8StocksUI21StockChartCalloutView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_dateLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI21StockChartCalloutView_priceLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end