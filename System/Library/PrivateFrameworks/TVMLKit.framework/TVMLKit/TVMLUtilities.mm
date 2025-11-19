@interface TVMLUtilities
+ (BOOL)_cornerRadiiFromElement:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5;
+ (BOOL)_cornerRadiiFromImageLayout:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5;
+ (BOOL)_cornerRadiiFromImgTreatmentValue:(id)a3 width:(double)a4 cornerRadii:(TVCornerRadii *)a5 circle:(BOOL *)a6;
+ (BOOL)_cornerRadiiWithBorderRadius:(id)a3 cornerRadii:(TVCornerRadii *)a4 imageWidth:(double)a5 imageTreatmentValue:(id)a6 circle:(BOOL *)a7;
+ (BOOL)_isOSFeatureEnabled:(id)a3;
+ (BOOL)cornerRadiiFromElement:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5;
+ (BOOL)isAXLargeEnabled:(id)a3;
+ (BOOL)isAXSmallEnabled:(id)a3;
+ (BOOL)isFlowcaseAtTopOfStackFromElement:(id)a3;
+ (BOOL)mainBundleSupportsSFSymbols;
+ (CGPath)shadowPathWithCornerRadii:(TVCornerRadii)a3 andScaledSize:(CGSize)a4;
+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)a4;
+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4;
+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4 useInSearchPartial:(BOOL)a5;
+ (double)uiFontWeightFromCSSFontWeight:(id)a3;
+ (id)TVKitBundle;
+ (id)TVMLKitBundle;
+ (id)TVUIKitBundle;
+ (id)_bgImageElementForProductTemplate:(id)a3;
+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)a3;
+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)a3 withCornerRadii:(TVCornerRadii)a4 andSize:(CGSize)a5;
+ (id)_mobileGestaltStringForKey:(__CFString *)a3;
+ (id)_placeholderImageForValue:(id)a3 userInterfaceStyle:(int64_t)a4 withCornerRadii:(TVCornerRadii)a5 andScaledSize:(CGSize)a6;
+ (id)_placeholderImageForViewElement:(id)a3 imageLayout:(id)a4;
+ (id)_placeholderImageForViewElement:(id)a3 withImageLayout:(id)a4 cornerRadii:(TVCornerRadii)a5 andScaledSize:(CGSize)a6;
+ (id)fontFromStyle:(id)a3;
+ (id)imageWithRadialGradientOverlayFromImage:(id)a3;
+ (id)indexPathForFirstItemAttributeValue:(id)a3;
+ (id)placeholderImageForViewElement:(id)a3;
+ (id)placeholderImageForViewElement:(id)a3 withCornerRadii:(TVCornerRadii)a4 andScaledSize:(CGSize)a5;
+ (id)randomColor;
+ (id)rowSpacingMetricsForRowMetrics:(id)a3 forShowcase:(BOOL)a4;
+ (int64_t)_interfaceStyleForElement:(id)a3;
+ (int64_t)_overrideInterfaceStyleForElement:(id)a3;
+ (int64_t)contentModeForPosition:(int64_t)a3 defaultMode:(int64_t)a4;
+ (int64_t)semanticAlignmentForAlignment:(int64_t)a3 semanticContentAttribute:(int64_t)a4;
+ (int64_t)semanticContentAttributeForTemplateElement:(id)a3;
+ (int64_t)semanticPositionForPosition:(int64_t)a3 semanticContentAttribute:(int64_t)a4;
+ (void)disassociateIKViewElementsRecursivelyFromView:(id)a3;
+ (void)getValuesFromTransform:(CGAffineTransform *)a3 translation:(CGPoint *)a4 rotation:(CGPoint *)a5;
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

