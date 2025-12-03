@interface TVMLUtilities
+ (BOOL)_cornerRadiiFromElement:(id)element cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle;
+ (BOOL)_cornerRadiiFromImageLayout:(id)layout cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle;
+ (BOOL)_cornerRadiiFromImgTreatmentValue:(id)value width:(double)width cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle;
+ (BOOL)_cornerRadiiWithBorderRadius:(id)radius cornerRadii:(TVCornerRadii *)radii imageWidth:(double)width imageTreatmentValue:(id)value circle:(BOOL *)circle;
+ (BOOL)_isOSFeatureEnabled:(id)enabled;
+ (BOOL)cornerRadiiFromElement:(id)element cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle;
+ (BOOL)isAXLargeEnabled:(id)enabled;
+ (BOOL)isAXSmallEnabled:(id)enabled;
+ (BOOL)isFlowcaseAtTopOfStackFromElement:(id)element;
+ (BOOL)mainBundleSupportsSFSymbols;
+ (CGPath)shadowPathWithCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size;
+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)rect;
+ (double)focusedSizeIncreaseForSize:(CGSize)size upscaleFactor:(double)factor;
+ (double)focusedSizeIncreaseForSize:(CGSize)size upscaleFactor:(double)factor useInSearchPartial:(BOOL)partial;
+ (double)uiFontWeightFromCSSFontWeight:(id)weight;
+ (id)TVKitBundle;
+ (id)TVMLKitBundle;
+ (id)TVUIKitBundle;
+ (id)_bgImageElementForProductTemplate:(id)template;
+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)style;
+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)style withCornerRadii:(TVCornerRadii)radii andSize:(CGSize)size;
+ (id)_mobileGestaltStringForKey:(__CFString *)key;
+ (id)_placeholderImageForValue:(id)value userInterfaceStyle:(int64_t)style withCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size;
+ (id)_placeholderImageForViewElement:(id)element imageLayout:(id)layout;
+ (id)_placeholderImageForViewElement:(id)element withImageLayout:(id)layout cornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size;
+ (id)fontFromStyle:(id)style;
+ (id)imageWithRadialGradientOverlayFromImage:(id)image;
+ (id)indexPathForFirstItemAttributeValue:(id)value;
+ (id)placeholderImageForViewElement:(id)element;
+ (id)placeholderImageForViewElement:(id)element withCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size;
+ (id)randomColor;
+ (id)rowSpacingMetricsForRowMetrics:(id)metrics forShowcase:(BOOL)showcase;
+ (int64_t)_interfaceStyleForElement:(id)element;
+ (int64_t)_overrideInterfaceStyleForElement:(id)element;
+ (int64_t)contentModeForPosition:(int64_t)position defaultMode:(int64_t)mode;
+ (int64_t)semanticAlignmentForAlignment:(int64_t)alignment semanticContentAttribute:(int64_t)attribute;
+ (int64_t)semanticContentAttributeForTemplateElement:(id)element;
+ (int64_t)semanticPositionForPosition:(int64_t)position semanticContentAttribute:(int64_t)attribute;
+ (void)disassociateIKViewElementsRecursivelyFromView:(id)view;
+ (void)getValuesFromTransform:(CGAffineTransform *)transform translation:(CGPoint *)translation rotation:(CGPoint *)rotation;
@end

@implementation TVMLUtilities

+ (id)TVMLKitBundle
{
  if (TVMLKitBundle_onceToken != -1)
  {
    +[TVMLUtilities TVMLKitBundle];
  }

  v3 = TVMLKitBundle_bundle;

  return v3;
}

uint64_t __30__TVMLUtilities_TVMLKitBundle__block_invoke()
{
  TVMLKitBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVMLKit"];

  return MEMORY[0x2821F96F8]();
}

+ (id)TVUIKitBundle
{
  if (TVUIKitBundle_onceToken != -1)
  {
    +[TVMLUtilities TVUIKitBundle];
  }

  v3 = TVUIKitBundle_bundle;

  return v3;
}

uint64_t __30__TVMLUtilities_TVUIKitBundle__block_invoke()
{
  TVUIKitBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVUIKit"];

  return MEMORY[0x2821F96F8]();
}

+ (id)TVKitBundle
{
  if (TVKitBundle_onceToken != -1)
  {
    +[TVMLUtilities TVKitBundle];
  }

  v3 = TVKitBundle_bundle;

  return v3;
}

uint64_t __28__TVMLUtilities_TVKitBundle__block_invoke()
{
  TVKitBundle_bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVKit"];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)mainBundleSupportsSFSymbols
{
  if (mainBundleSupportsSFSymbols_onceToken != -1)
  {
    +[TVMLUtilities mainBundleSupportsSFSymbols];
  }

  return mainBundleSupportsSFSymbols_supportsSFSymbols;
}

void __44__TVMLUtilities_mainBundleSupportsSFSymbols__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 infoDictionary];
  v1 = [v0 objectForKey:@"TVSupportsSFSymbols"];
  mainBundleSupportsSFSymbols_supportsSFSymbols = [v1 BOOLValue];
}

