@interface TSDConnectionLineLayout
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3];
- (id)quadraticCurve:(CGPoint)a3[3];
@end

@implementation TSDConnectionLineLayout

- (id)quadraticCurve:(CGPoint)a3[3]
{
  x = a3->x;
  y = a3->y;
  v5 = a3[1].x;
  v6 = a3[1].y;
  v7 = a3[2].x;
  v8 = a3[2].y;
  v34 = a3->x;
  v9 = TSDMultiplyPointScalar(a3->x, y, 0.25);
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

- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3]
{
  v8 = [(TSDConnectionLineLayout *)self quadraticCurve:a5];
  self->mStartClipT = 0.0;
  v20 = 1;
  self->mEndClipT = 1.0;
  if (a3 && ([(TSDConnectionLineAbstractLayout *)self outsetFrom], (v9 = [(TSDConnectionLineAbstractLayout *)self clipPath:v8 onLayout:a3 outset:0 reversed:&v20 isValid:?]) != 0))
  {
    v10 = v9;
    v11 = [v9 segment];
    [v10 t];
    self->mStartClipT = v12;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = -1;
    if (!a4)
    {
LABEL_8:
      v15 = -1;
      goto LABEL_9;
    }
  }

  [(TSDConnectionLineAbstractLayout *)self outsetTo];
  v13 = [(TSDConnectionLineAbstractLayout *)self clipPath:v8 onLayout:a4 outset:1 reversed:&v20 isValid:?];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [v13 segment];
  [v14 t];
  self->mEndClipT = v16;
LABEL_9:
  self->super.mVisibleLine = 1;
  if ((v11 & 0x8000000000000000) == 0 || (v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    if ((v11 & 0x8000000000000000) == 0 && (v15 & 0x8000000000000000) == 0 && v11 >= v15)
    {
      if (v11 != v15)
      {
        v17 = 1;
        if (!a3)
        {
          goto LABEL_21;
        }

LABEL_17:
        if (a4)
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
          [v18 appendBezierPath:v8 fromSegment:v11 t:v15 toSegment:0 t:self->mStartClipT withoutMove:self->mEndClipT];
          return v18;
        }

LABEL_21:
        if (a3 | a4 && (v20 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v17 = self->mStartClipT >= self->mEndClipT;
    }

    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  return v8;
}

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
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

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [(TSDConnectionLineAbstractLayout *)self connectedPathSource];
  [(TSDConnectionLinePathSource *)v4 getControlKnobPosition:10];
  v6 = v5;
  v8 = v7;
  v28.f64[0] = v5;
  v28.f64[1] = v7;
  [(TSDConnectionLinePathSource *)v4 getControlKnobPosition:12];
  v10 = v9;
  v12 = v11;
  [(TSDConnectionLinePathSource *)v4 getControlKnobPosition:11];
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