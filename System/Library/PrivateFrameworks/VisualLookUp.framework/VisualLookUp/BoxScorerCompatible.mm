@interface BoxScorerCompatible
- (_TtC12VisualLookUp19BoxScorerCompatible)init;
- (_TtC12VisualLookUp19BoxScorerCompatible)initWithGranularity:(int64_t)a3 xMean:(double)a4 yMean:(double)a5 std:(double)a6;
- (double)scoreWithXTopLeft:(double)a3 yTopLeft:(double)a4 width:(double)a5 height:(double)a6;
@end

@implementation BoxScorerCompatible

- (_TtC12VisualLookUp19BoxScorerCompatible)initWithGranularity:(int64_t)a3 xMean:(double)a4 yMean:(double)a5 std:(double)a6
{
  type metadata accessor for BoxScorer();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp19BoxScorerCompatible_boxScorer) = sub_1D9B1EDF8(a3, a4, a5, a6);
  v12.receiver = self;
  v12.super_class = type metadata accessor for BoxScorerCompatible();
  return [(BoxScorerCompatible *)&v12 init];
}

- (double)scoreWithXTopLeft:(double)a3 yTopLeft:(double)a4 width:(double)a5 height:(double)a6
{
  v10 = self;
  sub_1D9B1EFAC(a3, a4, a5, a6);
  v12 = v11;

  return v12;
}

- (_TtC12VisualLookUp19BoxScorerCompatible)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end