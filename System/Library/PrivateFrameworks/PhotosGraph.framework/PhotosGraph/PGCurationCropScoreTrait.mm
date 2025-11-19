@interface PGCurationCropScoreTrait
- (PGCurationCropScoreTrait)initWithMinimumSquareCropScore:(double)a3;
@end

@implementation PGCurationCropScoreTrait

- (PGCurationCropScoreTrait)initWithMinimumSquareCropScore:(double)a3
{
  v5.receiver = self;
  v5.super_class = PGCurationCropScoreTrait;
  result = [(PGCurationTrait *)&v5 init];
  if (result)
  {
    result->_minimumSquareCropScore = a3;
  }

  return result;
}

@end