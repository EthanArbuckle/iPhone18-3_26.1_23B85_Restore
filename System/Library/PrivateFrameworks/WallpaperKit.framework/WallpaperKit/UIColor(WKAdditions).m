@interface UIColor(WKAdditions)
+ (id)wk_colorWithHexString:()WKAdditions;
- (id)wk_colorHexString;
- (id)wk_interpolatedToColor:()WKAdditions progress:;
@end

@implementation UIColor(WKAdditions)

+ (id)wk_colorWithHexString:()WKAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasPrefix:@"#"] && objc_msgSend(v3, "length") >= 2)
  {
    v4 = [v3 substringFromIndex:1];

    v3 = v4;
  }

  if ([v3 length] == 3)
  {
    v5 = 1;
    v6 = 3;
    v7 = 1;
  }

  else if ([v3 length] == 4)
  {
    v7 = 1;
    v6 = 4;
    v5 = 1;
  }

  else
  {
    if ([v3 length] == 6)
    {
      v5 = 0;
      v6 = 3;
    }

    else
    {
      if ([v3 length] != 8)
      {
        goto LABEL_19;
      }

      v5 = 0;
      v6 = 4;
    }

    v7 = 2;
  }

  v8 = 0;
  v9 = 0;
  v23 = 1.0;
  v10 = 8 * v6;
  v11 = 1;
  do
  {
    v12 = v3;
    v13 = [v3 substringWithRange:{v8, v7}];
    v14 = v13;
    if (v5)
    {
      v15 = [v13 stringByAppendingString:v13];

      v14 = v15;
    }

    v16 = [MEMORY[0x1E696AE88] scannerWithString:v14];
    v21 = 0;
    v11 &= [v16 scanHexInt:&v21];
    LODWORD(v17) = v21;
    v22[v9 / 8] = v17 / 255.0;

    v9 += 8;
    v8 += v7;
    v3 = v12;
  }

  while (v10 != v9);
  if (v11)
  {
    v18 = [MEMORY[0x1E69DC888] colorWithRed:v22[0] green:v22[1] blue:v22[2] alpha:v23];
    goto LABEL_20;
  }

LABEL_19:
  v18 = 0;
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)wk_colorHexString
{
  v1 = [a1 CGColor];
  if (CGColorGetNumberOfComponents(v1) >= 3)
  {
    Components = CGColorGetComponents(v1);
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX", llround(*Components * 255.0), llround(Components[1] * 255.0), llround(Components[2] * 255.0)];
    Alpha = CGColorGetAlpha(v1);
    if (Alpha < 1.0)
    {
      v5 = [v2 stringByAppendingFormat:@"%02lX", llround(Alpha * 255.0)];

      v2 = v5;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)wk_interpolatedToColor:()WKAdditions progress:
{
  v7 = a1;
  v8 = a4;
  v9 = [a1 CGColor];
  v10 = [v8 CGColor];

  *&v11 = a2;
  v12 = [v9 CA_interpolateValue:v10 byFraction:v11];
  v13 = [MEMORY[0x1E69DC888] colorWithCGColor:v12];

  return v13;
}

@end