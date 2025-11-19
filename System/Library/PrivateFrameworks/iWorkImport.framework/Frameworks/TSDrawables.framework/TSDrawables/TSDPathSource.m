@interface TSDPathSource
+ (id)pathSourceForShapeType:(int64_t)a3 naturalSize:(CGSize)a4;
+ (id)pathSourceWithArchive:(const void *)a3;
- (BOOL)isCircular;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRectangular;
- (CGAffineTransform)pathFlipTransform;
- (CGSize)naturalSize;
- (NSString)inferredAccessibilityDescription;
- (TSDPathSource)initWithArchive:(const void *)a3;
- (TSUBezierPath)bezierPath;
- (TSUBezierPath)bezierPathWithoutFlips;
- (TSUBezierPath)interiorWrapPath;
- (double)uniformScaleForScalingToNaturalSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)interiorWrapPathForInset:(double)a3 joinStyle:(unint64_t)a4;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)loadSharedFromArchive:(const void *)a3;
- (void)saveSharedToArchive:(void *)a3;
- (void)saveToArchive:(void *)a3;
- (void)setNaturalSize:(CGSize)a3;
@end

@implementation TSDPathSource

+ (id)pathSourceWithArchive:(const void *)a3
{
  v4 = *(a3 + 4);
  if ((v4 & 4) != 0 || (v4 & 8) != 0 || (v4 & 0x10) != 0 || (v4 & 0x20) != 0 || (v4 & 0x40) != 0 || (v4 & 0x80) != 0)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 alloc];
  v8 = objc_msgSend_initWithArchive_(v6, v7, a3);

  return v8;
}

- (void)loadSharedFromArchive:(const void *)a3
{
  objc_msgSend_setHasHorizontalFlip_(self, a2, *(a3 + 88));
  objc_msgSend_setHasVerticalFlip_(self, v5, *(a3 + 89));
  v7 = *(a3 + 4);
  if (v7)
  {
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setLocalizationKey_(self, v8, v10);

    v7 = *(a3 + 4);
  }

  if ((v7 & 2) != 0)
  {
    v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setUserDefinedName_(self, v9, v11);
  }
}

- (void)saveSharedToArchive:(void *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, a2, a3);
  *(a3 + 4) |= 0x100u;
  *(a3 + 88) = hasHorizontalFlip;
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v6, v7);
  *(a3 + 4) |= 0x200u;
  *(a3 + 89) = hasVerticalFlip;
  v11 = objc_msgSend_localizationKey(self, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_localizationKey(self, v12, v13);
    sub_27670EDD8(v27, v14);

    v15 = __s;
    *(a3 + 4) |= 1u;
    sub_276658080(__p, v15);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28)
    {
      free(v28);
    }
  }

  v16 = objc_msgSend_userDefinedName(self, v12, v13);
  v17 = v16 == 0;

  if (!v17)
  {
    v20 = objc_msgSend_userDefinedName(self, v18, v19);
    v23 = objc_msgSend_tsu_stringByFixingBrokenSurrogatePairs(v20, v21, v22);
    sub_27670EDD8(v27, v23);

    v24 = __s;
    *(a3 + 4) |= 2u;
    sub_276658080(__p, v24);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28)
    {
      free(v28);
    }
  }
}

- (TSDPathSource)initWithArchive:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = TSDPathSource;
  v4 = [(TSDPathSource *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_loadSharedFromArchive_(v4, v5, a3);
  }

  return v6;
}

- (void)saveToArchive:(void *)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource(PersistenceAdditions) saveToArchive:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSourcePersistenceAdditions.mm");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 90, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource(PersistenceAdditions) saveToArchive:]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v18, *MEMORY[0x277CBE658], v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, v10, v11);
    objc_msgSend_setHasHorizontalFlip_(v12, v14, hasHorizontalFlip);
    hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v15, v16);
    objc_msgSend_setHasVerticalFlip_(v12, v18, hasVerticalFlip);
    v21 = objc_msgSend_localizationKey(self, v19, v20);
    objc_msgSend_setLocalizationKey_(v12, v22, v21);

    v25 = objc_msgSend_userDefinedIdentifier(self, v23, v24);
    objc_msgSend_setUserDefinedIdentifier_(v12, v26, v25);

    v29 = objc_msgSend_userDefinedName(self, v27, v28);
    objc_msgSend_setUserDefinedName_(v12, v30, v29);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, v8, v9);
      if (hasHorizontalFlip == objc_msgSend_hasHorizontalFlip(v7, v11, v12))
      {
        hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v13, v14);
        v6 = hasVerticalFlip ^ objc_msgSend_hasVerticalFlip(v7, v16, v17) ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  objc_msgSend_hasHorizontalFlip(self, a2, v2);
  objc_msgSend_hasVerticalFlip(self, v4, v5);
  TSUHash();
  return TSUHashWithSeed();
}

