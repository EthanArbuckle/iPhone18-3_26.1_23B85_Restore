@interface UIColor(TelephonyUI)
+ (id)_tp_bluePillColor;
+ (id)_tp_greenPillColor;
@end

@implementation UIColor(TelephonyUI)

+ (id)_tp_greenPillColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v0 = 0.411764706;
    v1 = 0.137254902;
  }

  else
  {
    v0 = 0.8;
    v1 = 0.278431373;
  }

  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:v0 blue:v1 alpha:1.0];

  return v2;
}

+ (id)_tp_bluePillColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    [MEMORY[0x1E69DC888] systemDarkBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v0 = ;

  return v0;
}

@end