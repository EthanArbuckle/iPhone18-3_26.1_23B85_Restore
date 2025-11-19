@interface TSUColor
+ (id)blackColor;
+ (id)blueColor;
+ (id)brownColor;
+ (id)clearColor;
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
+ (id)colorWithPatternImage:(id)a3;
+ (id)colorWithPlatformColor:(id)a3;
+ (id)colorWithRGBAComponents:(const double *)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithUIColor:(id)a3;
+ (id)colorWithWhite:(double)a3 alpha:(double)a4;
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
- (BOOL)isAlmostEqualToColor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGrayscaleColor;
- (BOOL)isNearlyWhite;
- (TSUColor)colorWithAlphaComponent:(double)a3;
- (TSUColor)initWithCGColor:(CGColor *)a3;
- (TSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
- (TSUColor)initWithPatternImage:(id)a3;
- (TSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (TSUColor)initWithUIColor:(id)a3;
- (TSUColor)initWithWhite:(double)a3 alpha:(double)a4;
- (double)alphaComponent;
- (double)brightnessComponent;
- (double)hueComponent;
- (double)luminance;
- (double)p_rgbComponentWithIndex:(unsigned __int8)a3;
- (double)saturationComponent;
- (id)UIColor;
- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)darkenedColorByFactor:(double)a3;
- (id)grayscaleColor;
- (id)invertedColor;
- (id)lightenedColorByFactor:(double)a3;
- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (unint64_t)hash;
- (void)dealloc;
- (void)getRGBAComponents:(double *)a3;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation TSUColor

+ (id)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithWhite:(double)a3 alpha:(double)a4
{
  v4 = [[a1 alloc] initWithWhite:a3 alpha:a4];

  return v4;
}

+ (id)colorWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithHue:a3 saturation:a4 brightness:a5 alpha:a6];

  return v6;
}

+ (id)colorWithPatternImage:(id)a3
{
  v3 = [[a1 alloc] initWithPatternImage:a3];

  return v3;
}

+ (id)colorWithRGBAComponents:(const double *)a3
{
  v3 = [[a1 alloc] initWithRed:*a3 green:a3[1] blue:a3[2] alpha:a3[3]];

  return v3;
}

+ (id)colorWithUIColor:(id)a3
{
  v3 = [[a1 alloc] initWithUIColor:a3];

  return v3;
}

+ (id)colorWithPlatformColor:(id)a3
{
  v3 = [[a1 alloc] initWithPlatformColor:a3];

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
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:0.0];

  return v2;
}

+ (id)blackColor
{
  v2 = [[a1 alloc] initWithWhite:0.0 alpha:1.0];

  return v2;
}

+ (id)whiteColor
{
  v2 = [[a1 alloc] initWithWhite:1.0 alpha:1.0];

  return v2;
}

+ (id)grayColor
{
  v2 = [[a1 alloc] initWithWhite:0.5 alpha:1.0];

  return v2;
}

+ (id)lightGrayColor
{
  v2 = [[a1 alloc] initWithWhite:0.667 alpha:1.0];

  return v2;
}

+ (id)redColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)greenColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)blueColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)cyanColor
{
  v2 = [[a1 alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)yellowColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)magentaColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];

  return v2;
}

