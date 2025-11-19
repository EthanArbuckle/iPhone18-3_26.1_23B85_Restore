@interface VUICoreUtilities
+ (BOOL)isHeicFormatAllowed;
+ (BOOL)isTVApp;
+ (BOOL)runningAnInternalBuild;
+ (BOOL)runningUiTest;
+ (CGPath)createPathForRadii:(_VUICornerRadii)a3 inRect:(CGRect)a4 isContinuous:(BOOL)a5;
+ (CGPath)shadowPathWithCornerRadii:(_VUICornerRadii)a3 andScaledSize:(CGSize)a4;
+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)a4;
+ (_VUICornerRadii)radiiFromRadius:(double)a3;
+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4;
+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4;
+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4 maximumContentSizeCategory:(unint64_t)a5;
+ (id)TVUIKitBundle;
+ (id)URLForResource:(id)a3;
+ (id)VideosUIBundle;
+ (id)VideosUICoreBundle;
+ (id)_URLForResource:(id)a3 inBundle:(id)a4;
+ (id)_getImageFromURLorBundle:(id)a3;
+ (id)_imageForResource:(id)a3;
+ (id)_vuiCoreResourceMap;
+ (id)defaultPlaceholderImageForUserInterfaceStyle:(unint64_t)a3;
+ (id)formatForOpaqueImage;
+ (id)formatForTransparentImage;
+ (id)imageForResource:(id)a3 accessibilityDescription:(id)a4;
+ (id)mobileGestaltStringForKey:(__CFString *)a3;
+ (id)randomColor;
+ (id)uiContentSizeCategoryFor:(unint64_t)a3;
+ (unint64_t)vuiContentSizeCategoryFor:(id)a3;
+ (unint64_t)vuiUserInterfaceStyleForInterfaceStyle:(int64_t)a3;
@end

@implementation VUICoreUtilities

+ (BOOL)isHeicFormatAllowed
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = +[VUICoreUtilities isTVApp];
  }

  return v2;
}

+ (BOOL)isTVApp
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.TVWatchList"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.tv"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.TV"];
  }

  return v4;
}

+ (id)mobileGestaltStringForKey:(__CFString *)a3
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4
{
  width = a3.width;
  v5 = a3.width < 180.0;
  result = 70.0;
  if (v5)
  {
    result = 60.0;
  }

  if (a4 > 1.0)
  {
    return result + floor(fmax(width, a3.height) * (a4 + -1.0));
  }

  return result;
}

+ (CGPath)createPathForRadii:(_VUICornerRadii)a3 inRect:(CGRect)a4 isContinuous:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  radius = a3.bottomRight;
  bottomLeft = a3.bottomLeft;
  topRight = a3.topRight;
  topLeft = a3.topLeft;
  MinX = CGRectGetMinX(a4);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxY = CGRectGetMaxY(v25);
  if (v5)
  {
    [objc_opt_class() radiusFromCornerRadii:{topLeft, topRight, bottomLeft, radius}];
    v16 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:MinX cornerRadius:{MinY, MaxX - MinX, MaxY - MinY, v15}];
    v17 = MEMORY[0x2743B7560]([v16 CGPath]);

    return v17;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, topLeft + MinX, MinY);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, topRight + MinY, topRight);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, MaxX - radius, MaxY, radius);
    CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX, MaxY - bottomLeft, bottomLeft);
    CGPathAddArcToPoint(Mutable, 0, MinX, MinY, topLeft + MinX, MinY, topLeft);
    return Mutable;
  }
}

+ (_VUICornerRadii)radiiFromRadius:(double)a3
{
  result.bottomRight = a3;
  result.bottomLeft = a3;
  result.topRight = a3;
  result.topLeft = a3;
  return result;
}

