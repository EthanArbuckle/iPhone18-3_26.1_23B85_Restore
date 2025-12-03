@interface _UIColorSamplerSettings
- (_UIColorSamplerSettings)initWithCoder:(id)coder;
- (_UIColorSamplerSettings)initWithHeadroomMode:(unint64_t)mode;
@end

@implementation _UIColorSamplerSettings

- (_UIColorSamplerSettings)initWithHeadroomMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = _UIColorSamplerSettings;
  result = [(_UIColorSamplerSettings *)&v5 init];
  if (result)
  {
    result->_headroomMode = mode;
  }

  return result;
}

- (_UIColorSamplerSettings)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"kHeadroomModeKey"];

  return [(_UIColorSamplerSettings *)self initWithHeadroomMode:v4];
}

@end