+ (double)uiFontWeightFromCSSFontWeight:(id)weight
{
  weightCopy = weight;
  if (uiFontWeightFromCSSFontWeight__onceToken != -1)
  {
    +[TVMLUtilities uiFontWeightFromCSSFontWeight:];
  }

  if ([weightCopy length] && (v4 = uiFontWeightFromCSSFontWeight__sFontWeightMap, objc_msgSend(weightCopy, "lowercaseString"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x277D74418];
  }

  return v8;
}

void __47__TVMLUtilities_uiFontWeightFromCSSFontWeight___block_invoke()
{
  v12[9] = *MEMORY[0x277D85DE8];
  v11[0] = @"ultralight";
  v0 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74438]];
  v12[0] = v0;
  v11[1] = @"thin";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74428]];
  v12[1] = v1;
  v11[2] = @"light";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74408]];
  v12[2] = v2;
  v11[3] = @"regular";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74418]];
  v12[3] = v3;
  v11[4] = @"medium";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
  v12[4] = v4;
  v11[5] = @"semibold";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v12[5] = v5;
  v11[6] = @"bold";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v12[6] = v6;
  v11[7] = @"heavy";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74400]];
  v12[7] = v7;
  v11[8] = @"black";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743E8]];
  v12[8] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v10 = uiFontWeightFromCSSFontWeight__sFontWeightMap;
  uiFontWeightFromCSSFontWeight__sFontWeightMap = v9;
}

+ (id)fontFromStyle:(id)style
{
  v45[2] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  tv_textStyle = [styleCopy tv_textStyle];
  tv_fontWeight = [styleCopy tv_fontWeight];
  [styleCopy tv_fontSize];
  v8 = v7;
  tv_fontStretch = [styleCopy tv_fontStretch];
  v10 = [objc_opt_class() fontFromTextStyle:tv_textStyle fontWeight:tv_fontWeight fontSize:tv_fontStretch symbolicTraits:v8];
  if (v10)
  {
    goto LABEL_20;
  }

  tv_fontFamily = [styleCopy tv_fontFamily];
  [self uiFontWeightFromCSSFontWeight:tv_fontWeight];
  v13 = v12;
  v14 = 0x277D74000uLL;
  if (v8 <= 0.0)
  {
    [MEMORY[0x277D74300] systemFontSize];
    v8 = v15;
  }

  if ([tv_fontFamily length])
  {
    if (![tv_fontWeight length] || v13 == *MEMORY[0x277D74418])
    {
      fontDescriptor = [MEMORY[0x277D74310] fontDescriptorWithName:tv_fontFamily size:v8];
      if (fontDescriptor)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277D74310]);
      v44[0] = *MEMORY[0x277D74380];
      v42 = *MEMORY[0x277D74430];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      v43 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v44[1] = *MEMORY[0x277D74328];
      v45[0] = v18;
      v45[1] = tv_fontFamily;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      fontDescriptor = [v16 initWithFontAttributes:v19];

      v14 = 0x277D74000;
      if (fontDescriptor)
      {
        goto LABEL_11;
      }
    }
  }

  v21 = [*(v14 + 768) systemFontOfSize:v8 weight:v13];
  fontDescriptor = [v21 fontDescriptor];

LABEL_11:
  v22 = [styleCopy valueForStyle:@"itml-text-caps"];
  v23 = v22;
  if (v22 && [v22 isEqualToString:@"small"])
  {
    fontDescriptor2 = [0 fontDescriptor];
    v40 = *MEMORY[0x277D74338];
    v25 = *MEMORY[0x277D74388];
    v37[0] = *MEMORY[0x277D74398];
    v24 = v37[0];
    v37[1] = v25;
    v38[0] = &unk_287E47D00;
    v38[1] = &unk_287E47D18;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v39[0] = v32;
    v35[0] = v24;
    v35[1] = v25;
    v36[0] = &unk_287E47D30;
    v36[1] = &unk_287E47D18;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v26 = v34 = tv_fontFamily;
    v39[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v41 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v31 = [fontDescriptor2 fontDescriptorByAddingAttributes:v28];

    v14 = 0x277D74000uLL;
    tv_fontFamily = v34;

    fontDescriptor = v31;
  }

  if (tv_fontStretch)
  {
    v29 = [fontDescriptor fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor, "symbolicTraits") | tv_fontStretch}];

    fontDescriptor = v29;
  }

  if (fontDescriptor)
  {
    v10 = [*(v14 + 768) fontWithDescriptor:fontDescriptor size:v8];
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

+ (id)randomColor
{
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = arc4random_uniform(0xFFu) / 255.0;
  v4 = arc4random_uniform(0xFFu) / 255.0;
  v5 = MEMORY[0x277D75348];

  return [v5 colorWithRed:v2 green:v3 blue:v4 alpha:0.4];
}

+ (BOOL)_cornerRadiiFromImgTreatmentValue:(id)value width:(double)width cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle
{
  valueCopy = value;
  if (![valueCopy length])
  {
    goto LABEL_16;
  }

  v10 = 4.0;
  if ([valueCopy isEqualToString:@"small"])
  {
    goto LABEL_13;
  }

  if ([valueCopy isEqualToString:@"corner-small"])
  {
    goto LABEL_13;
  }

  v10 = 8.0;
  if ([valueCopy isEqualToString:@"medium"])
  {
    goto LABEL_13;
  }

  if ([valueCopy isEqualToString:@"corner-medium"])
  {
    goto LABEL_13;
  }

  v10 = 12.0;
  if ([valueCopy isEqualToString:@"large"] & 1) != 0 || (objc_msgSend(valueCopy, "isEqualToString:", @"corner-large"))
  {
    goto LABEL_13;
  }

  if ([valueCopy isEqualToString:@"circle"])
  {
    v10 = fabs(width * 0.5);
    if (circle)
    {
      *circle = 1;
    }

    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  [valueCopy floatValue];
  v10 = v11;
LABEL_13:
  if (radii)
  {
    [TVCornerUtilities radiiFromRadius:v10];
    radii->topLeft = v12;
    radii->topRight = v13;
    radii->bottomLeft = v14;
    radii->bottomRight = v15;
  }

  v16 = 1;
LABEL_17:

  return v16;
}

+ (BOOL)cornerRadiiFromElement:(id)element cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle
{
  element = [element element];
  LOBYTE(circle) = [self _cornerRadiiFromElement:element cornerRadii:radii circle:circle];

  return circle;
}

+ (BOOL)_cornerRadiiFromImageLayout:(id)layout cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle
{
  layoutCopy = layout;
  ikBorderRadius = [layoutCopy ikBorderRadius];
  [layoutCopy decoratorSize];
  v11 = v10;
  imageTreatment = [layoutCopy imageTreatment];

  LOBYTE(circle) = [self _cornerRadiiWithBorderRadius:ikBorderRadius cornerRadii:radii imageWidth:imageTreatment imageTreatmentValue:circle circle:v11];
  return circle;
}

+ (BOOL)_cornerRadiiFromElement:(id)element cornerRadii:(TVCornerRadii *)radii circle:(BOOL *)circle
{
  elementCopy = element;
  style = [elementCopy style];
  tv_borderRadius = [style tv_borderRadius];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [elementCopy tv_imageScaleToSize];
    v12 = v11;
  }

  else
  {
    style2 = [elementCopy style];
    [style2 tv_width];
    v12 = v14;
  }

  style3 = [elementCopy style];
  tv_imageTreatment = [style3 tv_imageTreatment];

  v17 = [self _cornerRadiiWithBorderRadius:tv_borderRadius cornerRadii:radii imageWidth:tv_imageTreatment imageTreatmentValue:circle circle:v12];
  return v17;
}

+ (double)focusedSizeIncreaseForSize:(CGSize)size upscaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  v7 = objc_opt_class();

  [v7 focusedSizeIncreaseForSize:0 upscaleFactor:width useInSearchPartial:{height, factor}];
  return result;
}

