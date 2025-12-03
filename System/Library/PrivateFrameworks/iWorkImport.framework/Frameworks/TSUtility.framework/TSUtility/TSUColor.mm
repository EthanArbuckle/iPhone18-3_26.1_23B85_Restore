@interface TSUColor
+ (BOOL)improvesContrastWhenColor:(id)color displayedOverBackgroundColor:(id)backgroundColor comparedToColor:(id)toColor displayedOverBackgroundColor:(id)overBackgroundColor inScenario:(unint64_t)scenario;
+ (TSUColor)blackColor;
+ (TSUColor)blueColor;
+ (TSUColor)brownColor;
+ (TSUColor)clearColor;
+ (TSUColor)colorWithCGColor:(CGColor *)color;
+ (TSUColor)colorWithHexString:(id)string;
+ (TSUColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (TSUColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
+ (TSUColor)colorWithPatternImage:(id)image;
+ (TSUColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (TSUColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space;
+ (TSUColor)colorWithUIColor:(id)color;
+ (TSUColor)colorWithWhite:(double)white alpha:(double)alpha;
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
- (BOOL)isEqualWithTolerance:(id)tolerance;
- (BOOL)isNearlyWhite;
- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGColor)CGColor;
- (NSString)hexString;
- (TSUColor)colorWithAlphaComponent:(double)component;
- (TSUColor)grayscaleColor;
- (TSUColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space;
- (TSUColor)initWithCoder:(id)coder;
- (TSUColor)initWithCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha;
- (TSUColor)initWithHexString:(id)string;
- (TSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space;
- (TSUColor)initWithPatternImage:(id)image;
- (TSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space;
- (TSUColor)initWithUIColor:(id)color;
- (TSUColor)invertedColor;
- (UIColor)UIColor;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)contrastRatioWithColor:(id)color;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)index;
- (double)relativeLuminance;
- (double)saturationComponent;
- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)colorByCompositingSourceOverDestinationColor:(id)color;
- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)p_colorForComparingWithColor:(id)color;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getRGBAComponents:(double *)components;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation TSUColor

- (CGColor)CGColor
{
  v2 = CGColorRetain(self->mCGColor);

  return CFAutorelease(v2);
}

+ (TSUColor)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (TSUColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (TSUColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithRed:space green:red blue:green alpha:blue colorSpace:alpha];

  return v7;
}

+ (TSUColor)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (TSUColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = [[self alloc] initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  return v6;
}

+ (TSUColor)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  v7 = [[self alloc] initWithHue:space saturation:hue brightness:saturation alpha:brightness targetRGBSpace:alpha];

  return v7;
}

+ (TSUColor)colorWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] initWithPatternImage:imageCopy];

  return v5;
}

+ (TSUColor)colorWithHexString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithHexString:stringCopy];

  return v5;
}

+ (TSUColor)colorWithUIColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithUIColor:colorCopy];

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
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (TSUColor)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (TSUColor)lightGrayColor
{
  v2 = [[self alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (TSUColor)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (TSUColor)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (TSUColor)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (TSUColor)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSUColor)initWithCGColor:(CGColor *)color colorSpace:(unint64_t)space
{
  v42 = *MEMORY[0x277D85DE8];
  if (!color)
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
    if (CGColorGetPattern(color))
    {
      if (space != 2)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:290 isFatal:0 description:"If the color has a pattern, its color space should be Unspecified"];
LABEL_7:

        +[TSUAssertionHandler logBacktraceThrottled];
      }

LABEL_25:
      Copy = CGColorCreateCopy(color);
      goto LABEL_26;
    }

    ColorSpace = CGColorGetColorSpace(color);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (space)
    {
      if (space != 2)
      {
        if (space != 1)
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

        v16 = CGColorGetColorSpace(color);
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
              space = 1;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_19;
      }

      v20 = CGColorGetColorSpace(color);
      v21 = TSUSRGBColorSpace();
      if (!CFEqual(v20, v21))
      {
        v22 = TSUP3ColorSpace();
        if (!CFEqual(v20, v22))
        {
          v38 = CGColorGetColorSpace(color);
          if (CGColorSpaceGetModel(v38) == kCGColorSpaceModelRGB && CGColorSpaceIsWideGamutRGB(v38))
          {
            space = 1;
            v39 = TSUP3ColorSpace();
          }

          else
          {
            v39 = TSUSRGBColorSpace();
            space = 0;
          }

          Copy = CGColorCreateCopyByMatchingToColorSpace(v39, kCGRenderingIntentDefault, color, 0);
          if (Copy)
          {
LABEL_26:
            v9->mCGColor = Copy;
            v9->mColorRGBSpace = space;
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
        space = 1;
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

      v25 = CGColorGetColorSpace(color);
      v26 = TSUSRGBColorSpace();
      if (!CFEqual(v25, v26))
      {
        v27 = TSUDeviceRGBColorSpace();
        if (!CFEqual(v25, v27))
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:colorSpace:]"];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
          [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:248 isFatal:0 description:"Color specified as sRGB isn't sRGB or Device RGB"];
          space = 0;
          goto LABEL_7;
        }
      }
    }

    space = 0;
    goto LABEL_25;
  }

  return v9;
}

