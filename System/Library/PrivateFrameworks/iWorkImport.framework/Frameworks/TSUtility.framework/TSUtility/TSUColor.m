@interface TSUColor
+ (BOOL)improvesContrastWhenColor:(id)a3 displayedOverBackgroundColor:(id)a4 comparedToColor:(id)a5 displayedOverBackgroundColor:(id)a6 inScenario:(unint64_t)a7;
+ (TSUColor)blackColor;
+ (TSUColor)blueColor;
+ (TSUColor)brownColor;
+ (TSUColor)clearColor;
+ (TSUColor)colorWithCGColor:(CGColor *)a3;
+ (TSUColor)colorWithHexString:(id)a3;
+ (TSUColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (TSUColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (TSUColor)colorWithPatternImage:(id)a3;
+ (TSUColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (TSUColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
+ (TSUColor)colorWithUIColor:(id)a3;
+ (TSUColor)colorWithWhite:(double)a3 alpha:(double)a4;
+ (TSUColor)cyanColor;
+ (TSUColor)grayColor;
+ (TSUColor)greenColor;
+ (TSUColor)lightGrayColor;
+ (TSUColor)magentaColor;
+ (TSUColor)orangeColor;
+ (TSUColor)purpleColor;
+ (TSUColor)randomColor;
+ (TSUColor)redColor;
+ (TSUColor)whiteColor;
+ (TSUColor)yellowColor;
- (BOOL)isEqualWithTolerance:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3;
- (CGColor)CGColor;
- (NSString)hexString;
- (TSUColor)colorWithAlphaComponent:(double)a3;
- (TSUColor)grayscaleColor;
- (TSUColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4;
- (TSUColor)initWithCoder:(id)a3;
- (TSUColor)initWithCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7;
- (TSUColor)initWithHexString:(id)a3;
- (TSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7;
- (TSUColor)initWithPatternImage:(id)a3;
- (TSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7;
- (TSUColor)initWithUIColor:(id)a3;
- (TSUColor)invertedColor;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)contrastRatioWithColor:(id)a3;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)a3;
- (double)relativeLuminance;
- (double)saturationComponent;
- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)colorByCompositingSourceOverDestinationColor:(id)a3;
- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)p_colorForComparingWithColor:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getRGBAComponents:(double *)a3;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation TSUColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (TSUColor)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (TSUColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (TSUColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithRed:a7 green:a3 blue:a4 alpha:a5 colorSpace:a6];

  return v7;
}

+ (TSUColor)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (TSUColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  return v6;
}

+ (TSUColor)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithHue:a7 saturation:a3 brightness:a4 alpha:a5 targetRGBSpace:a6];

  return v7;
}

+ (TSUColor)colorWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPatternImage:v4];

  return v5;
}

+ (TSUColor)colorWithHexString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHexString:v4];

  return v5;
}

+ (TSUColor)colorWithUIColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUIColor:v4];

  return v5;
}

+ (TSUColor)randomColor
{
  RandomRGB = TSUCGColorCreateRandomRGB();
  v3 = [TSUColor colorWithCGColor:RandomRGB];
  CGColorRelease(RandomRGB);

  return v3;
}

