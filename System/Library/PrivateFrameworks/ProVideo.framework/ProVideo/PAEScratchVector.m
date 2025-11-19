@interface PAEScratchVector
- (PAEScratchVector)initWithStartLocationX:(float)a3 andY:(float)a4 andEndLocationX:(float)a5 andY:(float)a6;
- (void)startLocationX:(float *)a3 andY:(float *)a4 andEndLocationX:(float *)a5 andY:(float *)a6;
@end

@implementation PAEScratchVector

- (PAEScratchVector)initWithStartLocationX:(float)a3 andY:(float)a4 andEndLocationX:(float)a5 andY:(float)a6
{
  v11.receiver = self;
  v11.super_class = PAEScratchVector;
  result = [(PAEScratchVector *)&v11 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
    result->_endX = a5;
    result->_endY = a6;
  }

  return result;
}

- (void)startLocationX:(float *)a3 andY:(float *)a4 andEndLocationX:(float *)a5 andY:(float *)a6
{
  *a3 = self->_x;
  *a4 = self->_y;
  *a5 = self->_endX;
  *a6 = self->_endY;
}

@end