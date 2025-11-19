@interface _UIColorSamplerSettings
- (_UIColorSamplerSettings)initWithCoder:(id)a3;
- (_UIColorSamplerSettings)initWithHeadroomMode:(unint64_t)a3;
@end

@implementation _UIColorSamplerSettings

- (_UIColorSamplerSettings)initWithHeadroomMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIColorSamplerSettings;
  result = [(_UIColorSamplerSettings *)&v5 init];
  if (result)
  {
    result->_headroomMode = a3;
  }

  return result;
}

- (_UIColorSamplerSettings)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"kHeadroomModeKey"];

  return [(_UIColorSamplerSettings *)self initWithHeadroomMode:v4];
}

@end