+ (double)focusedSizeIncreaseForSize:(CGSize)size upscaleFactor:(double)factor useInSearchPartial:(BOOL)partial
{
  partialCopy = partial;
  height = size.height;
  width = size.width;
  v9 = +[TVMLUtilities _isSolariumMetricsEnabled];
  v10 = width < 180.0 || partialCopy;
  result = 70.0;
  if (v10)
  {
    result = 60.0;
  }

  if (v9)
  {
    result = 40.0;
  }

  v12 = floor(fmax(width, height) * (factor + -1.0)) + result;
  if (factor > 1.0)
  {
    return v12;
  }

  return result;
}

+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)rect
{
  v4 = round(rect.origin.x + (rect.size.width - result.size.width) * 0.5);
  v5 = round(rect.origin.y + (rect.size.height - result.size.height) * 0.5);
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)getValuesFromTransform:(CGAffineTransform *)transform translation:(CGPoint *)translation rotation:(CGPoint *)rotation
{
  if (translation)
  {
    *translation = *&transform->tx;
  }

  if (rotation)
  {
    v6 = atan2(transform->b, transform->d);
    rotation->x = v6;
    rotation->y = v6;
  }
}

+ (id)indexPathForFirstItemAttributeValue:(id)value
{
  if (value)
  {
    v3 = [value componentsSeparatedByString:{@", "}];
    v4 = [v3 count];
    v5 = v4;
    if (v4)
    {
      v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
      if (v6)
      {
        v7 = v6;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __53__TVMLUtilities_indexPathForFirstItemAttributeValue___block_invoke;
        v9[3] = &__block_descriptor_40_e25_v32__0__NSString_8Q16_B24l;
        v9[4] = v6;
        [v3 enumerateObjectsUsingBlock:v9];
        v5 = [MEMORY[0x277CCAA70] indexPathWithIndexes:v7 length:v5];
        free(v7);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __53__TVMLUtilities_indexPathForFirstItemAttributeValue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  *(*(a1 + 32) + 8 * a3) = result;
  return result;
}

+ (id)rowSpacingMetricsForRowMetrics:(id)metrics forShowcase:(BOOL)showcase
{
  metricsCopy = metrics;
  if ([metricsCopy count] >= 2)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(metricsCopy, "count") - 1}];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x7010000000;
    v23[3] = &unk_26CE937F5;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x7010000000;
    v17[3] = &unk_26CE937F5;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __60__TVMLUtilities_rowSpacingMetricsForRowMetrics_forShowcase___block_invoke;
    v12 = &unk_279D6E2D0;
    v15 = v23;
    v16 = v17;
    v13 = metricsCopy;
    v7 = v6;
    v14 = v7;
    [v13 enumerateObjectsUsingBlock:&v9];
    v5 = [v7 copy];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v23, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__n128 __60__TVMLUtilities_rowSpacingMetricsForRowMetrics_forShowcase___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 48) + 8);
  v6 = *(*(a1 + 56) + 8);
  v7 = v6[6];
  v9 = v6[3];
  v8 = v6[4];
  v5[5] = v6[5];
  v5[6] = v7;
  v5[3] = v9;
  v5[4] = v8;
  v5[2] = v6[2];
  v10 = [*(a1 + 32) objectAtIndexedSubscript:?];
  [v10 tv_rowMetricsValue];
  v11 = *(*(a1 + 56) + 8);
  v13 = v36;
  v12 = v37;
  v11[4] = v35;
  v11[5] = v13;
  v11[6] = v12;
  v14 = v34;
  v11[2] = v33;
  v11[3] = v14;

  if (a3)
  {
    v16 = *(*(a1 + 56) + 8);
    if (v16[5] == 0.0)
    {
      v17 = *(a1 + 40);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      v18 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v28];
      [v17 addObject:v18];
    }

    else
    {
      v19 = *(a1 + 40);
      v20 = *(*(a1 + 48) + 8);
      v21 = fmax(fmax(46.0 - (v20[7] + v16[6]), 0.0), fmax(v20[13] + 30.0 - (v20[9] + v16[10]), v16[12] + 30.0 - (v20[11] + v16[8])));
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *&v28 = 1;
      *(&v28 + 1) = v21;
      v22 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v28];
      [v19 addObject:v22];

      v23 = *(*(a1 + 48) + 8);
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 96);
      v27 = *(v24 + 48);
      v26 = *(v24 + 64);
      *(v23 + 80) = *(v24 + 80);
      *(v23 + 96) = v25;
      *(v23 + 48) = v27;
      *(v23 + 64) = v26;
      result = *(v24 + 32);
      *(v23 + 32) = result;
    }
  }

  return result;
}

