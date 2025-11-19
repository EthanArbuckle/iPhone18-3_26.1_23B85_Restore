@interface _VTKColor
- (_VTKColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation _VTKColor

- (_VTKColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v11.receiver = self;
  v11.super_class = _VTKColor;
  result = [(_VTKColor *)&v11 init];
  if (result)
  {
    result->_red = a3;
    result->_green = a4;
    result->_blue = a5;
    result->_alpha = a6;
  }

  return result;
}

@end