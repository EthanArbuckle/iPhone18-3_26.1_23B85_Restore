@interface TSCHPresetImagerLineFamily
- (void)p_drawAreaInContext:(CGContext *)a3 points:(const CGPoint *)a4 pointsCount:(unint64_t)a5 stroke:(id)a6 fill:(id)a7;
@end

@implementation TSCHPresetImagerLineFamily

- (void)p_drawAreaInContext:(CGContext *)a3 points:(const CGPoint *)a4 pointsCount:(unint64_t)a5 stroke:(id)a6 fill:(id)a7
{
  v43 = a6;
  v12 = a7;
  CGContextSaveGState(a3);
  v13 = malloc_type_calloc(a5, 0x10uLL, 0x1000040451B5BE8uLL);
  if (v13)
  {
    v18 = v13;
    if (v12)
    {
      memcpy(v13, a4, 16 * a5);
      sub_27628CBE8(a3, v18, a5, 1u, 2, 0.0, v19, v20);
      v21 = sub_2762A1ACC(v18, a5, 1);
      objc_msgSend_p_fillPath_withFill_inContext_(self, v22, v23, v24, v25, v21, v12, a3);
      CGPathRelease(v21);
    }

    if (v43 && objc_msgSend_shouldRender(v43, v14, v15, v16, v17))
    {
      memcpy(v18, a4, 16 * a5);
      objc_msgSend_width(v43, v26, v27, v28, v29);
      v31 = v30 + v30;
      v35 = objc_msgSend_cap(v43, v32, v30, v33, v34);
      sub_27628CBE8(a3, v18, a5, 1u, v35, v31, v36, v37);
      v38 = sub_2762A1ACC(v18, a5, 1);
      objc_msgSend_applyToContext_insideStroke_(v43, v39, v40, v41, v42, a3, 1);
      CGContextAddPathSafe();
      CGContextClip(a3);
      CGContextAddPathSafe();
      CGContextStrokePath(a3);
      CGPathRelease(v38);
    }

    free(v18);
  }

  CGContextRestoreGState(a3);
}

@end