@interface TSDBezierNode
+ (id)bezierNodeWithPoint:(CGPoint)a3;
+ (id)bezierNodeWithPoint:(CGPoint)a3 inControlPoint:(CGPoint)a4 outControlPoint:(CGPoint)a5;
- (BOOL)isCollapsed;
- (BOOL)underPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6;
- (CGPoint)inControlPoint;
- (CGPoint)nodePoint;
- (CGPoint)outControlPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)reflectedStateString;
- (id)typeString;
- (void)balanceControlPoints;
- (void)collapse;
- (void)moveToPoint:(CGPoint)a3;
- (void)setInControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5;
- (void)setInControlPointFromReflection:(CGPoint)a3 constrain:(BOOL)a4;
- (void)setOutControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5;
- (void)swapControlPoints;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
- (void)updateReflectedState;
@end

@implementation TSDBezierNode

+ (id)bezierNodeWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(TSDBezierNode);
  objc_msgSend_setNodePoint_(v5, v6, v7, x, y);
  objc_msgSend_setInControlPoint_(v5, v8, v9, x, y);
  objc_msgSend_setOutControlPoint_(v5, v10, v11, x, y);
  objc_msgSend_setType_(v5, v12, 1);

  return v5;
}

+ (id)bezierNodeWithPoint:(CGPoint)a3 inControlPoint:(CGPoint)a4 outControlPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = objc_alloc_init(TSDBezierNode);
  objc_msgSend_setNodePoint_(v11, v12, v13, v10, v9);
  objc_msgSend_setInControlPoint_(v11, v14, v15, v8, v7);
  objc_msgSend_setOutControlPoint_(v11, v16, v17, x, y);
  objc_msgSend_setType_(v11, v18, 2);
  TSUSubtractPoints();
  TSUSubtractPoints();
  if (TSUNearlyEqualPoints())
  {
    objc_msgSend_setReflectedState_(v11, v19, 1);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  objc_msgSend_nodePoint(self, v11, v12);
  objc_msgSend_setNodePoint_(v10, v13, v14);
  objc_msgSend_inControlPoint(self, v15, v16);
  objc_msgSend_setInControlPoint_(v10, v17, v18);
  objc_msgSend_outControlPoint(self, v19, v20);
  objc_msgSend_setOutControlPoint_(v10, v21, v22);
  v25 = objc_msgSend_reflectedState(self, v23, v24);
  objc_msgSend_setReflectedState_(v10, v26, v25);
  isSelected = objc_msgSend_isSelected(self, v27, v28);
  objc_msgSend_setSelected_(v10, v30, isSelected);
  v33 = objc_msgSend_type(self, v31, v32);
  objc_msgSend_setType_(v10, v34, v33);
  return v10;
}

- (void)balanceControlPoints
{
  TSUSubtractPoints();
  TSUSubtractPoints();
  TSUPointLength();
  v4 = v3;
  TSUAngleFromDelta();
  TSUPointLength();
  v6 = v5;
  TSUAngleFromDelta();
  if (v4 > 0.001 || v6 > 0.001)
  {
    if (v4 >= 0.001 && v6 >= 0.001)
    {
      TSUMixAnglesInRadians();
    }

    TSUDeltaFromAngle();
    TSUMultiplyPointScalar();
    TSUAddPoints();
    self->mIn.x = v7;
    self->mIn.y = v8;
    TSUDeltaFromAngle();
    TSUMultiplyPointScalar();
    TSUAddPoints();
    self->mOut.x = v9;
    self->mOut.y = v10;
    self->mReflectedState = 1;
  }
}

- (void)moveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  TSUSubtractPoints();
  TSUSubtractPoints();
  self->mNode.x = x;
  self->mNode.y = y;
  TSUAddPoints();
  self->mIn.x = v6;
  self->mIn.y = v7;
  TSUAddPoints();
  self->mOut.x = v8;
  self->mOut.y = v9;
}

- (void)setInControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5
{
  v5 = a5;
  TSUSubtractPoints();
  if (v5)
  {
    TSUShiftConstrainDelta();
  }

  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    TSUSubtractPoints();
    self->mIn.x = v8;
    self->mIn.y = v9;
    if (a4)
    {
      if (a4 == 1)
      {
        TSUDistance();
        TSUDistance();
        TSUMultiplyPointScalar();
      }

      TSUAddPoints();
      self->mOut.x = v10;
      self->mOut.y = v11;
    }
  }

  self->mReflectedState = a4;
}

