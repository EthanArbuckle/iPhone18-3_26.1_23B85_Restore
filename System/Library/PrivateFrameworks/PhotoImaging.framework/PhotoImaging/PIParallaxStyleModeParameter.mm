@interface PIParallaxStyleModeParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)a3;
- (PIParallaxStyleModeParameter)initWithMode:(id)a3;
- (id)description;
@end

@implementation PIParallaxStyleModeParameter

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PIParallaxStyleModeParameter *)self modeValue];
  v4 = [v2 stringWithFormat:@"(>%@)", v3];

  return v4;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"mode"];

  if (v6)
  {
    v7 = v4;
    v8 = [(PIParallaxStyleModeParameter *)self modeValue];
    v9 = [v7 modeValue];

    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PIParallaxStyleModeParameter)initWithMode:(id)a3
{
  v8.receiver = self;
  v8.super_class = PIParallaxStyleModeParameter;
  v3 = a3;
  v4 = [(PIParallaxStyleModeParameter *)&v8 init];
  v5 = [v3 copy];

  modeValue = v4->_modeValue;
  v4->_modeValue = v5;

  return v4;
}

@end