+ (id)imageWithRadialGradientOverlayFromImage:(id)image
{
  v3 = MEMORY[0x277D759A0];
  imageCopy = image;
  mainScreen = [v3 mainScreen];
  [mainScreen bounds];
  v7 = v6;
  v9 = v8;

  [imageCopy size];
  v11 = v10;
  v13 = v12;
  v14 = MEMORY[0x277D755B8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v14 imageNamed:@"TVCKBackgroundShelfGradient" inBundle:v15];

  v17 = v7 / v11;
  if (v7 / v11 < v9 / v13)
  {
    v17 = v9 / v13;
  }

  CGAffineTransformMakeScale(&v28, v17, v17);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v11;
  v31.size.height = v13;
  v32 = CGRectApplyAffineTransform(v31, &v28);
  width = v32.size.width;
  height = v32.size.height;
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v22 = v21;
  v30.width = v7;
  v30.height = v9;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v22);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v24 = round((v7 - width) * 0.5 + *MEMORY[0x277CBF348]);
  v25 = round((v9 - height) * 0.5 + *(MEMORY[0x277CBF348] + 8));
  [imageCopy drawInRect:17 blendMode:v24 alpha:{v25, width, height, 1.0}];

  [v16 drawInRect:0 blendMode:v24 alpha:{v25, width, height, 1.0}];
  CGContextRestoreGState(CurrentContext);
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

+ (id)placeholderImageForViewElement:(id)element
{
  element = [element element];
  v5 = [self _placeholderImageForViewElement:element];

  return v5;
}

+ (id)placeholderImageForViewElement:(id)element withCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  element = [element element];
  v13 = [self _placeholderImageForViewElement:element withCornerRadii:topLeft andScaledSize:{topRight, bottomLeft, bottomRight, width, height}];

  return v13;
}

+ (CGPath)shadowPathWithCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.1lf, %.1lf}[%.1f %.1f %.1f %.1f]", *&size.width, *&size.height, *&radii.topLeft, *&radii.topRight, *&radii.bottomRight, *&radii.bottomLeft];
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

