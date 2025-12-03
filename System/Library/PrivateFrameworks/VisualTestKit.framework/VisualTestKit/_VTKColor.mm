@interface _VTKColor
- (_VTKColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation _VTKColor

- (_VTKColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v11.receiver = self;
  v11.super_class = _VTKColor;
  result = [(_VTKColor *)&v11 init];
  if (result)
  {
    result->_red = red;
    result->_green = green;
    result->_blue = blue;
    result->_alpha = alpha;
  }

  return result;
}

@end