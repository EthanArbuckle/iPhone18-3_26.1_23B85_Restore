@interface TSDCurveFitter
- (TSDCurveFitter)init;
- (id)bezierPathFittingPointArray:(id *)array count:(int64_t)count;
- (void)fitCurveToPointArray:(id *)array count:(int64_t)count bezierCallback:(void *)callback context:(void *)context;
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

- (id)bezierPathFittingPointArray:(id *)array count:(int64_t)count
{
  v7 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, array);
  objc_msgSend_fitCurveToPointArray_count_bezierCallback_context_(self, v8, array, count, sub_2766831E0, v7);

  return v7;
}

- (void)fitCurveToPointArray:(id *)array count:(int64_t)count bezierCallback:(void *)callback context:(void *)context
{
  mErrorIterations = self->mErrorIterations;
  callbackCopy = callback;
  contextCopy = context;
  countCopy = count;
  v9 = malloc_type_malloc(8 * count, 0x2004093837F09uLL);
  v18 = v9;
  if (count)
  {
    v10 = 0;
    do
    {
      v9[v10++] = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
    }

    while (count != v10);
    v13 = count - 1;
    if (count <= 1)
    {
      goto LABEL_10;
    }

    v11.n128_f64[0] = array[1].var0 - array->var0;
    v12.n128_f64[0] = array[1].var1 - array->var1;
    v14 = sqrt(v12.n128_f64[0] * v12.n128_f64[0] + v11.n128_f64[0] * v11.n128_f64[0]);
    if (v14 != 0.0)
    {
      v11.n128_f64[0] = v11.n128_f64[0] / v14;
      v12.n128_f64[0] = v12.n128_f64[0] / v14;
    }

    v15 = vsubq_f64(array[v13 - 1], array[v13]);
    v16 = vmulq_f64(v15, v15);
    v16.n128_f64[0] = sqrt(v16.n128_f64[1] + v15.n128_f64[0] * v15.n128_f64[0]);
    if (v16.n128_f64[0] != 0.0)
    {
      v16 = vdupq_lane_s64(v16.n128_i64[0], 0);
      v15 = vdivq_f64(v15, v16);
    }

    v16.n128_u64[0] = v15.n128_u64[1];
    sub_276683408(array, 0, v13, &v18, v11, v12, v15, v16, self->mErrorDistance);
    if (countCopy)
    {
LABEL_10:
      v17 = 0;
      do
      {
        free(v18[v17++]);
      }

      while (v17 < countCopy);
      countCopy = 0;
    }

    v9 = v18;
  }

  if (v9)
  {
    free(v9);
  }
}

@end