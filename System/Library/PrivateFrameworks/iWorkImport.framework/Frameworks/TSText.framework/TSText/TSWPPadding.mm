@interface TSWPPadding
+ (TSWPPadding)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver;
+ (id)padding;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TSWPPadding)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
- (UIEdgeInsets)edgeInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)paddingByMirroringHorizontal;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)transform:(CGAffineTransform *)transform;
@end

@implementation TSWPPadding

+ (id)padding
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSWPPadding)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v10 = [self alloc];
  v13 = objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(v10, v11, v12, inset, leftInset, bottomInset, rightInset);

  return v13;
}

- (TSWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v26.receiver = self;
  v26.super_class = TSWPPadding;
  v7 = [(TSWPPadding *)&v26 init];
  if (v7)
  {
    insetCopy = inset;
    if (inset > 50000000.0 || (insetCopy = leftInset, leftInset > 50000000.0) || (insetCopy = bottomInset, bottomInset > 50000000.0) || (insetCopy = rightInset, rightInset > 50000000.0))
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPPadding initWithTopInset:leftInset:bottomInset:rightInset:]", 50000000.0, insetCopy);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 59, 0, "Illegal huge padding value");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    v16.f64[0] = inset;
    v16.f64[1] = leftInset;
    v17 = vmaxnmq_f64(v16, 0);
    v18 = vdupq_n_s64(0x4187D78400000000uLL);
    *(v7 + 8) = vbslq_s8(vcgtq_f64(v17, v18), v18, v17);
    v19.f64[0] = bottomInset;
    v19.f64[1] = rightInset;
    v20 = vmaxnmq_f64(v19, 0);
    *(v7 + 24) = vbslq_s8(vcgtq_f64(v20, v18), v18, v20);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  topInset = self->_topInset;
  leftInset = self->_leftInset;
  bottomInset = self->_bottomInset;
  rightInset = self->_rightInset;

  return objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(v7, v8, v9, topInset, leftInset, bottomInset, rightInset);
}