+ (double)uiFontWeightFromCSSFontWeight:(id)a3
{
  v3 = a3;
  if (uiFontWeightFromCSSFontWeight__onceToken != -1)
  {
    +[TVMLUtilities uiFontWeightFromCSSFontWeight:];
  }

  if ([v3 length] && (v4 = uiFontWeightFromCSSFontWeight__sFontWeightMap, objc_msgSend(v3, "lowercaseString"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
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

+ (id)fontFromStyle:(id)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 tv_textStyle];
  v6 = [v4 tv_fontWeight];
  [v4 tv_fontSize];
  v8 = v7;
  v9 = [v4 tv_fontStretch];
  v10 = [objc_opt_class() fontFromTextStyle:v5 fontWeight:v6 fontSize:v9 symbolicTraits:v8];
  if (v10)
  {
    goto LABEL_20;
  }

  v11 = [v4 tv_fontFamily];
  [a1 uiFontWeightFromCSSFontWeight:v6];
  v13 = v12;
  v14 = 0x277D74000uLL;
  if (v8 <= 0.0)
  {
    [MEMORY[0x277D74300] systemFontSize];
    v8 = v15;
  }

  if ([v11 length])
  {
    if (![v6 length] || v13 == *MEMORY[0x277D74418])
    {
      v20 = [MEMORY[0x277D74310] fontDescriptorWithName:v11 size:v8];
      if (v20)
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
      v45[1] = v11;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      v20 = [v16 initWithFontAttributes:v19];

      v14 = 0x277D74000;
      if (v20)
      {
        goto LABEL_11;
      }
    }
  }

  v21 = [*(v14 + 768) systemFontOfSize:v8 weight:v13];
  v20 = [v21 fontDescriptor];

LABEL_11:
  v22 = [v4 valueForStyle:@"itml-text-caps"];
  v23 = v22;
  if (v22 && [v22 isEqualToString:@"small"])
  {
    v33 = [0 fontDescriptor];
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
    v26 = v34 = v11;
    v39[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v41 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v31 = [v33 fontDescriptorByAddingAttributes:v28];

    v14 = 0x277D74000uLL;
    v11 = v34;

    v20 = v31;
  }

  if (v9)
  {
    v29 = [v20 fontDescriptorWithSymbolicTraits:{objc_msgSend(v20, "symbolicTraits") | v9}];

    v20 = v29;
  }

  if (v20)
  {
    v10 = [*(v14 + 768) fontWithDescriptor:v20 size:v8];
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

+ (BOOL)_cornerRadiiFromImgTreatmentValue:(id)a3 width:(double)a4 cornerRadii:(TVCornerRadii *)a5 circle:(BOOL *)a6
{
  v9 = a3;
  if (![v9 length])
  {
    goto LABEL_16;
  }

  v10 = 4.0;
  if ([v9 isEqualToString:@"small"])
  {
    goto LABEL_13;
  }

  if ([v9 isEqualToString:@"corner-small"])
  {
    goto LABEL_13;
  }

  v10 = 8.0;
  if ([v9 isEqualToString:@"medium"])
  {
    goto LABEL_13;
  }

  if ([v9 isEqualToString:@"corner-medium"])
  {
    goto LABEL_13;
  }

  v10 = 12.0;
  if ([v9 isEqualToString:@"large"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"corner-large"))
  {
    goto LABEL_13;
  }

  if ([v9 isEqualToString:@"circle"])
  {
    v10 = fabs(a4 * 0.5);
    if (a6)
    {
      *a6 = 1;
    }

    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  [v9 floatValue];
  v10 = v11;
LABEL_13:
  if (a5)
  {
    [TVCornerUtilities radiiFromRadius:v10];
    a5->topLeft = v12;
    a5->topRight = v13;
    a5->bottomLeft = v14;
    a5->bottomRight = v15;
  }

  v16 = 1;
LABEL_17:

  return v16;
}

+ (BOOL)cornerRadiiFromElement:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5
{
  v8 = [a3 element];
  LOBYTE(a5) = [a1 _cornerRadiiFromElement:v8 cornerRadii:a4 circle:a5];

  return a5;
}

+ (BOOL)_cornerRadiiFromImageLayout:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 ikBorderRadius];
  [v8 decoratorSize];
  v11 = v10;
  v12 = [v8 imageTreatment];

  LOBYTE(a5) = [a1 _cornerRadiiWithBorderRadius:v9 cornerRadii:a4 imageWidth:v12 imageTreatmentValue:a5 circle:v11];
  return a5;
}

+ (BOOL)_cornerRadiiFromElement:(id)a3 cornerRadii:(TVCornerRadii *)a4 circle:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 style];
  v10 = [v9 tv_borderRadius];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 tv_imageScaleToSize];
    v12 = v11;
  }

  else
  {
    v13 = [v8 style];
    [v13 tv_width];
    v12 = v14;
  }

  v15 = [v8 style];
  v16 = [v15 tv_imageTreatment];

  v17 = [a1 _cornerRadiiWithBorderRadius:v10 cornerRadii:a4 imageWidth:v16 imageTreatmentValue:a5 circle:v12];
  return v17;
}