- (TSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha colorSpace:(unint64_t)space
{
  components[4] = *MEMORY[0x277D85DE8];
  if (!space || space == 2)
  {
    v13 = TSUSRGBColorSpace();
  }

  else if (space == 1)
  {
    v13 = TSUP3ColorSpace();
  }

  else
  {
    v13 = 0;
  }

  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
  v14 = CGColorCreate(v13, components);
  v15 = [(TSUColor *)self initWithCGColor:v14 colorSpace:space];
  CGColorRelease(v14);
  return v15;
}

- (TSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha targetRGBSpace:(unint64_t)space
{
  if (space)
  {
    if (space == 1)
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

  v13 = TSUCreateCGColorFromHSBInColorSpace(v12, hue, saturation, brightness, alpha);
  v14 = [(TSUColor *)self initWithCGColor:v13];
  CGColorRelease(v13);
  return v14;
}

- (TSUColor)initWithCyan:(double)cyan magenta:(double)magenta yellow:(double)yellow black:(double)black alpha:(double)alpha
{
  v17 = *MEMORY[0x277D85DE8];
  cyanCopy = cyan;
  magentaCopy = magenta;
  yellowCopy = yellow;
  blackCopy = black;
  alphaCopy = alpha;
  v8 = TSUDeviceCMYKColorSpace();
  v9 = CGColorCreate(v8, &cyanCopy);
  v10 = [(TSUColor *)self initWithCGColor:v9, *&cyanCopy, *&magentaCopy, *&yellowCopy, *&blackCopy, *&alphaCopy, v17];
  CGColorRelease(v9);
  return v10;
}

- (TSUColor)initWithPatternImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    memset(&v14, 0, sizeof(v14));
    [imageCopy scale];
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

- (TSUColor)initWithHexString:(id)string
{
  uppercaseString = [string uppercaseString];
  if ([uppercaseString rangeOfString:@"#[\\dA-F]{6}" options:1024] || v5 != objc_msgSend(uppercaseString, "length"))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithHexString:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:422 isFatal:0 description:"Invalid hex string: %@", uppercaseString];

    +[TSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  else
  {
    v6 = [uppercaseString substringWithRange:{1, 2}];
    v7 = sub_2770F6F2C(v6, v6);

    v8 = [uppercaseString substringWithRange:{3, 2}];
    v9 = sub_2770F6F2C(v8, v8);

    v10 = [uppercaseString substringWithRange:{5, 2}];
    v11 = sub_2770F6F2C(v10, v10);

    v12 = [(TSUColor *)self initWithRed:(v7 / 255.0) green:(v9 / 255.0) blue:(v11 / 255.0) alpha:1.0];
  }

  return v12;
}

- (TSUColor)initWithUIColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithUIColor:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:442 isFatal:0 description:"invalid nil value for '%{public}s'", "uiColor"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  cGColor = [colorCopy CGColor];
  if (CGColorGetPattern(cGColor))
  {
    v8 = [(TSUColor *)self initWithCGColor:cGColor];
  }

  else
  {
    v9 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, cGColor, 0);
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

- (BOOL)isEqualWithTolerance:(id)tolerance
{
  toleranceCopy = tolerance;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, toleranceCopy);

  LOBYTE(self) = [(TSUColor *)self p_isEqualToColor:v6 withTolerance:0.001953125];
  return self;
}

- (double)alphaComponent
{
  cGColor = [(TSUColor *)self CGColor];

  return CGColorGetAlpha(cGColor);
}

- (void)getRGBAComponents:(double *)components
{
  if (components)
  {
    [(TSUColor *)self redComponent];
    *components = v5;
    [(TSUColor *)self greenComponent];
    *(components + 1) = v6;
    [(TSUColor *)self blueComponent];
    *(components + 2) = v7;
    [(TSUColor *)self alphaComponent];
    *(components + 3) = v8;
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
  cGColor = [(TSUColor *)self CGColor];

  return [v2 colorWithCGColor:cGColor];
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

    selfCopy = [TSUColor colorWithWhite:Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11 alpha:Components[3]];
    if (!selfCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    selfCopy = self;
    if (!selfCopy)
    {
LABEL_4:
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor grayscaleColor]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
      [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:627 isFatal:0 description:"invalid nil value for '%{public}s'", "grayscale"];

      +[TSUAssertionHandler logBacktraceThrottled];
      selfCopy = 0;
    }
  }

  return selfCopy;
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

- (TSUColor)colorWithAlphaComponent:(double)component
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->mCGColor, component);
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

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
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
  switch(appearance)
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

- (double)contrastRatioWithColor:(id)color
{
  colorCopy = color;
  [(TSUColor *)self relativeLuminance];
  v6 = v5;
  [colorCopy relativeLuminance];
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

+ (BOOL)improvesContrastWhenColor:(id)color displayedOverBackgroundColor:(id)backgroundColor comparedToColor:(id)toColor displayedOverBackgroundColor:(id)overBackgroundColor inScenario:(unint64_t)scenario
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  toColorCopy = toColor;
  overBackgroundColorCopy = overBackgroundColor;
  if (scenario >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUColor improvesContrastWhenColor:displayedOverBackgroundColor:comparedToColor:displayedOverBackgroundColor:inScenario:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColor.m"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:770 isFatal:0 description:"Unhandled contrast scenario (%zu).", scenario];

    +[TSUAssertionHandler logBacktraceThrottled];
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = dbl_277139620[scenario];
    v16 = dbl_277139648[scenario];
  }

  v19 = [toColorCopy colorByCompositingSourceOverDestinationColor:overBackgroundColorCopy];
  [v19 contrastRatioWithColor:overBackgroundColorCopy];
  if (v20 >= v15)
  {
    v26 = 0;
  }

  else
  {
    v21 = v20;
    v22 = [colorCopy colorByCompositingSourceOverDestinationColor:backgroundColorCopy];
    [v22 contrastRatioWithColor:backgroundColorCopy];
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
      v24 = [toColorCopy colorWithAlphaComponent:1.0];
      v25 = [overBackgroundColorCopy colorWithAlphaComponent:1.0];
      v26 = [v24 isAlmostEqualToColor:v25];
    }
  }

  return v26;
}

- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v4 = [(TSUColor *)self newBlendedColorWithFraction:color ofColor:fraction];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (self->mColorRGBSpace == 2)
  {
    goto LABEL_2;
  }

  if ([colorCopy colorRGBSpace] == 2)
  {
    selfCopy = v7;
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
      v60 = TSUMix(v58, v59, fraction);
      [(TSUColor *)self greenComponent];
      v62 = v61;
      [v7 greenComponent];
      v64 = TSUMix(v62, v63, fraction);
      [(TSUColor *)self blueComponent];
      v66 = v65;
      [v7 blueComponent];
      v68 = TSUMix(v66, v67, fraction);
      [(TSUColor *)self alphaComponent];
      v70 = v69;
      [v7 alphaComponent];
      v27 = TSUMix(v70, v71, fraction);
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
        selfCopy = self;
LABEL_18:
        v55 = selfCopy;
        goto LABEL_19;
      }

      v11 = [TSUColor alloc];
      [(TSUColor *)self redComponent];
      v13 = v12;
      [v7 redComponent];
      v15 = TSUMix(v13, v14, fraction);
      [(TSUColor *)self greenComponent];
      v17 = v16;
      [v7 greenComponent];
      v19 = TSUMix(v17, v18, fraction);
      [(TSUColor *)self blueComponent];
      v21 = v20;
      [v7 blueComponent];
      v23 = TSUMix(v21, v22, fraction);
      [(TSUColor *)self alphaComponent];
      v25 = v24;
      [v7 alphaComponent];
      v27 = TSUMix(v25, v26, fraction);
      v28 = v11;
      v29 = v15;
      v30 = v19;
      v31 = v23;
      v32 = 0;
    }

    selfCopy = [(TSUColor *)v28 initWithRed:v32 green:v29 blue:v30 alpha:v31 colorSpace:v27];
    goto LABEL_18;
  }

  if ([(TSUColor *)self colorRGBSpace]== 1)
  {
    selfCopy2 = self;
  }

  else
  {
    v34 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v34, kCGRenderingIntentDefault, [(TSUColor *)self CGColor], 0);
    selfCopy2 = [[TSUColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];
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
  [(TSUColor *)selfCopy2 redComponent];
  v41 = v40;
  [(TSUColor *)v36 redComponent];
  v43 = TSUMix(v41, v42, fraction);
  [(TSUColor *)selfCopy2 greenComponent];
  v45 = v44;
  [(TSUColor *)v36 greenComponent];
  v47 = TSUMix(v45, v46, fraction);
  [(TSUColor *)selfCopy2 blueComponent];
  v49 = v48;
  [(TSUColor *)v36 blueComponent];
  v51 = TSUMix(v49, v50, fraction);
  [(TSUColor *)selfCopy2 alphaComponent];
  v53 = v52;
  [(TSUColor *)v36 alphaComponent];
  v55 = [(TSUColor *)v39 initWithRed:1 green:v43 blue:v47 alpha:v51 colorSpace:TSUMix(v53, v54, fraction)];

LABEL_19:
  return v55;
}

