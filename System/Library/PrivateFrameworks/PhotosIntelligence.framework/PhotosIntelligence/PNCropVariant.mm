@interface PNCropVariant
- (CGRect)cropRect;
- (PNCropVariant)initWithAspectRatio:(double)ratio scaleFactor:(double)factor cropScore:(double)score cropType:(int64_t)type cropRect:(CGRect)rect;
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

- (PNCropVariant)initWithAspectRatio:(double)ratio scaleFactor:(double)factor cropScore:(double)score cropType:(int64_t)type cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16.receiver = self;
  v16.super_class = PNCropVariant;
  result = [(PNCropVariant *)&v16 init];
  if (result)
  {
    result->_cropRect.origin.x = x;
    result->_cropRect.origin.y = y;
    result->_cropRect.size.width = width;
    result->_cropRect.size.height = height;
    result->_cropType = type;
    result->_scaleFactor = factor;
    result->_cropScore = score;
    result->_aspectRatio = ratio;
  }

  return result;
}

@end