+ (int64_t)semanticContentAttributeForTemplateElement:(id)element
{
  attributes = [element attributes];
  v4 = [attributes objectForKey:@"layoutDirection"];
  lowercaseString = [v4 lowercaseString];

  if ([lowercaseString length])
  {
    if ([lowercaseString isEqualToString:@"ltr"])
    {
      v6 = 3;
    }

    else if ([lowercaseString isEqualToString:@"rtl"])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)_interfaceStyleForElement:(id)element
{
  elementCopy = element;
  appDocument = [elementCopy appDocument];
  appContext = [appDocument appContext];
  v7 = [appContext app];
  if ([v7 conformsToProtocol:&unk_287E5ED28])
  {
    appDocument2 = [elementCopy appDocument];
    appContext2 = [appDocument2 appContext];
    v10 = [appContext2 app];
    keyTraitEnvironment = [v10 keyTraitEnvironment];
  }

  else
  {
    keyTraitEnvironment = 0;
  }

  traitCollection = [keyTraitEnvironment traitCollection];
  if (traitCollection)
  {
    traitCollection2 = [keyTraitEnvironment traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 0;
  }

  v15 = [self _overrideInterfaceStyleForElement:elementCopy];
  if (v15)
  {
    userInterfaceStyle2 = v15;
  }

  else
  {
    userInterfaceStyle2 = userInterfaceStyle;
  }

  if (!userInterfaceStyle2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection3 = [mainScreen traitCollection];
    userInterfaceStyle2 = [traitCollection3 userInterfaceStyle];
  }

  return userInterfaceStyle2;
}

+ (int64_t)_overrideInterfaceStyleForElement:(id)element
{
  elementCopy = element;
  v4 = elementCopy;
  if (!elementCopy)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_18;
  }

  v5 = elementCopy;
  while (1)
  {
    elementType = [v5 elementType];
    parent = [v5 parent];
    attributes2 = parent;
    if (elementType == 35)
    {
      attributes = [parent attributes];
      v10 = [attributes objectForKeyedSubscript:@"theme"];
      lowercaseString = [v10 lowercaseString];
    }

    else
    {

      if (attributes2)
      {
        lowercaseString = 0;
        goto LABEL_9;
      }

      attributes2 = [v5 attributes];
      attributes = [attributes2 objectForKeyedSubscript:@"theme"];
      lowercaseString = [attributes lowercaseString];
    }

LABEL_9:
    if ([lowercaseString length])
    {
      break;
    }

    parent2 = [v5 parent];

    v5 = parent2;
    if (!parent2)
    {
      goto LABEL_11;
    }
  }

  if ([lowercaseString isEqualToString:@"light"])
  {
    v13 = 1;
  }

  else if ([lowercaseString isEqualToString:@"dark"])
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  return v13;
}

+ (id)_bgImageElementForProductTemplate:(id)template
{
  v50 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  unfilteredChildren = [template unfilteredChildren];
  v4 = [unfilteredChildren countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (!v4)
  {
    goto LABEL_48;
  }

  v5 = v4;
  v6 = *v43;
  v27 = *v43;
  v28 = unfilteredChildren;
  do
  {
    v7 = 0;
    v29 = v5;
    do
    {
      if (*v43 != v6)
      {
        objc_enumerationMutation(unfilteredChildren);
      }

      v8 = *(*(&v42 + 1) + 8 * v7);
      if ([v8 tv_elementType] == 4)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        unfilteredChildren2 = [v8 unfilteredChildren];
        v10 = [unfilteredChildren2 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (!v10)
        {
          goto LABEL_42;
        }

        v11 = v10;
        v12 = *v39;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(unfilteredChildren2);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          if ([v14 tv_elementType] == 16 && (!objc_msgSend(v14, "tv_imageType") || objc_msgSend(v14, "tv_imageType") == 3))
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [unfilteredChildren2 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v11)
            {
              goto LABEL_9;
            }

            goto LABEL_42;
          }
        }

LABEL_44:
        v25 = v14;
      }

      else
      {
        if ([v8 tv_elementType] != 12)
        {
          goto LABEL_46;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        unfilteredChildren2 = [v8 unfilteredChildren];
        v15 = [unfilteredChildren2 countByEnumeratingWithState:&v34 objects:v47 count:16];
        if (!v15)
        {
LABEL_42:
          v25 = 0;
          goto LABEL_45;
        }

        v16 = v15;
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(unfilteredChildren2);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            if ([v14 tv_elementType] == 16 && objc_msgSend(v14, "tv_imageType") == 3)
            {
              v6 = v27;
              unfilteredChildren = v28;
              v5 = v29;
              goto LABEL_44;
            }

            if ([v14 tv_elementType] == 24)
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              unfilteredChildren3 = [v14 unfilteredChildren];
              v20 = [unfilteredChildren3 countByEnumeratingWithState:&v30 objects:v46 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v31;
LABEL_29:
                v23 = 0;
                while (1)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(unfilteredChildren3);
                  }

                  v24 = *(*(&v30 + 1) + 8 * v23);
                  if ([v24 tv_elementType] == 16 && objc_msgSend(v24, "tv_imageType") == 3)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [unfilteredChildren3 countByEnumeratingWithState:&v30 objects:v46 count:16];
                    if (v21)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_36;
                  }
                }

                v25 = v24;

                if (v25)
                {
                  goto LABEL_41;
                }
              }

              else
              {
LABEL_36:
              }
            }
          }

          v16 = [unfilteredChildren2 countByEnumeratingWithState:&v34 objects:v47 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v25 = 0;
LABEL_41:
        v6 = v27;
        unfilteredChildren = v28;
        v5 = v29;
      }

LABEL_45:

      if (v25)
      {
        goto LABEL_49;
      }

LABEL_46:
      ++v7;
    }

    while (v7 != v5);
    v5 = [unfilteredChildren countByEnumeratingWithState:&v42 objects:v49 count:16];
  }

  while (v5);
LABEL_48:
  v25 = 0;
LABEL_49:

  return v25;
}

+ (int64_t)semanticAlignmentForAlignment:(int64_t)alignment semanticContentAttribute:(int64_t)attribute
{
  v5 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:attribute];
  if (alignment == 5)
  {
    if (v5 == 1)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if (alignment == 4)
  {
    if (v5 == 1)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return alignment;
}

+ (int64_t)semanticPositionForPosition:(int64_t)position semanticContentAttribute:(int64_t)attribute
{
  v5 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:attribute];
  v6 = 6;
  if (v5 != 1)
  {
    v6 = 7;
  }

  v7 = 8;
  if (v5 == 1)
  {
    v7 = 9;
  }

  positionCopy = 8;
  if (v5 != 1)
  {
    positionCopy = 9;
  }

  if (position != 17)
  {
    positionCopy = position;
  }

  if (position != 16)
  {
    v7 = positionCopy;
  }

  if (position != 15)
  {
    v6 = v7;
  }

  v9 = 4;
  if (v5 == 1)
  {
    v9 = 5;
  }

  v10 = 4;
  if (v5 != 1)
  {
    v10 = 5;
  }

  positionCopy2 = 6;
  if (v5 == 1)
  {
    positionCopy2 = 7;
  }

  if (position != 14)
  {
    positionCopy2 = position;
  }

  if (position != 13)
  {
    v10 = positionCopy2;
  }

  if (position != 12)
  {
    v9 = v10;
  }

  if (position <= 14)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)contentModeForPosition:(int64_t)position defaultMode:(int64_t)mode
{
  if ((position - 1) >= 9)
  {
    return mode;
  }

  else
  {
    return position + 3;
  }
}