+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_opt_class();

  [v7 focusedSizeIncreaseForSize:0 upscaleFactor:width useInSearchPartial:{height, a4}];
  return result;
}

+ (double)focusedSizeIncreaseForSize:(CGSize)a3 upscaleFactor:(double)a4 useInSearchPartial:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v9 = +[TVMLUtilities _isSolariumMetricsEnabled];
  v10 = width < 180.0 || v5;
  result = 70.0;
  if (v10)
  {
    result = 60.0;
  }

  if (v9)
  {
    result = 40.0;
  }

  v12 = floor(fmax(width, height) * (a4 + -1.0)) + result;
  if (a4 > 1.0)
  {
    return v12;
  }

  return result;
}

+ (CGRect)centerRect:(CGRect)result inRect:(CGRect)a4
{
  v4 = round(a4.origin.x + (a4.size.width - result.size.width) * 0.5);
  v5 = round(a4.origin.y + (a4.size.height - result.size.height) * 0.5);
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)getValuesFromTransform:(CGAffineTransform *)a3 translation:(CGPoint *)a4 rotation:(CGPoint *)a5
{
  if (a4)
  {
    *a4 = *&a3->tx;
  }

  if (a5)
  {
    v6 = atan2(a3->b, a3->d);
    a5->x = v6;
    a5->y = v6;
  }
}

+ (id)indexPathForFirstItemAttributeValue:(id)a3
{
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:{@", "}];
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

