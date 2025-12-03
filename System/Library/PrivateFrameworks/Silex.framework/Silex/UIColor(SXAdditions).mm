@interface UIColor(SXAdditions)
+ (uint64_t)colorWithHue:()SXAdditions saturation:lightness:alpha:;
- (double)brightness;
- (double)getHue:()SXAdditions saturation:lightness:alpha:;
- (double)relativeLuminance;
- (id)hex;
- (id)invertedBrightness;
- (id)invertedLightness;
- (id)invertedRGB;
- (void)_getHSBA:()SXAdditions;
@end

@implementation UIColor(SXAdditions)

- (double)brightness
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__UIColor_SXAdditions__brightness__block_invoke;
  v3[3] = &unk_1E8501808;
  v3[4] = &v4;
  [self _getHSBA:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (void)_getHSBA:()SXAdditions
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = a3;
  [self getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
  v4[2](v4, v8, v7, v6, v5);
}

- (id)invertedRGB
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [self getRed:&v6 green:&v5 blue:&v4 alpha:&v3];
  v6 = 1.0 - v6;
  v4 = 1.0 - v4;
  v5 = 1.0 - v5;
  v1 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];

  return v1;
}

- (id)invertedBrightness
{
  v6 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v3 = 0;
  [self getHue:&v6 saturation:&v5 brightness:&v4 alpha:&v3];
  v4 = 1.0 - v4;
  v1 = [MEMORY[0x1E69DC888] colorWithHue:v6 saturation:v5 brightness:? alpha:?];

  return v1;
}

- (id)hex
{
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  v10 = 0.0;
  [self getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  v1 = v13 * 255.0;
  v2 = llroundf(v1);
  v3 = v12 * 255.0;
  v4 = llroundf(v3);
  v5 = v11 * 255.0;
  v6 = llroundf(v5);
  v7 = v10 * 255.0;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX%02lX", v2, v4, v6, llroundf(v7)];

  return v8;
}

- (double)getHue:()SXAdditions saturation:lightness:alpha:
{
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if ([self getRed:&v26 green:&v25 blue:&v24 alpha:&v23])
  {
    if (v26 >= v25)
    {
      v11 = v26;
    }

    else
    {
      v11 = v25;
    }

    if (v26 >= v25)
    {
      v12 = v25;
    }

    else
    {
      v12 = v26;
    }

    if (v11 >= v24)
    {
      v13 = v11;
    }

    else
    {
      v13 = v24;
    }

    if (v12 >= v24)
    {
      v14 = v24;
    }

    else
    {
      v14 = v12;
    }

    result = (v13 + v14) * 0.5;
    v15 = 0.0;
    v16 = 0.0;
    if (v13 > v14)
    {
      v17 = v13 - v14;
      v18 = 2.0 - v13 - v14;
      if (result <= 0.5)
      {
        v18 = v13 + v14;
      }

      v15 = v17 / v18;
      v19 = (v26 - v25) / v17 + 4.0;
      if (v25 == v13)
      {
        v19 = (v24 - v26) / v17 + 2.0;
      }

      v20 = 0.0;
      if (v25 < v24)
      {
        v20 = 6.0;
      }

      v21 = v20 + (v25 - v24) / v17;
      if (v26 == v13)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      v16 = v22 / 6.0;
    }

    if (a3)
    {
      *a3 = v16;
    }

    if (a4)
    {
      *a4 = v15;
    }

    if (a5)
    {
      *a5 = result;
    }

    if (a6)
    {
      result = v23;
      *a6 = v23;
    }
  }

  return result;
}

+ (uint64_t)colorWithHue:()SXAdditions saturation:lightness:alpha:
{
  v5 = a3 < 0.5;
  v6 = a2 + a3 - a3 * a2;
  v7 = (a2 + 1.0) * a3;
  if (v5)
  {
    v6 = v7;
  }

  v8 = -(v6 - a3 * 2.0);
  v9 = self + 0.333333343;
  if (self + 0.333333343 < 0.0)
  {
    v9 = self + 0.333333343 + 1.0;
  }

  if (v9 > 1.0)
  {
    v9 = v9 + -1.0;
  }

  if (v9 < 0.166666672)
  {
    v10 = (v6 - v8) * 6.0;
LABEL_10:
    v11 = v8 + v10 * v9;
    goto LABEL_14;
  }

  v11 = v6;
  if (v9 >= 0.5)
  {
    v11 = v8;
    if (v9 < 0.666666687)
    {
      v10 = (0.666666687 - v9) * (v6 - v8);
      v9 = 6.0;
      goto LABEL_10;
    }
  }

LABEL_14:
  selfCopy = self + 1.0;
  if (self >= 0.0)
  {
    selfCopy = self;
  }

  if (selfCopy > 1.0)
  {
    selfCopy = selfCopy + -1.0;
  }

  if (selfCopy < 0.166666672)
  {
    v13 = (v6 - v8) * 6.0;
LABEL_20:
    v14 = v8 + v13 * selfCopy;
    goto LABEL_24;
  }

  v14 = v6;
  if (selfCopy >= 0.5)
  {
    v14 = v8;
    if (selfCopy < 0.666666687)
    {
      v13 = (0.666666687 - selfCopy) * (v6 - v8);
      selfCopy = 6.0;
      goto LABEL_20;
    }
  }

LABEL_24:
  v15 = self + -0.333333343;
  if (v15 < 0.0)
  {
    v15 = v15 + 1.0;
  }

  if (v15 > 1.0)
  {
    v15 = v15 + -1.0;
  }

  if (v15 >= 0.166666672)
  {
    if (v15 < 0.5)
    {
      return [MEMORY[0x1E69DC888] colorWithRed:v11 green:v14 blue:v6 alpha:?];
    }

    if (v15 >= 0.666666687)
    {
      v6 = v8;
      return [MEMORY[0x1E69DC888] colorWithRed:v11 green:v14 blue:v6 alpha:?];
    }

    v16 = (0.666666687 - v15) * (v6 - v8);
    v15 = 6.0;
  }

  else
  {
    v16 = (v6 - v8) * 6.0;
  }

  v6 = v8 + v16 * v15;
  return [MEMORY[0x1E69DC888] colorWithRed:v11 green:v14 blue:v6 alpha:?];
}

- (id)invertedLightness
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0.0;
  [self getHue:&v7 saturation:&v6 lightness:&v5 alpha:&v4];
  v1 = 1.0 - v5;
  v5 = 1.0 - v5;
  if (v6 >= 2.22044605e-16)
  {
    [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 lightness:? alpha:?];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:v1 green:v1 blue:v1 alpha:v4];
  }
  v2 = ;

  return v2;
}

- (double)relativeLuminance
{
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  [self getRed:&v10 green:&v9 blue:&v8 alpha:0];
  v1 = v10 * 255.0;
  if (v10 * 255.0 >= 10.0)
  {
    v2 = pow(v1 / 269.0 + 0.0513, 2.4);
  }

  else
  {
    v2 = v1 / 3294.0;
  }

  v3 = v9 * 255.0;
  if (v9 * 255.0 >= 10.0)
  {
    v4 = pow(v3 / 269.0 + 0.0513, 2.4);
  }

  else
  {
    v4 = v3 / 3294.0;
  }

  v5 = v8 * 255.0;
  if (v8 * 255.0 >= 10.0)
  {
    v6 = pow(v5 / 269.0 + 0.0513, 2.4);
  }

  else
  {
    v6 = v5 / 3294.0;
  }

  return v4 * 0.7152 + v2 * 0.2126 + v6 * 0.0722;
}

@end