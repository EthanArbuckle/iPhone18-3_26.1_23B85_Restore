@interface TSDScalarPathSource
+ (id)chevronWithScalar:(double)scalar naturalSize:(CGSize)size;
+ (id)pathSourceWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size;
+ (id)regularPolygonWithScalar:(double)scalar naturalSize:(CGSize)size;
+ (id)roundedRectangleWithScalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangular;
- (CGPath)p_newChevronPath;
- (CGPath)p_newRegularPolygonPath;
- (CGPath)p_newRoundedRectPath;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)p_getControlKnobPointForChevron;
- (CGPoint)p_getControlKnobPointForRegularPolygon;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGSize)naturalSize;
- (TSDScalarPathSource)initWithArchive:(const void *)archive;
- (TSDScalarPathSource)initWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve;
- (double)cornerRadius;
- (double)maxCornerRadius;
- (double)maxScalar;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)name;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (unint64_t)numberOfSides;
- (void)p_setControlKnobPointForChevron:(CGPoint)chevron;
- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)polygon;
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect;
- (void)saveToArchive:(void *)archive;
- (void)scaleToNaturalSize:(CGSize)size;
- (void)setIsCurveContinuous:(BOOL)continuous;
- (void)setScalarValue:(id)value;
@end

@implementation TSDScalarPathSource

+ (id)roundedRectangleWithScalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve
{
  curveCopy = curve;
  height = size.height;
  width = size.width;
  v9 = [TSDScalarPathSource alloc];
  v11 = objc_msgSend_initWithType_scalar_naturalSize_continuousCurve_(v9, v10, 0, curveCopy, scalar, width, height);

  return v11;
}

+ (id)regularPolygonWithScalar:(double)scalar naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [TSDScalarPathSource alloc];
  v9 = objc_msgSend_initWithType_scalar_naturalSize_continuousCurve_(v7, v8, 1, 0, scalar, width, height);

  return v9;
}

+ (id)chevronWithScalar:(double)scalar naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [TSDScalarPathSource alloc];
  v9 = objc_msgSend_initWithType_scalar_naturalSize_continuousCurve_(v7, v8, 2, 0, scalar, width, height);

  return v9;
}

+ (id)pathSourceWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = [TSDScalarPathSource alloc];
  v11 = objc_msgSend_initWithType_scalar_naturalSize_continuousCurve_(v9, v10, type, 0, scalar, width, height);

  return v11;
}

- (TSDScalarPathSource)initWithType:(unint64_t)type scalar:(double)scalar naturalSize:(CGSize)size continuousCurve:(BOOL)curve
{
  curveCopy = curve;
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = TSDScalarPathSource;
  v11 = [(TSDScalarPathSource *)&v20 init];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setType_(v11, v12, type);
    objc_msgSend_setScalar_(v13, v14, v15, scalar);
    objc_msgSend_setNaturalSize_(v13, v16, v17, width, height);
    objc_msgSend_setIsCurveContinuous_(v13, v18, curveCopy);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = TSDScalarPathSource;
  v4 = [(TSDPathSource *)&v22 copyWithZone:zone];
  v7 = objc_msgSend_type(self, v5, v6);
  objc_msgSend_setType_(v4, v8, v7);
  objc_msgSend_scalar(self, v9, v10);
  objc_msgSend_setScalar_(v4, v11, v12);
  objc_msgSend_naturalSize(self, v13, v14);
  objc_msgSend_setNaturalSize_(v4, v15, v16);
  isCurveContinuous = objc_msgSend_isCurveContinuous(self, v17, v18);
  objc_msgSend_setIsCurveContinuous_(v4, v20, isCurveContinuous);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v27) = 1;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = TSDScalarPathSource;
    if ([(TSDPathSource *)&v29 isEqual:equalCopy])
    {
      objc_opt_class();
      v5 = TSUCheckedDynamicCast();
      v8 = objc_msgSend_type(self, v6, v7);
      if (v8 == objc_msgSend_type(v5, v9, v10) && ((objc_msgSend_scalar(self, v11, v12), v14 = v13, objc_msgSend_scalar(v5, v15, v16), v14 == v19) || vabdd_f64(v14, v19) < 0.00999999978) && (objc_msgSend_naturalSize(self, v17, v18), objc_msgSend_naturalSize(v5, v20, v21), TSUNearlyEqualSizes()))
      {
        isCurveContinuous = objc_msgSend_isCurveContinuous(self, v22, v23);
        v27 = isCurveContinuous ^ objc_msgSend_isCurveContinuous(v5, v25, v26) ^ 1;
      }

      else
      {
        LOBYTE(v27) = 0;
      }
    }

    else
    {
      LOBYTE(v27) = 0;
    }
  }

  return v27;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)description
{
  v25.receiver = self;
  v25.super_class = TSDScalarPathSource;
  v3 = [(TSDScalarPathSource *)&v25 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v7 = MEMORY[0x277CCACA8];
  v10 = objc_msgSend_type(self, v8, v9);
  objc_msgSend_scalar(self, v11, v12);
  v14 = v13;
  objc_msgSend_naturalSize(self, v15, v16);
  v17 = NSStringFromCGSize(v27);
  isCurveContinuous = objc_msgSend_isCurveContinuous(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v7, v21, @" type=%lu; scalar=%f; natural size=%@; continuous curve=%d", v10, v14, v17, isCurveContinuous);;
  objc_msgSend_appendString_(v6, v23, v22);

  return v6;
}

- (void)setIsCurveContinuous:(BOOL)continuous
{
  if (continuous)
  {
    if (!objc_msgSend_type(self, a2, continuous))
    {
      v12 = 1;
      goto LABEL_5;
    }

    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDScalarPathSource setIsCurveContinuous:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDScalarPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 135, 0, "Trying to make a non-rounded-rectangle path continuously curve");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
  }

  v12 = 0;
LABEL_5:
  self->mIsCurveContinuous = v12;
}