+ (id)rowSpacingMetricsForRowMetrics:(id)a3 forShowcase:(BOOL)a4
{
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") - 1}];
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
    v13 = v4;
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

+ (id)imageWithRadialGradientOverlayFromImage:(id)a3
{
  v3 = MEMORY[0x277D759A0];
  v4 = a3;
  v5 = [v3 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  [v4 size];
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
  v20 = [MEMORY[0x277D759A0] mainScreen];
  [v20 scale];
  v22 = v21;
  v30.width = v7;
  v30.height = v9;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v22);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v24 = round((v7 - width) * 0.5 + *MEMORY[0x277CBF348]);
  v25 = round((v9 - height) * 0.5 + *(MEMORY[0x277CBF348] + 8));
  [v4 drawInRect:17 blendMode:v24 alpha:{v25, width, height, 1.0}];

  [v16 drawInRect:0 blendMode:v24 alpha:{v25, width, height, 1.0}];
  CGContextRestoreGState(CurrentContext);
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

+ (id)placeholderImageForViewElement:(id)a3
{
  v4 = [a3 element];
  v5 = [a1 _placeholderImageForViewElement:v4];

  return v5;
}

+ (id)placeholderImageForViewElement:(id)a3 withCornerRadii:(TVCornerRadii)a4 andScaledSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  bottomRight = a4.bottomRight;
  bottomLeft = a4.bottomLeft;
  topRight = a4.topRight;
  topLeft = a4.topLeft;
  v12 = [a3 element];
  v13 = [a1 _placeholderImageForViewElement:v12 withCornerRadii:topLeft andScaledSize:{topRight, bottomLeft, bottomRight, width, height}];

  return v13;
}

+ (CGPath)shadowPathWithCornerRadii:(TVCornerRadii)a3 andScaledSize:(CGSize)a4
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

+ (int64_t)semanticContentAttributeForTemplateElement:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 objectForKey:@"layoutDirection"];
  v5 = [v4 lowercaseString];

  if ([v5 length])
  {
    if ([v5 isEqualToString:@"ltr"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"rtl"])
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

+ (int64_t)_interfaceStyleForElement:(id)a3
{
  v4 = a3;
  v5 = [v4 appDocument];
  v6 = [v5 appContext];
  v7 = [v6 app];
  if ([v7 conformsToProtocol:&unk_287E5ED28])
  {
    v8 = [v4 appDocument];
    v9 = [v8 appContext];
    v10 = [v9 app];
    v11 = [v10 keyTraitEnvironment];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 traitCollection];
  if (v12)
  {
    v13 = [v11 traitCollection];
    v14 = [v13 userInterfaceStyle];
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 _overrideInterfaceStyleForElement:v4];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v17 = [MEMORY[0x277D759A0] mainScreen];
    v18 = [v17 traitCollection];
    v16 = [v18 userInterfaceStyle];
  }

  return v16;
}

+ (int64_t)_overrideInterfaceStyleForElement:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_18;
  }

  v5 = v3;
  while (1)
  {
    v6 = [v5 elementType];
    v7 = [v5 parent];
    v8 = v7;
    if (v6 == 35)
    {
      v9 = [v7 attributes];
      v10 = [v9 objectForKeyedSubscript:@"theme"];
      v11 = [v10 lowercaseString];
    }

    else
    {

      if (v8)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v8 = [v5 attributes];
      v9 = [v8 objectForKeyedSubscript:@"theme"];
      v11 = [v9 lowercaseString];
    }

LABEL_9:
    if ([v11 length])
    {
      break;
    }

    v12 = [v5 parent];

    v5 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if ([v11 isEqualToString:@"light"])
  {
    v13 = 1;
  }

  else if ([v11 isEqualToString:@"dark"])
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

+ (id)_bgImageElementForProductTemplate:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = [a3 unfilteredChildren];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (!v4)
  {
    goto LABEL_48;
  }

  v5 = v4;
  v6 = *v43;
  v27 = *v43;
  v28 = v3;
  do
  {
    v7 = 0;
    v29 = v5;
    do
    {
      if (*v43 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v42 + 1) + 8 * v7);
      if ([v8 tv_elementType] == 4)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = [v8 unfilteredChildren];
        v10 = [v9 countByEnumeratingWithState:&v38 objects:v48 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          if ([v14 tv_elementType] == 16 && (!objc_msgSend(v14, "tv_imageType") || objc_msgSend(v14, "tv_imageType") == 3))
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v38 objects:v48 count:16];
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
        v9 = [v8 unfilteredChildren];
        v15 = [v9 countByEnumeratingWithState:&v34 objects:v47 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            if ([v14 tv_elementType] == 16 && objc_msgSend(v14, "tv_imageType") == 3)
            {
              v6 = v27;
              v3 = v28;
              v5 = v29;
              goto LABEL_44;
            }

            if ([v14 tv_elementType] == 24)
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v19 = [v14 unfilteredChildren];
              v20 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
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
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v30 + 1) + 8 * v23);
                  if ([v24 tv_elementType] == 16 && objc_msgSend(v24, "tv_imageType") == 3)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v19 countByEnumeratingWithState:&v30 objects:v46 count:16];
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

          v16 = [v9 countByEnumeratingWithState:&v34 objects:v47 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v25 = 0;
LABEL_41:
        v6 = v27;
        v3 = v28;
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
    v5 = [v3 countByEnumeratingWithState:&v42 objects:v49 count:16];
  }

  while (v5);
