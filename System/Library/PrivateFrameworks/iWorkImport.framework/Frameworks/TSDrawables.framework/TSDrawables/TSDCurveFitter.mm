@interface TSDCurveFitter
- (TSDCurveFitter)init;
- (id)bezierPathFittingPointArray:(id *)a3 count:(int64_t)a4;
- (void)fitCurveToPointArray:(id *)a3 count:(int64_t)a4 bezierCallback:(void *)a5 context:(void *)a6;
@end

@implementation TSDCurveFitter

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

- (id)bezierPathFittingPointArray:(id *)a3 count:(int64_t)a4
{
  v7 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  objc_msgSend_fitCurveToPointArray_count_bezierCallback_context_(self, v8, a3, a4, sub_2766831E0, v7);

  return v7;
}

- (void)fitCurveToPointArray:(id *)a3 count:(int64_t)a4 bezierCallback:(void *)a5 context:(void *)a6
{
  mErrorIterations = self->mErrorIterations;
  v21 = a5;
  v22 = a6;
  v19 = a4;
  v9 = malloc_type_malloc(8 * a4, 0x2004093837F09uLL);
  v18 = v9;
  if (a4)
  {
    v10 = 0;
    do
    {
      v9[v10++] = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
    }

    while (a4 != v10);
    v13 = a4 - 1;
    if (a4 <= 1)
    {
      goto LABEL_10;
    }

    v11.n128_f64[0] = a3[1].var0 - a3->var0;
    v12.n128_f64[0] = a3[1].var1 - a3->var1;
    v14 = sqrt(v12.n128_f64[0] * v12.n128_f64[0] + v11.n128_f64[0] * v11.n128_f64[0]);
    if (v14 != 0.0)
    {
      v11.n128_f64[0] = v11.n128_f64[0] / v14;
      v12.n128_f64[0] = v12.n128_f64[0] / v14;
    }

    v15 = vsubq_f64(a3[v13 - 1], a3[v13]);
    v16 = vmulq_f64(v15, v15);
    v16.n128_f64[0] = sqrt(v16.n128_f64[1] + v15.n128_f64[0] * v15.n128_f64[0]);
    if (v16.n128_f64[0] != 0.0)
    {
      v16 = vdupq_lane_s64(v16.n128_i64[0], 0);
      v15 = vdivq_f64(v15, v16);
    }

    v16.n128_u64[0] = v15.n128_u64[1];
    sub_276683408(a3, 0, v13, &v18, v11, v12, v15, v16, self->mErrorDistance);
    if (v19)
    {
LABEL_10:
      v17 = 0;
      do
      {
        free(v18[v17++]);
      }

      while (v17 < v19);
      v19 = 0;
    }

    v9 = v18;
  }

  if (v9)
  {
    free(v9);
  }
}

@end