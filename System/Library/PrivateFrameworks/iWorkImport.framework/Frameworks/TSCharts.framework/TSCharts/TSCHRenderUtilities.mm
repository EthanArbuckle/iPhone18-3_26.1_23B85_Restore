@interface TSCHRenderUtilities
+ ($D90E00C64D120740B22FC651090C7702)barElementsRendererValueRangeForModelCache:(SEL)a3 groupIndex:(id)a4;
+ (BOOL)centerPointForSeries:(id)a3 groupIndex:(unint64_t)a4 frame:(CGRect)a5 point:(CGPoint *)a6 nullsUseIntercept:(BOOL)a7;
+ (BOOL)strokeEnabledForRenderingForAxis:(id)a3 chart:(id)a4;
+ (CGAffineTransform)spokeTransformWithUnitCircleOffsetAngleInDegrees:(SEL)a3 chartBodySize:(double)a4 chartInfo:(CGSize)a5;
+ (CGColor)newLightenedColor:(CGColor *)a3 byPercent:(double)a4;
+ (CGColor)subSelectionKnobFillColor;
+ (CGColor)subSelectionKnobStrokeColor;
+ (CGImage)newImageFromFills:(id)a3 size:(CGSize)a4 spaceBetween:(CGSize)a5 scale:(double)a6 borderColor:(id)a7 outFillRects:(CGRect *)a8;
+ (CGLayer)newCGLayerForUserSpaceRect:(CGRect)a3 inContext:(CGContext *)a4 outUserSpaceLayerBounds:(CGRect *)a5;
+ (CGPath)newPolarAxisShapePathWithRect:(CGRect)a3 unitSpaceValue:(double)a4 numberOfValues:(unint64_t)a5 elliptical:(BOOL)a6 rotation:(double)a7;
+ (CGPath)newRegularPolygonPathWithEdges:(unint64_t)a3 origin:(CGPoint)a4 size:(CGSize)a5 rotation:(double)a6;
+ (CGPath)newStrokedPathFromPath:(CGPath *)a3 stroke:(id)a4 cap:(int)a5;
+ (CGPath)p_newCirclePath:(CGPoint)a3 width:(double)height pathLocation:(int64_t)a5 stroke:(id)a6;
+ (CGPath)p_newCrossPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6;
+ (CGPath)p_newDiamondPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6;
+ (CGPath)p_newPathForSymbol:(int)a3 context:(CGContext *)a4 at:(CGPoint)a5 width:(double)a6 pathLocation:(int64_t)a7 stroke:(id)a8;
+ (CGPath)p_newPlusPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6 context:(CGContext *)a7;
+ (CGPath)p_newSquarePath:(CGPoint)a3 width:(double)height pathLocation:(int64_t)a5 stroke:(id)a6 context:(CGContext *)a7;
+ (CGPath)p_newTrianglePath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6;
+ (CGPath)p_newYieldPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6;
+ (CGPath)p_regularPolygonOrLinePathWithEdges:(unint64_t)a3 sourceRect:(CGRect)a4;
+ (CGPoint)outerEndOfSpokeWithUnitCircleOffsetAngleInDegrees:(double)a3 chartBodySize:(CGSize)a4 chartInfo:(id)a5;
+ (CGRect)integralFillRenderingRectFromElementRect:(CGRect)a3;
+ (CGRect)labelRectFromClipRect:(CGRect)a3 elementSize:(CGSize)a4;
+ (CGRect)scaleRect:(CGRect)a3 toFit:(CGRect)a4;
+ (CGSize)maxSizeWithCount:(unint64_t)a3 initialSize:(CGSize)a4 sizeGeneratorBlock:(id)a5;
+ (id)commonAncestorLayerForLayer:(id)a3 withLayer:(id)a4;
+ (id)lightenFillOrStroke:(id)a3 byPercent:(double)a4;
+ (id)p_fillToRenderWithFill:(id)a3 inContext:(CGContext *)a4;
+ (id)printCGPath:(CGPath *)a3;
+ (void)addTextSubselectionHalosToArray:(id)a3 rect:(CGRect)a4 transform:(CGAffineTransform *)a5;
+ (void)addTextSubselectionKnobsToArray:(id)a3 rect:(CGRect)a4 transform:(CGAffineTransform *)a5;
+ (void)applyHDRHeadroomFromCGLayer:(CGLayer *)a3 toContext:(CGContext *)a4;
+ (void)debugRenderLayoutRect:(CGRect)a3 inContext:(CGContext *)a4 withColor:(id)a5 alpha:(double)a6 fillRect:(BOOL)a7;
+ (void)drawCGLayer:(CGLayer *)a3 inContext:(CGContext *)a4 rect:(CGRect)a5;
+ (void)drawFill:(id)a3 inContext:(CGContext *)a4 frame:(CGRect)a5;
+ (void)drawFill:(id)a3 inContext:(CGContext *)a4 path:(CGPath *)a5;
+ (void)drawImageFill:(id)a3 inContext:(CGContext *)a4 path:(CGPath *)a5 withinBounds:(CGRect)a6;
+ (void)drawSymbol:(int)a3 inContext:(CGContext *)a4 at:(CGPoint)a5 width:(double)a6 fill:(id)a7 stroke:(id)a8;
+ (void)updateStackRectsDictionary:(id)a3 withElementRect:(CGRect)a4 groupIndex:(unint64_t)a5 barModelCache:(id)a6;
@end

@implementation TSCHRenderUtilities