+ (BOOL)_cornerRadiiWithBorderRadius:(id)radius cornerRadii:(TVCornerRadii *)radii imageWidth:(double)width imageTreatmentValue:(id)value circle:(BOOL *)circle
{
  radiusCopy = radius;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  if (![self _cornerRadiiFromImgTreatmentValue:value width:&v23 cornerRadii:&v25 circle:width] || radiusCopy && !v25)
  {
    namedStyle = [radiusCopy namedStyle];

    if (namedStyle)
    {
      namedStyle2 = [radiusCopy namedStyle];
      v15 = [self _cornerRadiiFromImgTreatmentValue:namedStyle2 width:&v23 cornerRadii:&v25 circle:width];

      if (!radii)
      {
        goto LABEL_12;
      }

LABEL_10:
      if (v15)
      {
        v20 = v24;
        *&radii->topLeft = v23;
        *&radii->bottomLeft = v20;
      }

      goto LABEL_12;
    }

    if (!radiusCopy)
    {
      LOBYTE(v15) = 0;
      goto LABEL_16;
    }

    [radiusCopy cornerRadiiValue];
    *&v23 = v16;
    *(&v23 + 1) = v17;
    *&v24 = v18;
    *(&v24 + 1) = v19;
  }

  v15 = 1;
  if (radii)
  {
    goto LABEL_10;
  }

LABEL_12:
  v21 = v15 ^ 1;
  if (!circle)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *circle = v25;
    LOBYTE(v15) = 1;
  }

LABEL_16:

  return v15;
}

+ (id)_placeholderImageForValue:(id)value userInterfaceStyle:(int64_t)style withCornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size
{
  lowercaseString = [value lowercaseString];
  if ([lowercaseString isEqualToString:@"movie"])
  {
    v8 = @"PreloadAsset-Movie";
    v9 = @"PreloadAsset-Dark-Movie";
  }

  else if ([lowercaseString isEqualToString:@"tv"])
  {
    v8 = @"PreloadAsset-TV";
    v9 = @"PreloadAsset-Dark-TV";
  }

  else if ([lowercaseString isEqualToString:@"music"])
  {
    v8 = @"PreloadAsset-Music";
    v9 = @"PreloadAsset-Dark-Music";
  }

  else if ([lowercaseString isEqualToString:@"podcast"])
  {
    v8 = @"PreloadAsset-Podcast";
    v9 = @"PreloadAsset-Dark-Podcast";
  }

  else if ([lowercaseString isEqualToString:@"icloud"])
  {
    v8 = @"PreloadAsset-iCloud";
    v9 = @"PreloadAsset-Dark-iCloud";
  }

  else if ([lowercaseString isEqualToString:@"monogram"])
  {
    v8 = @"PreloadAsset-Monogram";
    v9 = @"PreloadAsset-Dark-Monogram";
  }

  else if ([lowercaseString isEqualToString:@"flowcase"])
  {
    v8 = @"PreloadAsset-GenericFlowcase";
    v9 = @"PreloadAsset-Dark-GenericFlowcase";
  }

  else if ([lowercaseString isEqualToString:@"16x9"])
  {
    v8 = @"PreloadAsset-Generic16x9";
    v9 = @"PreloadAsset-Dark-Generic16x9";
  }

  else if ([lowercaseString isEqualToString:@"tv16x9"])
  {
    v8 = @"PreloadAsset-TV16x9";
    v9 = @"PreloadAsset-Dark-TV16x9";
  }

  else if ([lowercaseString isEqualToString:@"movie16x9"])
  {
    v8 = @"PreloadAsset-Movie16x9";
    v9 = @"PreloadAsset-Dark-Movie16x9";
  }

  else
  {
    if (![lowercaseString isEqualToString:@"generic"])
    {
      v12 = 0;
      goto LABEL_34;
    }

    v8 = @"PreloadAsset-Generic";
    v9 = @"PreloadAsset-Dark-Generic";
  }

  if (style == 2)
  {
    v8 = v9;
  }

  v10 = v8;
  if (_placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____once != -1)
  {
    +[TVMLUtilities _placeholderImageForValue:userInterfaceStyle:withCornerRadii:andScaledSize:];
  }

  v11 = v10;
  v12 = [_placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____placeholderImageCache objectForKey:v11];
  if (!v12)
  {
    v13 = MEMORY[0x277D755B8];
    v14 = +[TVMLUtilities TVMLKitBundle];
    v12 = [v13 imageNamed:v11 inBundle:v14];

    if (v12)
    {
      [_placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____placeholderImageCache setObject:v12 forKey:v11];
    }

    else
    {
      v15 = TVMLKitImageLogObject;
      if (os_log_type_enabled(TVMLKitImageLogObject, OS_LOG_TYPE_ERROR))
      {
        [TVMLUtilities _placeholderImageForValue:v11 userInterfaceStyle:v15 withCornerRadii:? andScaledSize:?];
      }

      v12 = 0;
    }
  }

LABEL_34:

  return v12;
}

