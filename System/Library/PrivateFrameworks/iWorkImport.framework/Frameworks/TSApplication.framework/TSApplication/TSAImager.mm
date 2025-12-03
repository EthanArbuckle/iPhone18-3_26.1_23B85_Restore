@interface TSAImager
- (BOOL)p_isTextInfo:(id)info;
- (BOOL)p_requiresModifiedStrokeForDrawable:(id)drawable atScaleFactor:(double)factor;
- (CGSize)drawableThumbnailSize;
- (double)p_sizeMultiplierForDrawable:(id)drawable;
- (id)p_strokeForShapeInfo:(id)info;
- (void)p_hideCaptionAndTitleFromDeepCopiedDrawable:(id)drawable;
- (void)p_prepareShapeInfoStroke:(id)stroke atScaleFactor:(double)factor finalRect:(CGRect *)rect;
- (void)p_prepareStyledInfoStyle:(id)style;
@end

@implementation TSAImager

- (void)p_hideCaptionAndTitleFromDeepCopiedDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_msgSend_setTitleHidden_(drawableCopy, v3, 1, v4);
  objc_msgSend_setCaptionHidden_(drawableCopy, v5, 1, v6);
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setCaptionMode_(v7, v8, 0, v9);
  }

  objc_opt_class();
  v11 = TSUDynamicCast();
  v14 = v11;
  if (v11)
  {
    objc_msgSend_setTableNameEnabled_(v11, v12, 0, v13);
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  v19 = v15;
  if (v15)
  {
    objc_msgSend_hideAllTitles(v15, v16, v17, v18);
  }
}

- (BOOL)p_isTextInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    isTextElement = objc_msgSend_tsa_isTextElement(v4, v5, v6, v7);
  }

  else
  {
    isTextElement = 0;
  }

  return isTextElement;
}

- (void)p_prepareStyledInfoStyle:(id)style
{
  styleCopy = style;
  v6 = objc_msgSend_style(styleCopy, v3, v4, v5);
  v10 = objc_msgSend_defaultDisabledShadow(MEMORY[0x277D803A8], v7, v8, v9);
  objc_msgSend_setValue_forProperty_(v6, v11, v10, 520);

  v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14);
  objc_msgSend_setValue_forProperty_(v6, v16, v15, 519);

  if (styleCopy)
  {
    objc_msgSend_opacity(styleCopy, v17, v18, v19);
    if (v23 < 0.25)
    {
      v24 = fabs(v23 + -0.25);
      if (v24 >= 0.00999999978)
      {
        LODWORD(v24) = 0.25;
        objc_msgSend_setFloatValue_forProperty_(v6, v20, 518, v22, v24);
      }
    }

    v25 = objc_msgSend_stroke(styleCopy, v20, v21, v22);
    v29 = objc_msgSend_color(v25, v26, v27, v28);
    v33 = v29;
    if (v25)
    {
      objc_msgSend_alphaComponent(v29, v30, v31, v32);
      if (v37 < 0.25 && fabs(v37 + -0.25) >= 0.00999999978)
      {
        v38 = objc_msgSend_mutableCopy(v25, v34, v35, v36);
        v39 = MEMORY[0x277D81180];
        objc_msgSend_redComponent(v33, v40, v41, v42);
        v44 = v43;
        objc_msgSend_greenComponent(v33, v45, v46, v47);
        v49 = v48;
        objc_msgSend_blueComponent(v33, v50, v51, v52);
        v57 = objc_msgSend_colorWithRed_green_blue_alpha_(v39, v53, v54, v55, v44, v49, v56, 0.25);
        objc_msgSend_setColor_(v38, v58, v57, v59);

        objc_msgSend_setValue_forProperty_(v6, v60, v38, 517);
      }
    }
  }
}