+ (TSUColor)clearColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (TSUColor)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (TSUColor)lightGrayColor
{
  v2 = [[a1 alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (TSUColor)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (TSUColor)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSUColor)initWithCGColor:(CGColor *)a3 colorSpace:(unint64_t)a4
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:209 isFatal:0 description:"invalid nil value for '%{public}s'", "CGColor"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v41.receiver = self;
  v41.super_class = TSUColor;
  v9 = [(TSUColor *)&v41 init];
  if (v9)
  {
    if (CGColorGetPattern(a3))
    {
      if (a4 != 2)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:290 isFatal:0 description:"If the color has a pattern, its color space should be Unspecified"];
LABEL_7:

        +[TSUAssertionHandler logBacktraceThrottled];
      }

LABEL_25:
      Copy = CGColorCreateCopy(a3);
      goto LABEL_26;
    }

    ColorSpace = CGColorGetColorSpace(a3);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 1)
        {
          goto LABEL_25;
        }

        if (Model != kCGColorSpaceModelRGB)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
          [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:231 isFatal:0 description:"Color specified as P3 isn't even RGB!"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v16 = CGColorGetColorSpace(a3);
        v17 = TSUSRGBColorSpace();
        if (!CFEqual(v16, v17))
        {
          v18 = TSUP3ColorSpace();
          if (!CFEqual(v16, v18))
          {
            v19 = TSUDeviceRGBColorSpace();
            if (!CFEqual(v16, v19))
            {
              v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
              v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
              [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:238 isFatal:0 description:"Color specified as P3 isn't P3, sRGB or Device RGB"];
              a4 = 1;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_19;
      }

      v20 = CGColorGetColorSpace(a3);
      v21 = TSUSRGBColorSpace();
      if (!CFEqual(v20, v21))
      {
        v22 = TSUP3ColorSpace();
        if (!CFEqual(v20, v22))
        {
          v38 = CGColorGetColorSpace(a3);
          if (CGColorSpaceGetModel(v38) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v38))
          {
            a4 = 1;
            v39 = TSUP3ColorSpace();
          }

          else
          {
            v39 = TSUSRGBColorSpace();
            a4 = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v39, kCGRenderingIntentDefault, a3, 0);
          if (Copy)
          {
LABEL_26:
            v9->mCGColor = Copy;
            v9->mColorRGBSpace = a4;
            if (!CGColorGetPattern(Copy))
            {
              Components = CGColorGetComponents(v9->mCGColor);
              NumberOfComponents = CGColorGetNumberOfComponents(v9->mCGColor);
              v31 = (&v40 - ((8 * NumberOfComponents + 15) & 0xFFFFFFFFFFFFFFF0));
              if (NumberOfComponents)
              {
                v32 = (&v40 - ((8 * NumberOfComponents + 15) & 0xFFFFFFFFFFFFFFF0));
                do
                {
                  v33 = *Components++;
                  v34 = v33;
                  *v32++ = v34;
                  --NumberOfComponents;
                }

                while (NumberOfComponents);
              }

              v35 = CGColorGetColorSpace(v9->mCGColor);
              v36 = CGColorCreate(v35, v31);
              CGColorRelease(v9->mCGColor);
              v9->mCGColor = v36;
            }

            return v9;
          }

          goto LABEL_25;
        }

LABEL_19:
        a4 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
        [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:244 isFatal:0 description:"Color specified as sRGB isn't even RGB!"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v25 = CGColorGetColorSpace(a3);
      v26 = TSUSRGBColorSpace();
      if (!CFEqual(v25, v26))
      {
        v27 = TSUDeviceRGBColorSpace();
        if (!CFEqual(v25, v27))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
          [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:248 isFatal:0 description:"Color specified as sRGB isn't sRGB or Device RGB"];
          a4 = 0;
          goto LABEL_7;
        }
      }
    }

    a4 = 0;
    goto LABEL_25;
  }

  return v9;
}

- (TSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 colorSpace:(unint64_t)a7
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!a7 || a7 == 2)
  {
    v13 = TSUSRGBColorSpace();
  }

  else if (a7 == 1)
  {
    v13 = TSUP3ColorSpace();
  }

  else
  {
    v13 = 0;
  }

  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v14 = CGColorCreate(v13, components);
  v15 = [(TSUColor *)self initWithCGColor:v14 colorSpace:a7];
  CGColorRelease(v14);
  return v15;
}

