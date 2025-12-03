@interface TSCHPresetImagerRadar
- (BOOL)p_isEllipticalWithPreset:(id)preset;
- (UIEdgeInsets)nativeSwatchImageEdgeInsets;
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size;
- (double)p_circumscribingRadiusToFitRegularPolygonWithSideCount:(unint64_t)count intoHeight:(double)height;
- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default;
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerRadar

- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default
{
  v8 = objc_msgSend_p_objectFromStyle_specific_default_(self, a2, v5, v6, v7, style, *&specific, *&default);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_width(v8, v9, v10, v11, v12);
    if (v15 != 2.0)
    {
      v17 = objc_msgSend_mutableCopy(v13, v14, v15, 2.0, v16);
      objc_msgSend_setWidth_(v17, v18, 2.0, v19, v20);

      v13 = v17;
    }
  }

  return v13;
}

- (double)p_circumscribingRadiusToFitRegularPolygonWithSideCount:(unint64_t)count intoHeight:(double)height
{
  v5 = 3.14159265 / count;
  v6 = 1.0 / sin(v5);
  return v6 * ((height + height) / (v6 + 1.0 / tan(v5)) * 0.5);
}

- (BOOL)p_isEllipticalWithPreset:(id)preset
{
  v6 = objc_msgSend_chartStyle(preset, a2, v3, v4, v5);
  v11 = objc_msgSend_boxedValueForProperty_(v6, v7, v8, v9, v10, 1344);
  v16 = objc_msgSend_BOOLValue(v11, v12, v13, v14, v15);

  return v16;
}

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v61[2] = *MEMORY[0x277D85DE8];
  isEllipticalWithPreset = objc_msgSend_p_isEllipticalWithPreset_(self, a2, size.width, size.height, scale, preset);
  objc_msgSend_p_squareRectFromSize_inset_(self, v14, width, height, 5.0);
  v19 = v18;
  v20 = v18 * 0.5;
  v21 = *MEMORY[0x277CBF348];
  v22 = *(MEMORY[0x277CBF348] + 8);
  v23 = v18;
  v25 = v24;
  if (target == 1)
  {
    v58 = *(MEMORY[0x277CBF348] + 8);
    if ((isEllipticalWithPreset & 1) == 0)
    {
      objc_msgSend_p_circumscribingRadiusToFitRegularPolygonWithSideCount_intoHeight_(self, v15, v18, v16, v17, 5);
      v20 = v26;
      v58 = (v19 + v26 * -2.0) * 0.5;
      TSURectWithSize();
      TSUCenterRectOverRect();
      v25 = v27;
      v23 = v28;
    }
  }

  else
  {
    v58 = *(MEMORY[0x277CBF348] + 8);
  }

  v29 = v17;
  v30 = v16;
  CGContextSaveGState(context);
  v31 = MEMORY[0x277D803C0];
  v34 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v32, 0.46, 1.0, v33);
  v38 = objc_msgSend_strokeWithColor_width_(v31, v35, 1.0, v36, v37, v34);

  v40 = objc_msgSend_newPolarAxisShapePathWithRect_unitSpaceValue_numberOfValues_elliptical_rotation_(TSCHRenderUtilities, v39, v25, v30, v29, 5, isEllipticalWithPreset, v23, 1.0, 3.14159265);
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, v21, v58);
  objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v38, v41, v42, v43, v44, v40, 0, context);
  CGContextRestoreGState(context);
  CGPathRelease(v40);
  TSUCenterOfRect();
  TSUAddPoints();
  CGContextTranslateCTM(context, v45, v46);
  for (i = 0; i != 5; ++i)
  {
    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeRotation(&v59, i * 1.25663706);
    v48 = v59.tx + v20 * v59.c + v59.a * 0.0;
    v49 = v59.ty + v20 * v59.d + v59.b * 0.0;
    CGContextSaveGState(context);
    v52 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v50, 0.46, 1.0, v51);
    v57 = objc_msgSend_CGColor(v52, v53, v54, v55, v56);
    CGContextSetStrokeColorWithColor(context, v57);
    CGContextSetLineCap(context, kCGLineCapSquare);
    CGContextSetLineJoin(context, kCGLineJoinMiter);
    CGContextSetLineWidth(context, 0.5);
    points.x = v21;
    points.y = v22;
    v61[0] = v48;
    v61[1] = v49;
    sub_27628C654(context, &points.x, v61, 2, 0.5);
    CGContextStrokeLineSegments(context, &points, 2uLL);
    CGContextRestoreGState(context);
  }

  CGContextRestoreGState(context);
}

