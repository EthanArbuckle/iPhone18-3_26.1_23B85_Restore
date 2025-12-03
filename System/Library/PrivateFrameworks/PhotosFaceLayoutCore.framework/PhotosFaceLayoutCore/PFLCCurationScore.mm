@interface PFLCCurationScore
- (PFLCCurationScore)initWithPositionScores:(id)scores preferredPosition:(unint64_t)position;
@end

@implementation PFLCCurationScore

- (PFLCCurationScore)initWithPositionScores:(id)scores preferredPosition:(unint64_t)position
{
  scoresCopy = scores;
  v11.receiver = self;
  v11.super_class = PFLCCurationScore;
  v7 = [(PFLCCurationScore *)&v11 init];
  if (v7)
  {
    v8 = [scoresCopy copy];
    positionScores = v7->_positionScores;
    v7->_positionScores = v8;

    v7->_preferredPosition = position;
  }

  return v7;
}

@end