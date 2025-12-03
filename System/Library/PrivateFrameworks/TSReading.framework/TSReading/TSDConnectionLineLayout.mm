@interface TSDConnectionLineLayout
- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3];
- (id)quadraticCurve:(CGPoint)curve[3];
@end

@implementation TSDConnectionLineLayout

- (id)quadraticCurve:(CGPoint)curve[3]
{
  x = curve->x;
  y = curve->y;
  v5 = curve[1].x;
  v6 = curve[1].y;
  v7 = curve[2].x;
  v8 = curve[2].y;
  v34 = curve->x;
  v9 = TSDMultiplyPointScalar(curve->x, y, 0.25);
  v10 = TSDSubtractPoints(v5, v6, v9);
  v12 = v11;
  v13 = TSDMultiplyPointScalar(v7, v8, 0.25);
  v14 = TSDSubtractPoints(v10, v12, v13);
  v16 = TSDMultiplyPointScalar(v14, v15, 2.0);
  v18 = v17;
  v19 = TSDMultiplyPointScalar(x, y, 0.333333333);
  v21 = v20;
  v22 = TSDMultiplyPointScalar(v16, v18, 0.666666667);
  v24 = v23;
  v25 = TSDAddPoints(v19, v21, v22);
  v27 = v26;
  v28 = TSDMultiplyPointScalar(v7, v8, 0.333333333);
  v29 = TSDAddPoints(v22, v24, v28);
  v31 = v30;
  v32 = +[TSDBezierPath bezierPath];
  [v32 moveToPoint:{v34, y}];
  [v32 curveToPoint:v7 controlPoint1:v8 controlPoint2:{v25, v27, v29, v31}];
  return v32;
}

- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3]
{
  v8 = [(TSDConnectionLineLayout *)self quadraticCurve:points];
  self->mStartClipT = 0.0;
  v20 = 1;
  self->mEndClipT = 1.0;
  if (from && ([(TSDConnectionLineAbstractLayout *)self outsetFrom], (v9 = [(TSDConnectionLineAbstractLayout *)self clipPath:v8 onLayout:from outset:0 reversed:&v20 isValid:?]) != 0))
  {
    v10 = v9;
    segment = [v9 segment];
    [v10 t];
    self->mStartClipT = v12;
    if (!to)
    {
      goto LABEL_8;
    }
  }

  else
  {
    segment = -1;
    if (!to)
    {
LABEL_8:
      segment2 = -1;
      goto LABEL_9;
    }
  }

  [(TSDConnectionLineAbstractLayout *)self outsetTo];
  v13 = [(TSDConnectionLineAbstractLayout *)self clipPath:v8 onLayout:to outset:1 reversed:&v20 isValid:?];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  segment2 = [v13 segment];
  [v14 t];
  self->mEndClipT = v16;
LABEL_9:
  self->super.mVisibleLine = 1;
  if ((segment & 0x8000000000000000) == 0 || (segment2 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    if ((segment & 0x8000000000000000) == 0 && (segment2 & 0x8000000000000000) == 0 && segment >= segment2)
    {
      if (segment != segment2)
      {
        v17 = 1;
        if (!from)
        {
          goto LABEL_21;
        }

LABEL_17:
        if (to)
        {
          if (v17 || (v20 & 1) == 0)
          {
            self->super.mVisibleLine = 0;
            return v8;
          }

          if ((v20 & 1) == 0)
          {
LABEL_25:
            self->mStartClipT = 0.0;
            self->mEndClipT = 1.0;
            return v8;
          }

LABEL_23:
          v18 = +[TSDBezierPath bezierPath];
          [v18 appendBezierPath:v8 fromSegment:segment t:segment2 toSegment:0 t:self->mStartClipT withoutMove:self->mEndClipT];
          return v18;
        }

LABEL_21:
        if (from | to && (v20 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v17 = self->mStartClipT >= self->mEndClipT;
    }

    if (!from)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  return v8;
}

- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB
{
  y = originalB.y;
  x = originalB.x;
  v8 = originalA.y;
  v9 = originalA.x;
  v10 = b.y;
  v11 = b.x;
  v12 = a.y;
  v13 = a.x;
  objc_opt_class();
  if (!self->super.super.mResizePathSource)
  {
    [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  }

  v15 = TSUDynamicCast();
  mResizeInfoGeometry = self->super.super.mResizeInfoGeometry;
  if (mResizeInfoGeometry)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
LABEL_6:
    [(TSDInfoGeometry *)mResizeInfoGeometry transform];
    goto LABEL_7;
  }

  mResizeInfoGeometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  if (mResizeInfoGeometry)
  {
    goto LABEL_6;
  }

LABEL_7:
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  TSDTransformMakeFree(1, &v21, v9, v8, x, y, v13, v12, v11, v10);
  [v15 getControlKnobPosition:12];
  v19 = vaddq_f64(v23, vmlaq_n_f64(vmulq_n_f64(v22, *(&v26 + 1) + v17 * *(&v25 + 1) + *(&v24 + 1) * v18), v21, *&v26 + v17 * *&v25 + *&v24 * v18));
  v20 = v19.f64[1];
  result.x = v19.f64[0];
  result.y = v20;
  return result;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  v33 = *MEMORY[0x277D85DE8];
  connectedPathSource = [(TSDConnectionLineAbstractLayout *)self connectedPathSource];
  [(TSDConnectionLinePathSource *)connectedPathSource getControlKnobPosition:10];
  v6 = v5;
  v8 = v7;
  v28.f64[0] = v5;
  v28.f64[1] = v7;
  [(TSDConnectionLinePathSource *)connectedPathSource getControlKnobPosition:12];
  v10 = v9;
  v12 = v11;
  [(TSDConnectionLinePathSource *)connectedPathSource getControlKnobPosition:11];
  v14 = v13;
  v16 = v15;
  v31 = v13;
  v32 = v15;
  v17 = TSDMultiplyPointScalar(v6, v8, 0.25);
  v18 = TSDSubtractPoints(v10, v12, v17);
  v20 = v19;
  v21 = TSDMultiplyPointScalar(v14, v16, 0.25);
  v22 = TSDSubtractPoints(v18, v20, v21);
  v29 = TSDMultiplyPointScalar(v22, v23, 2.0);
  v30 = v24;
  if ([(TSDConnectionLineAbstractLayout *)self isStraightLine])
  {
    v25 = (self->mStartClipT + self->mEndClipT) * 0.5;
  }

  else
  {
    v25 = 0.5;
    if (self->super.mVisibleLine)
    {
      v25 = fmax(self->mStartClipT, fmin(self->mEndClipT, 0.5));
    }
  }

  v26 = TSDPointOnQuadraticCurve(&v28, v25);
  result.y = v27;
  result.x = v26;
  return result;
}

@end