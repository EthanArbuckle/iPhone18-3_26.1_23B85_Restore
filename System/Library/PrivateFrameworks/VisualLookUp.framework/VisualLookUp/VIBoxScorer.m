@interface VIBoxScorer
- (VIBoxScorer)initWithGranularity:(int64_t)a3 xMean:(double)a4 yMean:(double)a5 std:(double)a6;
@end

@implementation VIBoxScorer

- (VIBoxScorer)initWithGranularity:(int64_t)a3 xMean:(double)a4 yMean:(double)a5 std:(double)a6
{
  v14.receiver = self;
  v14.super_class = VIBoxScorer;
  v10 = [(VIBoxScorer *)&v14 init];
  if (v10)
  {
    v11 = [[_TtC12VisualLookUp19BoxScorerCompatible alloc] initWithGranularity:a3 xMean:a4 yMean:a5 std:a6];
    boxScorer = v10->_boxScorer;
    v10->_boxScorer = v11;
  }

  return v10;
}

@end