- (TSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6 targetRGBSpace:(unint64_t)a7
{
  if (a7)
  {
    if (a7 == 1)
    {
      v12 = TSUP3ColorSpace();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = TSUSRGBColorSpace();
  }

  v13 = TSUCreateCGColorFromHSBInColorSpace(v12, a3, a4, a5, a6);
  v14 = [(TSUColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (TSUColor)initWithCyan:(double)a3 magenta:(double)a4 yellow:(double)a5 black:(double)a6 alpha:(double)a7
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v8 = TSUDeviceCMYKColorSpace();
  v9 = CGColorCreate(v8, &v12);
  v10 = [(TSUColor *)self initWithCGColor:v9, *&v12, *&v13, *&v14, *&v15, *&v16, v17];
  CGColorRelease(v9);
  return v10;
}

- (TSUColor)initWithPatternImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    memset(&v14, 0, sizeof(v14));
    [v4 scale];
    v7 = 1.0 / v6;
    [v5 scale];
    CGAffineTransformMakeScale(&v14, v7, 1.0 / v8);
    v9 = sub_2770603A0([v5 CGImage], &v14);
    v10 = [(TSUColor *)self initWithCGColor:v9];
    CGColorRelease(v9);
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithPatternImage:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:404 isFatal:0 description:"invalid nil value for '%{public}s'", "patternImage"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v10 = 0;
  }

  return v10;
}

- (TSUColor)initWithHexString:(id)a3
{
  v4 = [a3 uppercaseString];
  if ([v4 rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(v4, "length"))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithHexString:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:422 isFatal:0 description:"Invalid hex string: %@", v4];

    +[TSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  else
  {
    v6 = [v4 substringWithRange:{1, 2}];
    v7 = sub_2770F6F2C(v6, v6);

    v8 = [v4 substringWithRange:{3, 2}];
    v9 = sub_2770F6F2C(v8, v8);

    v10 = [v4 substringWithRange:{5, 2}];
    v11 = sub_2770F6F2C(v10, v10);

    v12 = [(TSUColor *)self initWithRed:(v7 / 255.0) green:(v9 / 255.0) blue:(v11 / 255.0) alpha:1.0];
  }

  return v12;
}

- (TSUColor)initWithUIColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithUIColor:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:442 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [v4 CGColor];
  if (CGColorGetPattern(v7))
  {
    v8 = [(TSUColor *)self initWithCGColor:v7];
  }

  else
  {
    v9 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, v7, 0);
    v11 = TSUSRGBColorSpace();
    v12 = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, CopyByMatchingToColorSpace, 0);
    v13 = TSUP3ColorSpace();
    v14 = CGColorCreateCopyByMatchingToColorSpace(v13, kCGRenderingIntentDefault, v12, 0);
    v15 = [TSUColor colorWithCGColor:CopyByMatchingToColorSpace];
    v16 = [TSUColor colorWithCGColor:v14];
    if ([v15 isEqualWithTolerance:v16])
    {
      v17 = v12;
    }

    else
    {
      v17 = CopyByMatchingToColorSpace;
    }

    v18 = [(TSUColor *)self initWithCGColor:v17];
    CGColorRelease(CopyByMatchingToColorSpace);
    CGColorRelease(v12);
    CGColorRelease(v14);
    v8 = v18;
  }

  return v8;
}

- (void)dealloc
{
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = TSUColor;
  [(TSUColor *)&v3 dealloc];
}

- (BOOL)isEqualWithTolerance:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  LOBYTE(self) = [(TSUColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)alphaComponent
{
  v2 = [(TSUColor *)self CGColor];

  return CGColorGetAlpha(v2);
}

- (void)getRGBAComponents:(double *)a3
{
  if (a3)
  {
    [(TSUColor *)self redComponent];
    *a3 = v5;
    [(TSUColor *)self greenComponent];
    *(a3 + 1) = v6;
    [(TSUColor *)self blueComponent];
    *(a3 + 2) = v7;
    [(TSUColor *)self alphaComponent];
    *(a3 + 3) = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor getRGBAComponents:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:546 isFatal:0 description:"rgbaComponents is NULL!"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (double)hueComponent
{
  v10 = 0;
  v11 = 0.0;
  v9 = 0;
  [(TSUColor *)self redComponent];
  v4 = v3;
  [(TSUColor *)self greenComponent];
  v6 = v5;
  [(TSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v11;
}

- (double)saturationComponent
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0;
  [(TSUColor *)self redComponent];
  v4 = v3;
  [(TSUColor *)self greenComponent];
  v6 = v5;
  [(TSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v10;
}

- (double)brightnessComponent
{
  v10 = 0;
  v11 = 0;
  v9 = 0.0;
  [(TSUColor *)self redComponent];
  v4 = v3;
  [(TSUColor *)self greenComponent];
  v6 = v5;
  [(TSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v10, &v9, v4, v6, v7);
  return v9;
}

- (UIColor)UIColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(TSUColor *)self CGColor];

  return [v2 colorWithCGColor:v3];
}

- (TSUColor)grayscaleColor
{
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_4;
    }

    v6 = [TSUColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = self;
    if (!v6)
    {
LABEL_4:
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor grayscaleColor]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:627 isFatal:0 description:"invalid nil value for '%{public}s'", "grayscale"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v6 = 0;
    }
  }

  return v6;
}

- (TSUColor)invertedColor
{
  if (CGColorGetNumberOfComponents([(TSUColor *)self CGColor]) != 4)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor invertedColor]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:632 isFatal:0 description:"Wrong number of components while inverting color. %zi instead of 4", CGColorGetNumberOfComponents([(TSUColor *)self CGColor])];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  v6 = 1.0 - *Components;
  v7 = 1.0 - Components[1];
  v8 = Components[3];
  v9 = 1.0 - Components[2];

  return [TSUColor colorWithRed:v6 green:v7 blue:v9 alpha:v8];
}

- (TSUColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, a3);
  v4 = [TSUColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);

  return v4;
}

