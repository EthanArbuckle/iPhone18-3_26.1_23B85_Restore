@interface UIColor(SBUIColorAdditions)
+ (id)sbui_systemColorNamed:()SBUIColorAdditions;
+ (uint64_t)sbui_randomColor;
- (CGColor)sb_isGrayscale;
- (double)sb_brightness;
@end

@implementation UIColor(SBUIColorAdditions)

+ (id)sbui_systemColorNamed:()SBUIColorAdditions
{
  if (aSelectorName)
  {
    v4 = NSSelectorFromString(aSelectorName);
    if (objc_opt_respondsToSelector())
    {
      v5 = [MEMORY[0x1E69DC888] performSelector:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (uint64_t)sbui_randomColor
{
  v0 = objc_opt_class();
  v1 = arc4random_uniform(0xFEu) / 255.0;
  v2 = arc4random_uniform(0xFEu) / 255.0;
  v3 = arc4random_uniform(0xFEu) / 255.0;

  return [v0 colorWithRed:v1 green:v2 blue:v3 alpha:1.0];
}

- (CGColor)sb_isGrayscale
{
  result = [a1 CGColor];
  if (result)
  {
    result = CGColorGetColorSpace(result);
    if (result)
    {
      v3 = result;
      result = 1;
      if (CGColorSpaceGetType())
      {
        if (CGColorSpaceGetModel(v3))
        {
          v5 = 0.0;
          v6 = 0.0;
          v4 = 0.0;
          if (![a1 getRed:&v6 green:&v5 blue:&v4 alpha:0] || v6 != v5 || v5 != v4)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

- (double)sb_brightness
{
  v5 = 0;
  v3 = 0.0;
  v4 = 0;
  v2 = 0;
  [a1 getHue:&v5 saturation:&v4 brightness:&v3 alpha:&v2];
  return v3;
}

@end