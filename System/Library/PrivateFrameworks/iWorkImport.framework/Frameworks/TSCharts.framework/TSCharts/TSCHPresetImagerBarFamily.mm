@interface TSCHPresetImagerBarFamily
- (BOOL)hasRoundedCornersForPreset:(id)preset;
- (CGPath)roundedCornerClippingPathForPreset:(id)preset frame:(CGRect)frame isVertical:(BOOL)vertical;
- (void)addRoundedCornerClipPathToContext:(CGContext *)context forPreset:(id)preset frame:(CGRect)frame isVertical:(BOOL)vertical;
- (void)p_drawBarInContext:(CGContext *)context frame:(CGRect)frame stroke:(id)stroke fill:(id)fill;
- (void)renderInRoundedCornerClippedContext:(CGContext *)context forPreset:(id)preset stroke:(id)stroke barRect:(CGRect)rect clipRect:(CGRect)clipRect isVertical:(BOOL)vertical renderBlock:(id)block;
@end

@implementation TSCHPresetImagerBarFamily

- (void)p_drawBarInContext:(CGContext *)context frame:(CGRect)frame stroke:(id)stroke fill:(id)fill
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  strokeCopy = stroke;
  fillCopy = fill;
  CGContextSaveGState(context);
  if (fillCopy)
  {
    sub_27628CB34(context, x, y, width, height, 0.0);
    v22 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v18, v19, v20, v21);
    v23 = v22;
    v28 = objc_msgSend_CGPath(v23, v24, v25, v26, v27);
    v29 = CGPathRetain(v28);

    objc_msgSend_p_fillPath_withFill_inContext_(self, v30, v31, v32, v33, v29, fillCopy, context);
    CGPathRelease(v29);
  }

  if (strokeCopy && objc_msgSend_shouldRender(strokeCopy, v14, v15, v16, v17))
  {
    objc_msgSend_width(strokeCopy, v34, v35, v36, v37);
    sub_27628CB34(context, x, y, width, height, v38 + v38);
    v43 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v39, v40, v41, v42);
    v44 = v43;
    v49 = objc_msgSend_CGPath(v44, v45, v46, v47, v48);
    v50 = CGPathRetain(v49);

    objc_msgSend_applyToContext_insideStroke_(strokeCopy, v51, v52, v53, v54, context, 1);
    CGContextClipToRectSafe();
    CGContextAddPathSafe();
    CGContextStrokePath(context);
    CGPathRelease(v50);
  }

  CGContextRestoreGState(context);
}

- (void)renderInRoundedCornerClippedContext:(CGContext *)context forPreset:(id)preset stroke:(id)stroke barRect:(CGRect)rect clipRect:(CGRect)clipRect isVertical:(BOOL)vertical renderBlock:(id)block
{
  verticalCopy = vertical;
  height = clipRect.size.height;
  width = clipRect.size.width;
  y = clipRect.origin.y;
  x = clipRect.origin.x;
  presetCopy = preset;
  strokeCopy = stroke;
  blockCopy = block;
  CGContextSaveGState(context);
  objc_msgSend_addRoundedCornerClipPathToContext_forPreset_frame_isVertical_(self, v20, x, y, width, context, presetCopy, verticalCopy, height);
  blockCopy[2](blockCopy);

  if (strokeCopy && objc_msgSend_shouldRender(strokeCopy, v21, v22, v23, v24))
  {
    objc_msgSend_roundedCornerClippingPathForPreset_frame_isVertical_(self, v25, x, y, width, presetCopy, verticalCopy, height);
    objc_msgSend_applyToContext_insideStroke_(strokeCopy, v26, v27, v28, v29, context, 1);
    CGContextClipToRectSafe();
    CGContextAddPathSafe();
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (void)addRoundedCornerClipPathToContext:(CGContext *)context forPreset:(id)preset frame:(CGRect)frame isVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  presetCopy = preset;
  if (objc_msgSend_hasRoundedCornersForPreset_(self, v13, v14, v15, v16))
  {
    objc_msgSend_roundedCornerClippingPathForPreset_frame_isVertical_(self, v17, x, y, width, presetCopy, verticalCopy, height);
    CGContextBeginPath(context);
    CGContextAddPathSafe();
    CGContextClip(context);
  }
}

- (BOOL)hasRoundedCornersForPreset:(id)preset
{
  v6 = objc_msgSend_chartStyle(preset, a2, v3, v4, v5);
  v11 = objc_msgSend_boxedValueForProperty_(v6, v7, v8, v9, v10, 1347);
  objc_msgSend_tsu_CGFloatValue(v11, v12, v13, v14, v15);
  v17 = v16 > 0.0;

  return v17;
}

- (CGPath)roundedCornerClippingPathForPreset:(id)preset frame:(CGRect)frame isVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = objc_msgSend_chartStyle(preset, a2, frame.origin.x, frame.origin.y, frame.size.width);
  v15 = objc_msgSend_boxedValueForProperty_(v10, v11, v12, v13, v14, 1347);
  v20 = objc_msgSend_intValueForProperty_(v10, v16, v17, v18, v19, 1346) != 0;
  objc_msgSend_tsu_CGFloatValue(v15, v21, v22, v23, v24);
  v26 = sub_2762A1C64(verticalCopy, v20, !verticalCopy, 0, x, y, width, height, v25);
  v27 = CFAutorelease(v26);

  return v27;
}

@end