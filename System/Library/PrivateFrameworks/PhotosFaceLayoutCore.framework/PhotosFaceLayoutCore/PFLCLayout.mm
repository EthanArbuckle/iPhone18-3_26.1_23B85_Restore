@interface PFLCLayout
- (CGRect)visibleRect;
- (PFLCLayout)initWithCropScore:(double)score layoutScore:(double)layoutScore foregroundCoverage:(double)coverage visibleRect:(CGRect)rect usesMask:(BOOL)mask;
@end

@implementation PFLCLayout

- (PFLCLayout)initWithCropScore:(double)score layoutScore:(double)layoutScore foregroundCoverage:(double)coverage visibleRect:(CGRect)rect usesMask:(BOOL)mask
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16.receiver = self;
  v16.super_class = PFLCLayout;
  result = [(PFLCLayout *)&v16 init];
  if (result)
  {
    result->_cropScore = score;
    result->_layoutScore = layoutScore;
    result->_foregroundCoverage = coverage;
    result->_visibleRect.origin.x = x;
    result->_visibleRect.origin.y = y;
    result->_visibleRect.size.width = width;
    result->_visibleRect.size.height = height;
    result->_usesMask = mask;
  }

  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end