+ (id)printCGPath:(CGPath *)a3
{
  if (a3)
  {
    v7 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v3, v4, v5);
    objc_msgSend_appendFormat_(v7, v8, v9, v10, v11, @"Path: %p {\n", a3);
    CGPathApply(a3, v7, sub_27629E8F4);
    objc_msgSend_appendString_(v7, v12, v13, v14, v15, @"}\n");
    v20 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v7);
  }

  else
  {
    v20 = &stru_288528678;
  }

  return v20;
}

+ (void)drawSymbol:(int)a3 inContext:(CGContext *)a4 at:(CGPoint)a5 width:(double)a6 fill:(id)a7 stroke:(id)a8
{
  y = a5.y;
  x = a5.x;
  v13 = *&a3;
  v29 = a7;
  v16 = a8;
  if (v13 && v29 | v16)
  {
    if (v29)
    {
      v20 = objc_msgSend_p_newPathForSymbol_context_at_width_pathLocation_stroke_(a1, v15, x, y, a6, v13, a4, 2, v16);
      if (v20)
      {
        v21 = v20;
        objc_msgSend_drawFill_inContext_path_(a1, v15, v17, v18, v19, v29, a4, v20);
        CGPathRelease(v21);
      }
    }

    if (v16)
    {
      if (objc_msgSend_shouldRender(v16, v15, v17, v18, v19))
      {
        v23 = objc_msgSend_p_newPathForSymbol_context_at_width_pathLocation_stroke_(a1, v22, x, y, a6, v13, a4, 2, 0);
        if (v23)
        {
          v28 = v23;
          objc_msgSend_applyToContext_(v16, v24, v25, v26, v27, a4);
          CGContextAddPathSafe();
          CGContextStrokePath(a4);
          CGPathRelease(v28);
        }
      }
    }
  }
}

+ (id)p_fillToRenderWithFill:(id)a3 inContext:(CGContext *)a4
{
  v4 = a3;
  v9 = v4;
  if (TSDCGContextHasBackgroundsSuppressed())
  {
    if (objc_msgSend_isClear(v4, v5, v6, v7, v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v10, v11, v12, v13);
    }
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_imageData(v14, v15, v16, v17, v18);
    if (objc_msgSend_needsDownload(v20, v21, v22, v23, v24))
    {
      v29 = objc_msgSend_fallbackColor(v20, v25, v26, v27, v28);

      if (!v29)
      {
        v34 = MEMORY[0x277D801F8];
        v35 = objc_msgSend_lightGrayColor(MEMORY[0x277D81180], v30, v31, v32, v33);
        v40 = objc_msgSend_colorWithColor_(v34, v36, v37, v38, v39, v35);

        TSDCGContextAddDataRenderedNeedsDownload();
        v9 = v40;
      }
    }
  }

  return v9;
}

+ (void)drawFill:(id)a3 inContext:(CGContext *)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v21 = a3;
  if ((objc_msgSend_hasNoFill_(TSCHStyleUtilities, v11, v12, v13, v14) & 1) == 0)
  {
    v19 = objc_msgSend_p_fillToRenderWithFill_inContext_(a1, v15, v16, v17, v18, v21, a4);
    objc_msgSend_paintRect_inContext_(v19, v20, x, y, width, a4, height);
  }
}

+ (void)drawFill:(id)a3 inContext:(CGContext *)a4 path:(CGPath *)a5
{
  v17 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_msgSend_p_fillToRenderWithFill_inContext_(a1, v8, v9, v10, v11, v17, a4);
    objc_msgSend_paintPath_inContext_(v12, v13, v14, v15, v16, a5, a4);
  }
}

+ (void)drawImageFill:(id)a3 inContext:(CGContext *)a4 path:(CGPath *)a5 withinBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v24 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = objc_msgSend_p_fillToRenderWithFill_inContext_(a1, v13, v14, v15, v16, v24, a4);
    objc_opt_class();
    v18 = TSUDynamicCast();
    v23 = v18;
    if (v18)
    {
      objc_msgSend_drawFillInContext_rect_clippingToPath_(v18, v19, x, y, width, a4, a5, height);
    }

    else
    {
      objc_msgSend_paintPath_inContext_(v17, v19, v20, v21, v22, a5, a4);
    }
  }

  MEMORY[0x2821F9730]();
}

+ (BOOL)centerPointForSeries:(id)a3 groupIndex:(unint64_t)a4 frame:(CGRect)a5 point:(CGPoint *)a6 nullsUseIntercept:(BOOL)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v18 = objc_msgSend_axisForAxisType_(v13, v14, v15, v16, v17, 1);
  v23 = v18;
  if (v18)
  {
    objc_msgSend_unitSpaceCenterValueForSeries_groupIndex_(v18, v19, v20, v21, v22, v13, a4);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      TSUClamp();
    }

    v24 = x + v20 * width;
  }

  else
  {
    v24 = NAN;
  }

  v25 = objc_msgSend_axisForAxisType_(v13, v19, v20, v21, v22, 2);
  v30 = v25;
  if (v25)
  {
    objc_msgSend_unitSpaceValueForSeries_groupIndex_(v25, v26, v27, v28, v29, v13, a4);
    v32 = fabs(v31) != INFINITY;
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      TSUClamp();
    }

    v33 = y + height - v31 * height;
    if (!v32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v33 = NAN;
  }

  if (fabs(v24) != INFINITY)
  {
    LOBYTE(v32) = fabs(v33) != INFINITY;
    if (a6)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  LOBYTE(v32) = 0;
LABEL_15:
  if (a6)
  {
LABEL_16:
    a6->x = v24;
    a6->y = v33;
  }

LABEL_17:

  return v32;
}

