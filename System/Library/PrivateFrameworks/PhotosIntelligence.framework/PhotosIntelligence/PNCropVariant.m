@interface PNCropVariant
- (CGRect)cropRect;
- (PNCropVariant)initWithAspectRatio:(double)a3 scaleFactor:(double)a4 cropScore:(double)a5 cropType:(int64_t)a6 cropRect:(CGRect)a7;
@end

@implementation PNCropVariant

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

- (PNCropVariant)initWithAspectRatio:(double)a3 scaleFactor:(double)a4 cropScore:(double)a5 cropType:(int64_t)a6 cropRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16.receiver = self;
  v16.super_class = PNCropVariant;
  result = [(PNCropVariant *)&v16 init];
  if (result)
  {
    result->_cropRect.origin.x = x;
    result->_cropRect.origin.y = y;
    result->_cropRect.size.width = width;
    result->_cropRect.size.height = height;
    result->_cropType = a6;
    result->_scaleFactor = a4;
    result->_cropScore = a5;
    result->_aspectRatio = a3;
  }

  return result;
}

@end