+ (CGPath)shadowPathWithCornerRadii:(_VUICornerRadii)a3 andScaledSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  bottomRight = a3.bottomRight;
  bottomLeft = a3.bottomLeft;
  topRight = a3.topRight;
  topLeft = a3.topLeft;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.1lf, %.1lf}[%.1f %.1f %.1f %.1f]", *&a4.width, *&a4.height, *&a3.topLeft, *&a3.topRight, *&a3.bottomRight, *&a3.bottomLeft];
  Mutable = [shadowPathWithCornerRadii_andScaledSize__pathsByShape objectForKeyedSubscript:v10];

  if (!Mutable)
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, topLeft, height);
    CGPathAddLineToPoint(Mutable, 0, width - (topLeft + topRight), height);
    if (topRight > 0.0)
    {
      CGPathAddArc(Mutable, 0, width - topRight, height - topRight, topRight, 1.57079633, 0.0, 1);
    }

    CGPathAddLineToPoint(Mutable, 0, width, bottomRight);
    if (bottomRight > 0.0)
    {
      CGPathAddArc(Mutable, 0, width - bottomRight, bottomRight, bottomRight, 0.0, -1.57079633, 1);
    }

    CGPathAddLineToPoint(Mutable, 0, bottomLeft, 0.0);
    if (bottomLeft > 0.0)
    {
      CGPathAddArc(Mutable, 0, bottomLeft, bottomLeft, bottomLeft, -1.57079633, -3.14159265, 1);
    }

    v12 = height - topLeft;
    CGPathAddLineToPoint(Mutable, 0, 0.0, v12);
    if (topLeft > 0.0)
    {
      CGPathAddArc(Mutable, 0, topLeft, v12, topLeft, 3.14159265, 1.57079633, 1);
    }

    v13 = shadowPathWithCornerRadii_andScaledSize__pathsByShape;
    if (!shadowPathWithCornerRadii_andScaledSize__pathsByShape)
    {
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
      v15 = shadowPathWithCornerRadii_andScaledSize__pathsByShape;
      shadowPathWithCornerRadii_andScaledSize__pathsByShape = v14;

      v13 = shadowPathWithCornerRadii_andScaledSize__pathsByShape;
    }

    [v13 setObject:Mutable forKeyedSubscript:v10];
  }

  return Mutable;
}