LABEL_48:
  v25 = 0;
LABEL_49:

  return v25;
}

+ (int64_t)semanticAlignmentForAlignment:(int64_t)a3 semanticContentAttribute:(int64_t)a4
{
  v5 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:a4];
  if (a3 == 5)
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

  else if (a3 == 4)
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

  return a3;
}

+ (int64_t)semanticPositionForPosition:(int64_t)a3 semanticContentAttribute:(int64_t)a4
{
  v5 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:a4];
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

  v8 = 8;
  if (v5 != 1)
  {
    v8 = 9;
  }

  if (a3 != 17)
  {
    v8 = a3;
  }

  if (a3 != 16)
  {
    v7 = v8;
  }

  if (a3 != 15)
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

  v11 = 6;
  if (v5 == 1)
  {
    v11 = 7;
  }

  if (a3 != 14)
  {
    v11 = a3;
  }

  if (a3 != 13)
  {
    v10 = v11;
  }

  if (a3 != 12)
  {
    v9 = v10;
  }

  if (a3 <= 14)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)contentModeForPosition:(int64_t)a3 defaultMode:(int64_t)a4
{
  if ((a3 - 1) >= 9)
  {
    return a4;
  }

  else
  {
    return a3 + 3;
  }
}

+ (BOOL)_cornerRadiiWithBorderRadius:(id)a3 cornerRadii:(TVCornerRadii *)a4 imageWidth:(double)a5 imageTreatmentValue:(id)a6 circle:(BOOL *)a7
{
  v12 = a3;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  if (![a1 _cornerRadiiFromImgTreatmentValue:a6 width:&v23 cornerRadii:&v25 circle:a5] || v12 && !v25)
  {
    v13 = [v12 namedStyle];

    if (v13)
    {
      v14 = [v12 namedStyle];
      v15 = [a1 _cornerRadiiFromImgTreatmentValue:v14 width:&v23 cornerRadii:&v25 circle:a5];

      if (!a4)
      {
        goto LABEL_12;
      }

LABEL_10:
      if (v15)
      {
        v20 = v24;
        *&a4->topLeft = v23;
        *&a4->bottomLeft = v20;
      }

      goto LABEL_12;
    }

    if (!v12)
    {
      LOBYTE(v15) = 0;
      goto LABEL_16;
    }

    [v12 cornerRadiiValue];
    *&v23 = v16;
    *(&v23 + 1) = v17;
    *&v24 = v18;
    *(&v24 + 1) = v19;
  }

  v15 = 1;
  if (a4)
  {
    goto LABEL_10;
  }

LABEL_12:
  v21 = v15 ^ 1;
  if (!a7)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *a7 = v25;
    LOBYTE(v15) = 1;
  }

LABEL_16:

  return v15;
}

