@interface TSDBezierNode
+ (id)bezierNodeWithPoint:(CGPoint)point;
+ (id)bezierNodeWithPoint:(CGPoint)point inControlPoint:(CGPoint)controlPoint outControlPoint:(CGPoint)outControlPoint;
- (BOOL)isCollapsed;
- (BOOL)underPoint:(CGPoint)point withTransform:(CGAffineTransform *)transform andTolerance:(double)tolerance returningType:(int64_t *)type;
- (CGPoint)inControlPoint;
- (CGPoint)nodePoint;
- (CGPoint)outControlPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)reflectedStateString;
- (id)typeString;
- (void)balanceControlPoints;
- (void)collapse;
- (void)moveToPoint:(CGPoint)point;
- (void)setInControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain;
- (void)setInControlPointFromReflection:(CGPoint)reflection constrain:(BOOL)constrain;
- (void)setOutControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain;
- (void)swapControlPoints;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
- (void)updateReflectedState;
@end

@implementation TSDBezierNode

+ (id)bezierNodeWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_alloc_init(TSDBezierNode);
  objc_msgSend_setNodePoint_(v5, v6, v7, x, y);
  objc_msgSend_setInControlPoint_(v5, v8, v9, x, y);
  objc_msgSend_setOutControlPoint_(v5, v10, v11, x, y);
  objc_msgSend_setType_(v5, v12, 1);

  return v5;
}

+ (id)bezierNodeWithPoint:(CGPoint)point inControlPoint:(CGPoint)controlPoint outControlPoint:(CGPoint)outControlPoint
{
  y = outControlPoint.y;
  x = outControlPoint.x;
  v7 = controlPoint.y;
  v8 = controlPoint.x;
  v9 = point.y;
  v10 = point.x;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
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

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)setInControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  TSUSubtractPoints();
  if (constrainCopy)
  {
    TSUShiftConstrainDelta();
  }

  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    TSUSubtractPoints();
    self->mIn.x = v8;
    self->mIn.y = v9;
    if (reflect)
    {
      if (reflect == 1)
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

  self->mReflectedState = reflect;
}

- (void)setOutControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  TSUSubtractPoints();
  if (constrainCopy)
  {
    TSUShiftConstrainDelta();
  }

  if ((TSUNearlyEqualPoints() & 1) == 0)
  {
    TSUSubtractPoints();
    self->mOut.x = v8;
    self->mOut.y = v9;
    if (reflect)
    {
      if (reflect == 1)
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

  self->mReflectedState = reflect;
}

- (void)setInControlPointFromReflection:(CGPoint)reflection constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  TSUSubtractPoints();
  if (constrainCopy)
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
      if (constrainCopy)
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

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  self->mNode = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->mNode.y), *&transform->a, self->mNode.x));
  self->mIn = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->mIn.y), *&transform->a, self->mIn.x));
  self->mOut = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->mOut.y), *&transform->a, self->mOut.x));
}

- (BOOL)underPoint:(CGPoint)point withTransform:(CGAffineTransform *)transform andTolerance:(double)tolerance returningType:(int64_t *)type
{
  TSUDistance();
  if (v11 >= tolerance)
  {
    isSelected = objc_msgSend_isSelected(self, v9, v10);
    if (!isSelected)
    {
      return isSelected;
    }

    TSUDistance();
    if (v14 >= tolerance)
    {
      TSUDistance();
      if (v15 >= tolerance)
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

  if (type)
  {
    *type = v12;
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