- (void)scaleToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!objc_msgSend_type(self, a2, v3))
  {
    objc_msgSend_uniformScaleForScalingToNaturalSize_(self, v7, v8, width, height);
    self->mScalar = v9 * self->mScalar;
  }

  self->mNaturalSize.width = width;
  self->mNaturalSize.height = height;
}

- (void)setScalarValue:(id)value
{
  objc_msgSend_floatValue(value, a2, value);
  v7 = v6;

  objc_msgSend_setScalar_(self, v4, v5, v7);
}

- (double)maxScalar
{
  v4 = objc_msgSend_type(self, a2, v2);
  if (v4 == 2)
  {
    objc_msgSend_naturalSize(self, v5, v6);
    return v11 / v12;
  }

  else if (v4 == 1)
  {
    return 100.0;
  }

  else
  {
    result = 0.0;
    if (!v4)
    {
      objc_msgSend_naturalSize(self, v5, v6, 0.0);
      TSUDistance();
      v9 = v8 * 0.5;
      TSUDistance();
      result = v10 * 0.5;
      if (v9 < result)
      {
        return v9;
      }
    }
  }

  return result;
}

- (double)cornerRadius
{
  if (objc_msgSend_type(self, a2, v2))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDScalarPathSource cornerRadius]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDScalarPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 189, 0, "called cornerRadius on wrong type pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_scalar(self, v4, v5);
  objc_msgSend_maxCornerRadius(self, v13, v14);

  TSUClamp();
  return result;
}

- (double)maxCornerRadius
{
  if (objc_msgSend_type(self, a2, v2))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDScalarPathSource maxCornerRadius]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDScalarPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 195, 0, "called cornerRadius on wrong type pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  MEMORY[0x2821F9670](self, sel_maxScalar, v5);
  return result;
}

- (unint64_t)numberOfSides
{
  if (objc_msgSend_type(self, a2, v2) != 1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDScalarPathSource numberOfSides]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDScalarPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 200, 0, "called numberOfSides on wrong type pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_scalar(self, v4, v5);
  return v13;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  v4 = objc_msgSend_type(self, a2, position);
  if (v4 == 2)
  {
    objc_msgSend_p_getControlKnobPointForChevron(self, v5, v6);
  }

  else if (v4 == 1)
  {
    objc_msgSend_p_getControlKnobPointForRegularPolygon(self, v5, v6);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (!v4)
    {
      objc_msgSend_p_getControlKnobPointForRoundedRect(self, v5, v6, 0.0, 0.0);
    }
  }

  result.y = v7;
  result.x = v8;
  return result;
}