- (BOOL)isRectangular
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource isRectangular]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 127, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource isRectangular]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (BOOL)isCircular
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource isCircular]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 137, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource isCircular]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (TSUBezierPath)bezierPath
{
  v4 = objc_msgSend_bezierPathWithoutFlips(self, a2, v2);
  objc_msgSend_pathFlipTransform(self, v5, v6);
  objc_msgSend_transformUsingAffineTransform_(v4, v7, &v9);

  return v4;
}

- (TSUBezierPath)bezierPathWithoutFlips
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource bezierPathWithoutFlips]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 152, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource bezierPathWithoutFlips]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (TSUBezierPath)interiorWrapPath
{
  v4 = objc_msgSend_bezierPath(self, a2, v2);
  if (objc_msgSend_elementCount(v4, v5, v6) >= 5001)
  {
    v9 = MEMORY[0x277D81160];
    objc_msgSend_naturalSize(self, v7, v8);
    TSURectWithSize();
    v12 = objc_msgSend_bezierPathWithRect_(v9, v10, v11);

    v4 = v12;
  }

  return v4;
}

- (id)interiorWrapPathForInset:(double)a3 joinStyle:(unint64_t)a4
{
  v6 = objc_msgSend_interiorWrapPath(self, a2, a4);
  v9 = objc_msgSend_bezierPathByRemovingSmallSubpathsForInteriorWrapsForInset_(v6, v7, v8, a3);

  objc_msgSend_bounds(v9, v10, v11);
  v15 = a3 + a3;
  if (a3 > 0.0 && v13 > v15 && v14 > v15)
  {
    v18 = objc_msgSend_bezierPathByOffsettingPath_joinStyle_attemptingUsingLivarotFirstWithThresholds_(v9, v12, a4, &unk_28859C7B8, -a3);

    v9 = v18;
  }

  return v9;
}

- (CGSize)naturalSize
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource naturalSize]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 191, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource naturalSize]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)setNaturalSize:(CGSize)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource setNaturalSize:]", a3.width, a3.height);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 195, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSDPathSource setNaturalSize:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (double)uniformScaleForScalingToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_msgSend_naturalSize(self, a2, v3);
  v8 = 1.0;
  if (v6 <= 1.0 || v7 <= 1.0)
  {
    return v8;
  }

  v10 = width / v6;
  v11 = height / v7;
  if (v10 >= 1.0 || v11 >= 1.0)
  {
    v13 = v11 <= 1.0 || v10 <= 1.0;
    v14 = fmin(v10, v11);
    if (!v13)
    {
      return v14;
    }

    return v8;
  }

  return fmax(v10, v11);
}

- (CGAffineTransform)pathFlipTransform
{
  v6 = MEMORY[0x277CBF2C0];
  v29 = *(MEMORY[0x277CBF2C0] + 16);
  v30 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v29;
  v28 = *(v6 + 32);
  *&retstr->tx = v28;
  hasHorizontalFlip = objc_msgSend_hasHorizontalFlip(self, a3, v3);
  result = objc_msgSend_hasVerticalFlip(self, v8, v9);
  v13 = result;
  if ((hasHorizontalFlip & 1) != 0 || result)
  {
    if (hasHorizontalFlip)
    {
      v14 = -1.0;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = *MEMORY[0x277CBF348];
    v16 = *(MEMORY[0x277CBF348] + 8);
    objc_msgSend_naturalSize(self, v11, v12);
    v18 = v17;
    v20 = v19;
    v33.origin.x = v15;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    MidX = CGRectGetMidX(v33);
    v34.origin.x = v15;
    v34.origin.y = v16;
    v34.size.width = v18;
    v34.size.height = v20;
    MidY = CGRectGetMidY(v34);
    *&v32.a = v30;
    *&v32.c = v29;
    *&v32.tx = v28;
    CGAffineTransformTranslate(retstr, &v32, MidX, MidY);
    if (v13)
    {
      v23 = -1.0;
    }

    else
    {
      v23 = 1.0;
    }

    v24 = *&retstr->c;
    *&v31.a = *&retstr->a;
    *&v31.c = v24;
    *&v31.tx = *&retstr->tx;
    CGAffineTransformScale(&v32, &v31, v14, v23);
    v25 = *&v32.c;
    *&retstr->a = *&v32.a;
    *&retstr->c = v25;
    *&retstr->tx = *&v32.tx;
    v26 = *&retstr->c;
    *&v31.a = *&retstr->a;
    *&v31.c = v26;
    *&v31.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v32, &v31, -MidX, -MidY);
    v27 = *&v32.c;
    *&retstr->a = *&v32.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v32.tx;
  }

  return result;
}