+ (id)URLForResource:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCA8D8] vui_videosUIBundle];
    v6 = [a1 _URLForResource:v4 inBundle:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = +[VUICoreUtilities VideosUICoreBundle];
      v7 = [a1 _URLForResource:v4 inBundle:v8];

      if (!v7)
      {
        v9 = +[VUICoreUtilities TVUIKitBundle];
        v7 = [a1 _URLForResource:v4 inBundle:v9];

        if (!v7)
        {
          v10 = [MEMORY[0x277CCA8D8] mainBundle];
          v7 = [a1 _URLForResource:v4 inBundle:v10];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)imageForResource:(id)a3 accessibilityDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [VUICoreUtilities _imageForResource:v5];
  if (!v7)
  {
    v7 = [VUICoreUtilities _getImageFromURLorBundle:v5];
    if (!v7)
    {
      v7 = [MEMORY[0x277D755B8] systemImageNamed:v5];
    }
  }

  v8 = v7;
  if (v6)
  {
    [v7 setAccessibilityLabel:v6];
  }

  return v8;
}

+ (id)VideosUICoreBundle
{
  if (VideosUICoreBundle_onceToken != -1)
  {
    +[VUICoreUtilities VideosUICoreBundle];
  }

  v3 = VideosUICoreBundle_bundle;

  return v3;
}

uint64_t __38__VUICoreUtilities_VideosUICoreBundle__block_invoke()
{
  VideosUICoreBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.VideosUICore"];

  return MEMORY[0x2821F96F8]();
}

+ (id)VideosUIBundle
{
  if (VideosUIBundle_onceToken != -1)
  {
    +[VUICoreUtilities VideosUIBundle];
  }

  v3 = VideosUIBundle_bundle;

  return v3;
}

uint64_t __34__VUICoreUtilities_VideosUIBundle__block_invoke()
{
  VideosUIBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.VideosUI"];

  return MEMORY[0x2821F96F8]();
}

+ (id)TVUIKitBundle
{
  if (TVUIKitBundle_onceToken != -1)
  {
    +[VUICoreUtilities TVUIKitBundle];
  }

  v3 = TVUIKitBundle_bundle;

  return v3;
}

uint64_t __33__VUICoreUtilities_TVUIKitBundle__block_invoke()
{
  TVUIKitBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVUIKit"];

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)vuiUserInterfaceStyleForInterfaceStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

+ (id)defaultPlaceholderImageForUserInterfaceStyle:(unint64_t)a3
{
  if (a3 == 2)
  {
    if (defaultPlaceholderImageForUserInterfaceStyle____once != -1)
    {
      +[VUICoreUtilities defaultPlaceholderImageForUserInterfaceStyle:];
    }

    v3 = &defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage;
  }

  else
  {
    if (defaultPlaceholderImageForUserInterfaceStyle____once_39 != -1)
    {
      +[VUICoreUtilities defaultPlaceholderImageForUserInterfaceStyle:];
    }

    v3 = &defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage;
  }

  v4 = *v3;

  return v4;
}

void __65__VUICoreUtilities_defaultPlaceholderImageForUserInterfaceStyle___block_invoke()
{
  v4.width = 1.0;
  v4.height = 1.0;
  UIGraphicsBeginImageContext(v4);
  v0 = [MEMORY[0x277D75348] colorWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  [v0 setFill];

  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  UIRectFillUsingBlendMode(v5, kCGBlendModeCopy);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage;
  defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage = v1;

  UIGraphicsEndImageContext();
}

void __65__VUICoreUtilities_defaultPlaceholderImageForUserInterfaceStyle___block_invoke_2()
{
  v4.width = 1.0;
  v4.height = 1.0;
  UIGraphicsBeginImageContext(v4);
  v0 = [MEMORY[0x277D75348] colorWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  [v0 setFill];

  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  UIRectFillUsingBlendMode(v5, kCGBlendModeCopy);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage;
  defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage = v1;

  UIGraphicsEndImageContext();
}

+ (unint64_t)vuiContentSizeCategoryFor:(id)a3
{
  v3 = vuiContentSizeCategoryFor__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[VUICoreUtilities vuiContentSizeCategoryFor:];
  }

  v5 = [vuiContentSizeCategoryFor__sContentSizeCategoryVui objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

void __46__VUICoreUtilities_vuiContentSizeCategoryFor___block_invoke()
{
  v9[13] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76830];
  v8[0] = *MEMORY[0x277D76860];
  v8[1] = v0;
  v9[0] = &unk_2880E0928;
  v9[1] = &unk_2880E0940;
  v1 = *MEMORY[0x277D76840];
  v8[2] = *MEMORY[0x277D76858];
  v8[3] = v1;
  v9[2] = &unk_2880E0958;
  v9[3] = &unk_2880E0970;
  v2 = *MEMORY[0x277D76828];
  v8[4] = *MEMORY[0x277D76838];
  v8[5] = v2;
  v9[4] = &unk_2880E0988;
  v9[5] = &unk_2880E09A0;
  v3 = *MEMORY[0x277D76818];
  v8[6] = *MEMORY[0x277D76820];
  v8[7] = v3;
  v9[6] = &unk_2880E09B8;
  v9[7] = &unk_2880E09D0;
  v4 = *MEMORY[0x277D76800];
  v8[8] = *MEMORY[0x277D76808];
  v8[9] = v4;
  v9[8] = &unk_2880E09E8;
  v9[9] = &unk_2880E0A00;
  v5 = *MEMORY[0x277D767F0];
  v8[10] = *MEMORY[0x277D767F8];
  v8[11] = v5;
  v9[10] = &unk_2880E0A18;
  v9[11] = &unk_2880E0A30;
  v8[12] = *MEMORY[0x277D767E8];
  v9[12] = &unk_2880E0A48;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:13];
  v7 = vuiContentSizeCategoryFor__sContentSizeCategoryVui;
  vuiContentSizeCategoryFor__sContentSizeCategoryVui = v6;
}

+ (id)uiContentSizeCategoryFor:(unint64_t)a3
{
  if (uiContentSizeCategoryFor__onceToken != -1)
  {
    +[VUICoreUtilities uiContentSizeCategoryFor:];
  }

  v4 = uiContentSizeCategoryFor__sVuiContentSizeCategory;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __45__VUICoreUtilities_uiContentSizeCategoryFor___block_invoke()
{
  v15[13] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76860];
  v14[0] = &unk_2880E0928;
  v14[1] = &unk_2880E0940;
  v1 = *MEMORY[0x277D76830];
  v15[0] = v0;
  v15[1] = v1;
  v2 = *MEMORY[0x277D76858];
  v14[2] = &unk_2880E0958;
  v14[3] = &unk_2880E0970;
  v3 = *MEMORY[0x277D76840];
  v15[2] = v2;
  v15[3] = v3;
  v4 = *MEMORY[0x277D76838];
  v14[4] = &unk_2880E0988;
  v14[5] = &unk_2880E09A0;
  v5 = *MEMORY[0x277D76828];
  v15[4] = v4;
  v15[5] = v5;
  v6 = *MEMORY[0x277D76820];
  v14[6] = &unk_2880E09B8;
  v14[7] = &unk_2880E09D0;
  v7 = *MEMORY[0x277D76818];
  v15[6] = v6;
  v15[7] = v7;
  v8 = *MEMORY[0x277D76808];
  v14[8] = &unk_2880E09E8;
  v14[9] = &unk_2880E0A00;
  v9 = *MEMORY[0x277D76800];
  v15[8] = v8;
  v15[9] = v9;
  v10 = *MEMORY[0x277D767F8];
  v14[10] = &unk_2880E0A18;
  v14[11] = &unk_2880E0A30;
  v11 = *MEMORY[0x277D767F0];
  v15[10] = v10;
  v15[11] = v11;
  v14[12] = &unk_2880E0A48;
  v15[12] = *MEMORY[0x277D767E8];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:13];
  v13 = uiContentSizeCategoryFor__sVuiContentSizeCategory;
  uiContentSizeCategoryFor__sVuiContentSizeCategory = v12;
}

+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4
{
  v5 = a4;
  [objc_opt_class() scaleContentSizeValue:v5 forTraitCollection:0 maximumContentSizeCategory:a3];
  v7 = v6;

  return v7;
}

+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4 maximumContentSizeCategory:(unint64_t)a5
{
  v7 = a4;
  if (scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__onceToken != -1)
  {
    +[VUICoreUtilities scaleContentSizeValue:forTraitCollection:maximumContentSizeCategory:];
  }

  v8 = [v7 vuiPreferredContentSizeCategory];
  if (!v8)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    v10 = [v9 vuiTraitCollection];
    v8 = [v10 vuiPreferredContentSizeCategory];
  }

  if (v8 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v8;
  }

  if (a5)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = v15;
  v17 = &unk_2880E0B38;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  [v18 floatValue];
  v20 = v19;

  return ceil(v20 * a3);
}