+ (CGRect)integralFillRenderingRectFromElementRect:(CGRect)a3
{
  v11 = CGRectIntegral(a3);
  v12 = CGRectInset(v11, -2.0, -2.0);
  x = v12.origin.x;
  y = v12.origin.y;
  sub_27628CEF8();
  v6 = v5;
  v8 = v7;
  v9 = x;
  v10 = y;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (CGRect)scaleRect:(CGRect)a3 toFit:(CGRect)a4
{
  v4 = fmin(a4.size.width / a3.size.width, a4.size.height / a3.size.height);
  v5 = a3.size.height * v4;
  v6 = a3.size.width * v4;
  v7 = (a4.size.width - v6) * 0.5;
  v8 = (a4.size.height - v5) * 0.5;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGColor)newLightenedColor:(CGColor *)a3 byPercent:(double)a4
{
  v5 = a3;
  v16 = *MEMORY[0x277D85DE8];
  CGColorRetain(a3);
  ColorSpace = CGColorGetColorSpace(v5);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelCMYK)
  {
    CGColorGetComponents(v5);
    *components = 0u;
    v14 = 0;
    TSUCMYKToRGB();
    Alpha = CGColorGetAlpha(v5);
    CGColorRelease(v5);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v5 = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
    ColorSpace = CGColorGetColorSpace(v5);
  }

  if (TSUHSBFromCGColorRef())
  {
    CGColorGetColorSpace(v5);
    v8 = TSUCreateCGColorFromHSBInColorSpace();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    if (DeviceGray == ColorSpace)
    {
      v10 = CGColorGetComponents(v5);
      v11 = v10[1];
      components[0] = *v10 + (1.0 - *v10) * (1.0 - a4);
      components[1] = v11;
      v8 = CGColorCreate(ColorSpace, components);
    }

    else
    {
      v8 = 0;
    }

    CGColorSpaceRelease(DeviceGray);
  }

  CGColorRelease(v5);
  return v8;
}

+ (id)lightenFillOrStroke:(id)a3 byPercent:(double)a4
{
  v6 = a3;
  if (a4 == 1.0)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    v12 = objc_msgSend_CGColor(v7, v8, v9, v10, v11);
    v16 = objc_msgSend_newLightenedColor_byPercent_(a1, v13, a4, v14, v15, v12);
    v21 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D801F8], v17, v18, v19, v20, v16);

    CGColorRelease(v16);
    if (v21)
    {
      v22 = v21;

      v6 = v22;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v6;
    v29 = objc_msgSend_tintColor(v23, v24, v25, v26, v27);
    if (!v29)
    {
      v29 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v28, 1.0, 1.0, 1.0, 0.0);
    }

    objc_msgSend_CGColor(v29, v28, v30, v31, v32, 0);
    v6 = v23;
    if (!TSUHSBFromCGColorRef())
    {
      goto LABEL_12;
    }

    v34 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D81180], v33, 0.0, 0.0, 0.0, v77 + (1.0 - v77) * (1.0 - a4));
    v6 = objc_msgSend_mutableCopy(v23, v35, v36, v37, v38);

    objc_msgSend_setTintColor_(v6, v39, v40, v41, v42, v34);
LABEL_11:

LABEL_12:
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v6;
    v48 = objc_msgSend_color(v29, v44, v45, v46, v47);
    v6 = v29;
    if (!v48)
    {
      goto LABEL_13;
    }

    v53 = v48;
    v54 = objc_msgSend_CGColor(v48, v49, v50, v51, v52);
    v58 = objc_msgSend_newLightenedColor_byPercent_(a1, v55, a4, v56, v57, v54);
    v23 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v59, v60, v61, v62, v58);

    CGColorRelease(v58);
    v6 = v29;
    if (!v23)
    {
      goto LABEL_13;
    }

    v67 = objc_msgSend_mutableCopy(v29, v63, v64, v65, v66);
    v34 = v67;
    v6 = v29;
    if (v67)
    {
      objc_msgSend_setColor_(v67, v68, v69, v70, v71, v23);
      v6 = v34;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v73 = a4;
    v76 = objc_msgSend_lightenByPercent_(v6, v72, v73, v74, v75);

    v6 = v76;
  }

LABEL_14:

  return v6;
}

+ (CGPath)p_newPathForSymbol:(int)a3 context:(CGContext *)a4 at:(CGPoint)a5 width:(double)a6 pathLocation:(int64_t)a7 stroke:(id)a8
{
  y = a5.y;
  x = a5.x;
  v16 = a8;
  v17 = 0;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v18 = objc_msgSend_p_newCirclePath_width_pathLocation_stroke_(a1, v15, x, y, a6, a7, v16);
        goto LABEL_16;
      case 2:
        v18 = objc_msgSend_p_newTrianglePath_width_pathLocation_stroke_(a1, v15, x, y, a6, a7, v16);
        goto LABEL_16;
      case 3:
        v18 = objc_msgSend_p_newYieldPath_width_pathLocation_stroke_(a1, v15, x, y, a6, a7, v16);
LABEL_16:
        v17 = v18;
        break;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v18 = objc_msgSend_p_newSquarePath_width_pathLocation_stroke_context_(a1, v15, x, y, a6, a7, v16, a4);
      }

      else
      {
        v18 = objc_msgSend_p_newDiamondPath_width_pathLocation_stroke_(a1, v15, x, y, a6, a7, v16);
      }

      goto LABEL_16;
    }

    if (a3 == 6)
    {
      v18 = objc_msgSend_p_newCrossPath_width_pathLocation_stroke_(a1, v15, x, y, a6, a7, v16);
      goto LABEL_16;
    }

    if (a3 == 7)
    {
      v18 = objc_msgSend_p_newPlusPath_width_pathLocation_stroke_context_(a1, v15, x, y, a6, a7, v16, a4);
      goto LABEL_16;
    }
  }

  return v17;
}