+ (id)_placeholderImageForValue:(id)a3 userInterfaceStyle:(int64_t)a4 withCornerRadii:(TVCornerRadii)a5 andScaledSize:(CGSize)a6
{
  v7 = [a3 lowercaseString];
  if ([v7 isEqualToString:@"movie"])
  {
    v8 = @"PreloadAsset-Movie";
    v9 = @"PreloadAsset-Dark-Movie";
  }

  else if ([v7 isEqualToString:@"tv"])
  {
    v8 = @"PreloadAsset-TV";
    v9 = @"PreloadAsset-Dark-TV";
  }

  else if ([v7 isEqualToString:@"music"])
  {
    v8 = @"PreloadAsset-Music";
    v9 = @"PreloadAsset-Dark-Music";
  }

  else if ([v7 isEqualToString:@"podcast"])
  {
    v8 = @"PreloadAsset-Podcast";
    v9 = @"PreloadAsset-Dark-Podcast";
  }

  else if ([v7 isEqualToString:@"icloud"])
  {
    v8 = @"PreloadAsset-iCloud";
    v9 = @"PreloadAsset-Dark-iCloud";
  }

  else if ([v7 isEqualToString:@"monogram"])
  {
    v8 = @"PreloadAsset-Monogram";
    v9 = @"PreloadAsset-Dark-Monogram";
  }

  else if ([v7 isEqualToString:@"flowcase"])
  {
    v8 = @"PreloadAsset-GenericFlowcase";
    v9 = @"PreloadAsset-Dark-GenericFlowcase";
  }

  else if ([v7 isEqualToString:@"16x9"])
  {
    v8 = @"PreloadAsset-Generic16x9";
    v9 = @"PreloadAsset-Dark-Generic16x9";
  }

  else if ([v7 isEqualToString:@"tv16x9"])
  {
    v8 = @"PreloadAsset-TV16x9";
    v9 = @"PreloadAsset-Dark-TV16x9";
  }

  else if ([v7 isEqualToString:@"movie16x9"])
  {
    v8 = @"PreloadAsset-Movie16x9";
    v9 = @"PreloadAsset-Dark-Movie16x9";
  }

  else
  {
    if (![v7 isEqualToString:@"generic"])
    {
      v12 = 0;
      goto LABEL_34;
    }

    v8 = @"PreloadAsset-Generic";
    v9 = @"PreloadAsset-Dark-Generic";
  }

  if (a4 == 2)
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

+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)a3
{
  if (a3 == 2)
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

+ (id)_defaultPlaceholderImageForUserInterfaceStyle:(int64_t)a3 withCornerRadii:(TVCornerRadii)a4 andSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  bottomRight = a4.bottomRight;
  bottomLeft = a4.bottomLeft;
  topRight = a4.topRight;
  topLeft = a4.topLeft;
  if (_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____once != -1)
  {
    +[TVMLUtilities _defaultPlaceholderImageForUserInterfaceStyle:withCornerRadii:andSize:];
  }

  v12 = MEMORY[0x277CCACA8];
  v25.width = width;
  v25.height = height;
  v13 = NSStringFromCGSize(v25);
  v14 = v13;
  if (a3 != 2)
  {
    v15 = [v12 stringWithFormat:@"placeholder-light-%@-%0.2f-%0.2f-%0.2f-%0.2f", v13, *&topRight, *&bottomRight, *&bottomLeft, *&topLeft];

    v16 = [_defaultPlaceholderImageForUserInterfaceStyle_withCornerRadii_andSize____placeholderRounedImageCache objectForKey:v15];
    if (!v16)
    {
      v17 = [TVCornerUtilities createPathForRadii:topLeft inRect:topRight, bottomLeft, bottomRight, 0.0, 0.0, width, height];
      v27.width = width;
      v27.height = height;
      UIGraphicsBeginImageContext(v27);
      v18 = [MEMORY[0x277D75208] bezierPathWithCGPath:v17];
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

  v17 = [TVCornerUtilities createPathForRadii:topLeft inRect:topRight, bottomLeft, bottomRight, 0.0, 0.0, width, height];
  v26.width = width;
  v26.height = height;
  UIGraphicsBeginImageContext(v26);
  v18 = [MEMORY[0x277D75208] bezierPathWithCGPath:v17];
  v19 = MEMORY[0x277D75348];
  v20 = 0.11372549;
LABEL_9:
  v22 = [v19 colorWithRed:v20 green:v20 blue:v20 alpha:1.0];
  [v22 setFill];

  [v18 fillWithBlendMode:17 alpha:1.0];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CGPathRelease(v17);
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

+ (id)_placeholderImageForViewElement:(id)a3 imageLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 style];
  v9 = [v8 valueForStyle:@"tv-placeholder"];

  v10 = [v7 appDocument];

  v11 = [v10 templateElement];

  v12 = [a1 interfaceStyleForTemplateElement:v11];
  if ([v9 isEqualToString:@"none"])
  {
    v13 = 0;
    goto LABEL_13;
  }

  if ([v9 length])
  {
    v13 = [a1 _placeholderImageForValue:v9 userInterfaceStyle:v12];
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v14 imageForResource:v9];

    if (!v6)
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
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    goto LABEL_11;
  }

  v15 = [v6 placeholderArtworkName];

  if (v15)
  {
    v16 = [v6 placeholderArtworkName];
    v17 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v17 imageForResource:v16];

    goto LABEL_11;
  }