void __88__VUICoreUtilities_scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory___block_invoke()
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_2880E0B08 forKeyedSubscript:&unk_2880E0940];
  [v2 setObject:&unk_2880E0B18 forKeyedSubscript:&unk_2880E0958];
  [v2 setObject:&unk_2880E0B28 forKeyedSubscript:&unk_2880E0970];
  [v2 setObject:&unk_2880E0B38 forKeyedSubscript:&unk_2880E0988];
  [v2 setObject:&unk_2880E0B48 forKeyedSubscript:&unk_2880E09A0];
  [v2 setObject:&unk_2880E0B58 forKeyedSubscript:&unk_2880E09B8];
  [v2 setObject:&unk_2880E0B68 forKeyedSubscript:&unk_2880E09D0];
  [v2 setObject:&unk_2880E0B78 forKeyedSubscript:&unk_2880E09E8];
  [v2 setObject:&unk_2880E0B88 forKeyedSubscript:&unk_2880E0A00];
  [v2 setObject:&unk_2880E0B98 forKeyedSubscript:&unk_2880E0A18];
  [v2 setObject:&unk_2880E0BA8 forKeyedSubscript:&unk_2880E0A30];
  [v2 setObject:&unk_2880E0BB8 forKeyedSubscript:&unk_2880E0A48];
  v0 = [v2 copy];
  v1 = scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale;
  scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale = v0;
}

