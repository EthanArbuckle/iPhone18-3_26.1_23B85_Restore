@interface StockFeedViewOverlayView
- (_TtC8StocksUI24StockFeedViewOverlayView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation StockFeedViewOverlayView

- (_TtC8StocksUI24StockFeedViewOverlayView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI24StockFeedViewOverlayView_onHitTest);
  *v6 = 0;
  v6[1] = 0;
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_22087CB1C(a4, x, y);

  return v10;
}

@end