uint64_t __92__TVMLUtilities__placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____placeholderImageCache;
  _placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____placeholderImageCache = v0;

  v2 = _placeholderImageForValue_userInterfaceStyle_withCornerRadii_andScaledSize____placeholderImageCache;

  return [v2 setCountLimit:15];
}

+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)style
{
  if (style == 2)
  {
    if (_defaultPlaceholderImageForUserInterfaceStyle____once != -1)
    {
      +[TVMLUtilities _defaultPlaceholderImageForUserInterfaceStyle:];
    }

    v3 = &_defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage;
  }

  else
  {
    if (_defaultPlaceholderImageForUserInterfaceStyle____once_291 != -1)
    {
      +[TVMLUtilities _defaultPlaceholderImageForUserInterfaceStyle:];
    }

    v3 = &_defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage;
  }

  v4 = *v3;

  return v4;
}

void __63__TVMLUtilities__defaultPlaceholderImageForUserInterfaceStyle___block_invoke()
{
  v4.width = 1.0;
  v4.height = 1.0;
  UIGraphicsBeginImageContext(v4);
  v0 = [MEMORY[0x277D75348] colorWithRed:0.11372549 green:0.11372549 blue:0.11372549 alpha:1.0];
  [v0 setFill];

  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  UIRectFillUsingBlendMode(v5, kCGBlendModeCopy);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = _defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage;
  _defaultPlaceholderImageForUserInterfaceStyle____defaultDarkPlaceholderImage = v1;

  UIGraphicsEndImageContext();
}

void __63__TVMLUtilities__defaultPlaceholderImageForUserInterfaceStyle___block_invoke_2()
{
  v4.width = 1.0;
  v4.height = 1.0;
  UIGraphicsBeginImageContext(v4);
  v0 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.921568627 blue:0.921568627 alpha:1.0];
  [v0 setFill];

  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  UIRectFillUsingBlendMode(v5, kCGBlendModeCopy);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = _defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage;
  _defaultPlaceholderImageForUserInterfaceStyle____defaultPlaceholderImage = v1;

  UIGraphicsEndImageContext();
}

+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)style withCornerRadii:(TVCornerRadii)radii andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  if (_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____once != -1)
  {
    +[TVMLUtilities _defaultPlaceholderImageForUserInterfaceStyle:withCornerRadii:andSize:];
  }

  v12 = MEMORY[0x277CCACA8];
  v25.width = width;
  v25.height = height;
  v13 = NSStringFromCGSize(v25);
  v14 = v13;
  if (style != 2)
  {
    v15 = [v12 stringWithFormat:@"placeholder-light-%@-%0.2f-%0.2f-%0.2f-%0.2f", v13, *&topRight, *&bottomRight, *&bottomLeft, *&topLeft];

    v16 = [_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache objectForKey:v15];
    if (!v16)
    {
      height = [TVCornerUtilities createPathForRadii:topLeft inRect:topRight, bottomLeft, bottomRight, 0.0, 0.0, width, height];
      v27.width = width;
      v27.height = height;
      UIGraphicsBeginImageContext(v27);
      v18 = [MEMORY[0x277D75208] bezierPathWithCGPath:height];
      v19 = MEMORY[0x277D75348];
      v20 = 0.921568627;
      goto LABEL_9;
    }

LABEL_7:
    v21 = v16;
    goto LABEL_10;
  }

  v15 = [v12 stringWithFormat:@"placeholder-dark-%@-%0.2f-%0.2f-%0.2f-%0.2f", v13, *&topRight, *&bottomRight, *&bottomLeft, *&topLeft];

  v16 = [_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache objectForKey:v15];
  if (v16)
  {
    goto LABEL_7;
  }

  height = [TVCornerUtilities createPathForRadii:topLeft inRect:topRight, bottomLeft, bottomRight, 0.0, 0.0, width, height];
  v26.width = width;
  v26.height = height;
  UIGraphicsBeginImageContext(v26);
  v18 = [MEMORY[0x277D75208] bezierPathWithCGPath:height];
  v19 = MEMORY[0x277D75348];
  v20 = 0.11372549;
LABEL_9:
  v22 = [v19 colorWithRed:v20 green:v20 blue:v20 alpha:1.0];
  [v22 setFill];

  [v18 fillWithBlendMode:17 alpha:1.0];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGPathRelease(height);
  [_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache setObject:v21 forKey:v15];

LABEL_10:

  return v21;
}

uint64_t __87__TVMLUtilities__defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache;
  _defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache = v0;

  v2 = _defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache;

  return [v2 setCountLimit:8];
}

+ (id)_placeholderImageForViewElement:(id)element imageLayout:(id)layout
{
  layoutCopy = layout;
  elementCopy = element;
  style = [elementCopy style];
  v9 = [style valueForStyle:@"tv-placeholder"];

  appDocument = [elementCopy appDocument];

  templateElement = [appDocument templateElement];

  v12 = [self interfaceStyleForTemplateElement:templateElement];
  if ([v9 isEqualToString:@"none"])
  {
    v13 = 0;
    goto LABEL_13;
  }

  if ([v9 length])
  {
    v13 = [self _placeholderImageForValue:v9 userInterfaceStyle:v12];
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v14 imageForResource:v9];

    if (!layoutCopy)
    {
LABEL_11:
      if (v13)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    if (!layoutCopy)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    goto LABEL_11;
  }

  placeholderArtworkName = [layoutCopy placeholderArtworkName];

  if (placeholderArtworkName)
  {
    placeholderArtworkName2 = [layoutCopy placeholderArtworkName];
    v17 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v17 imageForResource:placeholderArtworkName2];

    goto LABEL_11;
  }

