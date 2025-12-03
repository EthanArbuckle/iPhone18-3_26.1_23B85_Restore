@interface TSDBezierSegment
+ (id)segmentFromPoint:(CGPoint)point outPoint:(CGPoint)outPoint inPoint:(CGPoint)inPoint toPoint:(CGPoint)toPoint;
- (BOOL)bogusSegment;
- (CGPoint)closestPointToPoint:(CGPoint)point;
- (CGPoint)fromPoint;
- (CGPoint)inPoint;
- (CGPoint)outPoint;
- (CGPoint)pointAtParametricValue:(double)value;
- (CGPoint)toPoint;
- (double)parametricValueForPoint:(CGPoint)point;
- (id)description;
- (id)initFromPoint:(CGPoint)point outPoint:(CGPoint)outPoint inPoint:(CGPoint)inPoint toPoint:(CGPoint)toPoint;
- (void)splitAtParametricValue:(double)value left:(id *)left right:(id *)right;
@end

@implementation TSDBezierSegment

+ (id)segmentFromPoint:(CGPoint)point outPoint:(CGPoint)outPoint inPoint:(CGPoint)inPoint toPoint:(CGPoint)toPoint
{
  v6 = [[TSDBezierSegment alloc] initFromPoint:point.x outPoint:point.y inPoint:outPoint.x toPoint:outPoint.y, inPoint.x, inPoint.y, toPoint.x, toPoint.y];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromCGPoint(self->mA);
  v5 = NSStringFromCGPoint(self->mOut);
  v6 = NSStringFromCGPoint(self->mIn);
  return [v3 stringWithFormat:@"%@ - %@ - %@ - %@", v4, v5, v6, NSStringFromCGPoint(self->mB)];
}

- (BOOL)bogusSegment
{
  x = self->mOut.x;
  y = self->mOut.y;
  result = 0;
  if (TSDNearlyEqualPoints(self->mA.x, self->mA.y, x, y))
  {
    v5 = self->mIn.x;
    v6 = self->mIn.y;
    if (TSDNearlyEqualPoints(x, y, v5, v6) && TSDNearlyEqualPoints(v5, v6, self->mB.x, self->mB.y))
    {
      return 1;
    }
  }

  return result;
}

- (id)initFromPoint:(CGPoint)point outPoint:(CGPoint)outPoint inPoint:(CGPoint)inPoint toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = inPoint.y;
  v9 = inPoint.x;
  v10 = outPoint.y;
  v11 = outPoint.x;
  v12 = point.y;
  v13 = point.x;
  v15.receiver = self;
  v15.super_class = TSDBezierSegment;
  result = [(TSDBezierSegment *)&v15 init];
  if (result)
  {
    *(result + 1) = v13;
    *(result + 2) = v12;
    *(result + 3) = v11;
    *(result + 4) = v10;
    *(result + 5) = v9;
    *(result + 6) = v8;
    *(result + 7) = x;
    *(result + 8) = y;
  }

  return result;
}

- (CGPoint)fromPoint
{
  x = self->mA.x;
  y = self->mA.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)toPoint
{
  x = self->mB.x;
  y = self->mB.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)inPoint
{
  x = self->mIn.x;
  y = self->mIn.y;
  v5 = self->mB.x;
  v6 = self->mB.y;
  if (TSDNearlyEqualPoints(x, y, v5, v6))
  {
    x = self->mOut.x;
    y = self->mOut.y;
    if (TSDNearlyEqualPoints(x, y, v5, v6))
    {
      x = self->mA.x;
      y = self->mA.y;
    }
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)outPoint
{
  x = self->mOut.x;
  y = self->mOut.y;
  v5 = self->mA.x;
  v6 = self->mA.y;
  if (TSDNearlyEqualPoints(x, y, v5, v6))
  {
    x = self->mIn.x;
    y = self->mIn.y;
    if (TSDNearlyEqualPoints(x, y, v5, v6))
    {
      x = self->mB.x;
      y = self->mB.y;
    }
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (double)parametricValueForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mOut = self->mOut;
  mA = self->mA;
  mB = self->mB;
  mIn = self->mIn;
  v5 = 0.0;
  v6 = 1001;
  v7 = 1000000.0;
  v8 = 0.0;
  do
  {
    v8 = v8 + 0.001;
    v9 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(mOut, v8 * 3.0 * ((1.0 - v8) * (1.0 - v8))), mA, (1.0 - v8) * ((1.0 - v8) * (1.0 - v8))), mIn, (1.0 - v8) * (v8 * v8 * 3.0)), mB, v8 * (v8 * v8));
    v10 = TSDDistance(v9.f64[0], v9.f64[1], x, y);
    if (v10 < v7)
    {
      v7 = v10;
      v5 = v8;
    }

    --v6;
  }

  while (v6);
  return v5;
}

- (void)splitAtParametricValue:(double)value left:(id *)left right:(id *)right
{
  x = self->mOut.x;
  y = self->mOut.y;
  v11 = self->mA.x;
  v12 = self->mA.y;
  v50 = v12;
  v51 = v11;
  v13 = TSDSubtractPoints(x, y, v11);
  v15 = TSDMultiplyPointScalar(v13, v14, value);
  v52 = TSDAddPoints(v11, v12, v15);
  v17 = v16;
  v19 = self->mIn.x;
  v18 = self->mIn.y;
  v20 = TSDSubtractPoints(v19, v18, x);
  v22 = TSDMultiplyPointScalar(v20, v21, value);
  v23 = TSDAddPoints(x, y, v22);
  v25 = v24;
  v26 = TSDSubtractPoints(self->mB.x, self->mB.y, v19);
  v28 = TSDMultiplyPointScalar(v26, v27, value);
  v49 = TSDAddPoints(v19, v18, v28);
  v30 = v29;
  v31 = TSDSubtractPoints(v23, v25, v52);
  v33 = TSDMultiplyPointScalar(v31, v32, value);
  v34 = TSDAddPoints(v52, v17, v33);
  v36 = v35;
  v37 = TSDSubtractPoints(v49, v30, v23);
  v39 = TSDMultiplyPointScalar(v37, v38, value);
  v40 = TSDAddPoints(v23, v25, v39);
  v42 = v41;
  v43 = TSDSubtractPoints(v40, v41, v34);
  v45 = TSDMultiplyPointScalar(v43, v44, value);
  v46 = TSDAddPoints(v34, v36, v45);
  v48 = v47;
  *left = [TSDBezierSegment segmentFromPoint:v51 outPoint:v50 inPoint:v52 toPoint:v17, v34, v36, v46, v47];
  *right = [TSDBezierSegment segmentFromPoint:v46 outPoint:v48 inPoint:v40 toPoint:v42, v49, v30, self->mB.x, self->mB.y];
}

- (CGPoint)pointAtParametricValue:(double)value
{
  v8 = *MEMORY[0x277D85DE8];
  mOut = self->mOut;
  v7[0] = self->mA;
  v7[1] = mOut;
  mB = self->mB;
  v7[2] = self->mIn;
  v7[3] = mB;
  v5 = TSDPointOnCurve(v7, value);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)closestPointToPoint:(CGPoint)point
{
  [(TSDBezierSegment *)self parametricValueForPoint:point.x, point.y];

  [(TSDBezierSegment *)self pointAtParametricValue:?];
  result.y = v5;
  result.x = v4;
  return result;
}

@end