- (id)bezierPathWithoutFlips
{
  v4 = objc_msgSend_type(self, a2, v2);
  switch(v4)
  {
    case 2:
      v7 = objc_msgSend_p_newChevronPath(self, v5, v6);
      goto LABEL_7;
    case 1:
      v7 = objc_msgSend_p_newRegularPolygonPath(self, v5, v6);
      goto LABEL_7;
    case 0:
      v7 = objc_msgSend_p_newRoundedRectPath(self, v5, v6);
LABEL_7:
      v9 = v7;
      objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v8, v7);
      goto LABEL_9;
  }

  v9 = 0;
  objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v5, 0);
  v10 = LABEL_9:;
  CGPathRelease(v9);

  return v10;
}

- (BOOL)isRectangular
{
  if (objc_msgSend_type(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_scalar(self, v4, v5);
  return v7 == 0.0;
}

- (id)name
{
  v3 = objc_msgSend_type(self, a2, v2);
  if (v3 > 2)
  {
    v9 = 0;
  }

  else
  {
    v6 = off_27A6CC6C8[v3];
    v7 = sub_2767B590C(v3, v4, v5);
    v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, v6, &stru_28857D120, @"TSDrawables");
  }

  return v9;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDScalarPathSource mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDScalarPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 333, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_type(self, v7, v8);
  if (v16 == objc_msgSend_type(v6, v17, v18))
  {
    objc_msgSend_naturalSize(self, v19, v20);
    objc_msgSend_naturalSize(v6, v21, v22);
    if (!TSUNearlyEqualSizes() || (objc_msgSend_scalar(self, v23, v24), v26 = v25, objc_msgSend_scalar(v6, v27, v28), v30 = 4, v26 != v29) && vabdd_f64(v26, v29) >= 0.00999999978)
    {
      if (objc_msgSend_type(self, v23, v24) == 1)
      {
        objc_msgSend_scalar(self, v31, v32);
        v34 = v33;
        objc_msgSend_scalar(v6, v35, v36);
        if (vabdd_f64(v34, v37) <= 2.0)
        {
          v30 = 2;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v30 = 3;
      }
    }
  }

  else
  {
    v30 = 1;
  }

  return v30;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  objc_msgSend_scalar(self, v7, v8);
  objc_msgSend_scalar(v6, v9, v10);
  TSUMix();
  v12 = v11;
  objc_msgSend_naturalSize(self, v13, v14);
  objc_msgSend_naturalSize(v6, v15, v16);
  TSUMixSizes();
  v18 = v17;
  v20 = v19;
  v23 = objc_msgSend_type(self, v21, v22);
  v25 = objc_msgSend_pathSourceWithType_scalar_naturalSize_(TSDScalarPathSource, v24, v23, v12, v18, v20);

  return v25;
}

- (CGPath)p_newRoundedRectPath
{
  objc_msgSend_naturalSize(self, a2, v2);
  objc_msgSend_scalar(self, v4, v5);
  v7 = v6;
  TSUDistance();
  v9 = v8 * 0.5;
  TSUDistance();
  v11 = v10 * 0.5;
  if (v9 < v11)
  {
    v11 = v9;
  }

  if (v7 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = MEMORY[0x277D81160];
  TSURectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  isCurveContinuous = objc_msgSend_isCurveContinuous(self, v22, v23);
  v26 = objc_msgSend_bezierPathWithRoundedRect_upperRightRadius_lowerRightRadius_lowerLeftRadius_upperLeftRadius_useLegacyCorners_keepNoOpElements_(v13, v25, isCurveContinuous ^ 1u, 0, v15, v17, v19, v21, v12, v12, v12, v12);
  v27 = v26;
  v30 = objc_msgSend_CGPath(v27, v28, v29);
  v31 = CGPathRetain(v30);

  return v31;
}

- (CGPath)p_newRegularPolygonPath
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_scalar(self, v4, v5);
  v7 = fmax(v6, 3.0);
  objc_msgSend_naturalSize(self, v8, v9);
  v11 = v10 * 0.5;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, 1.0, v12 / v10);
  v15 = v17;
  CGAffineTransformTranslate(&v16, &v15, v11, v11);
  v17 = v16;
  v16.a = 0.0;
  v16.b = 0.0;
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      TSUOriginRotate();
      if (i)
      {
        CGPathAddLineToPointSafe();
      }

      else
      {
        CGPathMoveToPointSafe();
      }
    }
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newChevronPath
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_naturalSize(self, v4, v5);
  objc_msgSend_scalar(self, v6, v7);
  TSUClamp();
  if (v8 == 0.0)
  {
    TSURectWithSize();
    CGPathAddRectSafe();
  }

  else
  {
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)rect
{
  objc_msgSend_naturalSize(self, a2, v3);
  TSUDistance();
  TSUDistance();
  TSUClamp();

  objc_msgSend_setScalar_(self, v5, v6);
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  objc_msgSend_naturalSize(self, a2, v2);
  objc_msgSend_scalar(self, v4, v5);
  TSUDistance();
  TSUDistance();
  TSUClamp();
  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)p_setControlKnobPointForRegularPolygon:(CGPoint)polygon
{
  y = polygon.y;
  x = polygon.x;
  objc_msgSend_naturalSize(self, a2, v3);
  v8 = v7;
  v10 = v9;
  if (objc_msgSend_hasVerticalFlip(self, v11, v12))
  {
    v13 = v10 - y;
  }

  else
  {
    v13 = y;
  }

  v14 = v8 / v10 * (v13 - v10 * 0.5);
  TSUPointLength();
  v18 = acos(-(x - v8 * 0.5) / v15);
  if (v14 > 0.0)
  {
    v18 = 6.28318531 - v18;
  }

  v19 = v18 / 6.28318531 + -0.25;
  if (v19 < 0.0)
  {
    v19 = v19 + 1.0;
  }

  v20 = v19 * 9.0 + 3.5;
  if (v20 <= 0xB)
  {
    v21 = v20;
  }

  else
  {
    v21 = 3;
  }

  objc_msgSend_scalar(self, v16, v17);
  if (v24 != 3 || v21 == 4)
  {
    objc_msgSend_scalar(self, v22, v23);
    if (v27 != 11 || v21 == 10)
    {

      objc_msgSend_setScalar_(self, v25, v26, v21);
    }
  }
}

- (CGPoint)p_getControlKnobPointForRegularPolygon
{
  objc_msgSend_scalar(self, a2, v2);
  objc_msgSend_naturalSize(self, v4, v5);
  v7 = v6;
  v9 = v8;
  v10 = v6 * 0.5;
  TSUOriginRotate();
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v11, v12);
  v14 = v10 + 0.0;
  v15 = v9 * 0.5 + v9 / v7 * 0.0;
  if (hasVerticalFlip)
  {
    v15 = v9 - (v9 * 0.5 + v9 / v7 * 0.0);
  }

  result.y = v15;
  result.x = v14;
  return result;
}