+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)a4
{
  v4 = round(a4.origin.x + (a4.size.width - result.size.width) * 0.5);
  v5 = round(a4.origin.y + (a4.size.height - result.size.height) * 0.5);
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (id)_vuiCoreResourceMap
{
  if (_vuiCoreResourceMap_onceToken != -1)
  {
    +[VUICoreUtilities _vuiCoreResourceMap];
  }

  v3 = _vuiCoreResourceMap_sDict;

  return v3;
}

uint64_t __39__VUICoreUtilities__vuiCoreResourceMap__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = _vuiCoreResourceMap_sDict;
  _vuiCoreResourceMap_sDict = v0;

  [_vuiCoreResourceMap_sDict setObject:@"button-cloud" forKeyedSubscript:@"button-cloud"];
  [_vuiCoreResourceMap_sDict setObject:@"button-play" forKeyedSubscript:@"button-play"];
  [_vuiCoreResourceMap_sDict setObject:@"button-preview" forKeyedSubscript:@"button-preview"];
  [_vuiCoreResourceMap_sDict setObject:@"button-add" forKeyedSubscript:@"button-add"];
  [_vuiCoreResourceMap_sDict setObject:@"button-remove" forKeyedSubscript:@"button-remove"];
  [_vuiCoreResourceMap_sDict setObject:@"button-add-alt" forKeyedSubscript:@"button-add-alt"];
  [_vuiCoreResourceMap_sDict setObject:@"button-artist" forKeyedSubscript:@"button-artist"];
  [_vuiCoreResourceMap_sDict setObject:@"button-curator" forKeyedSubscript:@"button-curator"];
  [_vuiCoreResourceMap_sDict setObject:@"button-follow" forKeyedSubscript:@"button-follow"];
  [_vuiCoreResourceMap_sDict setObject:@"button-checkmark" forKeyedSubscript:@"button-checkmark"];
  [_vuiCoreResourceMap_sDict setObject:@"button-more" forKeyedSubscript:@"button-more"];
  [_vuiCoreResourceMap_sDict setObject:@"button-rate" forKeyedSubscript:@"button-rate"];
  [_vuiCoreResourceMap_sDict setObject:@"button-rated" forKeyedSubscript:@"button-rated"];
  [_vuiCoreResourceMap_sDict setObject:@"button-radio" forKeyedSubscript:@"button-radio"];
  [_vuiCoreResourceMap_sDict setObject:@"button-shuffle" forKeyedSubscript:@"button-shuffle"];
  [_vuiCoreResourceMap_sDict setObject:@"icon_dropdown" forKeyedSubscript:@"button-dropdown"];
  [_vuiCoreResourceMap_sDict setObject:@"button-open" forKeyedSubscript:@"button-open"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_logo_white" forKeyedSubscript:@"common-sense-logo-white"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_logo_black" forKeyedSubscript:@"common-sense-logo-black"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_white_l" forKeyedSubscript:@"common-sense-badge-white-l"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_white_m" forKeyedSubscript:@"common-sense-badge-white-m"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_white_s" forKeyedSubscript:@"common-sense-badge-white-s"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_black_s" forKeyedSubscript:@"common-sense-badge-black-s"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_black_m" forKeyedSubscript:@"common-sense-badge-black-m"];
  [_vuiCoreResourceMap_sDict setObject:@"cs_badge_black_l" forKeyedSubscript:@"common-sense-badge-black-l"];
  [_vuiCoreResourceMap_sDict setObject:@"icon_chevron" forKeyedSubscript:@"chevron"];
  [_vuiCoreResourceMap_sDict setObject:@"list-chevron" forKeyedSubscript:@"list-chevron"];
  [_vuiCoreResourceMap_sDict setObject:@"game_center" forKeyedSubscript:@"game_center"];
  [_vuiCoreResourceMap_sDict setObject:@"game_controller" forKeyedSubscript:@"game_controller"];
  [_vuiCoreResourceMap_sDict setObject:@"bluetooth_accessory_mask" forKeyedSubscript:@"bluetooth_accessory"];
  [_vuiCoreResourceMap_sDict setObject:@"watched-checkmark" forKeyedSubscript:@"overlay-checkmark"];
  [_vuiCoreResourceMap_sDict setObject:@"icon_radio_small_mask" forKeyedSubscript:@"radio-s"];
  [_vuiCoreResourceMap_sDict setObject:@"icon_cloud_mask" forKeyedSubscript:@"cloud-s"];
  [_vuiCoreResourceMap_sDict setObject:@"extras_lockup_badge" forKeyedSubscript:@"extras-lockup-badge"];
  [_vuiCoreResourceMap_sDict setObject:@"extras_preview_stamp" forKeyedSubscript:@"extras-preview-stamp"];
  [_vuiCoreResourceMap_sDict setObject:@"extras_lockup_badge_zh" forKeyedSubscript:@"extras-lockup-badge_zh"];
  [_vuiCoreResourceMap_sDict setObject:@"extras_preview_stamp_zh" forKeyedSubscript:@"extras-preview-stamp_zh"];
  [_vuiCoreResourceMap_sDict setObject:@"ghost_episode_light" forKeyedSubscript:@"episode-placeholder-light"];
  [_vuiCoreResourceMap_sDict setObject:@"ghost_episode_dark" forKeyedSubscript:@"episode-placeholder-dark"];
  [_vuiCoreResourceMap_sDict setObject:@"content-gradient-brick" forKeyedSubscript:@"content-gradient-brick"];
  [_vuiCoreResourceMap_sDict setObject:@"content-gradient-flowcase" forKeyedSubscript:@"content-gradient-flowcase"];
  [_vuiCoreResourceMap_sDict setObject:@"content-gradient-genre-brick" forKeyedSubscript:@"content-gradient-genre-brick"];
  [_vuiCoreResourceMap_sDict setObject:@"content-gradient-genre-brick-4" forKeyedSubscript:@"content-gradient-genre-brick-4"];
  [_vuiCoreResourceMap_sDict setObject:@"content-gradient-list-keyframe" forKeyedSubscript:@"content-gradient-list-keyframe"];
  [_vuiCoreResourceMap_sDict setObject:@"cc_mask" forKeyedSubscript:@"cc"];
  [_vuiCoreResourceMap_sDict setObject:@"hd_mask" forKeyedSubscript:@"hd"];
  [_vuiCoreResourceMap_sDict setObject:@"RTRotten" forKeyedSubscript:@"tomato-splat"];
  [_vuiCoreResourceMap_sDict setObject:@"RTFresh" forKeyedSubscript:@"tomato-fresh"];
  [_vuiCoreResourceMap_sDict setObject:@"RTCertified" forKeyedSubscript:@"tomato-certified"];
  [_vuiCoreResourceMap_sDict setObject:@"RTLargeRotten" forKeyedSubscript:@"tomato-splat-m"];
  [_vuiCoreResourceMap_sDict setObject:@"RTLargeFresh" forKeyedSubscript:@"tomato-fresh-m"];
  [_vuiCoreResourceMap_sDict setObject:@"RTLargeCertified" forKeyedSubscript:@"tomato-certified-m"];
  [_vuiCoreResourceMap_sDict setObject:@"confirmation-checkmark" forKeyedSubscript:@"confirmation-checkmark"];
  [_vuiCoreResourceMap_sDict setObject:@"cloud-download-icon" forKeyedSubscript:@"cloud-download-icon"];
  [_vuiCoreResourceMap_sDict setObject:@"download-checkmark" forKeyedSubscript:@"download-checkmark"];
  [_vuiCoreResourceMap_sDict setObject:@"popover-add" forKeyedSubscript:@"popover-add"];
  [_vuiCoreResourceMap_sDict setObject:@"popover-chevron-up" forKeyedSubscript:@"popover-chevron-up"];
  [_vuiCoreResourceMap_sDict setObject:@"popover-chevron-down" forKeyedSubscript:@"popover-chevron-down"];
  [_vuiCoreResourceMap_sDict setObject:@"popover-share" forKeyedSubscript:@"popover-share"];
  [_vuiCoreResourceMap_sDict setObject:@"popover-more" forKeyedSubscript:@"popover-more"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-Add" forKeyedSubscript:@"ActionMenu-Add"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-circleMask" forKeyedSubscript:@"ActionMenu-circleMask"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-ClearHistory" forKeyedSubscript:@"ActionMenu-ClearHistory"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-ClearPlayHistory" forKeyedSubscript:@"ActionMenu-ClearPlayHistory"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-Mark" forKeyedSubscript:@"ActionMenu-Mark"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-MarkAll" forKeyedSubscript:@"ActionMenu-MarkAll"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-Play" forKeyedSubscript:@"ActionMenu-Play"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-Remove" forKeyedSubscript:@"ActionMenu-Remove"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-RemoveFromUpNext" forKeyedSubscript:@"ActionMenu-RemoveFromUpNext"];
  [_vuiCoreResourceMap_sDict setObject:@"ActionMenu-Share" forKeyedSubscript:@"ActionMenu-Share"];
  [_vuiCoreResourceMap_sDict setObject:@"Actions_CheckGlyph" forKeyedSubscript:@"Actions-Check"];
  [_vuiCoreResourceMap_sDict setObject:@"Actions_AddGlyph" forKeyedSubscript:@"Actions-Add"];
  [_vuiCoreResourceMap_sDict setObject:@"itunes-extras-badge" forKeyedSubscript:@"extras-badge"];
  [_vuiCoreResourceMap_sDict setObject:@"guided-tour-play" forKeyedSubscript:@"guided-tour-play"];
  [_vuiCoreResourceMap_sDict setObject:@"OnboardingPlayLarge" forKeyedSubscript:@"onboarding-play-large"];
  [_vuiCoreResourceMap_sDict setObject:@"OnboardingPlaySmall" forKeyedSubscript:@"onboarding-play-small"];
  [_vuiCoreResourceMap_sDict setObject:@"onboarding-hero" forKeyedSubscript:@"onboarding-hero"];
  [_vuiCoreResourceMap_sDict setObject:@"onboarding-appicon" forKeyedSubscript:@"onboarding-appicon"];
  [_vuiCoreResourceMap_sDict setObject:@"library-dropdown" forKeyedSubscript:@"library-dropdown"];
  [_vuiCoreResourceMap_sDict setObject:@"metadata-ad" forKeyedSubscript:@"metadata-ad"];
  [_vuiCoreResourceMap_sDict setObject:@"metadata-sdh" forKeyedSubscript:@"metadata-sdh"];
  [_vuiCoreResourceMap_sDict setObject:@"hdr_mask" forKeyedSubscript:@"hdr"];
  [_vuiCoreResourceMap_sDict setObject:@"hdr10+_mask" forKeyedSubscript:@"hdr10+"];
  [_vuiCoreResourceMap_sDict setObject:@"4k_mask" forKeyedSubscript:@"4k"];
  [_vuiCoreResourceMap_sDict setObject:@"dolbyvision_mask" forKeyedSubscript:@"dolby-vision"];
  v2 = _vuiCoreResourceMap_sDict;

  return [v2 setObject:@"dolbyatmos_mask" forKeyedSubscript:@"dolby-atmos"];
}

+ (id)_getImageFromURLorBundle:(id)a3
{
  v4 = a3;
  v5 = +[VUICoreUtilities _vuiCoreResourceMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = MEMORY[0x277D755B8];
  v11 = +[VUICoreUtilities VideosUIBundle];
  v12 = [v10 vuiImageNamed:v9 inBundle:v11];

  if (!v12)
  {
    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v13 vuiImageNamed:v4 inBundle:v14];
  }

  v15 = [a1 URLForResource:v4];
  v16 = v15;
  if (v15 && [v15 isFileURL])
  {
    v17 = MEMORY[0x277D755B8];
    v18 = [v16 path];
    v19 = [v17 imageWithContentsOfFile:v18];

    v12 = v19;
  }

  if (!v12)
  {
    v20 = VUICDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(VUICoreUtilities *)v4 _getImageFromURLorBundle:v20];
    }
  }

  return v12;
}

