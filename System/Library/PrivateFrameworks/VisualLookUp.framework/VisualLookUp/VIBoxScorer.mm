@interface VIBoxScorer
- (VIBoxScorer)initWithGranularity:(int64_t)granularity xMean:(double)mean yMean:(double)yMean std:(double)std;
@end

@implementation VIBoxScorer

- (VIBoxScorer)initWithGranularity:(int64_t)granularity xMean:(double)mean yMean:(double)yMean std:(double)std
{
  v14.receiver = self;
  v14.super_class = VIBoxScorer;
  v10 = [(VIBoxScorer *)&v14 init];
  if (v10)
  {
    v11 = [[_TtC12VisualLookUp19BoxScorerCompatible alloc] initWithGranularity:granularity xMean:mean yMean:yMean std:std];
    boxScorer = v10->_boxScorer;
    v10->_boxScorer = v11;
  }

  return v10;
}

@end