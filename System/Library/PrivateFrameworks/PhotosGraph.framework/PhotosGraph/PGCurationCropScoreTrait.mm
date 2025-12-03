@interface PGCurationCropScoreTrait
- (PGCurationCropScoreTrait)initWithMinimumSquareCropScore:(double)score;
@end

@implementation PGCurationCropScoreTrait

- (PGCurationCropScoreTrait)initWithMinimumSquareCropScore:(double)score
{
  v5.receiver = self;
  v5.super_class = PGCurationCropScoreTrait;
  result = [(PGCurationTrait *)&v5 init];
  if (result)
  {
    result->_minimumSquareCropScore = score;
  }

  return result;
}

@end