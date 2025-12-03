@interface StockChartCalloutHandleLayer
- (_TtC8StocksUI28StockChartCalloutHandleLayer)initWithCoder:(id)coder;
- (_TtC8StocksUI28StockChartCalloutHandleLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation StockChartCalloutHandleLayer

- (_TtC8StocksUI28StockChartCalloutHandleLayer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation) = 0;
  result = sub_22089267C();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(StockChartCalloutHandleLayer *)&v4 layoutSublayers];
  v3 = *&v2[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer];
  [v2 frame];
  [v3 setPosition_];
}

- (_TtC8StocksUI28StockChartCalloutHandleLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_2208923BC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end