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
  [(TSDBezierNode *)v5 setNodePoint:x, y];
  [(TSDBezierNode *)v5 setInControlPoint:x, y];
  [(TSDBezierNode *)v5 setOutControlPoint:x, y];
  [(TSDBezierNode *)v5 setType:1];

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
  [(TSDBezierNode *)v11 setNodePoint:v10, v9];
  [(TSDBezierNode *)v11 setInControlPoint:v8, v7];
  [(TSDBezierNode *)v11 setOutControlPoint:x, y];
  [(TSDBezierNode *)v11 setType:2];
  v12 = TSDSubtractPoints(x, y, v10);
  v14 = v13;
  v15 = TSDSubtractPoints(v10, v9, v8);
  if (TSDNearlyEqualPoints(v12, v14, v15, v16))
  {
    [(TSDBezierNode *)v11 setReflectedState:1];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(TSDBezierNode *)self nodePoint];
  [v4 setNodePoint:?];
  [(TSDBezierNode *)self inControlPoint];
  [v4 setInControlPoint:?];
  [(TSDBezierNode *)self outControlPoint];
  [v4 setOutControlPoint:?];
  [v4 setReflectedState:{-[TSDBezierNode reflectedState](self, "reflectedState")}];
  [v4 setSelected:{-[TSDBezierNode isSelected](self, "isSelected")}];
  [v4 setType:{-[TSDBezierNode type](self, "type")}];
  return v4;
}

- (void)balanceControlPoints
{
  x = self->mNode.x;
  v4 = TSDSubtractPoints(self->mIn.x, self->mIn.y, x);
  v6 = v5;
  v7 = TSDSubtractPoints(self->mOut.x, self->mOut.y, x);
  v9 = v8;
  v10 = TSDPointLength(v4, v6);
  v11 = TSDAngleFromDelta(v4, v6);
  v12 = TSDPointLength(v7, v9);
  v13 = TSDAngleFromDelta(v7, v9);
  if (v10 > 0.001 || v12 > 0.001)
  {
    if (v10 >= 0.001)
    {
      if (v12 >= 0.001)
      {
        v13 = TSDMixAnglesInRadians(v11, v13 + 3.14159265, v12 / (v10 + v12));
      }

      else
      {
        v13 = v11;
      }
    }

    v14 = TSDDeltaFromAngle(v13);
    v16 = TSDMultiplyPointScalar(v14, v15, v10);
    self->mIn.x = TSDAddPoints(v16, v17, x);
    self->mIn.y = v18;
    v19 = TSDDeltaFromAngle(v13 + 3.14159265);
    v21 = TSDMultiplyPointScalar(v19, v20, v12);
    self->mOut.x = TSDAddPoints(v21, v22, x);
    self->mOut.y = v23;
    self->mReflectedState = 1;
  }
}

- (void)moveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = self->mNode.x;
  v7 = TSDSubtractPoints(self->mIn.x, self->mIn.y, v6);
  v8 = TSDSubtractPoints(self->mOut.x, self->mOut.y, v6);
  self->mNode.x = x;
  self->mNode.y = y;
  self->mIn.x = TSDAddPoints(x, y, v7);
  self->mIn.y = v9;
  self->mOut.x = TSDAddPoints(x, y, v8);
  self->mOut.y = v10;
}

- (void)setInControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  x = self->mNode.x;
  y = self->mNode.y;
  v10 = TSDSubtractPoints(x, y, point.x);
  v12 = v10;
  v13 = v11;
  if (constrainCopy)
  {
    v12 = TSDShiftConstrainDelta(v10, v11);
    v13 = v14;
  }

  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  if (!TSDNearlyEqualPoints(v12, v13, *MEMORY[0x277CBF348], v16))
  {
    self->mIn.x = TSDSubtractPoints(x, y, v12);
    self->mIn.y = v17;
    if (reflect)
    {
      if (reflect == 1)
      {
        v18 = TSDDistance(x, y, self->mOut.x, self->mOut.y);
        v19 = TSDDistance(v15, v16, v12, v13);
        v12 = TSDMultiplyPointScalar(v12, v13, v18 / v19);
      }

      self->mOut.x = TSDAddPoints(x, y, v12);
      self->mOut.y = v20;
    }
  }

  self->mReflectedState = reflect;
}

- (void)setOutControlPoint:(CGPoint)point reflect:(int)reflect constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  x = self->mNode.x;
  y = self->mNode.y;
  v10 = TSDSubtractPoints(x, y, point.x);
  v12 = v10;
  v13 = v11;
  if (constrainCopy)
  {
    v12 = TSDShiftConstrainDelta(v10, v11);
    v13 = v14;
  }

  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  if (!TSDNearlyEqualPoints(v12, v13, *MEMORY[0x277CBF348], v16))
  {
    self->mOut.x = TSDSubtractPoints(x, y, v12);
    self->mOut.y = v17;
    if (reflect)
    {
      if (reflect == 1)
      {
        v18 = TSDDistance(x, y, self->mIn.x, self->mIn.y);
        v19 = TSDDistance(v15, v16, v12, v13);
        v12 = TSDMultiplyPointScalar(v12, v13, v18 / v19);
      }

      self->mIn.x = TSDAddPoints(x, y, v12);
      self->mIn.y = v20;
    }
  }

  self->mReflectedState = reflect;
}