- (void)p_setControlKnobPointForChevron:(CGPoint)chevron
{
  objc_msgSend_naturalSize(self, a2, v3);
  v6 = v5;
  TSUClamp();
  v10 = v9 / v6;

  objc_msgSend_setScalar_(self, v7, v8, v10);
}

- (CGPoint)p_getControlKnobPointForChevron
{
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = v4;
  objc_msgSend_scalar(self, v6, v7);
  TSUClamp();
  v9 = v5 * 0.5;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)inferredAccessibilityDescription
{
  v4 = objc_msgSend_type(self, a2, v2);
  v7 = objc_msgSend_scalar(self, v5, v6);
  v11 = llround(v10);
  if (v4 != 1)
  {
    if (v4)
    {
      v16 = &stru_28857D120;
      goto LABEL_30;
    }

    v12 = sub_2767B590C(v7, v8, v9);
    v14 = v12;
    if (v11)
    {
      v15 = @"Rounded rectangle";
    }

    else
    {
      v15 = @"Square";
    }

    goto LABEL_28;
  }

  if (v11 <= 7)
  {
    if (v11 > 4)
    {
      if (v11 == 5)
      {
        v12 = sub_2767B590C(v7, v8, v9);
        v14 = v12;
        v15 = @"Polygon";
      }

      else
      {
        v12 = sub_2767B590C(v7, v8, v9);
        v14 = v12;
        if (v11 == 6)
        {
          v15 = @"Hexagon";
        }

        else
        {
          v15 = @"Heptagon";
        }
      }

      goto LABEL_28;
    }

    if (v11 == 3)
    {
      v12 = sub_2767B590C(v7, v8, v9);
      v14 = v12;
      v15 = @"Triangle";
      goto LABEL_28;
    }

    if (v11 == 4)
    {
      v12 = sub_2767B590C(v7, v8, v9);
      v14 = v12;
      v15 = @"Diamond";
      goto LABEL_28;
    }

LABEL_33:
    v18 = MEMORY[0x277CCACA8];
    v14 = sub_2767B590C(v7, v8, v9);
    v20 = objc_msgSend_localizedStringForKey_value_table_(v14, v19, @"%@ sided polygon", &stru_28857D120, @"TSDrawables");
    v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, v11);
    v16 = objc_msgSend_stringWithFormat_(v18, v23, v20, v22);

    goto LABEL_29;
  }

  if (v11 <= 9)
  {
    v12 = sub_2767B590C(v7, v8, v9);
    v14 = v12;
    if (v11 == 8)
    {
      v15 = @"Octagon";
    }

    else
    {
      v15 = @"Nonagon";
    }

    goto LABEL_28;
  }

  if (v11 == 10)
  {
    v12 = sub_2767B590C(v7, v8, v9);
    v14 = v12;
    v15 = @"Decagon";
    goto LABEL_28;
  }

  if (v11 == 11)
  {
    v12 = sub_2767B590C(v7, v8, v9);
    v14 = v12;
    v15 = @"Hendecagon";
    goto LABEL_28;
  }

  if (v11 != 12)
  {
    goto LABEL_33;
  }

  v12 = sub_2767B590C(v7, v8, v9);
  v14 = v12;
  v15 = @"Dodecagon";
