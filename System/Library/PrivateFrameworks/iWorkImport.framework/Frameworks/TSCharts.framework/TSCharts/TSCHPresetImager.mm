@interface TSCHPresetImager
+ (id)presetImagerForChartType:(id)type;
+ (void)drawGenericImageIntoContext:(CGContext *)context size:(CGSize)size preset:(id)preset usingRepresentativeSpecificSeriesFillProperties:(id)properties outShouldCache:(BOOL *)cache;
- (CGContext)p_newContextOfSize:(CGSize)size;
- (CGRect)p_squareRectFromSize:(CGSize)size inset:(double)inset;
- (CGSize)p_drawAndOffsetMultiDataSliderIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale;
- (CGSize)p_nativeSize;
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size;
- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache;
- (id)p_init;
- (id)p_objectFromStyle:(id)style specific:(int)specific default:(int)default;
- (id)p_shadow;
- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default;
- (void)p_fillPath:(CGPath *)path withFill:(id)fill inContext:(CGContext *)context;
@end

@implementation TSCHPresetImager

- (id)p_init
{
  v3.receiver = self;
  v3.super_class = TSCHPresetImager;
  return [(TSCHPresetImager *)&v3 init];
}

+ (id)presetImagerForChartType:(id)type
{
  typeCopy = type;
  v8 = objc_alloc(objc_msgSend_presetImagerClass(typeCopy, v4, v5, v6, v7));
  v13 = objc_msgSend_initWithChartType_(v8, v9, v10, v11, v12, typeCopy);

  return v13;
}

