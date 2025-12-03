@interface TSWPEquationInlineLayout
+ (double)fontSizeThatMatchesXHeightForFontName:(id)name fontSize:(double)size;
- (BOOL)p_textIsVertical;
- (CGSize)invalidEquationSize;
- (CGSize)unconstrainedSize;
- (double)descentForInlineLayout;
- (double)p_textScale;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry;
- (id)computeLayoutGeometry;
- (id)layoutGeometryFromInfo;
- (id)p_layoutTarget;
- (id)p_newLayoutContextWithMaximumSize:(CGSize)size textScale:(double)scale returnFontSizeAdjustedForXHeight:(double *)height;
- (id)p_textPropertiesForLayout;
- (void)willLayoutInlineWithMaximumSize:(CGSize)size textScale:(double)scale;
@end

@implementation TSWPEquationInlineLayout

- (double)descentForInlineLayout
{
  if (!objc_msgSend_equationIsValid(self, a2, v2))
  {
    return 0.0;
  }

  v6 = objc_msgSend_equationLayout(self, v4, v5);
  objc_msgSend_depth(v6, v7, v8);
  v10 = v9;

  return v10;
}

- (id)layoutGeometryFromInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_geometry(v3, v4, v5);

  v7 = objc_alloc(MEMORY[0x277D80300]);
  v9 = objc_msgSend_initWithInfoGeometry_(v7, v8, v6);

  return v9;
}