LABEL_12:
  v13 = [self _defaultPlaceholderImageForUserInterfaceStyle:v12];
LABEL_13:

  return v13;
}

+ (id)_placeholderImageForViewElement:(id)element withImageLayout:(id)layout cornerRadii:(TVCornerRadii)radii andScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topRight = radii.topRight;
  topLeft = radii.topLeft;
  elementCopy = element;
  layoutCopy = layout;
  style = [elementCopy style];
  v17 = [style valueForStyle:@"tv-placeholder"];

  appDocument = [elementCopy appDocument];
  templateElement = [appDocument templateElement];

  v20 = [self interfaceStyleForTemplateElement:templateElement];
  if ([v17 isEqualToString:@"none"])
  {
    v21 = 0;
    goto LABEL_12;
  }

  if ([v17 length])
  {
    v21 = [self _placeholderImageForValue:v17 userInterfaceStyle:v20 withCornerRadii:topLeft andScaledSize:{topRight, bottomLeft, bottomRight, width, height}];
    if (!layoutCopy)
    {
LABEL_10:
      if (v21)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    if (!layoutCopy)
    {
      goto LABEL_10;
    }
  }

  if (v21)
  {
    goto LABEL_10;
  }

  placeholderArtworkName = [layoutCopy placeholderArtworkName];

  if (placeholderArtworkName)
  {
    v21 = [self _placeholderImageForViewElement:elementCopy imageLayout:layoutCopy];
    goto LABEL_10;
  }

LABEL_11:
  v21 = [self _defaultPlaceholderImageForUserInterfaceStyle:v20 withCornerRadii:topLeft andSize:{topRight, bottomLeft, bottomRight, width, height}];
LABEL_12:

  return v21;
}

+ (void)disassociateIKViewElementsRecursivelyFromView:(id)view
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [viewCopy tv_setAssociatedIKViewElement:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [viewCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        [self disassociateIKViewElementsRecursivelyFromView:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    components = [viewCopy components];
    v11 = [components countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(components);
          }

          [self disassociateIKViewElementsRecursivelyFromView:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [components countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

+ (BOOL)isFlowcaseAtTopOfStackFromElement:(id)element
{
  v24 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  appDocument = [elementCopy appDocument];
  templateElement = [appDocument templateElement];
  tv_elementType = [templateElement tv_elementType];

  if (tv_elementType == 74)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    appDocument2 = [elementCopy appDocument];
    templateElement2 = [appDocument2 templateElement];
    children = [templateElement2 children];

    v10 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        if ([v14 tv_elementType] == 12)
        {
          break;
        }

        if ([v14 tv_elementType] == 10)
        {
          children2 = [v14 children];
          firstObject = [children2 firstObject];

          v15 = [firstObject tv_elementType] == 9 || objc_msgSend(firstObject, "tv_elementType") == 12;
          goto LABEL_18;
        }

        if (v11 == ++v13)
        {
          v11 = [children countByEnumeratingWithState:&v19 objects:v23 count:16];
          v15 = 0;
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }
    }

    v15 = 0;
LABEL_18:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_mobileGestaltStringForKey:(__CFString *)key
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

+ (BOOL)isAXSmallEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = enabledCopy;
  if (!enabledCopy || [enabledCopy isEqual:*MEMORY[0x277D76860]])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v4 = preferredContentSizeCategory;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76818]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D767F8]) == NSOrderedAscending;

  return v8;
}

+ (BOOL)isAXLargeEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = enabledCopy;
  if (!enabledCopy || [enabledCopy isEqual:*MEMORY[0x277D76860]])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    v4 = preferredContentSizeCategory;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending;

  return v8;
}

+ (BOOL)_isOSFeatureEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (![enabledCopy containsString:@"solarium"])
  {
    goto LABEL_7;
  }

  if (_isOSFeatureEnabled__onceToken != -1)
  {
    +[TVMLUtilities _isOSFeatureEnabled:];
  }

  if (_isOSFeatureEnabled__isEntitled == 1)
  {
    if ([enabledCopy isEqualToString:@"solarium-metrics"])
    {
      v4 = _UISolariumMetricsEnabled();
    }

    else
    {
      v4 = _UISolariumEnabled();
    }

    v5 = v4;
  }

  else
  {
LABEL_7:
    v5 = 0;
  }

  return v5;
}

void __37__TVMLUtilities__isOSFeatureEnabled___block_invoke()
{
  v0 = +[_TVProcessInfo currentProcessInfo];
  _isOSFeatureEnabled__isEntitled = [v0 BOOLValueForEntitlement:@"com.apple.private.tvmlkit.solarium-enabled"];
}

+ (void)_placeholderImageForValue:(uint64_t)a1 userInterfaceStyle:(NSObject *)a2 withCornerRadii:andScaledSize:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_ERROR, "Failed to load placeholder image named: [%@]", &v2, 0xCu);
}

@end