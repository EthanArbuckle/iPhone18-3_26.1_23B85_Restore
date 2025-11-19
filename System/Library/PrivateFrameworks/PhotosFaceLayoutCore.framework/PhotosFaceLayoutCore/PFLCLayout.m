@interface PFLCLayout
- (CGRect)visibleRect;
- (PFLCLayout)initWithCropScore:(double)a3 layoutScore:(double)a4 foregroundCoverage:(double)a5 visibleRect:(CGRect)a6 usesMask:(BOOL)a7;
@end

@implementation PFLCLayout

- (PFLCLayout)initWithCropScore:(double)a3 layoutScore:(double)a4 foregroundCoverage:(double)a5 visibleRect:(CGRect)a6 usesMask:(BOOL)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16.receiver = self;
  v16.super_class = PFLCLayout;
  result = [(PFLCLayout *)&v16 init];
  if (result)
  {
    result->_cropScore = a3;
    result->_layoutScore = a4;
    result->_foregroundCoverage = a5;
    result->_visibleRect.origin.x = x;
    result->_visibleRect.origin.y = y;
    result->_visibleRect.size.width = width;
    result->_visibleRect.size.height = height;
    result->_usesMask = a7;
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