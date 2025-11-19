@interface SCRO2DPin
- (SCRO2DPin)initWithX:(unint64_t)a3 y:(unint64_t)a4 style:(unint64_t)a5;
@end

@implementation SCRO2DPin

- (SCRO2DPin)initWithX:(unint64_t)a3 y:(unint64_t)a4 style:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = SCRO2DPin;
  result = [(SCRO2DPin *)&v9 init];
  if (result)
  {
    result->_x = a3;
    result->_y = a4;
    result->_style = a5;
  }

  return result;
}

@end