- (double)luminance
{
  if (CGColorGetNumberOfComponents([(TSUColor *)self CGColor]) != 4)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor luminance]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:647 isFatal:0 description:"Wrong number of components to calculate luminance. Got %zi instead of 4.", CGColorGetNumberOfComponents([(TSUColor *)self CGColor])];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  result = fmax(Components[1] * 0.715200007 + *Components * 0.212599993 + Components[2] * 0.0722000003 * Components[3], 0.0);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)relativeLuminance
{
  if (CGColorGetNumberOfComponents([(TSUColor *)self CGColor]) != 4)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor relativeLuminance]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:657 isFatal:0 description:"Wrong number of components to calculate relative luminance. Got %zi instead of 4.", CGColorGetNumberOfComponents([(TSUColor *)self CGColor])];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  v6 = *Components;
  v7 = Components[1];
  v8 = Components[2];
  if (*Components <= 0.03928)
  {
    v9 = v6 / 12.92;
  }

  else
  {
    v9 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  if (v7 <= 0.03928)
  {
    v10 = v7 / 12.92;
  }

  else
  {
    v10 = pow((v7 + 0.055) / 1.055, 2.4);
  }

  if (v8 <= 0.03928)
  {
    v11 = v8 / 12.92;
  }

  else
  {
    v11 = pow((v8 + 0.055) / 1.055, 2.4);
  }

  return v10 * 0.7152 + v9 * 0.2126 + v11 * 0.0722;
}

- (BOOL)isNearlyWhite
{
  v10 = 0.0;
  v11 = 0;
  v9 = 0.0;
  [(TSUColor *)self redComponent];
  v4 = v3;
  [(TSUColor *)self greenComponent];
  v6 = v5;
  [(TSUColor *)self blueComponent];
  TSURGBToHSB(&v11, &v9, &v10, v4, v6, v7);
  return v9 < 0.1 && v10 > 0.9;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3
{
  v14 = 0.0;
  v15 = 0;
  v13 = 0.0;
  [(TSUColor *)self redComponent];
  v6 = v5;
  [(TSUColor *)self greenComponent];
  v8 = v7;
  [(TSUColor *)self blueComponent];
  v10 = TSURGBToHSB(&v15, &v13, &v14, v6, v8, v9);
  switch(a3)
  {
    case 1uLL:
      return v13 < 0.200000003 && v14 > 0.899999976;
    case 3uLL:
      return sub_277060828([(TSUColor *)self CGColor]) <= 0.300000012;
    case 2uLL:
      v11 = sub_277060828([(TSUColor *)self CGColor]);
      return v11 <= 0.349999994 && v11 >= 0.0500000007;
    default:
      return 0;
  }
}

- (double)contrastRatioWithColor:(id)a3
{
  v4 = a3;
  [(TSUColor *)self relativeLuminance];
  v6 = v5;
  [v4 relativeLuminance];
  v8 = v7;

  if (v8 >= v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  return (v9 + 0.05) / (v10 + 0.05);
}

+ (BOOL)improvesContrastWhenColor:(id)a3 displayedOverBackgroundColor:(id)a4 comparedToColor:(id)a5 displayedOverBackgroundColor:(id)a6 inScenario:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a7 >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUColor improvesContrastWhenColor:displayedOverBackgroundColor:comparedToColor:displayedOverBackgroundColor:inScenario:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:770 isFatal:0 description:"Unhandled contrast scenario (%zu).", a7];

    +[TSUAssertionHandler logBacktraceThrottled];
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = dbl_277139620[a7];
    v16 = dbl_277139648[a7];
  }

  v19 = [v13 colorByCompositingSourceOverDestinationColor:v14];
  [v19 contrastRatioWithColor:v14];
  if (v20 >= v15)
  {
    v26 = 0;
  }

  else
  {
    v21 = v20;
    v22 = [v11 colorByCompositingSourceOverDestinationColor:v12];
    [v22 contrastRatioWithColor:v12];
    if (v23 <= v21)
    {
      v26 = 0;
    }

    else if (v23 >= v16)
    {
      v26 = 1;
    }

    else
    {
      v24 = [v13 colorWithAlphaComponent:1.0];
      v25 = [v14 colorWithAlphaComponent:1.0];
      v26 = [v24 isAlmostEqualToColor:v25];
    }
  }

  return v26;
}

- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v4 = [(TSUColor *)self newBlendedColorWithFraction:a4 ofColor:a3];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->mColorRGBSpace == 2)
  {
    goto LABEL_2;
  }

  if ([v6 colorRGBSpace] == 2)
  {
    v8 = v7;
    goto LABEL_18;
  }

  mColorRGBSpace = self->mColorRGBSpace;
  if (mColorRGBSpace == [v7 colorRGBSpace])
  {
    v10 = self->mColorRGBSpace;
    if (v10 == 1)
    {
      v56 = [TSUColor alloc];
      [(TSUColor *)self redComponent];
      v58 = v57;
      [v7 redComponent];
      v60 = TSUMix(v58, v59, a3);
      [(TSUColor *)self greenComponent];
      v62 = v61;
      [v7 greenComponent];
      v64 = TSUMix(v62, v63, a3);
      [(TSUColor *)self blueComponent];
      v66 = v65;
      [v7 blueComponent];
      v68 = TSUMix(v66, v67, a3);
      [(TSUColor *)self alphaComponent];
      v70 = v69;
      [v7 alphaComponent];
      v27 = TSUMix(v70, v71, a3);
      v28 = v56;
      v29 = v60;
      v30 = v64;
      v31 = v68;
      v32 = 1;
    }

    else
    {
      if (v10)
      {
LABEL_2:
        v8 = self;
LABEL_18:
        v55 = v8;
        goto LABEL_19;
      }

      v11 = [TSUColor alloc];
      [(TSUColor *)self redComponent];
      v13 = v12;
      [v7 redComponent];
      v15 = TSUMix(v13, v14, a3);
      [(TSUColor *)self greenComponent];
      v17 = v16;
      [v7 greenComponent];
      v19 = TSUMix(v17, v18, a3);
      [(TSUColor *)self blueComponent];
      v21 = v20;
      [v7 blueComponent];
      v23 = TSUMix(v21, v22, a3);
      [(TSUColor *)self alphaComponent];
      v25 = v24;
      [v7 alphaComponent];
      v27 = TSUMix(v25, v26, a3);
      v28 = v11;
      v29 = v15;
      v30 = v19;
      v31 = v23;
      v32 = 0;
    }

    v8 = [(TSUColor *)v28 initWithRed:v32 green:v29 blue:v30 alpha:v31 colorSpace:v27];
    goto LABEL_18;
  }

  if ([(TSUColor *)self colorRGBSpace]== 1)
  {
    v33 = self;
  }

  else
  {
    v34 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v34, kCGRenderingIntentDefault, [(TSUColor *)self CGColor], 0);
    v33 = [[TSUColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];
    CGColorRelease(CopyByMatchingToColorSpace);
  }

  if ([v7 colorRGBSpace] == 1)
  {
    v36 = v7;
  }

  else
  {
    v37 = TSUP3ColorSpace();
    v38 = CGColorCreateCopyByMatchingToColorSpace(v37, kCGRenderingIntentDefault, [v7 CGColor], 0);
    v36 = [[TSUColor alloc] initWithCGColor:v38 colorSpace:1];
    CGColorRelease(v38);
  }

  v39 = [TSUColor alloc];
  [(TSUColor *)v33 redComponent];
  v41 = v40;
  [(TSUColor *)v36 redComponent];
  v43 = TSUMix(v41, v42, a3);
  [(TSUColor *)v33 greenComponent];
  v45 = v44;
  [(TSUColor *)v36 greenComponent];
  v47 = TSUMix(v45, v46, a3);
  [(TSUColor *)v33 blueComponent];
  v49 = v48;
  [(TSUColor *)v36 blueComponent];
  v51 = TSUMix(v49, v50, a3);
  [(TSUColor *)v33 alphaComponent];
  v53 = v52;
  [(TSUColor *)v36 alphaComponent];
  v55 = [(TSUColor *)v39 initWithRed:1 green:v43 blue:v47 alpha:v51 colorSpace:TSUMix(v53, v54, a3)];

