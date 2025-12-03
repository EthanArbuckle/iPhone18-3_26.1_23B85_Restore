@interface UIColor(PosterUIFoundation)
+ (double)pui_determineVarianceAndLuminanceForColor:()PosterUIFoundation amongstColors:minLuminance:maxLuminance:outVariance:outLuminance:outSaturation:;
+ (double)pui_determineVarianceForHue:()PosterUIFoundation forColors:;
+ (id)pui_wallpaperColorForName:()PosterUIFoundation;
+ (uint64_t)pui_randomColor;
+ (void)pui_determineVarianceAndLuminanceForColor:()PosterUIFoundation amongstColors:minLuminance:maxLuminance:outHue:outSaturation:outLuminance:;
- (id)pui_hsbValues;
- (id)pui_hslValues;
- (id)pui_invertColor;
- (void)pui_minLuminance;
@end

@implementation UIColor(PosterUIFoundation)

- (id)pui_hslValues
{
  v1 = [[PUIColorValues alloc] initWithColor:self];
  hslValues = [(PUIColorValues *)v1 hslValues];

  return hslValues;
}

+ (uint64_t)pui_randomColor
{
  v0 = vcvtd_n_f64_u32(arc4random(), 8uLL);
  v1 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL) + 0.5;
  v2 = vcvtd_n_f64_u32(arc4random() & 0x7F, 8uLL) + 0.5;
  v3 = MEMORY[0x1E69DC888];

  return [v3 colorWithHue:v0 saturation:v1 brightness:v2 alpha:1.0];
}

+ (id)pui_wallpaperColorForName:()PosterUIFoundation
{
  v3 = [a3 stringByAppendingString:@"Color"];
  v4 = NSSelectorFromString(v3);
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E69DC888] performSelector:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (double)pui_determineVarianceAndLuminanceForColor:()PosterUIFoundation amongstColors:minLuminance:maxLuminance:outVariance:outLuminance:outSaturation:
{
  v11 = 0.0;
  [self pui_determineVarianceAndLuminanceForColor:a3 amongstColors:a4 minLuminance:a5 maxLuminance:a6 outHue:&v11 outSaturation:a9 outLuminance:a8];
  if (a7)
  {
    result = v11 * 4.0 / 0.1 + -2.0;
    *a7 = result;
  }

  return result;
}

+ (void)pui_determineVarianceAndLuminanceForColor:()PosterUIFoundation amongstColors:minLuminance:maxLuminance:outHue:outSaturation:outLuminance:
{
  if (a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = &unk_1F1C92D10;
  }

  v13 = a5;
  v14 = a3;
  [v12 bs_CGFloatValue];
  v16 = v15;
  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &unk_1F1C92D20;
  }

  [v17 bs_CGFloatValue];
  v19 = v18;

  v26 = [[PUIColorValues alloc] initWithColor:v14];
  hslValues = [(PUIColorValues *)v26 hslValues];
  [hslValues saturation];
  v22 = v21;
  [hslValues hue];
  v24 = v23;
  [hslValues luminance];
  if (a7)
  {
    *a7 = v24;
  }

  if (a8)
  {
    *a8 = v22;
  }

  if (a9)
  {
    *a9 = fmax(v19, fmin(v25, v16));
  }
}

+ (double)pui_determineVarianceForHue:()PosterUIFoundation forColors:
{
  v5 = a4;
  v6 = [v5 count];
  v7 = -1.0;
  if (v6 >= 2)
  {
    v8 = 0;
    v9 = 0;
    v30 = v6 - 1;
    while (1)
    {
      v10 = v9 + 1;
      v11 = [v5 objectAtIndexedSubscript:v9];
      v12 = [v5 objectAtIndexedSubscript:v9 + 1];
      v13 = [[PUIColorValues alloc] initWithColor:v11];
      v14 = [[PUIColorValues alloc] initWithColor:v12];
      hslValues = [(PUIColorValues *)v13 hslValues];
      [hslValues hue];
      v17 = v16;

      hslValues2 = [(PUIColorValues *)v14 hslValues];
      [hslValues2 hue];
      v20 = v19;

      v21 = v20 <= self;
      if (v17 <= self)
      {
        v22 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (v20 < self)
      {
        v22 = 0;
      }

      if (v17 < v20)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (v17 >= v20)
      {
        v8 = 1;
      }

      if (v23)
      {
        break;
      }

      ++v9;
      if (v30 == v10)
      {
        goto LABEL_22;
      }
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = (self - v17) / (v20 - v17);
      selfCopy = self + 1.0;
      if (v17 <= self)
      {
        selfCopy = self;
      }

      v26 = (selfCopy - v17) / (v20 + 1.0 - v17);
      if (v8)
      {
        v24 = v26;
      }

      v27 = v9 / v30;
      v28 = (v9 + 1) / v30 - v27;
      v7 = v27 + v28 * (v24 + 0.0) + v27 + v28 * (v24 + 0.0) + -1.0;
    }
  }

LABEL_22:

  return v7;
}

- (id)pui_hsbValues
{
  v1 = [[PUIColorValues alloc] initWithColor:self];
  hsbValues = [(PUIColorValues *)v1 hsbValues];

  return hsbValues;
}

- (void)pui_minLuminance
{
  pui_hslValues = [self pui_hslValues];
  [pui_hslValues luminance];
}

- (id)pui_invertColor
{
  v9[1] = *MEMORY[0x1E69E9840];
  cGColor = [self CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  Components = CGColorGetComponents(cGColor);
  v4 = (v9 - ((8 * NumberOfComponents + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((NumberOfComponents - 1) >= 0)
  {
    do
    {
      v4[NumberOfComponents - 1] = 1.0 - Components[NumberOfComponents - 1];
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  ColorSpace = CGColorGetColorSpace(cGColor);
  v6 = CGColorCreate(ColorSpace, v4);
  v7 = [MEMORY[0x1E69DC888] colorWithCGColor:v6];
  CGColorRelease(v6);

  return v7;
}

@end