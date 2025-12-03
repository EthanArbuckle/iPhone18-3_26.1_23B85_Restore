@interface SCRO2DPin
- (SCRO2DPin)initWithX:(unint64_t)x y:(unint64_t)y style:(unint64_t)style;
@end

@implementation SCRO2DPin

- (SCRO2DPin)initWithX:(unint64_t)x y:(unint64_t)y style:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = SCRO2DPin;
  result = [(SCRO2DPin *)&v9 init];
  if (result)
  {
    result->_x = x;
    result->_y = y;
    result->_style = style;
  }

  return result;
}

@end