+ (CGPath)p_newCirclePath:(CGPoint)a3 width:(double)height pathLocation:(int64_t)a5 stroke:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    objc_msgSend_width(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = 0.5;
  v18 = x - height * 0.5;
  v19 = y - height * 0.5;
  if (a5 != 1)
  {
    if (a5 != 3)
    {
      width = height;
      goto LABEL_9;
    }

    v17 = -0.47;
  }

  v20 = v16 * v17;
  v24.origin.x = v18;
  v24.origin.y = v19;
  v24.size.width = height;
  v24.size.height = height;
  v25 = CGRectInset(v24, v20, v20);
  width = v25.size.width;
  height = v25.size.height;
LABEL_9:
  Mutable = 0;
  if (width >= 0.0 && height >= 0.0)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddEllipseInRectSafe();
  }

  return Mutable;
}

+ (CGPath)p_newTrianglePath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    objc_msgSend_width(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = 0.5;
  v18 = y - a4 * 0.5 + a4 * 0.866025403 * 0.5 - a4 * 0.5;
  v19 = a4 * 0.866025403 + v18;
  v20 = x - a4 * 0.5;
  v21 = x + a4 * 0.5;
  if (a5 != 1)
  {
    if (a5 != 3)
    {
      goto LABEL_8;
    }

    v17 = -0.47;
  }

  v22 = v16 * v17;
  v18 = v18 + v22 + v22;
  v19 = v19 - v22;
  v23 = v22 / 0.577350269;
  v20 = v20 + v23;
  v21 = v21 - v23;
LABEL_8:
  if (v19 < v18 || v21 < v20)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (CGPath)p_newYieldPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    objc_msgSend_width(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = a4 * 0.5 + y - a4 * 0.5 + a4 * 0.866025403 * 0.5;
  v18 = v17 - a4 * 0.866025403;
  v19 = x - a4 * 0.5;
  v20 = x + a4 * 0.5;
  if (a5 == 3)
  {
    v23 = v16 * 0.47;
    v18 = v18 - v23;
    v17 = v17 + v23 + v23;
    v24 = v23 / 0.577350269;
    v19 = v19 - v24;
    v20 = v20 + v24;
  }

  else if (a5 == 1)
  {
    v21 = v16 * 0.5;
    v18 = v18 + v21;
    v17 = v17 - (v21 + v21);
    v22 = v21 / 0.577350269;
    v19 = v19 + v22;
    v20 = v20 - v22;
  }

  if (v17 < v18 || v20 < v19)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (CGPath)p_newSquarePath:(CGPoint)a3 width:(double)height pathLocation:(int64_t)a5 stroke:(id)a6 context:(CGContext *)a7
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v16 = v11;
  if (v11)
  {
    objc_msgSend_width(v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = 0.5;
  v19 = x - height * 0.5;
  v20 = y - height * 0.5;
  if (a5 != 1)
  {
    if (a5 != 3)
    {
      width = height;
      goto LABEL_9;
    }

    v18 = -0.47;
  }

  v21 = v17 * v18;
  v25.origin.x = v19;
  v25.origin.y = v20;
  v25.size.width = height;
  v25.size.height = height;
  v26 = CGRectInset(v25, v21, v21);
  width = v26.size.width;
  height = v26.size.height;
LABEL_9:
  Mutable = 0;
  if (width >= 0.0 && height >= 0.0)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddRectSafe();
  }

  return Mutable;
}

+ (CGPath)p_newDiamondPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    objc_msgSend_width(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = a4 / 1.41421356;
  v18 = y + a4 / 1.41421356;
  v19 = y - a4 / 1.41421356;
  v20 = x - a4 / 1.41421356;
  v21 = x + v17;
  if (a5 == 3)
  {
    v23 = v16 * 0.47 / 0.707106781;
    v19 = v19 - v23;
    v18 = v18 + v23;
    v20 = v20 - v23;
    v21 = v21 + v23;
  }

  else if (a5 == 1)
  {
    v22 = v16 * 0.5 / 0.707106781;
    v19 = v19 + v22;
    v18 = v18 - v22;
    v20 = v20 + v22;
    v21 = v21 - v22;
  }

  if (v18 < v19 || v21 < v20)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

+ (CGPath)p_newCrossPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    objc_msgSend_width(v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = 0.0;
  }

  if (a5 == 1)
  {
    v17 = x;
  }

  else
  {
    v17 = x + a4 * 0.5;
  }

  if (a5 == 1)
  {
    v18 = x;
  }

  else
  {
    v18 = x - a4 * 0.5;
  }

  if (a5 == 1)
  {
    v19 = y;
  }

  else
  {
    v19 = y - a4 * 0.5;
  }

  if (a5 == 1)
  {
    v20 = y;
  }

  else
  {
    v20 = y + a4 * 0.5;
  }

  if (v20 > v19 && v17 > v18)
  {
    if (a5 == 3 && v16 > 0.0)
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
    }

    else
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathMoveToPointSafe();
    }

    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

+ (CGPath)p_newPlusPath:(CGPoint)a3 width:(double)a4 pathLocation:(int64_t)a5 stroke:(id)a6 context:(CGContext *)a7
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v16 = v11;
  if (v11)
  {
    objc_msgSend_width(v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = 0.0;
  }

  if (a5 == 1)
  {
    v18 = x;
  }

  else
  {
    v18 = x + a4 * 0.5;
  }

  if (a5 == 1)
  {
    v19 = x;
  }

  else
  {
    v19 = x - a4 * 0.5;
  }

  if (a5 == 1)
  {
    v20 = y;
  }

  else
  {
    v20 = y - a4 * 0.5;
  }

  if (a5 == 1)
  {
    v21 = y;
  }

  else
  {
    v21 = y + a4 * 0.5;
  }

  if (v21 > v20 && v18 > v19)
  {
    if (a5 == 3 && v17 > 0.0)
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
    }

    else
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathMoveToPointSafe();
    }

    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

+ (void)addTextSubselectionKnobsToArray:(id)a3 rect:(CGRect)a4 transform:(CGAffineTransform *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35 = a3;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (!CGRectIsNull(v37))
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v10 = CGRectGetMinX(v38) + -1.0;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v11 = CGRectGetMidY(v39) + 1.0;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v12 = CGRectGetMaxX(v40) + 1.0;
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    MidY = CGRectGetMidY(v41);
    b = a5->b;
    c = a5->c;
    d = a5->d;
    tx = a5->tx;
    ty = a5->ty;
    v19 = tx + (MidY + 1.0) * c + a5->a * v12;
    v20 = (MidY + 1.0) * d + b * v12;
    v21 = ty + v20;
    v23 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v22, tx + v11 * c + a5->a * v10, ty + v11 * d + b * v10, v20);
    objc_msgSend_addObject_(v35, v24, v25, v26, v27, v23);

    v30 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v28, v19, v21, v29);
    objc_msgSend_addObject_(v35, v31, v32, v33, v34, v30);
  }
}

