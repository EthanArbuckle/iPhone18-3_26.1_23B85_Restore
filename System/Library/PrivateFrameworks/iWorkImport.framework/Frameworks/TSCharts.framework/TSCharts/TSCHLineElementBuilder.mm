@interface TSCHLineElementBuilder
- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size symbolType:(int)type;
- (void)p_addKnobsForPoint:(CGPoint)point strokedUnitSymbolRect:(CGRect)rect toKnobSet:(id)set symbolsShowing:(BOOL)showing includePoint:(BOOL)includePoint;
@end

@implementation TSCHLineElementBuilder

- (CGPoint)labelPointForPosition:(unsigned int)position rect:(CGRect)rect stringSize:(CGSize)size symbolType:(int)type
{
  v6 = vdup_n_s32(position);
  height = rect.size.height;
  v8 = size.height;
  __asm { FMOV            V5.2D, #-0.5 }

  v14 = vmulq_f64(vsubq_f64(rect.size, size), _Q5);
  *&_Q5.f64[0] = vceqz_s32(vand_s8(v6, 0x400000010));
  v15.i64[0] = SLODWORD(_Q5.f64[0]);
  v15.i64[1] = SHIDWORD(_Q5.f64[0]);
  __asm { FMOV            V7.2D, #2.0 }

  y = rect.origin.y;
  v18 = vsubq_f64(rect.origin, vbslq_s8(v15, v14, vaddq_f64(size, _Q7)));
  *v14.i8 = vceqz_s32(vand_s8(v6, 0x800000020));
  v15.i64[0] = v14.i32[0];
  v15.i64[1] = v14.i32[1];
  v19 = vbslq_s8(v15, v18, vaddq_f64(vaddq_f64(rect.origin, rect.size), _Q7));
  v20 = *&v19.i64[1];
  result.x = *v19.i64;
  result.y = v20;
  return result;
}

- (void)p_addKnobsForPoint:(CGPoint)point strokedUnitSymbolRect:(CGRect)rect toKnobSet:(id)set symbolsShowing:(BOOL)showing includePoint:(BOOL)includePoint
{
  includePointCopy = includePoint;
  showingCopy = showing;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = point.y;
  v14 = point.x;
  setCopy = set;
  if (showingCopy)
  {
    if (includePointCopy)
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
      objc_msgSend_addObject_(setCopy, v25, v26, v27, v28, v24);

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
      objc_msgSend_addObject_(setCopy, v35, v36, v37, v38, v34);

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
      objc_msgSend_addObject_(setCopy, v45, v46, v47, v48, v44);

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
      objc_msgSend_addObject_(setCopy, v55, v56, v57, v58, v54);
    }

    goto LABEL_7;
  }

  if (!includePointCopy)
  {
LABEL_7:
    v59 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v16, v14, v13, v18);
    objc_msgSend_removeObject_(setCopy, v60, v61, v62, v63, v59);

    goto LABEL_8;
  }

  v64.receiver = self;
  v64.super_class = TSCHLineElementBuilder;
  [(TSCHScatterElementBuilder *)&v64 p_addKnobsForPoint:setCopy strokedUnitSymbolRect:0 toKnobSet:1 symbolsShowing:v14 includePoint:v13, x, y, width, height];
LABEL_8:
}

@end