+ (void)drawGenericImageIntoContext:(CGContext *)context size:(CGSize)size preset:(id)preset usingRepresentativeSpecificSeriesFillProperties:(id)properties outShouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v131[22] = *MEMORY[0x277D85DE8];
  presetCopy = preset;
  propertiesCopy = properties;
  v12 = (height + -12.0) * 0.5;
  v13 = (width + -8.0) / 3.0;
  sub_27628CB34(context, 4.0, 6.0, v13, v12, 0.0);
  x = v132.origin.x;
  y = v132.origin.y;
  v113 = v132.origin.x;
  v15 = v132.origin.y;
  v16 = v132.size.width;
  v110 = v132.size.height;
  v111 = v132.size.width;
  v17 = v132.size.height;
  MaxX = CGRectGetMaxX(v132);
  sub_27628CB34(context, MaxX, 6.0, v13, v12, 0.0);
  v121 = v133.size.width;
  v122 = v133.origin.y;
  rect = v133.size.height;
  v19 = v133.origin.x;
  v109 = v133.origin.x;
  v20 = CGRectGetMaxX(v133);
  sub_27628CB34(context, v20, 6.0, v13, v12, 0.0);
  v118 = v22;
  v119 = v21;
  v116 = v24;
  v117 = v23;
  v134.origin.x = x;
  v134.origin.y = v15;
  v134.size.width = v16;
  v134.size.height = v17;
  MaxY = CGRectGetMaxY(v134);
  sub_27628CB34(context, 4.0, MaxY, v13, v12, 0.0);
  v107 = v135.origin.y;
  v108 = v135.origin.x;
  v105 = v135.size.height;
  v106 = v135.size.width;
  v26 = CGRectGetMaxX(v135);
  v136.origin.x = v19;
  v136.size.width = v121;
  v136.origin.y = v122;
  v136.size.height = rect;
  v27 = CGRectGetMaxY(v136);
  sub_27628CB34(context, v26, v27, v13, v12, 0.0);
  v28 = v137.origin.x;
  v29 = v137.origin.y;
  v30 = v137.size.width;
  v31 = v137.size.height;
  v32 = CGRectGetMaxX(v137);
  v138.origin.y = v118;
  v138.origin.x = v119;
  v138.size.height = v116;
  v138.size.width = v117;
  v33 = CGRectGetMaxY(v138);
  contextCopy = context;
  sub_27628CB34(context, v32, v33, v13, v12, 0.0);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v115 = presetCopy;
  v43 = objc_msgSend_seriesStyles(presetCopy, v42, v34, v36, v38);
  v48 = objc_msgSend_count(v43, v44, v45, v46, v47);
  v129 = v108;
  v130 = v107;
  *v131 = v106;
  *&v131[1] = v105;
  *&v131[2] = v28;
  *&v131[3] = v29;
  *&v131[4] = v30;
  *&v131[5] = v31;
  *&v131[6] = v35;
  *&v131[7] = v37;
  *&v131[8] = v39;
  v131[9] = v41;
  *&v131[10] = v113;
  *&v131[11] = y;
  *&v131[12] = v111;
  *&v131[13] = v110;
  *&v131[14] = v109;
  *&v131[15] = v122;
  *&v131[16] = v121;
  *&v131[17] = rect;
  *&v131[18] = v119;
  *&v131[19] = v118;
  *&v131[20] = v117;
  *&v131[21] = v116;
  v128 = 0;
  v127 = 0u;
  v126 = 0u;
  v125 = objc_msgSend_objectAtIndexedSubscript_(v43, v49, 0.0, v50, v51, 0);
  for (i = 1; i != 6; ++i)
  {
    if (v48 <= i)
    {
      objc_msgSend_objectAtIndexedSubscript_(v43, v52, v53, v54, v55, v48 - 1, *&v105, *&v106, *&v107, *&v108);
    }

    else
    {
      objc_msgSend_objectAtIndexedSubscript_(v43, v52, v53, v54, v55, i, *&v105, *&v106, *&v107, *&v108);
    }
    v57 = ;
    v58 = *(&v125 + i);
    *(&v125 + i) = v57;
  }

  v60 = objc_msgSend_count(propertiesCopy, v52, v53, v54, v55);
  if (!v60)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v61, v62, v63, "+[TSCHPresetImager drawGenericImageIntoContext:size:preset:usingRepresentativeSpecificSeriesFillProperties:outShouldCache:]");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v71, v72, v73, v74, v65, v70, 134, 0, "invalid empty fill propertiy array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

  v79 = 0;
  v80 = v131;
  hasAllResourcesForFill = 1;
  v82 = 6 / v60;
  do
  {
    v83 = objc_msgSend_objectAtIndexedSubscript_(propertiesCopy, v59, v61, v62, v63);
    v88 = objc_msgSend_tsch_stylePropertyValue(v83, v84, v85, v86, v87);

    v89 = *(&v125 + v79 % v82);
    v90 = *(v80 - 2);
    v91 = *(v80 - 1);
    v92 = *v80;
    v93 = v80[1];
    v99 = objc_msgSend_valueForProperty_(v89, v94, v95, v96, v97, v88);
    if (v99)
    {
      goto LABEL_12;
    }

    v103 = objc_msgSend_muxDefaultPropertyForSpecificProperty_(TSCHChartSeriesStyle, v98, v100, v101, v102, v88);
    if (v103)
    {
      v99 = objc_msgSend_valueForProperty_(v89, v98, v100, v101, v102, v103);
LABEL_12:
      if (hasAllResourcesForFill)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    v99 = 0;
    if (hasAllResourcesForFill)
    {
LABEL_13:
      hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v98, v100, v101, v102, v99);
      goto LABEL_16;
    }

LABEL_15:
    hasAllResourcesForFill = 0;
LABEL_16:
    objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v98, v90, v91, v92, v99, contextCopy, v93);

    ++v79;
    v80 += 4;
  }

  while (v79 != 6);
  if (cache)
  {
    *cache = hasAllResourcesForFill;
  }

  for (j = 40; j != -8; j -= 8)
  {
  }
}

