@interface PIParallaxStyleModeParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)parameter;
- (PIParallaxStyleModeParameter)initWithMode:(id)mode;
- (id)description;
@end

@implementation PIParallaxStyleModeParameter

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  modeValue = [(PIParallaxStyleModeParameter *)self modeValue];
  v4 = [v2 stringWithFormat:@"(>%@)", modeValue];

  return v4;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)parameter
{
  parameterCopy = parameter;
  type = [parameterCopy type];
  v6 = [type isEqualToString:@"mode"];

  if (v6)
  {
    v7 = parameterCopy;
    modeValue = [(PIParallaxStyleModeParameter *)self modeValue];
    modeValue2 = [v7 modeValue];

    v10 = [modeValue isEqualToString:modeValue2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PIParallaxStyleModeParameter)initWithMode:(id)mode
{
  v8.receiver = self;
  v8.super_class = PIParallaxStyleModeParameter;
  modeCopy = mode;
  v4 = [(PIParallaxStyleModeParameter *)&v8 init];
  v5 = [modeCopy copy];

  modeValue = v4->_modeValue;
  v4->_modeValue = v5;

  return v4;
}

@end