- (id)colorByCompositingSourceOverDestinationColor:(id)color
{
  v19 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  [(TSUColor *)self alphaComponent];
  if (v5 == 1.0)
  {
    selfCopy = self;
  }

  else
  {
    v7 = [(TSUColor *)self p_colorForComparingWithColor:colorCopy];
    v8 = [colorCopy p_colorForComparingWithColor:self];

    [v7 getRGBAComponents:v17];
    [v8 getRGBAComponents:v15];
    v9 = v18;
    v10 = v16;
    v11 = 1.0 - v18;
    v12 = v18 + v16 * (1.0 - v18);
    v13 = [TSUColor alloc];
    selfCopy = -[TSUColor initWithRed:green:blue:alpha:colorSpace:](v13, "initWithRed:green:blue:alpha:colorSpace:", [v7 colorRGBSpace], (v11 * (v10 * v15[0]) + v17[0] * v9) / v12, (v11 * (v10 * v15[1]) + v17[1] * v9) / v12, (v11 * (v10 * v15[2]) + v17[2] * v9) / v12, v12);

    colorCopy = v8;
  }

  return selfCopy;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(context, v11);

  CGContextRestoreGState(context);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, self->mCGColor);
  CGContextAddPathSafe(context, path);
  CGContextFillPath(context);

  CGContextRestoreGState(context);
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