+ (id)orangeColor
{
  v2 = [[a1 alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)purpleColor
{
  v2 = [[a1 alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];

  return v2;
}

+ (id)brownColor
{
  v2 = [[a1 alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];

  return v2;
}

- (TSUColor)initWithCGColor:(CGColor *)a3
{
  if (!a3)
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
    v7->mCGColor = CGColorCreateCopy(a3);
  }

  return v7;
}

- (TSUColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v12 = CGColorCreate(DeviceRGB, components);
  v13 = [(TSUColor *)self initWithCGColor:v12];
  CGColorRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  return v13;
}

- (TSUColor)initWithWhite:(double)a3 alpha:(double)a4
{
  components[2] = *MEMORY[0x277D85DE8];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  components[0] = a3;
  components[1] = a4;
  v8 = CGColorCreate(DeviceGray, components);
  v9 = [(TSUColor *)self initWithCGColor:v8];
  CGColorRelease(v8);
  CGColorSpaceRelease(DeviceGray);
  return v9;
}

- (TSUColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  v7 = TSUCreateCGColorFromHSB(a3, a4, a5, a6);
  v8 = [(TSUColor *)self initWithCGColor:v7];
  CGColorRelease(v7);
  return v8;
}

- (TSUColor)initWithPatternImage:(id)a3
{
  if (a3)
  {
    memset(&v12, 0, sizeof(v12));
    [a3 scale];
    v6 = 1.0 / v5;
    [a3 scale];
    CGAffineTransformMakeScale(&v12, v6, 1.0 / v7);
    [a3 scale];
    PatternWithImageAndTransform = TSUCGColorCreatePatternWithImageAndTransform([a3 CGImageForContentsScale:?], &v12);
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

- (TSUColor)initWithUIColor:(id)a3
{
  if (!a3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor initWithUIColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 224, @"invalid nil value for '%s'", "uiColor"}];
  }

  v7 = [a3 CGColor];

  return [(TSUColor *)self initWithCGColor:v7];
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
  v2 = [(TSUColor *)self CGColor];

  return CFHash(v2);
}

- (BOOL)isEqual:(id)a3
{
  components[5] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (![v6 CGColor])
  {
    return 0;
  }

  v8 = [(TSUColor *)self CGColor];
  v9 = [v7 CGColor];
  if (v8 != v9)
  {
    v10 = v9;
    ColorSpace = CGColorGetColorSpace([(TSUColor *)self CGColor]);
    v12 = v10;
    v13 = v8;
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

- (BOOL)isAlmostEqualToColor:(id)a3
{
  [(TSUColor *)self redComponent];
  v6 = v5;
  [a3 redComponent];
  if (vabdd_f64(v6, v7) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self greenComponent];
  v9 = v8;
  [a3 greenComponent];
  if (vabdd_f64(v9, v10) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self blueComponent];
  v12 = v11;
  [a3 blueComponent];
  if (vabdd_f64(v12, v13) >= 0.00999999978)
  {
    return 0;
  }

  [(TSUColor *)self alphaComponent];
  v15 = v14;
  [a3 alphaComponent];
  return vabdd_f64(v15, v16) < 0.00999999978;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSUColor allocWithZone:a3];
  mCGColor = self->mCGColor;

  return [(TSUColor *)v4 initWithCGColor:mCGColor];
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

- (double)alphaComponent
{
  v2 = [(TSUColor *)self CGColor];

  return CGColorGetAlpha(v2);
}

- (void)getRGBAComponents:(double *)a3
{
  if (!a3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor getRGBAComponents:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 423, @"rgbaComponents is NULL!"}];
  }

  [(TSUColor *)self redComponent];
  *a3 = v7;
  [(TSUColor *)self greenComponent];
  *(a3 + 1) = v8;
  [(TSUColor *)self blueComponent];
  *(a3 + 2) = v9;
  [(TSUColor *)self alphaComponent];
  *(a3 + 3) = v10;
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
  v3 = [(TSUColor *)self CGColor];

  return [v2 colorWithCGColor:v3];
}

- (id)grayscaleColor
{
  v2 = self;
  Components = CGColorGetComponents([(TSUColor *)self CGColor]);
  ColorSpace = CGColorGetColorSpace([(TSUColor *)v2 CGColor]);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelMonochrome)
  {
    return v2;
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

- (id)lightenedColorByFactor:(double)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  if (a3 < 0.0 || a3 > 1.0)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUColor lightenedColorByFactor:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUColor.m"), 535, @"Invalid factor: %f", *&a3}];
  }

  if ([(TSUColor *)self isGrayscaleColor])
  {
    [(TSUColor *)self p_rgbComponentWithIndex:0];
    v9 = v8;
    [(TSUColor *)self alphaComponent];

    return [TSUColor colorWithWhite:v9 + (1.0 - v9) * a3 alpha:v10];
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    [(TSUColor *)self getRGBAComponents:v15];
    TSURGBToHSB(&v14, &v13, &v12, v15[0], v15[1], v15[2]);
    v12 = v12 + (1.0 - v12) * a3;
    v13 = (1.0 - a3) * v13;
    return [TSUColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v14 brightness:? alpha:?];
  }
}

- (id)darkenedColorByFactor:(double)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  if ([(TSUColor *)self isGrayscaleColor])
  {
    [(TSUColor *)self p_rgbComponentWithIndex:0];
    v6 = v5;
    [(TSUColor *)self alphaComponent];

    return [TSUColor colorWithWhite:(1.0 - a3) * v6 alpha:v7];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [(TSUColor *)self getRGBAComponents:v12];
    TSURGBToHSB(&v11, &v10, &v9, v12[0], v12[1], v12[2]);
    return [TSUColor colorWithHue:v11 saturation:(1.0 - a3) * v9 brightness:v10 + (1.0 - v10) * a3 alpha:?];
  }
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

- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v4 = [(TSUColor *)self newBlendedColorWithFraction:a4 ofColor:a3];

  return v4;
}

- (id)newBlendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v7 = [TSUColor alloc];
  [(TSUColor *)self redComponent];
  v9 = v8;
  [a4 redComponent];
  v11 = TSUMix(v9, v10, a3);
  [(TSUColor *)self greenComponent];
  v13 = v12;
  [a4 greenComponent];
  v15 = TSUMix(v13, v14, a3);
  [(TSUColor *)self blueComponent];
  v17 = v16;
  [a4 blueComponent];
  v19 = TSUMix(v17, v18, a3);
  [(TSUColor *)self alphaComponent];
  v21 = v20;
  [a4 alphaComponent];
  v23 = TSUMix(v21, v22, a3);

  return [(TSUColor *)v7 initWithRed:v11 green:v15 blue:v19 alpha:v23];
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
  CGContextAddPath(a4, a3);
  CGContextFillPath(a4);

  CGContextRestoreGState(a4);
}

@end