+ (void)addTextSubselectionHalosToArray:(id)a3 rect:(CGRect)a4 transform:(CGAffineTransform *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsNull(v22))
  {
    v11 = x + -1.0;
    v12 = width + 2.0;
    v13 = *&a5->c;
    *&v21.a = *&a5->a;
    *&v21.c = v13;
    *&v21.tx = *&a5->tx;
    v14 = y;
    *&v13 = height;
    v23 = CGRectApplyAffineTransform(*&v11, &v21);
    v16 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v15, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
    objc_msgSend_addObject_(v10, v17, v18, v19, v20, v16);
  }
}

+ (CGRect)labelRectFromClipRect:(CGRect)a3 elementSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGPath)newStrokedPathFromPath:(CGPath *)a3 stroke:(id)a4 cap:(int)a5
{
  v5 = a4;
  if (objc_msgSend_shouldRender(v5, v6, v7, v8, v9))
  {
    objc_msgSend_width(v5, v10, 4.0, v11, v12);
  }

  CopyByStrokingPathSafe = CGPathCreateCopyByStrokingPathSafe();

  return CopyByStrokingPathSafe;
}

+ (CGImage)newImageFromFills:(id)a3 size:(CGSize)a4 spaceBetween:(CGSize)a5 scale:(double)a6 borderColor:(id)a7 outFillRects:(CGRect *)a8
{
  height = a5.height;
  width = a5.width;
  v13 = a4.height;
  v14 = a4.width;
  v15 = a3;
  v16 = a7;
  v17 = TSDBitmapContextCreate();
  TSDSetCGContextInfo();
  CGContextSaveGState(v17);
  CGContextScaleCTM(v17, a6, a6);
  v51 = v15;
  v22 = objc_msgSend_count(v15, v18, v19, v20, v21);
  v24 = v22;
  if (v22 <= 3)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = v25 - 1;
  if (((v25 - 1) & v22) != 0)
  {
    v27 = (v22 >> (v22 > 3)) + 1;
  }

  else
  {
    v27 = v22 >> (v22 > 3);
  }

  if (a8)
  {
    *a8 = malloc_type_malloc(32 * v22, 0x1000040E0EAB150uLL);
  }

  if (v24)
  {
    v28 = 0;
    v29 = 0;
    v30 = v25;
    v31 = v27 - 1;
    v32 = (v14 - (v27 - 1) * width) / v27;
    v33 = (v13 - v26 * height) / v30;
    v34 = floor(v32);
    v35 = floor(v33);
    v36 = height + v35;
    v37 = width + v34;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(v51, v23, v33, v30, v32, v29);
      v42 = v40;
      if (a8)
      {
        v43 = &(*a8)[v28];
        v43->origin.x = v39;
        v43->origin.y = v38;
        v43->size.width = v34;
        v43->size.height = v35;
      }

      objc_msgSend_drawSwatchInRect_inContext_(v40, v41, v39, v38, v34, v17, v35);
      if (v29 % v27 == v31)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = v37 + v39;
      }

      if (v29 % v27 == v31)
      {
        v46 = v36 + v38;
      }

      else
      {
        v46 = v38;
      }

      if (v16)
      {
        v47 = objc_msgSend_CGColor(v16, v44, v36 + v38, v37 + v39, 0.0);
        CGContextSetStrokeColorWithColor(v17, v47);
        v52.origin.x = v39;
        v52.origin.y = v38;
        v52.size.width = v34;
        v52.size.height = v35;
        CGRectInset(v52, 0.5, 0.5);
        v48 = CGPathCreateWithRectSafe();
        CGContextAddPathSafe();
        CGContextStrokePath(v17);
        CGPathRelease(v48);
      }

      ++v29;
      ++v28;
      v38 = v46;
      v39 = v45;
    }

    while (v24 != v29);
  }

  CGContextRestoreGState(v17);
  Image = CGBitmapContextCreateImage(v17);
  TSDClearCGContextInfo();
  CGContextRelease(v17);

  return Image;
}

