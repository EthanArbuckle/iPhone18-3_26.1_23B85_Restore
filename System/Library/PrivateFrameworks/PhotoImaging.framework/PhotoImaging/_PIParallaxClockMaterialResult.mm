@interface _PIParallaxClockMaterialResult
- (_PIParallaxClockMaterialResult)initWithLuminance:(double)luminance;
@end

@implementation _PIParallaxClockMaterialResult

- (_PIParallaxClockMaterialResult)initWithLuminance:(double)luminance
{
  v5.receiver = self;
  v5.super_class = _PIParallaxClockMaterialResult;
  result = [(_PIParallaxClockMaterialResult *)&v5 init];
  if (result)
  {
    result->_luminance = luminance;
  }

  return result;
}

@end