LABEL_12:
  v13 = [a1 _defaultPlaceholderImageForUserInterfaceStyle:v12];
LABEL_13:

  return v13;
}

+ (id)_placeholderImageForViewElement:(id)a3 withImageLayout:(id)a4 cornerRadii:(TVCornerRadii)a5 andScaledSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topRight = a5.topRight;
  topLeft = a5.topLeft;
  v14 = a3;
  v15 = a4;
  v16 = [v14 style];
  v17 = [v16 valueForStyle:@"tv-placeholder"];

  v18 = [v14 appDocument];
  v19 = [v18 templateElement];

  v20 = [a1 interfaceStyleForTemplateElement:v19];
  if ([v17 isEqualToString:@"none"])
  {
    v21 = 0;
    goto LABEL_12;
  }

  if ([v17 length])
  {
    v21 = [a1 _placeholderImageForValue:v17 userInterfaceStyle:v20 withCornerRadii:topLeft andScaledSize:{topRight, bottomLeft, bottomRight, width, height}];
    if (!v15)
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
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = [v15 placeholderArtworkName];

  if (v22)
  {
    v21 = [a1 _placeholderImageForViewElement:v14 imageLayout:v15];
    goto LABEL_10;
  }

LABEL_11:
  v21 = [a1 _defaultPlaceholderImageForUserInterfaceStyle:v20 withCornerRadii:topLeft andSize:{topRight, bottomLeft, bottomRight, width, height}];
LABEL_12:

  return v21;
}

+ (void)disassociateIKViewElementsRecursivelyFromView:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 tv_setAssociatedIKViewElement:0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        [a1 disassociateIKViewElementsRecursivelyFromView:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
    v10 = [v4 components];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
            objc_enumerationMutation(v10);
          }

          [a1 disassociateIKViewElementsRecursivelyFromView:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

+ (BOOL)isFlowcaseAtTopOfStackFromElement:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 appDocument];
  v5 = [v4 templateElement];
  v6 = [v5 tv_elementType];

  if (v6 == 74)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v3 appDocument];
    v8 = [v7 templateElement];
    v9 = [v8 children];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        if ([v14 tv_elementType] == 12)
        {
          break;
        }

        if ([v14 tv_elementType] == 10)
        {
          v16 = [v14 children];
          v17 = [v16 firstObject];

          v15 = [v17 tv_elementType] == 9 || objc_msgSend(v17, "tv_elementType") == 12;
          goto LABEL_18;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

+ (id)_mobileGestaltStringForKey:(__CFString *)a3
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

+ (BOOL)isAXSmallEnabled:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v4 = v7;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76818]) == NSOrderedDescending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D767F8]) == NSOrderedAscending;

  return v8;
}

+ (BOOL)isAXLargeEnabled:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || [v3 isEqual:*MEMORY[0x277D76860]])
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v4 = v7;
  }

  v8 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending;

  return v8;
}

+ (BOOL)_isOSFeatureEnabled:(id)a3
{
  v3 = a3;
  if (![v3 containsString:@"solarium"])
  {
    goto LABEL_7;
  }

  if (_isOSFeatureEnabled__onceToken != -1)
  {
    +[TVMLUtilities _isOSFeatureEnabled:];
  }

  if (_isOSFeatureEnabled__isEntitled == 1)
  {
    if ([v3 isEqualToString:@"solarium-metrics"])
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