+ (CGLayer)newCGLayerForUserSpaceRect:(CGRect)a3 inContext:(CGContext *)a4 outUserSpaceLayerBounds:(CGRect *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v36 = CGContextConvertRectToDeviceSpace(a4, a3);
  sub_27628CEB4(v36.origin.x, v36.origin.y, v36.size.width, v36.size.height);
  v13 = 1.0;
  if (v11 >= 1.0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1.0;
  }

  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  v15 = CGLayerCreateWithContext(a4, *(&v13 - 1), 0);
  v16 = v15;
  if (v15)
  {
    Context = CGLayerGetContext(v15);
    if (Context)
    {
      v18 = Context;
      memset(&v35, 0, sizeof(v35));
      CGContextGetCTM(&v35, a4);
      v34 = v35;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v38 = CGRectApplyAffineTransform(v37, &v34);
      v19 = v38.size.width;
      v20 = v38.size.height;
      v39 = CGContextConvertRectToDeviceSpace(v18, v38);
      v40.origin.x = sub_27628CEB4(v39.origin.x, v39.origin.y, v39.size.width, v39.size.height);
      v41 = CGContextConvertRectToUserSpace(v18, v40);
      v21 = v41.origin.x;
      v22 = v41.origin.y;
      v23 = v41.size.width;
      v24 = v41.size.height;
      v33 = v35;
      CGAffineTransformInvert(&v34, &v33);
      v42.origin.x = v21;
      v42.origin.y = v22;
      v42.size.width = v23;
      v42.size.height = v24;
      v43 = CGRectApplyAffineTransform(v42, &v34);
      v25 = v43.origin.x;
      v26 = v43.origin.y;
      v27 = v43.size.width;
      v28 = v43.size.height;
      v29 = 1.0;
      if (width == 0.0)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = width;
      }

      v31 = v19 / v30;
      if (height != 0.0)
      {
        v29 = height;
      }

      CGContextScaleCTM(v18, v31, v20 / v29);
      CGContextTranslateCTM(v18, -v25, -v26);
      if (a5)
      {
        a5->origin.x = v25;
        a5->origin.y = v26;
        a5->size.width = v27;
        a5->size.height = v28;
      }
    }

    else
    {
      CGLayerRelease(v16);
      return 0;
    }
  }

  return v16;
}

+ ($D90E00C64D120740B22FC651090C7702)barElementsRendererValueRangeForModelCache:(SEL)a3 groupIndex:(id)a4
{
  v7 = a4;
  v58 = objc_msgSend_valueAxis(v7, v8, v9, v10, v11);
  if (!v58)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "+[TSCHRenderUtilities barElementsRendererValueRangeForModelCache:groupIndex:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRenderUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 926, 0, "invalid nil value for '%{public}s'", "valueAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_series(v7, v12, v13, v14, v15);
  v36 = objc_msgSend_seriesIndex(v31, v32, v33, v34, v35);
  v41 = objc_msgSend_seriesType(v31, v37, v38, v39, v40);
  objc_msgSend_unitSpaceValueForSeries_groupIndex_(v58, v42, v43, v44, v45, v31, a5);
  v47 = v46;
  objc_msgSend_unitSpaceIntercept(v7, v48, v46, v49, v50);
  v52 = v51;

  objc_msgSend_beginValueForSeries_groupIndex_unitSpaceIntercept_relativelyPositive_valueAxis_(v41, v53, v52, v54, v55, v36, a5, v47 >= v52, v58);
  *&retstr->var3 = 0;
  retstr->var0 = v56;
  retstr->var1 = v47;
  retstr->var2 = v52;
  retstr->var3 = v47 >= v52;

  return result;
}

+ (void)updateStackRectsDictionary:(id)a3 withElementRect:(CGRect)a4 groupIndex:(unint64_t)a5 barModelCache:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = MEMORY[0x277CCABB0];
  v15 = a6;
  v20 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v17, v18, v19, a5);
  objc_msgSend_barElementsRendererValueRangeForModelCache_groupIndex_(a1, v21, v22, v23, v24, v15, a5);

  if (v47)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(v13, v25, v26, v27, v28, v20);
  v35 = v30;
  if (v30)
  {
    v46 = 0;
    memset(&v45, 0, sizeof(v45));
    objc_msgSend_getValue_(v30, v31, 0.0, v33, v34, &v45);
    v36 = v46;
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v48 = CGRectUnion(v45, v49);
    v43 = v48;
    v44 = v36 | v29;
    objc_msgSend_value_withObjCType_(MEMORY[0x277CCAE60], v37, v48.origin.x, v48.origin.y, v48.size.width, &v43, "{?={CGRect={CGPoint=dd}{CGSize=dd}}Q}");
  }

  else
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = v29;
    objc_msgSend_value_withObjCType_(MEMORY[0x277CCAE60], v31, v32, v33, v34, &v45, "{?={CGRect={CGPoint=dd}{CGSize=dd}}Q}");
  }
  v38 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v13, v39, v40, v41, v42, v38, v20);
}

