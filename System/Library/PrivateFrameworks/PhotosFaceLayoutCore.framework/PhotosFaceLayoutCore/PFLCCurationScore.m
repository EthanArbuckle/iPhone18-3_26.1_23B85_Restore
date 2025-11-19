@interface PFLCCurationScore
- (PFLCCurationScore)initWithPositionScores:(id)a3 preferredPosition:(unint64_t)a4;
@end

@implementation PFLCCurationScore

- (PFLCCurationScore)initWithPositionScores:(id)a3 preferredPosition:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PFLCCurationScore;
  v7 = [(PFLCCurationScore *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    positionScores = v7->_positionScores;
    v7->_positionScores = v8;

    v7->_preferredPosition = a4;
  }

  return v7;
}

@end