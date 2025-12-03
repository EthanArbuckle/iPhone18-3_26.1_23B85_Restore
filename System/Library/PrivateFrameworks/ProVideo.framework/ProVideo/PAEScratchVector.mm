@interface PAEScratchVector
- (PAEScratchVector)initWithStartLocationX:(float)x andY:(float)y andEndLocationX:(float)locationX andY:(float)andY;
- (void)startLocationX:(float *)x andY:(float *)y andEndLocationX:(float *)locationX andY:(float *)andY;
@end

@implementation PAEScratchVector

- (PAEScratchVector)initWithStartLocationX:(float)x andY:(float)y andEndLocationX:(float)locationX andY:(float)andY
{
  v11.receiver = self;
  v11.super_class = PAEScratchVector;
  result = [(PAEScratchVector *)&v11 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_endX = locationX;
    result->_endY = andY;
  }

  return result;
}

- (void)startLocationX:(float *)x andY:(float *)y andEndLocationX:(float *)locationX andY:(float *)andY
{
  *x = self->_x;
  *y = self->_y;
  *locationX = self->_endX;
  *andY = self->_endY;
}

@end