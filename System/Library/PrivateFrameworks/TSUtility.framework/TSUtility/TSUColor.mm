@interface TSUColor
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
+ (id)colorWithPatternImage:(id)image;
+ (id)colorWithPlatformColor:(id)color;
+ (id)colorWithRGBAComponents:(const double *)components;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithUIColor:(id)color;
+ (id)colorWithWhite:(double)white alpha:(double)alpha;
+ (id)cyanColor;
+ (id)grayColor;
+ (id)greenColor;
+ (id)lightGrayColor;
+ (id)magentaColor;
+ (id)orangeColor;
+ (id)purpleColor;
+ (id)randomColor;
+ (id)redColor;
+ (id)whiteColor;
+ (id)yellowColor;
- (BOOL)isAlmostEqualToColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGrayscaleColor;
- (BOOL)isNearlyWhite;
- (TSUColor)colorWithAlphaComponent:(double)component;
- (TSUColor)initWithCGColor:(CGColor *)color;
- (TSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
- (TSUColor)initWithPatternImage:(id)image;
- (TSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (TSUColor)initWithUIColor:(id)color;
- (TSUColor)initWithWhite:(double)white alpha:(double)alpha;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)index;
- (double)saturationComponent;
- (id)UIColor;
- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)darkenedColorByFactor:(double)factor;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)lightenedColorByFactor:(double)factor;
- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color;
- (unint64_t)hash;
- (void)dealloc;
- (void)getRGBAComponents:(double *)components;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation TSUColor

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithWhite:(double)white alpha:(double)alpha
{
  v4 = [[self alloc] initWithWhite:white alpha:alpha];

  return v4;
}

+ (id)colorWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v6 = [[self alloc] initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  return v6;
}

+ (id)colorWithPatternImage:(id)image
{
  v3 = [[self alloc] initWithPatternImage:image];

  return v3;
}

+ (id)colorWithRGBAComponents:(const double *)components
{
  v3 = [[self alloc] initWithRed:*components green:components[1] blue:components[2] alpha:components[3]];

  return v3;
}

+ (id)colorWithUIColor:(id)color
{
  v3 = [[self alloc] initWithUIColor:color];

  return v3;
}

+ (id)colorWithPlatformColor:(id)color
{
  v3 = [[self alloc] initWithPlatformColor:color];

  return v3;
}

+ (id)randomColor
{
  RandomRGB = TSUCGColorCreateRandomRGB();
  v3 = [TSUColor colorWithCGColor:RandomRGB];
  CGColorRelease(RandomRGB);
  return v3;
}

+ (id)clearColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[self alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[self alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[self alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[self alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[self alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[self alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[self alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[self alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[self alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[self alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSUColor)initWithCGColor:(CGColor *)color
{
  if (!color)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithCGColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 153, @"invalid nil value for '%s'", "CGColor"}];
  }

  v9.receiver = self;
  v9.super_class = TSUColor;
  v7 = [(TSUColor *)&v9 init];
  if (v7)
  {
    v7->mCGColor = CGColorCreateCopy(color);
  }

  return v7;
}

- (TSUColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
  v12 = CGColorCreate(DeviceRGB, components);
  v13 = [(TSUColor *)self initWithCGColor:v12];
  CGColorRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  return v13;
}

- (TSUColor)initWithWhite:(double)white alpha:(double)alpha
{
  components[2] = *MEMORY[0x277D85DE8];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  components[0] = white;
  components[1] = alpha;
  v8 = CGColorCreate(DeviceGray, components);
  v9 = [(TSUColor *)self initWithCGColor:v8];
  CGColorRelease(v8);
  CGColorSpaceRelease(DeviceGray);
  return v9;
}

- (TSUColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  v7 = TSUCreateCGColorFromHSB(hue, saturation, brightness, alpha);
  v8 = [(TSUColor *)self initWithCGColor:v7];
  CGColorRelease(v7);
  return v8;
}

- (TSUColor)initWithPatternImage:(id)image
{
  if (image)
  {
    memset(&v12, 0, sizeof(v12));
    [image scale];
    v6 = 1.0 / v5;
    [image scale];
    CGAffineTransformMakeScale(&v12, v6, 1.0 / v7);
    [image scale];
    PatternWithImageAndTransform = TSUCGColorCreatePatternWithImageAndTransform([image CGImageForContentsScale:?], &v12);
    self = [(TSUColor *)self initWithCGColor:PatternWithImageAndTransform];
    CGColorRelease(PatternWithImageAndTransform);
  }

  else
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithPatternImage:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 207, @"invalid nil value for '%s'", "patternImage"}];
    NSDeallocateObject(self);
  }

  return self;
}

- (TSUColor)initWithUIColor:(id)color
{
  if (!color)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithUIColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 224, @"invalid nil value for '%s'", "uiColor"}];
  }

  cGColor = [color CGColor];

  return [(TSUColor *)self initWithCGColor:cGColor];
}

