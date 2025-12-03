@interface PFLCCurationPositionScore
- (CGRect)cropRect;
- (CGRect)timeLabelRect;
- (PFLCCurationPositionScore)initWithCropScore:(double)score cropRect:(CGRect)rect timeLabelRect:(CGRect)labelRect classification:(unint64_t)classification;
- (id)description;
@end

@implementation PFLCCurationPositionScore

- (PFLCCurationPositionScore)initWithCropScore:(double)score cropRect:(CGRect)rect timeLabelRect:(CGRect)labelRect classification:(unint64_t)classification
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13.receiver = self;
  v13.super_class = PFLCCurationPositionScore;
  result = [(PFLCCurationPositionScore *)&v13 init];
  if (result)
  {
    result->_cropScore = score;
    result->_cropRect.origin.x = x;
    result->_cropRect.origin.y = y;
    result->_cropRect.size.width = width;
    result->_cropRect.size.height = height;
    result->_timeLabelRect = labelRect;
    result->_classification = classification;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  cropScore = self->_cropScore;
  v5 = _rectAsString(self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height);
  v6 = _rectAsString(self->_timeLabelRect.origin.x, self->_timeLabelRect.origin.y, self->_timeLabelRect.size.width, self->_timeLabelRect.size.height);
  v7 = [v3 stringWithFormat:@"PositionScore[ crop=%.3f, rect=%@, time=%@, clas=%ld ]", *&cropScore, v5, v6, self->_classification];

  return v7;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeLabelRect
{
  x = self->_timeLabelRect.origin.x;
  y = self->_timeLabelRect.origin.y;
  width = self->_timeLabelRect.size.width;
  height = self->_timeLabelRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end