+ (CGColor)subSelectionKnobFillColor
{
  v5 = objc_msgSend_lightGrayColor(MEMORY[0x277D81180], a2, v2, v3, v4);
  v10 = objc_msgSend_CGColor(v5, v6, v7, v8, v9);

  return v10;
}

+ (CGColor)subSelectionKnobStrokeColor
{
  v5 = objc_msgSend_whiteColor(MEMORY[0x277D81180], a2, v2, v3, v4);
  v10 = objc_msgSend_CGColor(v5, v6, v7, v8, v9);

  return v10;
}

+ (CGSize)maxSizeWithCount:(unint64_t)a3 initialSize:(CGSize)a4 sizeGeneratorBlock:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v13 = a3 / 0x64;
  v14 = a3 % 0x64;
  if (a3 >= 0x64)
  {
    v15 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v8, v10, v11, v12, 16 * v13);
    v16 = v15;
    v21 = objc_msgSend_mutableBytes(v16, v17, v18, v19, v20);
    v22 = (v21 + 8);
    v23 = a3 / 0x64;
    do
    {
      *(v22 - 1) = width;
      *v22 = height;
      v22 += 2;
      --v23;
    }

    while (v23);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2762A0DC0;
    v32[3] = &unk_27A6B7340;
    v33 = v9;
    v34 = v21;
    dispatch_apply(a3 / 0x64, 0, v32);
    v24 = v21 + 8;
    do
    {
      TSUSizeMax();
      width = v25;
      height = v26;
      v24 += 16;
      --v13;
    }

    while (v13);
  }

  if (v14)
  {
    v27 = a3 - v14;
    do
    {
      (*(v9 + 2))(v9, v27);
      TSUSizeMax();
      width = v28;
      height = v29;
      ++v27;
    }

    while (v27 < a3);
  }

  v30 = width;
  v31 = height;
  result.height = v31;
  result.width = v30;
  return result;
}

+ (BOOL)strokeEnabledForRenderingForAxis:(id)a3 chart:(id)a4
{
  v5 = a3;
  v10 = objc_msgSend_intValueForProperty_defaultValue_(a4, v6, v7, v8, v9, 1112, 0);
  v15 = objc_msgSend_intValueForProperty_defaultValue_(v5, v11, v12, v13, v14, 1049, 0);
  v20 = objc_msgSend_axisID(v5, v16, v17, v18, v19);

  v25 = objc_msgSend_type(v20, v21, v22, v23, v24);
  v26 = v15 != 0;
  if (v25 == 6)
  {
    v26 = v10 != 0;
  }

  if ((v25 - 5) >= 2)
  {
    return (v10 | v15) != 0;
  }

  else
  {
    return v26;
  }
}

+ (CGPath)p_regularPolygonOrLinePathWithEdges:(unint64_t)a3 sourceRect:(CGRect)a4
{
  if (a3 < 3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    TSUCenterOfRect();
    Mutable = CGPathCreateMutable();
    if (a3 == 2)
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      CGRectGetMaxY(v24);
    }

    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinY(v25);
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();

    return CFAutorelease(Mutable);
  }

  else
  {
    v5 = objc_msgSend_regularPolygonWithScalar_naturalSize_(MEMORY[0x277D803A0], a2, a3, *(MEMORY[0x277D814E0] + 16), *(MEMORY[0x277D814E0] + 24), a4.size.height);
    v10 = objc_msgSend_bezierPath(v5, v6, v7, v8, v9);
    v11 = v10;
    v16 = objc_msgSend_CGPath(v11, v12, v13, v14, v15);

    return v16;
  }
}

+ (CGPath)newPolarAxisShapePathWithRect:(CGRect)a3 unitSpaceValue:(double)a4 numberOfValues:(unint64_t)a5 elliptical:(BOOL)a6 rotation:(double)a7
{
  v8 = a6;
  TSUMultiplySizeScalar();
  v11 = v10;
  v13 = v12;
  TSURectWithSize();
  TSUCenterRectOverRect();
  if (v8)
  {
    v18 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v14, v15, v16, v17);
    v19 = v18;
    v24 = objc_msgSend_CGPath(v19, v20, v21, v22, v23);
    MutableCopy = CGPathCreateMutableCopy(v24);

    if (!MutableCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    MutableCopy = objc_msgSend_newRegularPolygonPathWithEdges_origin_size_rotation_(TSCHRenderUtilities, v14, v15, v16, v11, a5, v13, a7);
    if (!MutableCopy)
    {
LABEL_5:
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "+[TSCHRenderUtilities newPolarAxisShapePathWithRect:unitSpaceValue:numberOfValues:elliptical:rotation:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHRenderUtilities.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 1074, 0, "invalid nil value for '%{public}s'", "result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }
  }

  return MutableCopy;
}