- (void)setInControlPointFromReflection:(CGPoint)reflection constrain:(BOOL)constrain
{
  constrainCopy = constrain;
  y = reflection.y;
  x = reflection.x;
  v8 = self->mNode.x;
  v9 = self->mNode.y;
  v10 = TSDSubtractPoints(v8, v9, reflection.x);
  v12 = v10;
  if (constrainCopy)
  {
    v12 = TSDShiftConstrainDelta(v10, v11);
  }

  v13 = TSDAddPoints(v8, v9, v12);
  self->mIn.x = v13;
  self->mIn.y = v14;
  if (self->mReflectedState)
  {
    v15 = v13;
    v16 = v14;
    v17 = TSDDistance(self->mOut.x, self->mOut.y, v8, v9);
    v18 = TSDDistance(v15, v16, v8, v9);
    if (v18 != 0.0)
    {
      v19 = v18;
      v20 = TSDSubtractPoints(x, y, v8);
      if (constrainCopy)
      {
        v20 = TSDShiftConstrainDelta(v20, v21);
      }

      v22 = TSDMultiplyPointScalar(v20, v21, 1.0 / v19);
      v24 = TSDMultiplyPointScalar(v22, v23, v17);
      self->mOut.x = TSDAddPoints(v8, v9, v24);
      self->mOut.y = v25;
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
  x = self->mNode.x;
  y = self->mNode.y;
  v5 = TSDNearlyEqualPoints(self->mIn.x, self->mIn.y, x, y);
  if (v5)
  {
    v6 = self->mOut.x;
    v7 = self->mOut.y;

    LOBYTE(v5) = TSDNearlyEqualPoints(v6, v7, x, y);
  }

  return v5;
}

- (void)updateReflectedState
{
  x = self->mNode.x;
  y = self->mNode.y;
  v5 = TSDSubtractPoints(self->mOut.x, self->mOut.y, x);
  v7 = v6;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = TSDDistance(v5, v6, *MEMORY[0x277CBF348], v9);
  v11 = TSDMultiplyPointScalar(v5, v7, 1.0 / v10);
  v13 = v12;
  v14 = TSDSubtractPoints(x, y, self->mIn.x);
  v16 = v15;
  v17 = TSDDistance(v14, v15, v8, v9);
  v18 = TSDMultiplyPointScalar(v14, v16, 1.0 / v17);
  v20 = TSDNearlyEqualPoints(v11, v13, v18, v19);
  if (vabdd_f64(v10, v17) >= 0.01)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [(TSDBezierNode *)self setReflectedState:v22];
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
  y = point.y;
  x = point.x;
  v12 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, self->mNode.y), *&transform->a, self->mNode.x));
  if (TSDDistance(point.x, point.y, v12.f64[0], v12.f64[1]) >= tolerance)
  {
    isSelected = [(TSDBezierNode *)self isSelected];
    if (!isSelected)
    {
      return isSelected;
    }

    a = transform->a;
    c = transform->c;
    d = transform->d;
    tx = transform->tx;
    ty = transform->ty;
    b = transform->b;
    if (TSDDistance(x, y, tx + self->mIn.y * c + transform->a * self->mIn.x, ty + self->mIn.y * d + b * self->mIn.x) >= tolerance)
    {
      if (TSDDistance(x, y, tx + c * self->mOut.y + a * self->mOut.x, ty + d * self->mOut.y + b * self->mOut.x) >= tolerance)
      {
        LOBYTE(isSelected) = 0;
        return isSelected;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (type)
  {
    *type = v13;
  }

  LOBYTE(isSelected) = 1;
  return isSelected;
}

- (id)reflectedStateString
{
  mReflectedState = self->mReflectedState;
  if (mReflectedState > 2)
  {
    return &stru_287D36338;
  }

  else
  {
    return off_279D496C0[mReflectedState];
  }
}

- (id)typeString
{
  mType = self->mType;
  if (mType > 4)
  {
    return &stru_287D36338;
  }

  else
  {
    return off_279D496D8[mType];
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
  reflectedStateString = [(TSDBezierNode *)self reflectedStateString];
  if (self->mSelected)
  {
    v10 = @" selected";
  }

  else
  {
    v10 = &stru_287D36338;
  }

  return [v3 stringWithFormat:@"<%@ %p node=%@ in=%@ out=%@ reflected=%@%@ %@>", v5, self, v6, v7, v8, reflectedStateString, v10, -[TSDBezierNode typeString](self, "typeString")];
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