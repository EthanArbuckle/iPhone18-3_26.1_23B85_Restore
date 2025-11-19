@interface UIColor(SBHAdditions)
+ (id)sbh_colorWithHexString:()SBHAdditions;
+ (uint64_t)sbh_brightColorWithRandomHue;
+ (uint64_t)sbh_randomColor;
- (CGColor)sbh_isGrayscale;
- (id)sbh_colorByApplyingColorMatrix:()SBHAdditions;
- (uint64_t)sbh_colorfulness;
- (uint64_t)sbh_perceivedLightness;
@end

@implementation UIColor(SBHAdditions)

- (CGColor)sbh_isGrayscale
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

- (uint64_t)sbh_colorfulness
{
  if ([a1 sbh_isGrayscale])
  {
    return [a1 sbh_perceivedLightness];
  }

  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  [a1 getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  return [a1 sbh_perceivedLightness];
}

- (uint64_t)sbh_perceivedLightness
{
  v1 = [a1 CGColor];

  return MEMORY[0x1EEDF9550](v1);
}

+ (uint64_t)sbh_randomColor
{
  v2 = arc4random_uniform(0xFEu) / 255.0;
  v3 = arc4random_uniform(0xFEu) / 255.0;
  v4 = arc4random_uniform(0xFEu) / 255.0;

  return [a1 colorWithRed:v2 green:v3 blue:v4 alpha:1.0];
}

+ (uint64_t)sbh_brightColorWithRandomHue
{
  v2 = arc4random_uniform(0xFEu) / 255.0;

  return [a1 colorWithHue:v2 saturation:1.0 brightness:1.0 alpha:1.0];
}

+ (id)sbh_colorWithHexString:()SBHAdditions
{
  v3 = a3;
  if (!v3)
  {
    v5 = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 uppercaseString];

  if ([v5 hasPrefix:@"#"])
  {
    v6 = [v5 substringFromIndex:1];

    v5 = v6;
  }

  if ([v5 length] != 6)
  {
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E696AE88] scannerWithString:v5];
  [v7 setScanLocation:0];
  v10 = 0;
  v8 = 0;
  if ([v7 scanHexInt:&v10])
  {
    v8 = [MEMORY[0x1E69DC888] colorWithRed:((-255 * (((32897 * HIWORD(v10)) >> 16) >> 7) + HIWORD(v10)) / 255.0) green:((-255 * (v10 / 0xFF00) + (v10 >> 8)) / 255.0) blue:(v10 / 255.0) alpha:1.0];
  }

LABEL_10:

  return v8;
}

- (id)sbh_colorByApplyingColorMatrix:()SBHAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0.0;
  v19 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  [a1 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
  v4 = 0;
  v8.f32[0] = v19;
  v5 = v18;
  *&v6 = v17;
  *&v7 = v16;
  v8.f32[1] = v5;
  v8.i64[1] = __PAIR64__(v7, v6);
  v20 = 0;
  v21 = 0;
  v9 = (a3 + 16);
  do
  {
    v10 = vmulq_f32(*(v9 - 4), v8);
    v11 = *v9;
    v9 += 5;
    v12 = (v11 + ((((*(&v20 + v4) + v10.f32[0]) + v10.f32[1]) + v10.f32[2]) + v10.f32[3]));
    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    v13 = fmax(v12, 0.0);
    *(&v20 + v4) = v13;
    v4 += 4;
  }

  while (v4 != 16);
  v14 = [MEMORY[0x1E69DC888] colorWithRed:*&v20 green:*(&v20 + 1) blue:*&v21 alpha:*(&v21 + 1)];

  return v14;
}

@end