+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSWPPadding alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSWPPadding)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v4 = *(archive + 4);
  if (v4)
  {
    v5 = *(archive + 6);
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *(archive + 7);
  if ((v4 & 2) == 0)
  {
    v6 = 0.0;
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(archive + 8);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(archive + 9);
  if ((v4 & 8) == 0)
  {
    v8 = 0.0;
  }

  return objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(self, a2, archive, unarchiver, v6, v5, v8, v7);
}

- (void)transform:(CGAffineTransform *)transform
{
  a = transform->a;
  if (transform->a >= transform->d)
  {
    a = transform->d;
  }

  *&self->_topInset = vmulq_n_f64(*&self->_topInset, a);
  *&self->_bottomInset = vmulq_n_f64(*&self->_bottomInset, a);
}

- (id)paddingByMirroringHorizontal
{
  objc_msgSend_topInset(self, a2, v2);
  objc_msgSend_rightInset(self, v4, v5);
  objc_msgSend_bottomInset(self, v6, v7);
  objc_msgSend_leftInset(self, v8, v9);

  return MEMORY[0x2821F9670](TSWPPadding, sel_paddingWithTopInset_leftInset_bottomInset_rightInset_, v10);
}

- (UIEdgeInsets)edgeInsets
{
  objc_msgSend_topInset(self, a2, v2);
  v5 = v4;
  objc_msgSend_leftInset(self, v6, v7);
  v9 = v8;
  objc_msgSend_bottomInset(self, v10, v11);
  v13 = v12;
  objc_msgSend_rightInset(self, v14, v15);
  v17 = v16;
  v18 = v5;
  v19 = v9;
  v20 = v13;
  result.right = v17;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  leftInset = self->_leftInset;
  if (leftInset != 0.0)
  {
    if ((*&leftInset & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (leftInset > 0.0 && leftInset > 3.40282347e38)
      {
        v76 = archiverCopy;
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 111, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        v23 = 2139095039;
      }

      else
      {
        if (leftInset >= 0.0 || leftInset >= -3.40282347e38)
        {
          goto LABEL_7;
        }

        v76 = archiverCopy;
        v48 = MEMORY[0x277D81150];
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 111, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
        v23 = -8388609;
      }

      v9 = *&v23;
      archiverCopy = v76;
      goto LABEL_8;
    }

LABEL_7:
    v9 = leftInset;
LABEL_8:
    *(archive + 4) |= 1u;
    *(archive + 6) = v9;
  }

  topInset = self->_topInset;
  if (topInset == 0.0)
  {
    goto LABEL_17;
  }

  if ((*&topInset & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (topInset > 0.0 && topInset > 3.40282347e38)
  {
    v77 = archiverCopy;
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 113, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v31 = 2139095039;
LABEL_43:
    v11 = *&v31;
    archiverCopy = v77;
    goto LABEL_16;
  }

  if (topInset < 0.0 && topInset < -3.40282347e38)
  {
    v77 = archiverCopy;
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 113, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
    v31 = -8388609;
    goto LABEL_43;
  }

LABEL_15:
  v11 = topInset;
LABEL_16:
  *(archive + 4) |= 2u;
  *(archive + 7) = v11;
LABEL_17:
  rightInset = self->_rightInset;
  if (rightInset == 0.0)
  {
    goto LABEL_25;
  }

  if ((*&rightInset & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (rightInset > 0.0 && rightInset > 3.40282347e38)
  {
    v78 = archiverCopy;
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 115, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    v39 = 2139095039;
LABEL_45:
    v13 = *&v39;
    archiverCopy = v78;
    goto LABEL_24;
  }

  if (rightInset < 0.0 && rightInset < -3.40282347e38)
  {
    v78 = archiverCopy;
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v65, 115, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68);
    v39 = -8388609;
    goto LABEL_45;
  }

LABEL_23:
  v13 = rightInset;
LABEL_24:
  *(archive + 4) |= 4u;
  *(archive + 8) = v13;
LABEL_25:
  bottomInset = self->_bottomInset;
  if (bottomInset == 0.0)
  {
    goto LABEL_33;
  }

  if ((*&bottomInset & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (bottomInset > 0.0 && bottomInset > 3.40282347e38)
  {
    v79 = archiverCopy;
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 117, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
    v47 = 2139095039;
LABEL_47:
    v15 = *&v47;
    archiverCopy = v79;
    goto LABEL_32;
  }

  if (bottomInset < 0.0 && bottomInset < -3.40282347e38)
  {
    v79 = archiverCopy;
    v69 = MEMORY[0x277D81150];
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPPadding saveToArchive:archiver:]");
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPadding.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v70, v72, 117, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
    v47 = -8388609;
    goto LABEL_47;
  }

LABEL_31:
  v15 = bottomInset;
LABEL_32:
  *(archive + 4) |= 8u;
  *(archive + 9) = v15;
LABEL_33:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = v5[1];
    topInset = self->_topInset;
    if ((v6 == topInset || vabdd_f64(v6, topInset) < fabs(topInset * 0.000000999999997)) && ((v8 = v5[2], leftInset = self->_leftInset, v8 == leftInset) || vabdd_f64(v8, leftInset) < fabs(leftInset * 0.000000999999997)) && ((v10 = v5[3], bottomInset = self->_bottomInset, v10 == bottomInset) || vabdd_f64(v10, bottomInset) < fabs(bottomInset * 0.000000999999997)))
    {
      v12 = v5[4];
      rightInset = self->_rightInset;
      v14 = v12 == rightInset || vabdd_f64(v12, rightInset) < fabs(rightInset * 0.000000999999997);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"(%@*)%p { topInset=%f leftInset=%f; bottomInset=%f; rightInset=%f }", v5, self, *&self->_topInset, *&self->_leftInset, *&self->_bottomInset, *&self->_rightInset);;

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    if (objc_msgSend_isEqual_(self, v6, v7))
    {
      v8 = 5;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v7 = [TSWPPadding alloc];
  objc_msgSend_topInset(self, v8, v9);
  objc_msgSend_topInset(v6, v10, v11);
  TSUMixFloats();
  v13 = v12;
  objc_msgSend_leftInset(self, v14, v15);
  objc_msgSend_leftInset(v6, v16, v17);
  TSUMixFloats();
  v19 = v18;
  objc_msgSend_bottomInset(self, v20, v21);
  objc_msgSend_bottomInset(v6, v22, v23);
  TSUMixFloats();
  v25 = v24;
  objc_msgSend_rightInset(self, v26, v27);
  objc_msgSend_rightInset(v6, v28, v29);
  TSUMixFloats();
  v33 = objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(v7, v30, v31, v13, v19, v25, v32);

  return v33;
}

@end