+ (id)pathSourceForShapeType:(int64_t)a3 naturalSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a4.height / 100.0;
  switch(a3)
  {
    case 0:
    case 3:
      v9 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], a2, a3, 0.0, 0.0, 100.0, 100.0);
      v4 = objc_msgSend_pathSourceWithBezierPath_(TSDBezierPathSource, v14, v9);
      objc_msgSend_setNaturalSize_(v4, v15, v16, width, height);
      goto LABEL_23;
    case 1:
    case 15:
    case 16:
    case 20:
      v9 = objc_msgSend_bezierPathWithStart_end_(MEMORY[0x277D81160], a2, a3, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), sqrt(width * width + a4.height * a4.height), 0.0);
      objc_msgSend_pathSourceWithBezierPath_(TSDBezierPathSource, v10, v9);
      goto LABEL_22;
    case 2:
    case 18:
    case 19:
      v11 = objc_msgSend_pathSourceAtAngleOfSize_forType_(TSDConnectionLinePathSource, a2, a3 == 18, width, a4.height);
      v4 = v11;
      if (a3 == 2)
      {
        objc_msgSend_bend(v11, v12, v13);
      }

      break;
    case 4:
      v27 = objc_msgSend_roundedRectangleWithScalar_naturalSize_continuousCurve_(TSDScalarPathSource, a2, 0, 15.0, width, a4.height);
      goto LABEL_16;
    case 5:
      v9 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], a2, a3, 0.0, 0.0, width, a4.height);
      objc_msgSend_closePath(v9, v44, v45);
      goto LABEL_21;
    case 6:
      v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3, v8);
      objc_msgSend_moveToPoint_(v9, v31, v32, width * 0.5, 0.0);
      objc_msgSend_lineToPoint_(v9, v33, v34, width, height);
      v37 = 0.0;
      v38 = v9;
      goto LABEL_18;
    case 7:
      v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3, v8);
      objc_msgSend_moveToPoint_(v9, v39, v40, 0.0, 0.0);
      objc_msgSend_lineToPoint_(v9, v41, v42, 0.0, width);
      v38 = v9;
      v37 = width;
LABEL_18:
      objc_msgSend_lineToPoint_(v38, v35, v36, v37, height);
      goto LABEL_19;
    case 8:
      v27 = objc_msgSend_rightSingleArrowWithPoint_naturalSize_(TSDPointPathSource, a2, a3, v8 * 64.0, 0.34, width, a4.height);
      goto LABEL_16;
    case 9:
      v27 = objc_msgSend_doubleArrowWithPoint_naturalSize_(TSDPointPathSource, a2, a3, v8 * 44.0, 0.34, width, a4.height);
      goto LABEL_16;
    case 10:
      v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3, v8);
      objc_msgSend_moveToPoint_(v9, v17, v18, 0.0, height * 0.5);
      objc_msgSend_lineToPoint_(v9, v19, v20, width * 0.5, height);
      objc_msgSend_lineToPoint_(v9, v21, v22, width, height * 0.5);
      objc_msgSend_lineToPoint_(v9, v23, v24, width * 0.5, 0.0);
LABEL_19:
      objc_msgSend_closePath(v9, v25, v26);
LABEL_21:
      objc_msgSend_pathSourceWithBezierPath_(TSDBezierPathSource, v43, v9);
      v4 = LABEL_22:;
      goto LABEL_23;
    case 11:
      v27 = objc_msgSend_quoteBubbleWithTailPosition_tailSize_naturalSize_(TSDCalloutPathSource, a2, a3, v8, v8 * 96.0, v8 * 10.0, width, a4.height * 0.8);
      goto LABEL_16;
    case 12:
      v27 = objc_msgSend_calloutWithCornerRadius_tailPosition_tailSize_naturalSize_(TSDCalloutPathSource, a2, a3, 5.0, v8 * -20.0, v8 * 50.0, v8 * 10.0, width, a4.height);
      goto LABEL_16;
    case 13:
      v27 = objc_msgSend_regularPolygonWithScalar_naturalSize_(TSDScalarPathSource, a2, a3, 5.0, width, a4.height);
      goto LABEL_16;
    case 14:
      v27 = objc_msgSend_starWithPoint_naturalSize_(TSDPointPathSource, a2, a3, 5.0, 0.382, width, a4.height);
LABEL_16:
      v4 = v27;
      break;
    case 17:
      v4 = objc_alloc_init(TSDEditableBezierPathSource);
      v9 = objc_msgSend_bezierNodeWithPoint_(TSDBezierNode, v28, v29, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      objc_msgSend_addNode_(v4, v30, v9);
LABEL_23:

      break;
    case 21:
      sub_27680E3D4();
    default:
      break;
  }

  return v4;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDPathSource mixingTypeWithObject:context:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 345, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v23 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v21, "[TSDPathSource mixingTypeWithObject:context:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, v18, v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDPathSource mixedObjectWithFraction:ofObject:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 349, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v21 = objc_msgSend_stringWithFormat_(v17, v20, @"Abstract method not overridden by %@: %s", v19, "[TSDPathSource mixedObjectWithFraction:ofObject:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, v16, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSString)inferredAccessibilityDescription
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDPathSource inferredAccessibilityDescription]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 360, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDPathSource inferredAccessibilityDescription]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

@end