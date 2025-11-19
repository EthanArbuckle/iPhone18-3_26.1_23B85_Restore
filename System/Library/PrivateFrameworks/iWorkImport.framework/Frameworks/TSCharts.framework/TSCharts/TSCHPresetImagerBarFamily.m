@interface TSCHPresetImagerBarFamily
- (BOOL)hasRoundedCornersForPreset:(id)a3;
- (CGPath)roundedCornerClippingPathForPreset:(id)a3 frame:(CGRect)a4 isVertical:(BOOL)a5;
- (void)addRoundedCornerClipPathToContext:(CGContext *)a3 forPreset:(id)a4 frame:(CGRect)a5 isVertical:(BOOL)a6;
- (void)p_drawBarInContext:(CGContext *)a3 frame:(CGRect)a4 stroke:(id)a5 fill:(id)a6;
- (void)renderInRoundedCornerClippedContext:(CGContext *)a3 forPreset:(id)a4 stroke:(id)a5 barRect:(CGRect)a6 clipRect:(CGRect)a7 isVertical:(BOOL)a8 renderBlock:(id)a9;
@end

@implementation TSCHPresetImagerBarFamily

- (void)p_drawBarInContext:(CGContext *)a3 frame:(CGRect)a4 stroke:(id)a5 fill:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v55 = a5;
  v13 = a6;
  CGContextSaveGState(a3);
  if (v13)
  {
    sub_27628CB34(a3, x, y, width, height, 0.0);
    v22 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v18, v19, v20, v21);
    v23 = v22;
    v28 = objc_msgSend_CGPath(v23, v24, v25, v26, v27);
    v29 = CGPathRetain(v28);

    objc_msgSend_p_fillPath_withFill_inContext_(self, v30, v31, v32, v33, v29, v13, a3);
    CGPathRelease(v29);
  }

  if (v55 && objc_msgSend_shouldRender(v55, v14, v15, v16, v17))
  {
    objc_msgSend_width(v55, v34, v35, v36, v37);
    sub_27628CB34(a3, x, y, width, height, v38 + v38);
    v43 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v39, v40, v41, v42);
    v44 = v43;
    v49 = objc_msgSend_CGPath(v44, v45, v46, v47, v48);
    v50 = CGPathRetain(v49);

    objc_msgSend_applyToContext_insideStroke_(v55, v51, v52, v53, v54, a3, 1);
    CGContextClipToRectSafe();
    CGContextAddPathSafe();
    CGContextStrokePath(a3);
    CGPathRelease(v50);
  }

  CGContextRestoreGState(a3);
}

- (void)renderInRoundedCornerClippedContext:(CGContext *)a3 forPreset:(id)a4 stroke:(id)a5 barRect:(CGRect)a6 clipRect:(CGRect)a7 isVertical:(BOOL)a8 renderBlock:(id)a9
{
  v10 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v30 = a4;
  v18 = a5;
  v19 = a9;
  CGContextSaveGState(a3);
  objc_msgSend_addRoundedCornerClipPathToContext_forPreset_frame_isVertical_(self, v20, x, y, width, a3, v30, v10, height);
  v19[2](v19);

  if (v18 && objc_msgSend_shouldRender(v18, v21, v22, v23, v24))
  {
    objc_msgSend_roundedCornerClippingPathForPreset_frame_isVertical_(self, v25, x, y, width, v30, v10, height);
    objc_msgSend_applyToContext_insideStroke_(v18, v26, v27, v28, v29, a3, 1);
    CGContextClipToRectSafe();
    CGContextAddPathSafe();
    CGContextStrokePath(a3);
  }

  CGContextRestoreGState(a3);
}

- (void)addRoundedCornerClipPathToContext:(CGContext *)a3 forPreset:(id)a4 frame:(CGRect)a5 isVertical:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a4;
  if (objc_msgSend_hasRoundedCornersForPreset_(self, v13, v14, v15, v16))
  {
    objc_msgSend_roundedCornerClippingPathForPreset_frame_isVertical_(self, v17, x, y, width, v18, v6, height);
    CGContextBeginPath(a3);
    CGContextAddPathSafe();
    CGContextClip(a3);
  }
}

- (BOOL)hasRoundedCornersForPreset:(id)a3
{
  v6 = objc_msgSend_chartStyle(a3, a2, v3, v4, v5);
  v11 = objc_msgSend_boxedValueForProperty_(v6, v7, v8, v9, v10, 1347);
  objc_msgSend_tsu_CGFloatValue(v11, v12, v13, v14, v15);
  v17 = v16 > 0.0;

  return v17;
}

- (CGPath)roundedCornerClippingPathForPreset:(id)a3 frame:(CGRect)a4 isVertical:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = objc_msgSend_chartStyle(a3, a2, a4.origin.x, a4.origin.y, a4.size.width);
  v15 = objc_msgSend_boxedValueForProperty_(v10, v11, v12, v13, v14, 1347);
  v20 = objc_msgSend_intValueForProperty_(v10, v16, v17, v18, v19, 1346) != 0;
  objc_msgSend_tsu_CGFloatValue(v15, v21, v22, v23, v24);
  v26 = sub_2762A1C64(v5, v20, !v5, 0, x, y, width, height, v25);
  v27 = CFAutorelease(v26);

  return v27;
}

@end