- (CGSize)p_drawAndOffsetMultiDataSliderIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  v84[12] = *MEMORY[0x277D85DE8];
  v8 = ceil(size.width * 0.85);
  v9 = ceil(v8 / 184.0 * 30.0);
  v10 = floor((size.width - v8) * 0.5);
  CGContextSaveGState(context);
  v12 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v11, v10, 0.0, v8, v9, v9 * 0.5);
  v13 = v12;
  v18 = objc_msgSend_CGPath(v13, v14, v15, v16, v17);
  v19 = CGPathRetain(v18);

  v22 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v20, *L"骛骚骚㿪晦晦晦㿦", *L"晦晦晦㿦", v21);
  v27 = objc_msgSend_CGColor(v22, v23, v24, v25, v26);
  CGContextSetFillColorWithColor(context, v27);

  CGContextAddPathSafe();
  CGContextFillPath(context);
  CGPathRelease(v19);
  CGContextTranslateCTM(context, v10, 0.0);
  CGContextSaveGState(context);
  v85.height = v8 / 184.0 * -0.5 * scale;
  v85.width = 0.0;
  CGContextSetShadow(context, v85, 2.0);
  TSUMultiplyRectScalar();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v36, v28, v30, v32);
  v42 = objc_msgSend_CGColor(v37, v38, v39, v40, v41);
  CGContextSetFillColorWithColor(context, v42);

  v87.origin.x = v29;
  v87.origin.y = v31;
  v87.size.width = v33;
  v87.size.height = v35;
  CGContextAddEllipseInRect(context, v87);
  CGContextFillPath(context);
  CGContextRestoreGState(context);
  v44 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v43, 0.0, 0.49, 0.98, 1.0);
  v49 = objc_msgSend_CGColor(v44, v45, v46, v47, v48);
  CGContextSetFillColorWithColor(context, v49);

  TSUMultiplyRectScalar();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  Mutable = CGPathCreateMutable();
  v88.origin.x = v51;
  v88.origin.y = v53;
  v88.size.width = v55;
  v88.size.height = v57;
  CGRectGetMinX(v88);
  v89.origin.x = v51;
  v89.origin.y = v53;
  v89.size.width = v55;
  v89.size.height = v57;
  CGRectGetMidY(v89);
  CGPathMoveToPointSafe();
  v90.origin.x = v51;
  v90.origin.y = v53;
  v90.size.width = v55;
  v90.size.height = v57;
  CGRectGetMaxX(v90);
  v91.origin.x = v51;
  v91.origin.y = v53;
  v91.size.width = v55;
  v91.size.height = v57;
  CGRectGetMinY(v91);
  CGPathAddLineToPointSafe();
  v92.origin.x = v51;
  v92.origin.y = v53;
  v92.size.width = v55;
  v92.size.height = v57;
  CGRectGetMaxX(v92);
  v93.origin.x = v51;
  v93.origin.y = v53;
  v93.size.width = v55;
  v93.size.height = v57;
  CGRectGetMaxY(v93);
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  CGContextAddPathSafe();
  CGContextFillPath(context);
  CGPathRelease(Mutable);
  TSUMultiplyRectScalar();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = CGPathCreateMutable();
  v94.origin.x = v60;
  v94.origin.y = v62;
  v94.size.width = v64;
  v94.size.height = v66;
  CGRectGetMaxX(v94);
  v95.origin.x = v60;
  v95.origin.y = v62;
  v95.size.width = v64;
  v95.size.height = v66;
  CGRectGetMidY(v95);
  CGPathMoveToPointSafe();
  v96.origin.x = v60;
  v96.origin.y = v62;
  v96.size.width = v64;
  v96.size.height = v66;
  CGRectGetMinX(v96);
  v97.origin.x = v60;
  v97.origin.y = v62;
  v97.size.width = v64;
  v97.size.height = v66;
  CGRectGetMinY(v97);
  CGPathAddLineToPointSafe();
  v98.origin.x = v60;
  v98.origin.y = v62;
  v98.size.width = v64;
  v98.size.height = v66;
  CGRectGetMinX(v98);
  v99.origin.x = v60;
  v99.origin.y = v62;
  v99.size.width = v64;
  v99.size.height = v66;
  CGRectGetMaxY(v99);
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(v67);
  CGContextAddPathSafe();
  CGContextFillPath(context);
  CGPathRelease(v67);
  TSUMultiplyRectScalar();
  v84[0] = v68;
  v84[1] = v69;
  v84[2] = v70;
  v84[3] = v71;
  TSUMultiplyRectScalar();
  v84[4] = v72;
  v84[5] = v73;
  v84[6] = v74;
  v84[7] = v75;
  TSUMultiplyRectScalar();
  v76 = 0;
  v84[8] = v77;
  v84[9] = v78;
  v84[10] = v79;
  v84[11] = v80;
  do
  {
    CGContextAddEllipseInRect(context, *&v84[v76]);
    CGContextFillPath(context);
    v76 += 4;
  }

  while (v76 != 12);
  CGContextRestoreGState(context);
  CGContextTranslateCTM(context, 0.0, v9);
  v81 = height - v9;
  v82 = width;
  result.height = v81;
  result.width = v82;
  return result;
}

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = *&target;
  presetCopy = preset;
  rootCopy = root;
  if (!v16)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHPresetImager imageWithPreset:target:imageSize:imageScale:swatchFrame:documentRoot:shouldCache:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 288, 0, "invalid operation target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  TSUMultiplySizeScalar();
  v43 = objc_msgSend_p_newContextOfSize_(self, v39, v40, v41, v42);
  CGContextScaleCTM(v43, scale, scale);
  CGContextSaveGState(v43);
  CGContextTranslateCTM(v43, x, y);
  v48 = objc_msgSend_p_shadow(self, v44, v45, v46, v47);
  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v49, v50, v51, v52, v48))
  {
    TSURectWithSize();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    CGContextSaveGState(v43);
    v66 = sub_27631FD2C(v43, v62, v63, v64, v65);
    objc_msgSend_applyToContext_viewScale_flipped_(v48, v67, 1.0, v68, v69, v43, v66);
    v87.origin.x = v55;
    v87.origin.y = v57;
    v87.size.width = v59;
    v87.size.height = v61;
    CGContextBeginTransparencyLayerWithRect(v43, v87, 0);
  }

  objc_msgSend_p_drawShadowedContentIntoContext_size_contentsScale_preset_target_shouldCache_(self, v53, width, height, scale, v43, presetCopy, v16, cache);
  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v70, v71, v72, v73, v48))
  {
    CGContextEndTransparencyLayer(v43);
    CGContextRestoreGState(v43);
  }

  objc_msgSend_p_drawUnshadowedContentIntoContext_size_contentsScale_preset_target_shouldCache_(self, v74, width, height, scale, v43, presetCopy, v16, cache);
  CGContextRestoreGState(v43);
  Image = CGBitmapContextCreateImage(v43);
  sub_27631FF58(v43, v76, v77, v78, v79);
  CGContextRelease(v43);
  v84 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v80, v81, v82, v83, Image);
  CGImageRelease(Image);

  return v84;
}