LABEL_28:
  v16 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, v15, &stru_28857D120, @"TSDrawables");
LABEL_29:

LABEL_30:

  return v16;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSDScalarPathSource)initWithArchive:(const void *)archive
{
  if (*(archive + 6))
  {
    v5 = *(archive + 6);
  }

  else
  {
    v5 = &TSD::_ScalarPathSourceArchive_default_instance_;
  }

  v6 = *(v5 + 8);
  v7 = v6 != 2 && v6 != 1;
  if (v6 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6 == 1;
  }

  v9 = *(v5 + 9);
  if (v5[3])
  {
    v10 = v5[3];
  }

  else
  {
    v10 = MEMORY[0x277D809D8];
  }

  TSPCGSizeCreateFromMessage(v10);
  v14 = !v7;
  if ((v5[2] & 8) == 0)
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v5 + 40);
  }

  v16 = objc_msgSend_initWithType_scalar_naturalSize_continuousCurve_(self, v11, v8, v15 & 1, v9, v12, v13);
  v18 = v16;
  if (v16)
  {
    objc_msgSend_loadSharedFromArchive_(v16, v17, archive);
  }

  return v18;
}

- (void)saveToArchive:(void *)archive
{
  objc_msgSend_saveSharedToArchive_(self, a2, archive);
  *(archive + 4) |= 8u;
  v7 = *(archive + 6);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::ScalarPathSourceArchive>(v8);
    *(archive + 6) = v7;
  }

  v9 = objc_msgSend_type(self, v5, v6);
  if (v9 <= 2)
  {
    *(v7 + 16) |= 2u;
    *(v7 + 32) = v9;
  }

  objc_msgSend_scalar(self, v10, v11);
  *&v12 = v12;
  *(v7 + 16) |= 4u;
  *(v7 + 36) = LODWORD(v12);
  objc_msgSend_naturalSize(self, v13, v14);
  v16 = v15;
  v18 = v17;
  *(v7 + 16) |= 1u;
  v19 = *(v7 + 24);
  if (!v19)
  {
    v20 = *(v7 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C9BAD0](v20);
    *(v7 + 24) = v19;
  }

  v24.width = v16;
  v24.height = v18;
  TSPCGSizeCopyToMessage(v24, v19);
  isCurveContinuous = objc_msgSend_isCurveContinuous(self, v21, v22);
  *(v7 + 16) |= 8u;
  *(v7 + 40) = isCurveContinuous;
}

@end