- (void)dealloc
{
  CGColorRelease(self->mCGColor);
  v3.receiver = self;
  v3.super_class = TSUColor;
  [(TSUColor *)&v3 dealloc];
}

- (unint64_t)hash
{
  cGColor = [(TSUColor *)self CGColor];

  return CFHash(cGColor);
}

- (BOOL)isEqual:(id)equal
{
  components[5] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equal);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (![v6 CGColor])
  {
    return 0;
  }

  cGColor = [(TSUColor *)self CGColor];
  cGColor2 = [v7 CGColor];
  if (cGColor != cGColor2)
  {
    v10 = cGColor2;
    ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
    v12 = v10;
    v13 = cGColor;
    v14 = ColorSpace;
    v15 = CGColorGetColorSpace([v7 CGColor]);
    v16 = TSUDeviceGrayColorSpace();
    v17 = CFEqual(v14, v16);
    v18 = TSUDeviceRGBColorSpace();
    v19 = CFEqual(v14, v18);
    v20 = TSUDeviceCMYKColorSpace();
    v21 = CFEqual(v14, v20);
    v22 = TSUDeviceGrayColorSpace();
    v23 = CFEqual(v15, v22);
    v24 = TSUDeviceRGBColorSpace();
    v25 = CFEqual(v15, v24);
    v26 = TSUDeviceCMYKColorSpace();
    v27 = CFEqual(v15, v26);
    v28 = v27;
    v48 = v21;
    v49 = v19;
    if (v25)
    {
      v29 = v19 == 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = v29;
    if (v27)
    {
      v31 = v21 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    if (v17)
    {
      v33 = v13;
    }

    else
    {
      v33 = v12;
    }

    v34 = CGColorGetComponents(v33);
    if (v23)
    {
      v35 = v17 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35 && v30 && v32 && v14 != v15)
    {
      if (v23)
      {
        v36 = v49 == 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36;
      if (v25)
      {
        v38 = v17 == 0;
      }

      else
      {
        v38 = 1;
      }

      if (v38 && (v37 & 1) != 0)
      {
        if (v23)
        {
          v39 = v48 == 0;
        }

        else
        {
          v39 = 1;
        }

        v40 = v39;
        if (v28)
        {
          v41 = v17 == 0;
        }

        else
        {
          v41 = 1;
        }

        if (v41 && (v40 & 1) != 0)
        {
          v42 = 0;
LABEL_55:
          v43 = 0;
LABEL_62:
          CGColorRelease(v43);
          return v42;
        }

        memset(components, 0, 24);
        components[3] = 1.0 - *v34;
        components[4] = v34[1];
        v45 = TSUDeviceCMYKColorSpace();
        DeviceRGB = CGColorCreate(v45, components);
      }

      else
      {
        DeviceRGB = TSUCGColorCreateDeviceRGB(*v34, *v34, *v34, v34[1]);
      }

      v43 = DeviceRGB;
      if (v17)
      {
        v46 = v12;
      }

      else
      {
        v46 = v13;
      }

      v42 = __20__TSUColor_isEqual___block_invoke(DeviceRGB, DeviceRGB, v46);
      goto LABEL_62;
    }

    v42 = __20__TSUColor_isEqual___block_invoke(v34, v13, v12);
    goto LABEL_55;
  }

  return 1;
}

BOOL __20__TSUColor_isEqual___block_invoke(int a1, CGColorRef color, CGColor *a3)
{
  Components = CGColorGetComponents(color);
  v6 = CGColorGetComponents(a3);
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  if (NumberOfComponents != CGColorGetNumberOfComponents(a3))
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor isEqual:]_block_invoke"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 320, @"Color space dimension mismatch"}];
  }

  for (result = 1; NumberOfComponents; --NumberOfComponents)
  {
    result = result && vabdd_f64(*Components++, *v6++) < 0.001953125;
  }

  return result;
}

- (BOOL)isAlmostEqualToColor:(id)color
{
  [(TSUColor *)self redComponent];
  v6 = v5;
  [color redComponent];
  if (vabdd_f64(v6, v7) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self greenComponent];
  v9 = v8;
  [color greenComponent];
  if (vabdd_f64(v9, v10) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self blueComponent];
  v12 = v11;
  [color blueComponent];
  if (vabdd_f64(v12, v13) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self alphaComponent];
  v15 = v14;
  [color alphaComponent];
  return vabdd_f64(v15, v16) < 0.00999999978;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSUColor allocWithZone:zone];
  mCGColor = self->mCGColor;

  return [(TSUColor *)v4 initWithCGColor:mCGColor];
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

- (double)alphaComponent
{
  cGColor = [(TSUColor *)self CGColor];

  return CGColorGetAlpha(cGColor);
}

- (void)getRGBAComponents:(double *)components
{
  if (!components)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor getRGBAComponents:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 423, @"rgbaComponents is NULL!"}];
  }

  [(TSUColor *)self redComponent];
  *components = v7;
  [(TSUColor *)self greenComponent];
  *(components + 1) = v8;
  [(TSUColor *)self blueComponent];
  *(components + 2) = v9;
  [(TSUColor *)self alphaComponent];
  *(components + 3) = v10;
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