LABEL_19:
  return v55;
}

- (id)colorByCompositingSourceOverDestinationColor:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TSUColor *)self alphaComponent];
  if (v5 == 1.0)
  {
    v6 = self;
  }

  else
  {
    v7 = [(TSUColor *)self p_colorForComparingWithColor:v4];
    v8 = [v4 p_colorForComparingWithColor:self];

    [v7 getRGBAComponents:v17];
    [v8 getRGBAComponents:v15];
    v9 = v18;
    v10 = v16;
    v11 = 1.0 - v18;
    v12 = v18 + v16 * (1.0 - v18);
    v13 = [TSUColor alloc];
    v6 = -[TSUColor initWithRed:green:blue:alpha:colorSpace:](v13, "initWithRed:green:blue:alpha:colorSpace:", [v7 colorRGBSpace], (v11 * (v10 * v15[0]) + v17[0] * v9) / v12, (v11 * (v10 * v15[1]) + v17[1] * v9) / v12, (v11 * (v10 * v15[2]) + v17[2] * v9) / v12, v12);

    v4 = v8;
  }

  return v6;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(a4, v11);

  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, self->mCGColor);
  CGContextAddPathSafe(a4, a3);
  CGContextFillPath(a4);

  CGContextRestoreGState(a4);
}

- (NSString)hexString
{
  v3 = MEMORY[0x277CCACA8];
  [(TSUColor *)self redComponent];
  v5 = (v4 * 255.0);
  [(TSUColor *)self greenComponent];
  v7 = (v6 * 255.0);
  [(TSUColor *)self blueComponent];
  return [v3 stringWithFormat:@"#%02X%02X%02X", v5, v7, (v8 * 255.0)];
}

- (BOOL)p_isEqualToColor:(id)a3 withTolerance:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [v6 colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    v9 = [(TSUColor *)self CGColor];
    v10 = [v7 CGColor];
    if (v9 == v10)
    {
      v18 = 1;
    }

    else
    {
      v11 = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_2770F87B0;
      aBlock[3] = &unk_27A703A28;
      *&aBlock[4] = a4;
      v12 = _Block_copy(aBlock);
      ColorSpace = CGColorGetColorSpace(v9);
      Model = CGColorSpaceGetModel(ColorSpace);
      v15 = CGColorGetColorSpace(v11);
      if (Model != CGColorSpaceGetModel(v15))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor p_isEqualToColor:withTolerance:]"];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
        [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1052 isFatal:0 description:"TSUColors should always be RGB! Comparing two with different color models."];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      if (CFEqual(ColorSpace, v15))
      {
        v18 = v12[2](v12, v9, v11);
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (double)p_rgbComponentWithIndex:(unsigned __int8)a3
{
  v3 = a3;
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[v3] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[v3];
  }

  return result;
}

- (id)p_colorForComparingWithColor:(id)a3
{
  v4 = a3;
  v5 = [(TSUColor *)self colorRGBSpace];
  v6 = [v4 colorRGBSpace];

  v7 = self;
  if (!v5 && v6 == 1)
  {
    v8 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v8, kCGRenderingIntentDefault, v7->mCGColor, 0);
    v10 = [[TSUColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];

    CGColorRelease(CopyByMatchingToColorSpace);
    v7 = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (CGColorGetPattern([(TSUColor *)self CGColor]))
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [(TSUColor *)self UIColor];
  }
  v5 = ;
  [v4 encodeObject:v5 forKey:@"UIColor"];
}

- (TSUColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIColor"];

  v6 = [(TSUColor *)self initWithUIColor:v5];
  return v6;
}

@end