- (void)p_drawUnshadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v115 = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  isEllipticalWithPreset = objc_msgSend_p_isEllipticalWithPreset_(self, v13, v14, v15, v16, presetCopy);
  objc_msgSend_p_squareRectFromSize_inset_(self, v18, width, height, 5.0);
  v23 = v22 * 0.5;
  if (target == 1 && (isEllipticalWithPreset & 1) == 0)
  {
    objc_msgSend_p_circumscribingRadiusToFitRegularPolygonWithSideCount_intoHeight_(self, v19, v22, v20, v21, 5);
    v23 = v24;
  }

  contextCopy2 = context;
  CGContextSaveGState(context);
  TSUCenterOfRect();
  TSUAddPoints();
  CGContextTranslateCTM(context, v26, v27);
  v106 = presetCopy;
  v110 = objc_msgSend_seriesStyles(presetCopy, v28, v29, v30, v31);
  v109 = objc_msgSend_count(v110, v32, v33, v34, v35);
  v36 = 1;
  v37 = 0uLL;
  v38 = &unk_2764D6FA8;
  selfCopy = self;
  do
  {
    v39 = 0;
    v40 = v36;
    do
    {
      v111 = v23 * (v38[v39] / 100.0);
      *&v113.a = v37;
      *&v113.c = v37;
      *&v113.tx = v37;
      CGAffineTransformMakeRotation(&v113, v39 * -1.25663706);
      v37 = 0uLL;
      tx = v113.tx;
      v43 = vmlaq_f64(vmulq_n_f64(*&v113.c, v111), 0, *&v113.a);
      v44 = vaddq_f64(*&v113.tx, v43);
      v114[v39++] = v44;
    }

    while (v39 != 5);
    v45 = objc_msgSend_objectAtIndexedSubscript_(v110, v41, v44.f64[0], v43.f64[0], tx, v40 % v109);
    v50 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v46, v47, v48, v49, v45, 1505, 0);
    v55 = objc_msgSend_p_objectFromStyle_specific_default_(self, v51, v52, v53, v54, v45, 1415, 0);
    objc_msgSend_width(v50, v56, v57, v58, v59);
    v61 = v60 + v60;
    v65 = objc_msgSend_cap(v50, v62, v60, v63, v64);
    sub_27628CBE8(contextCopy2, v114, 5uLL, 1u, v65, v61, v66, v67);
    v69 = sub_2762A1ACC(v114, 5uLL, 1);
    if (v50)
    {
      v73 = objc_msgSend_boxedValueForProperty_(v45, v68, v70, v71, v72, 1417);
      if (objc_msgSend_BOOLValue(v73, v74, v75, v76, v77))
      {
        v82 = objc_msgSend_color(v50, v78, v79, v80, v81);
        v112 = v82;
        objc_msgSend_floatValueForProperty_(v45, v83, v84, v85, v86, 1416);
        LODWORD(v90) = 2139095040;
        if (*&v88 == INFINITY)
        {
          v91 = 0.15;
        }

        else
        {
          v91 = *&v88;
        }

        objc_msgSend_alphaComponent(v82, v87, v88, v90, v89);
        *&v92 = v92 * v91;
        v93 = MEMORY[0x277D801F8];
        v96 = objc_msgSend_colorWithAlphaComponent_(v82, v94, *&v92, v91, v95);
        v101 = objc_msgSend_colorWithColor_(v93, v97, v98, v99, v100, v96);

        v55 = v101;
        contextCopy2 = context;
      }

      self = selfCopy;
    }

    if (v55)
    {
      CGContextSaveGState(contextCopy2);
      objc_msgSend_p_fillPath_withFill_inContext_(self, v102, v103, v104, v105, v69, v55, contextCopy2);
      CGContextRestoreGState(contextCopy2);
    }

    objc_msgSend_paintPath_wantsInteriorStroke_inContext_(v50, v68, v70, v71, v72, v69, 0, contextCopy2);
    CGPathRelease(v69);

    v36 = v40 - 1;
    v38 -= 5;
    v37 = 0uLL;
  }

  while (v40);
  CGContextRestoreGState(contextCopy2);
}

- (UIEdgeInsets)nativeSwatchImageEdgeInsets
{
  v2 = 9.0;
  v3 = 16.0;
  v4 = 6.0;
  v5 = 14.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_nativeSwatchImageEdgeInsets(self, a2, size.width, size.height, v3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_p_nativeSize(self, v15, v7, v9, v11);
  v17 = width / v16;
  v19 = height / v18;
  v20 = floor(v8 * (height / v18));
  v21 = floor(v10 * v17);
  v22 = floor(v12 * v19);
  v23 = floor(v14 * v17);
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

@end