+ (id)_imageForResource:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v6 = 0;
    goto LABEL_7;
  }

  v4 = +[VUICoreUtilities VideosUIBundle];
  v5 = [MEMORY[0x277D755B8] vuiImageNamed:v3 inBundle:v4];
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [MEMORY[0x277D755B8] vuiImageNamed:v3 inBundle:v7];

    if (v6)
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x277D755B8] vuiSystemImageNamed:v3 withConfiguration:0 accessibilityDescription:0];
  }

  v6 = v5;
LABEL_6:

LABEL_7:

  return v6;
}

+ (id)_URLForResource:(id)a3 inBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 pathForResource:v5 ofType:@"png"];
  if (!v7)
  {
    v7 = [v6 pathForResource:v5 ofType:@"jpeg"];
  }

  if ([v7 length])
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)runningAnInternalBuild
{
  if (runningAnInternalBuild_onceToken != -1)
  {
    +[VUICoreUtilities runningAnInternalBuild];
  }

  return runningAnInternalBuild_internalBuild;
}

uint64_t __42__VUICoreUtilities_runningAnInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  runningAnInternalBuild_internalBuild = result;
  return result;
}

+ (BOOL)runningUiTest
{
  if (runningUiTest_onceToken != -1)
  {
    +[VUICoreUtilities runningUiTest];
  }

  return runningUiTest_isRunningUiTest;
}