- (CGSize)invalidEquationSize
{
  v3 = objc_msgSend_equationInfo(self, a2, v2);
  v6 = objc_msgSend_textProperties(v3, v4, v5);

  objc_msgSend_floatValueForProperty_(v6, v7, 17);
  v9 = v8;

  v10 = v9;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)p_textScale
{
  v4 = objc_msgSend_p_layoutTarget(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    objc_msgSend_textScaleForChild_(v4, v5, self);
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (BOOL)p_textIsVertical
{
  v3 = objc_msgSend_p_layoutTarget(self, a2, v2);
  IsVertical = objc_msgSend_textIsVertical(v3, v4, v5);

  return IsVertical;
}

- (id)computeLayoutGeometry
{
  IsVertical = objc_msgSend_p_textIsVertical(self, a2, v2);
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    objc_msgSend_maximumFrameSizeForChild_(v8, v9, self);
  }

  else
  {
    v11 = 1.79769313e308;
    v12 = 1.79769313e308;
  }

  if (IsVertical)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (IsVertical)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  objc_msgSend_p_textScale(self, v9, v10);
  objc_msgSend_willLayoutInlineWithMaximumSize_textScale_(self, v15, v16, v14, v13, v17);
  v20 = objc_msgSend_equationLayoutContext(self, v18, v19);
  v25 = objc_msgSend_equationLayout(self, v21, v22);
  if (!v25 && v20)
  {
    v26 = objc_msgSend_equationInfo(self, v23, v24);
    v29 = objc_msgSend_equation(v26, v27, v28);
    v25 = objc_msgSend_newLayout(v29, v30, v31);

    objc_msgSend_setEquationLayout_(self, v32, v25);
    objc_msgSend_layoutWithContext_(v25, v33, v20);
    objc_msgSend_width(v25, v34, v35);
    if (v38 <= 0.0 || (objc_msgSend_vsize(v25, v36, v37), v40 <= 0.0) || (objc_msgSend_erasableBounds(v25, v36, v39), CGRectGetWidth(v133) <= 0.0))
    {
      objc_msgSend_setEquationIsValid_(self, v36, 0);
    }

    else
    {
      objc_msgSend_erasableBounds(v25, v36, v41);
      v43 = CGRectGetHeight(v134) > 0.0;
      objc_msgSend_setEquationIsValid_(self, v42, v43);
    }
  }

  if (objc_msgSend_equationIsValid(self, v23, v24))
  {
    objc_msgSend_width(v25, v44, v45);
    v47 = v46;
    objc_msgSend_vsize(v25, v48, v49);
    v53 = v52;
  }

  else
  {
    objc_msgSend_invalidEquationSize(self, v44, v45);
    v47 = v54;
    v53 = v55;
  }

  if (v14 != *MEMORY[0x277CBF3A8] || v13 != *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_width(v25, v50, v51);
    if (v59 > v14 && vabdd_f64(v59, v14) >= fabs(v14 * 0.000000999999997))
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSWPEquationInlineLayout computeLayoutGeometry]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationLayout.m");
      objc_msgSend_width(v25, v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v63, 231, 0, "Equation layout width %g > max %g", v67, *&v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
    }

    objc_msgSend_height(v25, v57, v58);
    if (v71 > v13 && vabdd_f64(v71, v13) >= fabs(v13 * 0.000000999999997))
    {
      v72 = MEMORY[0x277D81150];
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSWPEquationInlineLayout computeLayoutGeometry]");
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationLayout.m");
      objc_msgSend_height(v25, v76, v77);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v78, v73, v75, 232, 0, "Equation layout height %g > max %g", v79, *&v13);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
    }
  }

  v131.receiver = self;
  v131.super_class = TSWPEquationInlineLayout;
  computeLayoutGeometry = [(TSWPEquationInlineLayout *)&v131 computeLayoutGeometry];
  v85 = objc_alloc(MEMORY[0x277D80300]);
  if (computeLayoutGeometry)
  {
    objc_msgSend_transform(computeLayoutGeometry, v83, v84);
  }

  else
  {
    memset(&v130, 0, sizeof(v130));
  }

  v86 = objc_msgSend_initWithSize_transform_(v85, v83, &v130, v47, v53);
  objc_msgSend_setEquationGeometry_(self, v87, v86);

  if (objc_msgSend_equationIsValid(self, v88, v89))
  {
    v93 = objc_alloc(MEMORY[0x277D80300]);
    if (computeLayoutGeometry)
    {
      objc_msgSend_transform(computeLayoutGeometry, v91, v92);
    }

    else
    {
      memset(&v130, 0, sizeof(v130));
    }

    v100 = objc_msgSend_initWithSize_transform_(v93, v91, &v130, v47, v53);
    objc_msgSend_setEquationGeometry_(self, v101, v100);

    TSURectWithSize();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v110 = -v102;
    v111 = -v104;
    CGAffineTransformMakeTranslation(&v129, -v102, -v104);
    v130 = v129;
    objc_msgSend_setLayoutToStrokeTransform_(self, v112, &v130);
    CGAffineTransformMakeTranslation(&v128, v110, v111);
    v130 = v128;
    objc_msgSend_setLayoutToEquationTransform_(self, v113, &v130);
    v135.origin.x = v103;
    v135.origin.y = v105;
    v135.size.width = v107;
    v135.size.height = v109;
    v136 = CGRectOffset(v135, v110, v111);
    objc_msgSend_setBoundsForStandardKnobs_(self, v114, v115, v136.origin.x, v136.origin.y, v136.size.width, v136.size.height);
    memset(&v130, 0, sizeof(v130));
    if (computeLayoutGeometry)
    {
      objc_msgSend_transform(computeLayoutGeometry, v116, v117);
    }

    else
    {
      memset(&v127, 0, sizeof(v127));
    }

    CGAffineTransformTranslate(&v130, &v127, v103, v105);
    v119 = objc_alloc(MEMORY[0x277D80300]);
    if (IsVertical)
    {
      CGAffineTransformMakeRotation(&t2, 1.57079633);
      t1 = v130;
      CGAffineTransformConcat(&v127, &t1, &t2);
    }

    else
    {
      v127 = v130;
    }

    v99 = objc_msgSend_initWithSize_transform_(v119, v118, &v127, v107, v109);
  }

  else
  {
    v123 = *(MEMORY[0x277CBF2C0] + 16);
    *&v130.a = *MEMORY[0x277CBF2C0];
    v124 = *&v130.a;
    *&v130.c = v123;
    *&v130.tx = *(MEMORY[0x277CBF2C0] + 32);
    v122 = *&v130.tx;
    objc_msgSend_setLayoutToStrokeTransform_(self, v90, &v130);
    *&v130.a = v124;
    *&v130.c = v123;
    *&v130.tx = v122;
    objc_msgSend_setLayoutToEquationTransform_(self, v94, &v130);
    TSURectWithSize();
    objc_msgSend_setBoundsForStandardKnobs_(self, v95, v96);
    v99 = objc_msgSend_equationGeometry(self, v97, v98);
  }

  v120 = v99;

  return v120;
}

- (id)p_textPropertiesForLayout
{
  v4 = objc_msgSend_parent(self, a2, v2);
  v5 = TSUProtocolCast();
  v8 = objc_msgSend_styleProvider(v5, v6, v7, &unk_288638918);
  v11 = objc_msgSend_equationInfo(self, v9, v10);
  v14 = objc_msgSend_textProperties(v11, v12, v13);
  v16 = objc_msgSend_textPropertiesForEquation_basedOnProperties_(v8, v15, self, v14);

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v20 = objc_msgSend_equationInfo(self, v17, v18);
    v19 = objc_msgSend_textProperties(v20, v21, v22);
  }

  return v19;
}