- (CGSize)p_nativeSize
{
  v2 = 142.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGContext)p_newContextOfSize:(CGSize)size
{
  v12.size.height = size.height;
  v12.size.width = size.width;
  v12.origin.x = *MEMORY[0x277CBF348];
  v12.origin.y = *(MEMORY[0x277CBF348] + 8);
  v13 = CGRectIntegral(v12);
  width = v13.size.width;
  v4 = 4 * v13.size.width + 15;
  height = v13.size.height;
  v6 = TSUDeviceRGBColorSpace();
  v7 = CGBitmapContextCreate(0, width, height, 8uLL, v4 & 0xFFFFFFFFFFFFFFF0, v6, 0x2002u);
  sub_27631FDD8(v7, 0, v8, v9, v10);
  return v7;
}

- (id)p_shadow
{
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, v2, v3, v4);
  v7 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(MEMORY[0x277D803A8], v6, 90.0, 1.0, 3.0, v5, 1, 0.5);

  return v7;
}

- (void)p_fillPath:(CGPath *)path withFill:(id)fill inContext:(CGContext *)context
{
  fillCopy = fill;
  BoundingBox = CGPathGetBoundingBox(path);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGContextSaveGState(context);
  CGContextAddPathSafe();
  CGContextClip(context);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinY = CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  CGContextTranslateCTM(context, 0.0, MinY + MaxY);
  CGContextScaleCTM(context, 1.0, -1.0);
  objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v14, x, y, width, fillCopy, context, height);

  CGContextRestoreGState(context);
}

- (id)p_objectFromStyle:(id)style specific:(int)specific default:(int)default
{
  v5 = *&default;
  v6 = *&specific;
  styleCopy = style;
  v12 = objc_msgSend_valueForProperty_(styleCopy, v8, v9, v10, v11, v6);
  v17 = v12;
  if (v5 && !v12)
  {
    v17 = objc_msgSend_valueForProperty_(styleCopy, v13, v14, v15, v16, v5);
  }

  return v17;
}

- (id)p_strokeFromStyle:(id)style specific:(int)specific default:(int)default
{
  v8 = objc_msgSend_p_objectFromStyle_specific_default_(self, a2, v5, v6, v7, style, *&specific, *&default);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_width(v8, v9, v10, v11, v12);
    if (v15 > 1.0)
    {
      v17 = objc_msgSend_mutableCopy(v13, v14, v15, 1.0, v16);
      objc_msgSend_setWidth_(v17, v18, 1.0, v19, v20);

      v13 = v17;
    }
  }

  return v13;
}

- (CGRect)p_squareRectFromSize:(CGSize)size inset:(double)inset
{
  TSURectWithSize();
  TSURectWithSize();
  TSUCenterRectOverRect();

  return CGRectInset(*&v5, inset, inset);
}

@end