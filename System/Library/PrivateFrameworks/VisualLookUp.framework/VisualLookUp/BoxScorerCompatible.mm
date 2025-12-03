@interface BoxScorerCompatible
- (_TtC12VisualLookUp19BoxScorerCompatible)init;
- (_TtC12VisualLookUp19BoxScorerCompatible)initWithGranularity:(int64_t)granularity xMean:(double)mean yMean:(double)yMean std:(double)std;
- (double)scoreWithXTopLeft:(double)left yTopLeft:(double)topLeft width:(double)width height:(double)height;
@end

@implementation BoxScorerCompatible

- (_TtC12VisualLookUp19BoxScorerCompatible)initWithGranularity:(int64_t)granularity xMean:(double)mean yMean:(double)yMean std:(double)std
{
  type metadata accessor for BoxScorer();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC12VisualLookUp19BoxScorerCompatible_boxScorer) = sub_1D9B1EDF8(granularity, mean, yMean, std);
  v12.receiver = self;
  v12.super_class = type metadata accessor for BoxScorerCompatible();
  return [(BoxScorerCompatible *)&v12 init];
}

- (double)scoreWithXTopLeft:(double)left yTopLeft:(double)topLeft width:(double)width height:(double)height
{
  selfCopy = self;
  sub_1D9B1EFAC(left, topLeft, width, height);
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