- (id)p_newLayoutContextWithMaximumSize:(CGSize)size textScale:(double)scale returnFontSizeAdjustedForXHeight:(double *)height
{
  height = size.height;
  width = size.width;
  v10 = objc_msgSend_p_textPropertiesForLayout(self, a2, height);
  v12 = objc_msgSend_objectForProperty_(v10, v11, 16);
  objc_msgSend_floatValueForProperty_(v10, v13, 17);
  v15 = v14 * scale;
  v18 = v15;
  if ((objc_msgSend_disableXHeightMatching(self, v16, v17) & 1) == 0)
  {
    v19 = objc_opt_class();
    objc_msgSend_fontSizeThatMatchesXHeightForFontName_fontSize_(v19, v20, v12, v15);
    v18 = v21;
  }

  v22 = [TSWPEquationLayoutContext alloc];
  v24 = objc_msgSend_initWithTextProperties_fontSize_containerSize_textMacroFontSize_(v22, v23, v10, v18, width, height, v15);
  if (height)
  {
    *height = v18;
  }

  return v24;
}

- (CGSize)unconstrainedSize
{
  v3 = objc_msgSend_p_newLayoutContextWithMaximumSize_textScale_returnFontSizeAdjustedForXHeight_(self, a2, 0, 1.79769313e308, 1.79769313e308, 1.0);
  v6 = objc_msgSend_equationInfo(self, v4, v5);
  v9 = objc_msgSend_equation(v6, v7, v8);
  v12 = objc_msgSend_newLayout(v9, v10, v11);

  objc_msgSend_layoutWithContext_(v12, v13, v3);
  objc_msgSend_erasableBounds(v12, v14, v15);
  v18 = objc_msgSend_p_textPropertiesForLayout(self, v16, v17);
  objc_msgSend_floatValueForProperty_(v18, v19, 17);
  objc_msgSend_p_textScale(self, v20, v21);
  objc_msgSend_fontSizeAdjustedForXHeight(self, v22, v23);
  TSUMultiplySizeScalar();
  v25 = v24;
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)willLayoutInlineWithMaximumSize:(CGSize)size textScale:(double)scale
{
  if (scale <= 0.0 || size.width <= 0.0 || size.height <= 0.0)
  {
    v14 = objc_msgSend_equationLayoutContext(self, a2, v4, size.width, size.height);

    if (!v14)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPEquationInlineLayout willLayoutInlineWithMaximumSize:textScale:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPEquationLayout.m");
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v17, v19, 315, 0, "[%@ %@] requires valid container size and text scale", v21, v22);

      v26 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v26, v24, v25);
    }
  }

  else
  {
    v27 = objc_msgSend_p_newLayoutContextWithMaximumSize_textScale_returnFontSizeAdjustedForXHeight_(self, a2, &self->_fontSizeAdjustedForXHeight);
    v9 = objc_msgSend_equationLayoutContext(self, v7, v8);
    isEqual = objc_msgSend_isEqual_(v27, v10, v9);

    if ((isEqual & 1) == 0)
    {
      objc_msgSend_setEquationLayoutContext_(self, v12, v27);
      objc_msgSend_setEquationLayout_(self, v13, 0);
    }
  }
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = objc_alloc(MEMORY[0x277D80300]);
  v8 = objc_msgSend_info(self, v6, v7);
  v11 = objc_msgSend_geometry(v8, v9, v10);
  objc_msgSend_size(v11, v12, v13);
  v17 = v16;
  v19 = v18;
  if (geometryCopy)
  {
    objc_msgSend_transform(geometryCopy, v14, v15);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  v20 = objc_msgSend_initWithSize_transform_(v5, v14, v24, v17, v19);

  v23.receiver = self;
  v23.super_class = TSWPEquationInlineLayout;
  v21 = [(TSWPEquationInlineLayout *)&v23 computeInfoGeometryFromPureLayoutGeometry:v20];

  return v21;
}

+ (double)fontSizeThatMatchesXHeightForFontName:(id)name fontSize:(double)size
{
  nameCopy = name;
  v8 = objc_msgSend_sharedInstance(TSWPFontList, v6, v7);
  v10 = objc_msgSend_fontForPostscriptName_(v8, v9, nameCopy);

  v13 = objc_msgSend_ctFontForSize_(v10, v11, v12, size);
  v16 = objc_msgSend_sharedInstance(TSWPFontList, v14, v15);
  v18 = objc_msgSend_fontForPostscriptName_(v16, v17, @"STIXGeneral-Italic");
  v21 = objc_msgSend_ctFontForSize_(v18, v19, v20, size);

  XHeight = CTFontGetXHeight(v13);
  v23 = CTFontGetXHeight(v21);
  if (v23 == 0.0)
  {
    v23 = XHeight;
  }

  v24 = XHeight / v23;
  if (vabdd_f64(1.0, v24) > 0.25)
  {
    v24 = 1.0;
  }

  return v24 * size;
}

- (id)p_layoutTarget
{
  v4 = objc_msgSend_dynamicOverride(self, a2, v2);
  v5 = TSUProtocolCast();

  if (!v5)
  {
    v8 = objc_msgSend_parent(self, v6, v7, &unk_2886383A0);
    v5 = TSUProtocolCast();
  }

  return v5;
}

@end