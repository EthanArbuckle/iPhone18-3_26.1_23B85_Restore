@interface TSDCurveFitter
+ (id)curveFitter;
- (TSDCurveFitter)init;
- (id)bezierPathFittingPointArray:(id *)a3 count:(int64_t)a4;
- (id)bezierPathFittingPoints:(id)a3;
- (void)fitCurveToPointArray:(id *)a3 count:(int64_t)a4 bezierCallback:(void *)a5 context:(void *)a6;
- (void)fitCurveToPoints:(id)a3 bezierCallback:(void *)a4 context:(void *)a5;
@end

@implementation TSDCurveFitter

+ (id)curveFitter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSDCurveFitter)init
{
  v3.receiver = self;
  v3.super_class = TSDCurveFitter;
  result = [(TSDCurveFitter *)&v3 init];
  if (result)
  {
    result->mErrorDistance = 4.0;
    result->mErrorIterations = 1;
  }

  return result;
}

- (id)bezierPathFittingPoints:(id)a3
{
  v5 = +[TSDBezierPath bezierPath];
  [(TSDCurveFitter *)self fitCurveToPoints:a3 bezierCallback:p_bezierPathFittingPointsCallback context:v5];
  return v5;
}

- (id)bezierPathFittingPointArray:(id *)a3 count:(int64_t)a4
{
  v7 = +[TSDBezierPath bezierPath];
  [(TSDCurveFitter *)self fitCurveToPointArray:a3 count:a4 bezierCallback:p_bezierPathFittingPointsCallback context:v7];
  return v7;
}

- (void)fitCurveToPoints:(id)a3 bezierCallback:(void *)a4 context:(void *)a5
{
  v9 = [a3 count];
  if (v9)
  {
    v10 = v9;
    v11 = malloc_type_malloc(16 * v9, 0x1000040451B5BE8uLL);
    v12 = v11;
    if (v10 >= 1)
    {
      v13 = 0;
      v14 = v11 + 1;
      do
      {
        [objc_msgSend(a3 objectAtIndex:{v13), "CGPointValue"}];
        *(v14 - 1) = v15;
        *v14 = v16;
        ++v13;
        v14 += 2;
      }

      while (v10 != v13);
    }

    [(TSDCurveFitter *)self fitCurveToPointArray:v12 count:v10 bezierCallback:a4 context:a5];

    free(v12);
  }
}

- (void)fitCurveToPointArray:(id *)a3 count:(int64_t)a4 bezierCallback:(void *)a5 context:(void *)a6
{
  mErrorIterations = self->mErrorIterations;
  v20 = a5;
  v21 = a6;
  v18 = a4;
  v9 = malloc_type_malloc(8 * a4, 0x2004093837F09uLL);
  v17 = v9;
  if (a4)
  {
    v10 = 0;
    do
    {
      v9[v10++] = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
    }

    while (a4 != v10);
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v11.n128_f64[0] = a3[1].var0 - a3->var0;
    v12.n128_f64[0] = a3[1].var1 - a3->var1;
    v13 = sqrt(v12.n128_f64[0] * v12.n128_f64[0] + v11.n128_f64[0] * v11.n128_f64[0]);
    if (v13 != 0.0)
    {
      v11.n128_f64[0] = v11.n128_f64[0] / v13;
      v12.n128_f64[0] = v12.n128_f64[0] / v13;
    }

    v14 = vsubq_f64(a3[a4 - 2], a3[a4 - 1]);
    v15 = vmulq_f64(v14, v14);
    v15.n128_f64[0] = sqrt(v15.n128_f64[1] + v14.n128_f64[0] * v14.n128_f64[0]);
    if (v15.n128_f64[0] != 0.0)
    {
      v15 = vdupq_lane_s64(v15.n128_i64[0], 0);
      v14 = vdivq_f64(v14, v15);
    }

    v15.n128_u64[0] = v14.n128_u64[1];
    FitCubic(a3, 0, a4 - 1, &v17, v11, v12, v14, v15, self->mErrorDistance);
    if (v18)
    {
LABEL_10:
      v16 = 0;
      do
      {
        free(v17[v16++]);
      }

      while (v16 < v18);
      v18 = 0;
    }

    v9 = v17;
  }

  if (v9)
  {
    free(v9);
  }
}

@end