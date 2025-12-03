@interface UIColor(PUAlphaAdjust)
- (id)pu_colorWithIncreasedAlpha;
- (id)pu_colorWithIncreasedBrightness;
@end

@implementation UIColor(PUAlphaAdjust)

- (id)pu_colorWithIncreasedBrightness
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([self getHue:&v4 saturation:&v5 brightness:&v6 alpha:v7])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v4 saturation:v5 brightness:v6 + 0.0500000007 alpha:v7[0]];
  }

  else if ([self getWhite:&v4 alpha:&v5])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithWhite:v4 + 0.0500000007 alpha:v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pu_colorWithIncreasedAlpha
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([self getHue:&v4 saturation:&v5 brightness:&v6 alpha:v7])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v4 saturation:v5 brightness:v6 alpha:v7[0] + 0.100000001];
  }

  else if ([self getWhite:&v4 alpha:&v5])
  {
    v2 = [MEMORY[0x1E69DC888] colorWithWhite:v4 alpha:v5 + 0.100000001];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end