- (void)setOutControlPoint:(CGPoint)a3 reflect:(int)a4 constrain:(BOOL)a5
{
  v5 = a5;
  TSUSubtractPoints();
  if (v5)
  {
    TSUShiftConstrainDelta();
  }

  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    TSUSubtractPoints();
    self->mOut.x = v8;
    self->mOut.y = v9;
    if (a4)
    {
      if (a4 == 1)
      {
        TSUDistance();
        TSUDistance();
        TSUMultiplyPointScalar();
      }

      TSUAddPoints();
      self->mIn.x = v10;
      self->mIn.y = v11;
    }
  }

  self->mReflectedState = a4;
}

- (void)setInControlPointFromReflection:(CGPoint)a3 constrain:(BOOL)a4
{
  v4 = a4;
  TSUSubtractPoints();
  if (v4)
  {
    TSUShiftConstrainDelta();
  }

  TSUAddPoints();
  self->mIn.x = v6;
  self->mIn.y = v7;
  if (self->mReflectedState)
  {
    TSUDistance();
    TSUDistance();
    if (v8 != 0.0)
    {
      TSUSubtractPoints();
      if (v4)
      {
        TSUShiftConstrainDelta();
      }

      TSUMultiplyPointScalar();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      self->mOut.x = v9;
      self->mOut.y = v10;
    }
  }
}

- (void)collapse
{
  mNode = self->mNode;
  self->mIn = mNode;
  self->mOut = mNode;
}

- (BOOL)isCollapsed
{
  v2 = TSUNearlyEqualPoints();
  if (v2)
  {

    LOBYTE(v2) = TSUNearlyEqualPoints();
  }

  return v2;
}

- (void)updateReflectedState
{
  TSUSubtractPoints();
  TSUDistance();
  v4 = v3;
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  TSUDistance();
  v6 = v5;
  TSUMultiplyPointScalar();
  v7 = TSUNearlyEqualPoints();
  if (vabdd_f64(v4, v6) >= 0.01)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_msgSend_setReflectedState_(self, v8, v10);
}

- (void)swapControlPoints
{
  mIn = self->mIn;
  self->mIn = self->mOut;
  self->mOut = mIn;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  self->mNode = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mNode.y), *&a3->a, self->mNode.x));
  self->mIn = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mIn.y), *&a3->a, self->mIn.x));
  self->mOut = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, self->mOut.y), *&a3->a, self->mOut.x));
}

- (BOOL)underPoint:(CGPoint)a3 withTransform:(CGAffineTransform *)a4 andTolerance:(double)a5 returningType:(int64_t *)a6
{
  TSUDistance();
  if (v11 >= a5)
  {
    isSelected = objc_msgSend_isSelected(self, v9, v10);
    if (!isSelected)
    {
      return isSelected;
    }

    TSUDistance();
    if (v14 >= a5)
    {
      TSUDistance();
      if (v15 >= a5)
      {
        LOBYTE(isSelected) = 0;
        return isSelected;
      }

      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    *a6 = v12;
  }

  LOBYTE(isSelected) = 1;
  return isSelected;
}

- (id)reflectedStateString
{
  mReflectedState = self->mReflectedState;
  if (mReflectedState > 2)
  {
    return &stru_28857D120;
  }

  else
  {
    return off_27A6CC990[mReflectedState];
  }
}

- (id)typeString
{
  mType = self->mType;
  if (mType > 4)
  {
    return &stru_28857D120;
  }

  else
  {
    return off_27A6CC9A8[mType];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGPoint(self->mNode);
  v7 = NSStringFromCGPoint(self->mIn);
  v8 = NSStringFromCGPoint(self->mOut);
  v13 = objc_msgSend_reflectedStateString(self, v9, v10);
  if (self->mSelected)
  {
    v14 = @" selected";
  }

  else
  {
    v14 = &stru_28857D120;
  }

  v15 = objc_msgSend_typeString(self, v11, v12);
  v17 = objc_msgSend_stringWithFormat_(v3, v16, @"<%@ %p node=%@ in=%@ out=%@ reflected=%@%@ %@>", v5, self, v6, v7, v8, v13, v14, v15);

  return v17;
}

- (CGPoint)nodePoint
{
  x = self->mNode.x;
  y = self->mNode.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)inControlPoint
{
  x = self->mIn.x;
  y = self->mIn.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)outControlPoint
{
  x = self->mOut.x;
  y = self->mOut.y;
  result.y = y;
  result.x = x;
  return result;
}

@end