@interface TSCHLineElementBuilder
- (CGPoint)labelPointForPosition:(unsigned int)a3 rect:(CGRect)a4 stringSize:(CGSize)a5 symbolType:(int)a6;
- (void)p_addKnobsForPoint:(CGPoint)a3 strokedUnitSymbolRect:(CGRect)a4 toKnobSet:(id)a5 symbolsShowing:(BOOL)a6 includePoint:(BOOL)a7;
@end

@implementation TSCHLineElementBuilder

- (CGPoint)labelPointForPosition:(unsigned int)a3 rect:(CGRect)a4 stringSize:(CGSize)a5 symbolType:(int)a6
{
  v6 = vdup_n_s32(a3);
  height = a4.size.height;
  v8 = a5.height;
  __asm { FMOV            V5.2D, #-0.5 }

  v14 = vmulq_f64(vsubq_f64(a4.size, a5), _Q5);
  *&_Q5.f64[0] = vceqz_s32(vand_s8(v6, 0x400000010));
  v15.i64[0] = SLODWORD(_Q5.f64[0]);
  v15.i64[1] = SHIDWORD(_Q5.f64[0]);
  __asm { FMOV            V7.2D, #2.0 }

  y = a4.origin.y;
  v18 = vsubq_f64(a4.origin, vbslq_s8(v15, v14, vaddq_f64(a5, _Q7)));
  *v14.i8 = vceqz_s32(vand_s8(v6, 0x800000020));
  v15.i64[0] = v14.i32[0];
  v15.i64[1] = v14.i32[1];
  v19 = vbslq_s8(v15, v18, vaddq_f64(vaddq_f64(a4.origin, a4.size), _Q7));
  v20 = *&v19.i64[1];
  result.x = *v19.i64;
  result.y = v20;
  return result;
}

- (void)p_addKnobsForPoint:(CGPoint)a3 strokedUnitSymbolRect:(CGRect)a4 toKnobSet:(id)a5 symbolsShowing:(BOOL)a6 includePoint:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.y;
  v14 = a3.x;
  v17 = a5;
  if (v8)
  {
    if (v7)
    {
      v19 = MEMORY[0x277CCAE60];
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      CGRectGetMinX(v65);
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      CGRectGetMinY(v66);
      TSUAddPoints();
      v24 = objc_msgSend_valueWithCGPoint_(v19, v20, v21, v22, v23);
      objc_msgSend_addObject_(v17, v25, v26, v27, v28, v24);

      v29 = MEMORY[0x277CCAE60];
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = height;
      CGRectGetMaxX(v67);
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      CGRectGetMinY(v68);
      TSUAddPoints();
      v34 = objc_msgSend_valueWithCGPoint_(v29, v30, v31, v32, v33);
      objc_msgSend_addObject_(v17, v35, v36, v37, v38, v34);

      v39 = MEMORY[0x277CCAE60];
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      CGRectGetMinX(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      CGRectGetMaxY(v70);
      TSUAddPoints();
      v44 = objc_msgSend_valueWithCGPoint_(v39, v40, v41, v42, v43);
      objc_msgSend_addObject_(v17, v45, v46, v47, v48, v44);

      v49 = MEMORY[0x277CCAE60];
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      CGRectGetMaxX(v71);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      CGRectGetMaxY(v72);
      TSUAddPoints();
      v54 = objc_msgSend_valueWithCGPoint_(v49, v50, v51, v52, v53);
      objc_msgSend_addObject_(v17, v55, v56, v57, v58, v54);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v59 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v16, v14, v13, v18);
    objc_msgSend_removeObject_(v17, v60, v61, v62, v63, v59);

    goto LABEL_8;
  }

  v64.receiver = self;
  v64.super_class = TSCHLineElementBuilder;
  [(TSCHScatterElementBuilder *)&v64 p_addKnobsForPoint:v17 strokedUnitSymbolRect:0 toKnobSet:1 symbolsShowing:v14 includePoint:v13, x, y, width, height];
LABEL_8:
}

@end