- (id)UIColor
{
  v2 = MEMORY[0x277D75348];
  cGColor = [(TSUColor *)self CGColor];

  return [v2 colorWithCGColor:cGColor];
}

- (id)grayscaleColor
{
  selfCopy = self;
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(TSUColor *)selfCopy CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return selfCopy;
  }

  if (Model != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  v6 = Components[3];
  v7 = Components[1] * 0.59 + *Components * 0.3 + Components[2] * 0.11;

  return [TSUColor colorWithWhite:v7 alpha:v6];
}

- (id)invertedColor
{
  if (CGColorGetNumberOfComponents([(TSUColor *)self CGColor]) != 4)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor invertedColor]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 503, @"Wrong number of components while inverting color. %zi instead of 4", CGColorGetNumberOfComponents(-[TSUColor CGColor](self, "CGColor"))}];
  }

  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  v6 = 1.0 - *Components;
  v7 = 1.0 - Components[1];
  v8 = Components[3];
  v9 = 1.0 - Components[2];

  return [TSUColor colorWithRed:v6 green:v7 blue:v9 alpha:v8];
}

- (BOOL)isGrayscaleColor
{
  v8 = *MEMORY[0x277D85DE8];
  ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelMonochrome)
  {
    return 1;
  }

  [(TSUColor *)self getRGBAComponents:&v5];
  if (v5 != v6 && vabdd_f64(v5, v6) >= fabs(v6 * 0.000000999999997) || v5 != v7 && vabdd_f64(v5, v7) >= fabs(v7 * 0.000000999999997))
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  return vabdd_f64(v6, v7) < fabs(v7 * 0.000000999999997);
}

- (id)lightenedColorByFactor:(double)factor
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (factor < 0.0 || factor > 1.0)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor lightenedColorByFactor:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 535, @"Invalid factor: %f", *&factor}];
  }

  if ([(TSUColor *)self isGrayscaleColor])
  {
    [(TSUColor *)self p_rgbComponentWithIndex:0];
    v9 = v8;
    [(TSUColor *)self alphaComponent];

    return [TSUColor colorWithWhite:v9 + (1.0 - v9) * factor alpha:v10];
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    [(TSUColor *)self getRGBAComponents:v15];
    TSURGBToHSB(&v14, &v13, &v12, v15[0], v15[1], v15[2]);
    v12 = v12 + (1.0 - v12) * factor;
    v13 = (1.0 - factor) * v13;
    return [TSUColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v14 brightness:? alpha:?];
  }
}

- (id)darkenedColorByFactor:(double)factor
{
  v12[4] = *MEMORY[0x277D85DE8];
  if ([(TSUColor *)self isGrayscaleColor])
  {
    [(TSUColor *)self p_rgbComponentWithIndex:0];
    v6 = v5;
    [(TSUColor *)self alphaComponent];

    return [TSUColor colorWithWhite:(1.0 - factor) * v6 alpha:v7];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [(TSUColor *)self getRGBAComponents:v12];
    TSURGBToHSB(&v11, &v10, &v9, v12[0], v12[1], v12[2]);
    return [TSUColor colorWithHue:v11 saturation:(1.0 - factor) * v9 brightness:v10 + (1.0 - v10) * factor alpha:?];
  }
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
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  NumberOfComponents = CGColorGetNumberOfComponents([(TSUColor *)self CGColor]);
  v5 = *Components;
  v6 = Components[1];
  if (NumberOfComponents == 2)
  {
    return v5 * v6;
  }

  result = v6 * 0.715200007 + v5 * 0.212599993 + Components[2] * 0.0722000003 * Components[3];
  v8 = 1.0;
  v9 = result < 0.0 || result > 1.0;
  if (result <= 1.0 || result < 0.0)
  {
    v8 = 0.0;
  }

  if (v9)
  {
    return v8;
  }

  return result;
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
  return v9 < 0.05 && v10 > 0.9;
}

- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v4 = [(TSUColor *)self newBlendedColorWithFraction:color ofColor:fraction];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v7 = [TSUColor alloc];
  [(TSUColor *)self redComponent];
  v9 = v8;
  [color redComponent];
  v11 = TSUMix(v9, v10, fraction);
  [(TSUColor *)self greenComponent];
  v13 = v12;
  [color greenComponent];
  v15 = TSUMix(v13, v14, fraction);
  [(TSUColor *)self blueComponent];
  v17 = v16;
  [color blueComponent];
  v19 = TSUMix(v17, v18, fraction);
  [(TSUColor *)self alphaComponent];
  v21 = v20;
  [color alphaComponent];
  v23 = TSUMix(v21, v22, fraction);

  return [(TSUColor *)v7 initWithRed:v11 green:v15 blue:v19 alpha:v23];
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
  CGContextAddPath(context, path);
  CGContextFillPath(context);

  CGContextRestoreGState(context);
}

@end