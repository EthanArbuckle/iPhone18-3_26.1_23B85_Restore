@interface _PIParallaxClockMaterialResult
- (_PIParallaxClockMaterialResult)initWithLuminance:(double)a3;
@end

@implementation _PIParallaxClockMaterialResult

- (_PIParallaxClockMaterialResult)initWithLuminance:(double)a3
{
  v5.receiver = self;
  v5.super_class = _PIParallaxClockMaterialResult;
  result = [(_PIParallaxClockMaterialResult *)&v5 init];
  if (result)
  {
    result->_luminance = a3;
  }

  return result;
}

@end