- (BOOL)p_isEqualToColor:(id)color withTolerance:(double)tolerance
{
  colorCopy = color;
  v7 = colorCopy;
  if (colorCopy && (mColorRGBSpace = self->mColorRGBSpace, mColorRGBSpace == [colorCopy colorRGBSpace]) && objc_msgSend(v7, "CGColor"))
  {
    cGColor = [(TSUColor *)self CGColor];
    cGColor2 = [v7 CGColor];
    if (cGColor == cGColor2)
    {
      v18 = 1;
    }

    else
    {
      v11 = cGColor2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_2770F87B0;
      aBlock[3] = &unk_27A703A28;
      *&aBlock[4] = tolerance;
      v12 = _Block_copy(aBlock);
      ColorSpace = CGColorGetColorSpace(cGColor);
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
        v18 = v12[2](v12, cGColor, v11);
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

- (double)p_rgbComponentWithIndex:(unsigned __int8)index
{
  indexCopy = index;
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return *Components;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    return 1.0 - fmin(Components[3] + Components[indexCopy] * (1.0 - Components[3]), 1.0);
  }

  result = 0.0;
  if (Model == kCGColorSpaceModelRGB)
  {
    return Components[indexCopy];
  }

  return result;
}

- (id)p_colorForComparingWithColor:(id)color
{
  colorCopy = color;
  colorRGBSpace = [(TSUColor *)self colorRGBSpace];
  colorRGBSpace2 = [colorCopy colorRGBSpace];

  selfCopy = self;
  if (!colorRGBSpace && colorRGBSpace2 == 1)
  {
    v8 = TSUP3ColorSpace();
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v8, kCGRenderingIntentDefault, selfCopy->mCGColor, 0);
    v10 = [[TSUColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];

    CGColorRelease(CopyByMatchingToColorSpace);
    selfCopy = v10;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (CGColorGetPattern([(TSUColor *)self CGColor]))
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [(TSUColor *)self UIColor];
  }
  v5 = ;
  [coderCopy encodeObject:v5 forKey:@"UIColor"];
}

- (TSUColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIColor"];

  v6 = [(TSUColor *)self initWithUIColor:v5];
  return v6;
}

@end