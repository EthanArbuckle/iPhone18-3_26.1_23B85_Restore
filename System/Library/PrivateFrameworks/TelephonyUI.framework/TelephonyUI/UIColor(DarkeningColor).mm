@interface UIColor(DarkeningColor)
- (id)colorByAlteringOpacityToPercentage:()DarkeningColor;
- (id)darkerColorByPercentage:()DarkeningColor;
@end

@implementation UIColor(DarkeningColor)

- (id)darkerColorByPercentage:()DarkeningColor
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0;
  v5 = 0;
  v1 = [a1 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  v2 = 0;
  if (v1)
  {
    v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:? alpha:?];
  }

  return v2;
}

- (id)colorByAlteringOpacityToPercentage:()DarkeningColor
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  v3 = [a1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v4 = 0;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:v9 green:v8 blue:v7 alpha:a2];
  }

  return v4;
}

@end