+ (CGPath)newRegularPolygonPathWithEdges:(unint64_t)a3 origin:(CGPoint)a4 size:(CGSize)a5 rotation:(double)a6
{
  sy = a5.height;
  width = a5.width;
  v28 = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277D814E0];
  v11 = *(MEMORY[0x277D814E0] + 8);
  v13 = *(MEMORY[0x277D814E0] + 16);
  v12 = *(MEMORY[0x277D814E0] + 24);
  TSUCenterOfRect();
  v15 = v14;
  v17 = v16;
  CGAffineTransformMakeTranslation(&v23, -v14, -v16);
  CGAffineTransformMakeRotation(&v24, a6);
  CGAffineTransformMakeTranslation(&v25, v15, v17);
  CGAffineTransformMakeScale(&v26, width, sy);
  CGAffineTransformMakeTranslation(&v27, a4.x, a4.y);
  memset(v22, 0, sizeof(v22));
  sub_27628CF0C(&v23, 5, v22);
  objc_msgSend_p_regularPolygonOrLinePathWithEdges_sourceRect_(a1, v18, v10, v11, v13, a3, v12);
  return CGPathCreateCopyByTransformingPathSafe();
}

+ (CGAffineTransform)spokeTransformWithUnitCircleOffsetAngleInDegrees:(SEL)a3 chartBodySize:(double)a4 chartInfo:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  objc_msgSend_floatValueForProperty_defaultValue_(a6, a3, 0.0, a5.width, a5.height, 1109);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeRotation(&v15, (a4 - (v10 + 90.0)) * 0.0174532925);
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, width * 0.5, height * 0.5);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v15;
  v12 = v14;
  return CGAffineTransformConcat(retstr, &t1, &v12);
}

+ (CGPoint)outerEndOfSpokeWithUnitCircleOffsetAngleInDegrees:(double)a3 chartBodySize:(CGSize)a4 chartInfo:(id)a5
{
  objc_msgSend_spokeTransformWithUnitCircleOffsetAngleInDegrees_chartBodySize_chartInfo_(a1, a2, a3, a4.width, a4.height, a5);
  v5 = vaddq_f64(0, vaddq_f64(0, vmulq_f64(0, 0)));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

+ (void)debugRenderLayoutRect:(CGRect)a3 inContext:(CGContext *)a4 withColor:(id)a5 alpha:(double)a6 fillRect:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a5;
  if (!v14)
  {
    v14 = objc_msgSend_blackColor(MEMORY[0x277D81180], v15, v16, v17, v18);
    v7 = 0;
    a6 = 1.0;
  }

  v38 = v14;
  v19 = objc_msgSend_colorWithAlphaComponent_(v14, v15, a6, v17, v18);
  CGContextSaveGState(a4);
  if (v7)
  {
    v24 = objc_msgSend_CGColor(v19, v20, v21, v22, v23);
    CGContextSetFillColorWithColor(a4, v24);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    CGContextFillRect(a4, v40);
  }

  else
  {
    sub_27628CB34(a4, x, y, width, height, 2.0);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    CGContextClipToRectSafe();
    CGContextSetLineCap(a4, kCGLineCapSquare);
    CGContextSetLineJoin(a4, kCGLineJoinMiter);
    CGContextSetLineWidth(a4, 2.0);
    v37 = objc_msgSend_CGColor(v19, v33, v34, v35, v36);
    CGContextSetStrokeColorWithColor(a4, v37);
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    CGContextStrokeRect(a4, v41);
  }

  CGContextRestoreGState(a4);
}

+ (id)commonAncestorLayerForLayer:(id)a3 withLayer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = v5;
  v9 = v6;
  v14 = v9;
  v15 = v8 != 0;
  v16 = v9 != 0;
  if (!(v8 | v9))
  {
LABEL_11:
    v17 = 0;
    goto LABEL_14;
  }

  v17 = v9;
  v18 = v8;
  while (!v15)
  {
    v18 = 0;
    if (!v16)
    {
LABEL_6:
      v17 = 0;
      goto LABEL_10;
    }

LABEL_8:
    if (objc_msgSend_containsObject_(v7, v10, v11, v12, v13, v17))
    {
      goto LABEL_13;
    }

    objc_msgSend_tsu_addNonNilObject_(v7, v28, v29, v30, v31, v17);
    v36 = objc_msgSend_superlayer(v17, v32, v33, v34, v35);

    v17 = v36;
LABEL_10:
    v15 = v18 != 0;
    v16 = v17 != 0;
    if (!(v18 | v17))
    {
      goto LABEL_11;
    }
  }

  if (!objc_msgSend_containsObject_(v7, v10, v11, v12, v13, v18))
  {
    objc_msgSend_tsu_addNonNilObject_(v7, v19, v20, v21, v22, v18);
    v27 = objc_msgSend_superlayer(v18, v23, v24, v25, v26);

    v18 = v27;
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v18 = v18;

  v17 = v18;
LABEL_13:

LABEL_14:

  return v17;
}

+ (void)applyHDRHeadroomFromCGLayer:(CGLayer *)a3 toContext:(CGContext *)a4
{
  CGLayerGetContext(a3);
  TSDCGContextGetMaxHDRHeadroom();
  v6 = v5;
  TSDCGContextGetMaxHDRHeadroom();
  v7.n128_f64[0] = fmax(v7.n128_f64[0], v6);

  MEMORY[0x2821E9920](a4, v7);
}

+ (void)drawCGLayer:(CGLayer *)a3 inContext:(CGContext *)a4 rect:(CGRect)a5
{
  CGContextDrawLayerInRect(a4, a5, a3);

  MEMORY[0x2821F9670](TSCHRenderUtilities, sel_applyHDRHeadroomFromCGLayer_toContext_, v5, v6, v7);
}

@end