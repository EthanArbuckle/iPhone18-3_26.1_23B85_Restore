@interface TSDCurveFitter
+ (id)curveFitter;
- (TSDCurveFitter)init;
- (id)bezierPathFittingPointArray:(id *)array count:(int64_t)count;
- (id)bezierPathFittingPoints:(id)points;
- (void)fitCurveToPointArray:(id *)array count:(int64_t)count bezierCallback:(void *)callback context:(void *)context;
- (void)fitCurveToPoints:(id)points bezierCallback:(void *)callback context:(void *)context;
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

- (id)bezierPathFittingPoints:(id)points
{
  v5 = +[TSDBezierPath bezierPath];
  [(TSDCurveFitter *)self fitCurveToPoints:points bezierCallback:p_bezierPathFittingPointsCallback context:v5];
  return v5;
}

- (id)bezierPathFittingPointArray:(id *)array count:(int64_t)count
{
  v7 = +[TSDBezierPath bezierPath];
  [(TSDCurveFitter *)self fitCurveToPointArray:array count:count bezierCallback:p_bezierPathFittingPointsCallback context:v7];
  return v7;
}

- (void)fitCurveToPoints:(id)points bezierCallback:(void *)callback context:(void *)context
{
  v9 = [points count];
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
        [objc_msgSend(points objectAtIndex:{v13), "CGPointValue"}];
        *(v14 - 1) = v15;
        *v14 = v16;
        ++v13;
        v14 += 2;
      }

      while (v10 != v13);
    }

    [(TSDCurveFitter *)self fitCurveToPointArray:v12 count:v10 bezierCallback:callback context:context];

    free(v12);
  }
}

- (void)fitCurveToPointArray:(id *)array count:(int64_t)count bezierCallback:(void *)callback context:(void *)context
{
  mErrorIterations = self->mErrorIterations;
  callbackCopy = callback;
  contextCopy = context;
  countCopy = count;
  v9 = malloc_type_malloc(8 * count, 0x2004093837F09uLL);
  v17 = v9;
  if (count)
  {
    v10 = 0;
    do
    {
      v9[v10++] = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
    }

    while (count != v10);
    if (count < 2)
    {
      goto LABEL_10;
    }

    v11.n128_f64[0] = array[1].var0 - array->var0;
    v12.n128_f64[0] = array[1].var1 - array->var1;
    v13 = sqrt(v12.n128_f64[0] * v12.n128_f64[0] + v11.n128_f64[0] * v11.n128_f64[0]);
    if (v13 != 0.0)
    {
      v11.n128_f64[0] = v11.n128_f64[0] / v13;
      v12.n128_f64[0] = v12.n128_f64[0] / v13;
    }

    v14 = vsubq_f64(array[count - 2], array[count - 1]);
    v15 = vmulq_f64(v14, v14);
    v15.n128_f64[0] = sqrt(v15.n128_f64[1] + v14.n128_f64[0] * v14.n128_f64[0]);
    if (v15.n128_f64[0] != 0.0)
    {
      v15 = vdupq_lane_s64(v15.n128_i64[0], 0);
      v14 = vdivq_f64(v14, v15);
    }

    v15.n128_u64[0] = v14.n128_u64[1];
    FitCubic(array, 0, count - 1, &v17, v11, v12, v14, v15, self->mErrorDistance);
    if (countCopy)
    {
LABEL_10:
      v16 = 0;
      do
      {
        free(v17[v16++]);
      }

      while (v16 < countCopy);
      countCopy = 0;
    }

    v9 = v17;
  }

  if (v9)
  {
    free(v9);
  }
}

@end