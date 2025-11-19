@interface TSDPointPathSource
+ (id)pathSourceWithType:(unint64_t)a3 point:(CGPoint)a4 naturalSize:(CGSize)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_isArrowType;
- (BOOL)p_isFlippedDoubleArrow;
- (BOOL)p_isRightFacingArrow;
- (CGPath)p_newArrowPath;
- (CGPath)p_newPlusPath;
- (CGPath)p_newStarPath;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)maxPointValue;
- (CGPoint)minPointValue;
- (CGPoint)p_getControlKnobPointForArrow;
- (CGPoint)p_getControlKnobPointForPlus;
- (CGPoint)p_getControlKnobPointForStarInnerRadius;
- (CGPoint)p_getControlKnobPointForStarPoints;
- (CGPoint)point;
- (CGSize)naturalSize;
- (TSDPointPathSource)initWithArchive:(const void *)a3;
- (TSDPointPathSource)initWithType:(unint64_t)a3 point:(CGPoint)a4 naturalSize:(CGSize)a5;
- (double)arrowHead;
- (double)arrowIndent;
- (double)maxArrowHead;
- (double)maxArrowIndent;
- (double)starRadius;
- (id)bezierPathWithoutFlips;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)inferredAccessibilityDescription;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)name;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (unint64_t)numberOfControlKnobs;
- (unint64_t)starPoints;
- (void)p_setControlKnobPointForArrow:(CGPoint)a3;
- (void)p_setControlKnobPointForPlus:(CGPoint)a3;
- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)a3;
- (void)p_setControlKnobPointForStarPoints:(CGPoint)a3;
- (void)saveToArchive:(void *)a3;
- (void)scaleToNaturalSize:(CGSize)a3;
@end

@implementation TSDPointPathSource

+ (id)pathSourceWithType:(unint64_t)a3 point:(CGPoint)a4 naturalSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v10 = [a1 alloc];
  v12 = objc_msgSend_initWithType_point_naturalSize_(v10, v11, a3, x, y, width, height);

  return v12;
}

- (TSDPointPathSource)initWithType:(unint64_t)a3 point:(CGPoint)a4 naturalSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v18.receiver = self;
  v18.super_class = TSDPointPathSource;
  v10 = [(TSDPointPathSource *)&v18 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setType_(v10, v11, a3);
    objc_msgSend_setPoint_(v12, v13, v14, x, y);
    objc_msgSend_setNaturalSize_(v12, v15, v16, width, height);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = TSDPointPathSource;
  v4 = [(TSDPathSource *)&v18 copyWithZone:a3];
  v7 = objc_msgSend_type(self, v5, v6);
  objc_msgSend_setType_(v4, v8, v7);
  objc_msgSend_point(self, v9, v10);
  objc_msgSend_setPoint_(v4, v11, v12);
  objc_msgSend_naturalSize(self, v13, v14);
  objc_msgSend_setNaturalSize_(v4, v15, v16);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TSDPointPathSource;
    if ([(TSDPathSource *)&v21 isEqual:v4])
    {
      objc_opt_class();
      v5 = TSUDynamicCast();
      v8 = objc_msgSend_type(self, v6, v7);
      if (v8 == objc_msgSend_type(v5, v9, v10) && (objc_msgSend_point(self, v11, v12), objc_msgSend_point(v5, v13, v14), TSUNearlyEqualPoints()))
      {
        objc_msgSend_naturalSize(self, v15, v16);
        objc_msgSend_naturalSize(v5, v17, v18);
        v19 = TSUNearlyEqualSizes();
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
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
  v21.receiver = self;
  v21.super_class = TSDPointPathSource;
  v3 = [(TSDPointPathSource *)&v21 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v7 = MEMORY[0x277CCACA8];
  v10 = objc_msgSend_type(self, v8, v9);
  objc_msgSend_point(self, v11, v12);
  v13 = NSStringFromCGPoint(v23);
  objc_msgSend_naturalSize(self, v14, v15);
  v16 = NSStringFromCGSize(v24);
  v18 = objc_msgSend_stringWithFormat_(v7, v17, @" type=%lu; point=%@; natural size=%@", v10, v13, v16);;
  objc_msgSend_appendString_(v6, v19, v18);

  return v6;
}

- (CGPoint)minPointValue
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v5 = objc_msgSend_type(self, a2, v2);
  if (v5 == 100)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = v4;
  }

  v7 = 3.0;
  if (v5 != 100)
  {
    v7 = v3;
  }

  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)maxPointValue
{
  v5 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  v6 = objc_msgSend_type(self, a2, v2);
  if (v6 > 99)
  {
    if (v6 == 100)
    {
      v4 = 1.0;
      v5 = 100.0;
    }

    else if (v6 == 200)
    {
      objc_msgSend_naturalSize(self, v7, v8);
      v5 = v10 * 0.5;
      v4 = v11 * 0.5;
    }
  }

  else if (v6 >= 2)
  {
    if (v6 == 10)
    {
      objc_msgSend_naturalSize(self, v7, v8);
      v4 = 0.5;
      v5 = v12 * 0.5;
    }
  }

  else
  {
    objc_msgSend_naturalSize(self, v7, v8);
    v5 = v9;
    v4 = 0.5;
  }

  v13 = v5;
  v14 = v4;
  result.y = v14;
  result.x = v13;
  return result;
}

- (unint64_t)starPoints
{
  if (objc_msgSend_type(self, a2, v2) != 100)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource starPoints]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 157, 0, "asking for starPoints on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_point(self, v4, v5);
  return v13;
}