- (void)p_prepareShapeInfoStroke:(id)stroke atScaleFactor:(double)factor finalRect:(CGRect *)rect
{
  strokeCopy = stroke;
  v13 = objc_msgSend_shapeStyle(strokeCopy, v8, v9, v10);
  if (strokeCopy && objc_msgSend_p_requiresModifiedStrokeForDrawable_atScaleFactor_(self, v11, strokeCopy, v12, factor))
  {
    objc_msgSend_p_strokeWidthForScaleFactor_drawable_(self, v14, strokeCopy, v15, factor);
    v49 = v16;
    v22 = objc_msgSend_p_strokeForShapeInfo_(self, v17, strokeCopy, v18);
    if (v22)
    {
      v23 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v19, v20, v21);
      v26 = objc_msgSend_wantsHighContrastStrokeColorWithColor_(v13, v24, v23, v25);
      v30 = objc_msgSend_mutableCopy(v22, v27, v28, v29);
      objc_msgSend_setWidth_(v30, v31, v32, v33, *&v49);
      if (v26)
      {
        v37 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v34, v35, v36, 0.0, 0.100000001);
        objc_msgSend_setColor_(v30, v38, v37, v39);
      }

      v40 = objc_msgSend_shapeStyle(strokeCopy, v34, v35, v36);
      objc_msgSend_setValue_forProperty_(v40, v41, v30, 517);
    }

    else
    {
      v23 = objc_msgSend_shapeStyle(strokeCopy, v19, v20, v21);
      v30 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v42, v43, v44, 0.0, 0.100000001);
      v40 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v45, v30, v46, *&v49);
      objc_msgSend_setValue_forProperty_(v23, v47, v40, 517);
    }

    if (rect)
    {
      v48 = vsubq_f64(rect->size, vdupq_lane_s64(COERCE__INT64(-*&v49 - *&v49), 0));
      rect->origin = vsubq_f64(rect->origin, vdupq_lane_s64(v49, 0));
      rect->size = v48;
    }
  }
}

- (BOOL)p_requiresModifiedStrokeForDrawable:(id)drawable atScaleFactor:(double)factor
{
  drawableCopy = drawable;
  v10 = objc_msgSend_shapeStyle(drawableCopy, v7, v8, v9);
  v14 = objc_msgSend_fill(drawableCopy, v11, v12, v13);

  v20 = objc_msgSend_p_strokeForShapeInfo_(self, v15, drawableCopy, v16);
  v27 = v20 && (objc_msgSend_p_strokeWidthForScaleFactor_drawable_(self, v17, drawableCopy, v19, factor), v22 = v21, objc_msgSend_width(v20, v23, v24, v25), v26 < v22) && vabdd_f64(v26, v22) >= 0.00999999978;
  v28 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v17, v18, v19);
  v31 = objc_msgSend_wantsHighContrastFillColorWithColor_(v10, v29, v28, v30);
  v34 = objc_msgSend_wantsHighContrastStrokeColorWithColor_(v10, v32, v28, v33);
  if (objc_msgSend_p_isTextInfo_(self, v35, drawableCopy, v36))
  {
    v37 = 0;
  }

  else
  {
    v37 = (v20 == 0) & ((v14 == 0) | v31) & ((v27 | v34) ^ 1) | v27 | v34;
  }

  return v37 & 1;
}

- (id)p_strokeForShapeInfo:(id)info
{
  v4 = objc_msgSend_shapeStyle(info, a2, info, v3);
  objc_opt_class();
  v7 = objc_msgSend_valueForProperty_(v4, v5, 517, v6);
  v8 = TSUDynamicCast();

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || objc_msgSend_isNullStroke(v8, v9, v10, v11))
  {

    v8 = 0;
  }

  return v8;
}

- (double)p_sizeMultiplierForDrawable:(id)drawable
{
  drawableCopy = drawable;
  v7 = objc_msgSend_parentInfo(drawableCopy, v4, v5, v6);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  result = 2.0;
  if (isKindOfClass)
  {
    result = 1.0;
  }

  if ((v9 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)drawableThumbnailSize
{
  width = self->_drawableThumbnailSize.width;
  height = self->_drawableThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end