void __33__VUICoreUtilities_runningUiTest__block_invoke()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 arguments];
  runningUiTest_isRunningUiTest = [v1 containsObject:@"-RunningUITest"];

  if (runningUiTest_isRunningUiTest == 1)
  {
    v2 = VUICImageLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_270E6E000, v2, OS_LOG_TYPE_DEFAULT, "TV app is running via a UITest", v3, 2u);
    }
  }
}

+ (id)randomColor
{
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = arc4random_uniform(0xFFu) / 255.0;
  v4 = arc4random_uniform(0xFFu) / 255.0;
  v5 = MEMORY[0x277D75348];

  return [v5 colorWithRed:v2 green:v3 blue:v4 alpha:0.400000006];
}

+ (id)formatForTransparentImage
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if (+[VUICoreUtilities isHeicFormatAllowed])
    {
      v2 = @"heic";
    }

    else
    {
      v2 = @"png";
    }
  }

  else
  {
    v2 = @"png";
  }

  return v2;
}

+ (id)formatForOpaqueImage
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if (+[VUICoreUtilities isHeicFormatAllowed])
    {
      v2 = @"heic";
    }

    else
    {
      v2 = @"jpeg";
    }
  }

  else
  {
    v2 = @"jpeg";
  }

  return v2;
}

+ (void)_getImageFromURLorBundle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270E6E000, a2, OS_LOG_TYPE_ERROR, "resource not found: %@", &v2, 0xCu);
}

@end