- (double)starRadius
{
  if (objc_msgSend_type(self, a2, v2) != 100)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource starRadius]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 173, 0, "asking for starRadius on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_point(self, v4, v5);
  return v13;
}

- (BOOL)p_isArrowType
{
  if (objc_msgSend_type(self, a2, v2))
  {
    v6 = objc_msgSend_type(self, v4, v5);
    if (v6 != 1)
    {
      LOBYTE(v6) = objc_msgSend_type(self, v7, v8) == 10;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (double)arrowIndent
{
  if ((objc_msgSend_p_isArrowType(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource arrowIndent]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 190, 0, "asking for arrowIndent on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_point(self, v4, v5);
  return v13;
}

- (double)maxArrowIndent
{
  if ((objc_msgSend_p_isArrowType(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource maxArrowIndent]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 195, 0, "asking for arrowIndent on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_maxPointValue(self, v4, v5);
  return v13;
}

- (double)arrowHead
{
  if ((objc_msgSend_p_isArrowType(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource arrowHead]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 204, 0, "asking for arrowIndent on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_point(self, v4, v5);
  return result;
}

- (double)maxArrowHead
{
  if ((objc_msgSend_p_isArrowType(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDPointPathSource maxArrowHead]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 209, 0, "asking for arrowIndent on wrong type of pathSource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_maxPointValue(self, v4, v5);
  return result;
}

- (void)scaleToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_type(self, a2, v3);
  if (v7 <= 0xA && ((1 << v7) & 0x403) != 0 || v7 == 200)
  {
    objc_msgSend_uniformScaleForScalingToNaturalSize_(self, v8, v9, width, height);
    self->mPoint.x = v10 * self->mPoint.x;
  }

  self->mNaturalSize.width = width;
  self->mNaturalSize.height = height;
}

- (unint64_t)numberOfControlKnobs
{
  if (objc_msgSend_type(self, a2, v2) == 100)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v5 = objc_msgSend_type(self, a2, a3);
  if (v5 <= 0xA && ((1 << v5) & 0x403) != 0)
  {
    objc_msgSend_p_getControlKnobPointForArrow(self, v6, v7);
  }

  else if (v5 == 100)
  {
    if (a3 == 12)
    {
      objc_msgSend_p_getControlKnobPointForStarPoints(self, v6, v7);
    }

    else
    {
      objc_msgSend_p_getControlKnobPointForStarInnerRadius(self, v6, v7);
    }
  }

  else
  {
    v9 = 0.0;
    v8 = 0.0;
    if (v5 == 200)
    {
      objc_msgSend_p_getControlKnobPointForPlus(self, v6, v7, 0.0, 0.0);
    }
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)bezierPathWithoutFlips
{
  v4 = objc_msgSend_type(self, a2, v2);
  if (v4 <= 0xA && ((1 << v4) & 0x403) != 0)
  {
    v7 = objc_msgSend_p_newArrowPath(self, v5, v6);
LABEL_8:
    v9 = v7;
    objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v8, v7);
    goto LABEL_9;
  }

  if (v4 == 100)
  {
    v7 = objc_msgSend_p_newStarPath(self, v5, v6);
    goto LABEL_8;
  }

  if (v4 == 200)
  {
    v7 = objc_msgSend_p_newPlusPath(self, v5, v6);
    goto LABEL_8;
  }

  v9 = 0;
  objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v5, 0);
  v10 = LABEL_9:;
  CGPathRelease(v9);

  return v10;
}

- (id)name
{
  v3 = objc_msgSend_type(self, a2, v2);
  v6 = 0;
  if (v3 > 99)
  {
    if (v3 == 100)
    {
      v7 = @"Star";
    }

    else
    {
      if (v3 != 200)
      {
        goto LABEL_11;
      }

      v7 = @"Plus";
    }
  }

  else if (v3 >= 2)
  {
    if (v3 != 10)
    {
      goto LABEL_11;
    }

    v7 = @"Double Arrow";
  }

  else
  {
    v7 = @"Arrow";
  }

  v8 = sub_2767B590C(v3, v4, v5);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, v7, &stru_28857D120, @"TSDrawables");

LABEL_11:

  return v6;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDPointPathSource mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPointPathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 377, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_type(self, v7, v8);
  if (v16 == objc_msgSend_type(v6, v17, v18))
  {
    objc_msgSend_naturalSize(self, v19, v20);
    objc_msgSend_naturalSize(v6, v21, v22);
    if (TSUNearlyEqualSizes() && (objc_msgSend_point(self, v23, v24), objc_msgSend_point(v6, v25, v26), (TSUNearlyEqualPoints() & 1) != 0))
    {
      v27 = 4;
    }

    else if (objc_msgSend_type(self, v23, v24) == 100)
    {
      objc_msgSend_point(self, v28, v29);
      v31 = v30;
      objc_msgSend_point(v6, v32, v33);
      if (vabdd_f64(v31, v34) <= 2.0)
      {
        v27 = 2;
      }

      else
      {
        v27 = 3;
      }
    }

    else
    {
      v27 = 3;
    }
  }

  else
  {
    v27 = 1;
  }

  return v27;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = TSUDynamicCast();

  objc_msgSend_point(self, v7, v8);
  objc_msgSend_point(v6, v9, v10);
  TSUMixPoints();
  TSURoundedPoint();
  v12 = v11;
  v14 = v13;
  objc_msgSend_naturalSize(self, v15, v16);
  objc_msgSend_naturalSize(v6, v17, v18);
  TSUMixSizes();
  v20 = v19;
  v22 = v21;
  v25 = objc_msgSend_type(self, v23, v24);
  v27 = objc_msgSend_pathSourceWithType_point_naturalSize_(TSDPointPathSource, v26, v25, v12, v14, v20, v22);

  return v27;
}

- (CGPath)p_newArrowPath
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_naturalSize(self, v4, v5);
  v7 = v6;
  TSURectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  objc_msgSend_point(self, v16, v17);
  objc_msgSend_naturalSize(self, v18, v19);
  TSUClamp();
  TSUClamp();
  v21 = v20;
  mType = self->mType;
  if (mType == 10)
  {
    v26 = v7 - v20;
    CGPathMoveToPointSafe();
    v37.origin.x = v9;
    v37.origin.y = v11;
    v37.size.width = v13;
    v37.size.height = v15;
    CGRectGetMaxY(v37);
    CGPathAddLineToPointSafe();
    v38.origin.x = v9;
    v38.origin.y = v11;
    v38.size.width = v13;
    v38.size.height = v15;
    CGRectGetMinX(v38);
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetMidY(v39);
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    CGRectGetMaxX(v40);
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    CGRectGetMidY(v41);
    CGPathAddLineToPointSafe();
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    CGRectGetMaxY(v42);
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    v24 = vabdd_f64(v21, v26);
  }

  else
  {
    if (mType == 1)
    {
      v23 = v7 - v20;
      CGPathMoveToPointSafe();
      v32.origin.x = v9;
      v32.origin.y = v11;
      v32.size.width = v13;
      v32.size.height = v15;
      CGRectGetMaxY(v32);
      CGPathAddLineToPointSafe();
      v33.origin.x = v9;
      v33.origin.y = v11;
      v33.size.width = v13;
      v33.size.height = v15;
      CGRectGetMaxX(v33);
      v34.origin.x = v9;
      v34.origin.y = v11;
      v34.size.width = v13;
      v34.size.height = v15;
      CGRectGetMidY(v34);
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      v35.origin.x = v9;
      v35.origin.y = v11;
      v35.size.width = v13;
      v35.size.height = v15;
      CGRectGetMinX(v35);
      CGPathAddLineToPointSafe();
      v36.origin.x = v9;
      v36.origin.y = v11;
      v36.size.width = v13;
      v36.size.height = v15;
      CGRectGetMinX(v36);
    }

    else
    {
      if (mType)
      {
        return Mutable;
      }

      v23 = v7 - v20;
      CGPathMoveToPointSafe();
      v27.origin.x = v9;
      v27.origin.y = v11;
      v27.size.width = v13;
      v27.size.height = v15;
      CGRectGetMaxY(v27);
      CGPathAddLineToPointSafe();
      v28.origin.x = v9;
      v28.origin.y = v11;
      v28.size.width = v13;
      v28.size.height = v15;
      CGRectGetMinX(v28);
      v29.origin.x = v9;
      v29.origin.y = v11;
      v29.size.width = v13;
      v29.size.height = v15;
      CGRectGetMidY(v29);
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      CGPathAddLineToPointSafe();
      v30.origin.x = v9;
      v30.origin.y = v11;
      v30.size.width = v13;
      v30.size.height = v15;
      CGRectGetMaxX(v30);
      CGPathAddLineToPointSafe();
      v31.origin.x = v9;
      v31.origin.y = v11;
      v31.size.width = v13;
      v31.size.height = v15;
      CGRectGetMaxX(v31);
    }

    CGPathAddLineToPointSafe();
    v24 = vabdd_f64(v21, v23);
  }

  if (v24 > 0.01)
  {
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPath)p_newStarPath
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_point(self, v4, v5);
  v7 = fmax(v6, 3.0);
  objc_msgSend_naturalSize(self, v8, v9);
  v11 = v10;
  v13 = v12;
  v14 = 2 * v7;
  objc_msgSend_point(self, v15, v16);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, 1.0, v13 / v11);
  v19 = v21;
  CGAffineTransformTranslate(&v20, &v19, v11 * 0.5, v11 * 0.5);
  v21 = v20;
  if (v14)
  {
    v17 = 0;
    while (1)
    {
      v20.a = 0.0;
      v20.b = 0.0;
      if (v17)
      {
        break;
      }

      TSUOriginRotate();
      if (v17)
      {
        goto LABEL_7;
      }

      CGPathMoveToPointSafe();
LABEL_8:
      if (v14 == ++v17)
      {
        goto LABEL_9;
      }
    }

    TSUOriginRotate();
LABEL_7:
    CGPathAddLineToPointSafe();
    goto LABEL_8;
  }

LABEL_9:
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (CGPath)p_newPlusPath
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_naturalSize(self, v4, v5);
  objc_msgSend_point(self, v6, v7);
  TSUClamp();
  TSUClamp();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (void)p_setControlKnobPointForArrow:(CGPoint)a3
{
  objc_msgSend_naturalSize(self, a2, v3);
  v6 = v5;
  TSUClamp();
  v8 = v7;
  if (objc_msgSend_p_isRightFacingArrow(self, v9, v10))
  {
    v8 = v6 - v8;
  }

  TSUClamp();
  self->mPoint.x = v8;
  self->mPoint.y = v11;
}

- (CGPoint)p_getControlKnobPointForArrow
{
  objc_msgSend_naturalSize(self, a2, v2);
  objc_msgSend_p_isRightFacingArrow(self, v4, v5);
  TSUClamp();
  v7 = v6;
  TSUClamp();
  v9 = v8;
  v10 = v7;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)p_setControlKnobPointForStarPoints:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_naturalSize(self, a2, v3);
  v8 = v7;
  v10 = v9;
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v11, v12);
  v14 = v10 - y;
  if (!hasVerticalFlip)
  {
    v14 = y;
  }

  v15 = x - v8 * 0.5;
  v16 = v8 / v10 * (v14 - v10 * 0.5);
  TSUPointLength();
  v18 = acos(-v15 / v17);
  if (v16 > 0.0)
  {
    v18 = 6.28318531 - v18;
  }

  v19 = v18 / 6.28318531 + -0.25;
  if (v19 < 0.0)
  {
    v19 = v19 + 1.0;
  }

  v20 = (v19 * 18.0 + 3.5);
  if (v20 > 0x14)
  {
    v20 = 3;
  }

  v21 = self->mPoint.x;
  if ((v21 != 3 || v20 == 4) && (v21 != 20 || v20 == 19))
  {
    self->mPoint.x = v20;
  }
}

- (CGPoint)p_getControlKnobPointForStarPoints
{
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v8 = v4 * 0.5;
  TSUOriginRotate();
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v9, v10);
  v12 = v8 + 0.0;
  v13 = v7 * 0.5 + v7 / v5 * 0.0;
  if (hasVerticalFlip)
  {
    v13 = v7 - (v7 * 0.5 + v7 / v5 * 0.0);
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForStarInnerRadius:(CGPoint)a3
{
  v4 = self;
  objc_msgSend_naturalSize(self, a2, v3);
  objc_msgSend_hasVerticalFlip(v4, v5, v6);
  TSUPointLength();
  v4 = (v4 + 48);
  isa = v4->super.super.isa;
  TSUClamp();
  v4->super.super.isa = isa;
  *&v4->super._horizontalFlip = v8;
}

- (CGPoint)p_getControlKnobPointForStarInnerRadius
{
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v8 = v4 * 0.5;
  TSUOriginRotate();
  hasVerticalFlip = objc_msgSend_hasVerticalFlip(self, v9, v10);
  v12 = v8 + 0.0;
  v13 = v7 * 0.5 + v7 / v5 * 0.0;
  if (hasVerticalFlip)
  {
    v13 = v7 - (v7 * 0.5 + v7 / v5 * 0.0);
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (void)p_setControlKnobPointForPlus:(CGPoint)a3
{
  objc_msgSend_naturalSize(self, a2, v3);
  TSUClamp();
  v6 = v5;
  TSUClamp();
  self->mPoint.x = v6;
  self->mPoint.y = v7;
}

- (CGPoint)p_getControlKnobPointForPlus
{
  objc_msgSend_naturalSize(self, a2, v2);
  v5 = (v4 - self->mPoint.x) * 0.5;
  v7 = (v6 - self->mPoint.y) * 0.5;
  result.y = v7;
  result.x = v5;
  return result;
}

- (BOOL)p_isRightFacingArrow
{
  if (self->mType == 1)
  {
    return objc_msgSend_hasHorizontalFlip(self, a2, v2) ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)p_isFlippedDoubleArrow
{
  if (self->mType == 10)
  {
    return objc_msgSend_hasHorizontalFlip(self, a2, v2);
  }

  else
  {
    return 0;
  }
}

- (id)inferredAccessibilityDescription
{
  v3 = objc_msgSend_type(self, a2, v2);
  v6 = 0;
  if (v3 > 99)
  {
    if (v3 == 100)
    {
      v7 = @"Star";
    }

    else
    {
      if (v3 != 200)
      {
        goto LABEL_11;
      }

      v7 = @"Plus";
    }
  }

  else if (v3 >= 2)
  {
    if (v3 != 10)
    {
      goto LABEL_11;
    }

    v7 = @"Double arrow";
  }

  else
  {
    v7 = @"Arrow";
  }

  v8 = sub_2767B590C(v3, v4, v5);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, v7, &stru_28857D120, @"TSDrawables");

LABEL_11:

  return v6;
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)naturalSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSDPointPathSource)initWithArchive:(const void *)a3
{
  if (*(a3 + 5))
  {
    v5 = *(a3 + 5);
  }

  else
  {
    v5 = &TSD::_PointPathSourceArchive_default_instance_;
  }

  v6 = *(v5 + 10);
  v7 = 100;
  v8 = 200;
  if (v6 != 200)
  {
    v8 = 0;
  }

  if (v6 != 100)
  {
    v7 = v8;
  }

  v9 = 1;
  v10 = 10;
  if (v6 != 10)
  {
    v10 = 0;
  }

  if (v6 != 1)
  {
    v9 = v10;
  }

  if (v6 <= 99)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v5[3])
  {
    v12 = v5[3];
  }

  else
  {
    v12 = MEMORY[0x277D809F0];
  }

  TSPCGPointFromMessage(v12);
  v14 = v13;
  v16 = v15;
  if (v5[4])
  {
    v17 = v5[4];
  }

  else
  {
    v17 = MEMORY[0x277D809D8];
  }

  TSPCGSizeCreateFromMessage(v17);
  v21 = objc_msgSend_initWithType_point_naturalSize_(self, v18, v11, v14, v16, v19, v20);
  v23 = v21;
  if (v21)
  {
    objc_msgSend_loadSharedFromArchive_(v21, v22, a3);
  }

  return v23;
}

- (void)saveToArchive:(void *)a3
{
  objc_msgSend_saveSharedToArchive_(self, a2, a3);
  *(a3 + 4) |= 4u;
  v7 = *(a3 + 5);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::PointPathSourceArchive>(v8);
    *(a3 + 5) = v7;
  }

  v9 = objc_msgSend_type(self, v5, v6);
  if (v9 <= 9)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_17;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    switch(v9)
    {
      case 10:
        v12 = 10;
        break;
      case 100:
        v12 = 100;
        break;
      case 200:
        v12 = 200;
        break;
      default:
        goto LABEL_17;
    }
  }

  *(v7 + 16) |= 4u;
  *(v7 + 40) = v12;
LABEL_17:
  objc_msgSend_point(self, v10, v11);
  v14 = v13;
  v16 = v15;
  *(v7 + 16) |= 1u;
  v17 = *(v7 + 24);
  if (!v17)
  {
    v18 = *(v7 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C9BB00](v18);
    *(v7 + 24) = v17;
  }

  v30.x = v14;
  v30.y = v16;
  TSPCGPointCopyToMessage(v30, v17);
  objc_msgSend_naturalSize(self, v19, v20);
  v22 = v21;
  v24 = v23;
  *(v7 + 16) |= 2u;
  v25 = *(v7 + 32);
  if (!v25)
  {
    v26 = *(v7 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C9BAD0](v26);
    *(v7 + 32) = v25;
  }

  v27 = v22;
  v28 = v24;

  TSPCGSizeCopyToMessage(*&v27, v25);
}

@end