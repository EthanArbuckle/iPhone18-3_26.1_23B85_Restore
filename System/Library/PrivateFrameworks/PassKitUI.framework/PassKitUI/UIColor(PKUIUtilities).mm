@interface UIColor(PKUIUtilities)
+ (id)pkui_blendFromColor:()PKUIUtilities toColor:withProgress:;
+ (id)pkui_colorWithHexString:()PKUIUtilities;
+ (id)pkui_colorWithPKColor:()PKUIUtilities;
- (id)pkui_extendedLinearColor;
- (id)pkui_linearColor;
@end

@implementation UIColor(PKUIUtilities)

+ (id)pkui_colorWithPKColor:()PKUIUtilities
{
  v4 = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(a3, "CGColor")}];
    v3 = vars8;
  }

  return v4;
}

+ (id)pkui_blendFromColor:()PKUIUtilities toColor:withProgress:
{
  v5 = a4;
  pkui_extendedLinearColor = [a3 pkui_extendedLinearColor];
  pkui_extendedLinearColor2 = [v5 pkui_extendedLinearColor];

  v8 = 0;
  if (pkui_extendedLinearColor && pkui_extendedLinearColor2)
  {
    [pkui_extendedLinearColor CGColor];
    [pkui_extendedLinearColor2 CGColor];
    BlendedLinearColor = PKColorCreateBlendedLinearColor();
    if (BlendedLinearColor)
    {
      v10 = BlendedLinearColor;
      v8 = [MEMORY[0x1E69DC888] colorWithCGColor:BlendedLinearColor];
      CFRelease(v10);
      if (v8)
      {
        objc_setAssociatedObject(v8, &PKUIExtendedLinearColorKey, v8, 0);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)pkui_linearColor
{
  v2 = objc_getAssociatedObject(self, &pkui_linearColor_PKUILinearColorKey);
  if (!v2)
  {
    [self CGColor];
    CopyByMatchingLinearSRGB = PKColorCreateCopyByMatchingLinearSRGB();
    if (CopyByMatchingLinearSRGB)
    {
      v6 = CopyByMatchingLinearSRGB;
      v2 = [MEMORY[0x1E69DC888] colorWithCGColor:CopyByMatchingLinearSRGB];
      CFRelease(v6);
      if (v2)
      {
        objc_setAssociatedObject(v2, &pkui_linearColor_PKUILinearColorKey, v2, 0);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = v2;

  return v3;
}

- (id)pkui_extendedLinearColor
{
  v2 = objc_getAssociatedObject(self, &PKUIExtendedLinearColorKey);
  if (!v2)
  {
    [self CGColor];
    CopyByMatchingExtendedLinearSRGB = PKColorCreateCopyByMatchingExtendedLinearSRGB();
    if (CopyByMatchingExtendedLinearSRGB)
    {
      v6 = CopyByMatchingExtendedLinearSRGB;
      v2 = [MEMORY[0x1E69DC888] colorWithCGColor:CopyByMatchingExtendedLinearSRGB];
      CFRelease(v6);
      if (v2)
      {
        objc_setAssociatedObject(v2, &PKUIExtendedLinearColorKey, v2, 0);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = v2;

  return v3;
}

+ (id)pkui_colorWithHexString:()PKUIUtilities
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"#" withString:&stru_1F3BD7330];

  if ([v7 length] == 6)
  {
    v11 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v7];
    [v8 scanHexInt:&v11];
    v9 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end