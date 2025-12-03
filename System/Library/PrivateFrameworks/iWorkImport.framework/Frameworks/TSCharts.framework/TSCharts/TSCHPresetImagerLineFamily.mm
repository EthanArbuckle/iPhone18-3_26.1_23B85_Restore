@interface TSCHPresetImagerLineFamily
- (void)p_drawAreaInContext:(CGContext *)context points:(const CGPoint *)points pointsCount:(unint64_t)count stroke:(id)stroke fill:(id)fill;
@end

@implementation TSCHPresetImagerLineFamily

- (void)p_drawAreaInContext:(CGContext *)context points:(const CGPoint *)points pointsCount:(unint64_t)count stroke:(id)stroke fill:(id)fill
{
  strokeCopy = stroke;
  fillCopy = fill;
  CGContextSaveGState(context);
  v13 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
  if (v13)
  {
    v18 = v13;
    if (fillCopy)
    {
      memcpy(v13, points, 16 * count);
      sub_27628CBE8(context, v18, count, 1u, 2, 0.0, v19, v20);
      v21 = sub_2762A1ACC(v18, count, 1);
      objc_msgSend_p_fillPath_withFill_inContext_(self, v22, v23, v24, v25, v21, fillCopy, context);
      CGPathRelease(v21);
    }

    if (strokeCopy && objc_msgSend_shouldRender(strokeCopy, v14, v15, v16, v17))
    {
      memcpy(v18, points, 16 * count);
      objc_msgSend_width(strokeCopy, v26, v27, v28, v29);
      v31 = v30 + v30;
      v35 = objc_msgSend_cap(strokeCopy, v32, v30, v33, v34);
      sub_27628CBE8(context, v18, count, 1u, v35, v31, v36, v37);
      v38 = sub_2762A1ACC(v18, count, 1);
      objc_msgSend_applyToContext_insideStroke_(strokeCopy, v39, v40, v41, v42, context, 1);
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
      CGPathRelease(v38);
    }

    free(v18);
  }

  CGContextRestoreGState(context);
}

@end