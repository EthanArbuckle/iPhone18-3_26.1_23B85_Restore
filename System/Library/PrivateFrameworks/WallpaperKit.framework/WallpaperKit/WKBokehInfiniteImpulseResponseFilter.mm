@interface WKBokehInfiniteImpulseResponseFilter
+ (id)lowpassFilterWithCoefficient:(double)coefficient;
+ (id)lowpassInertiaFilterWithCoefficient:(double)coefficient;
- (BOOL)zeroGradient;
- (WKBokehInfiniteImpulseResponseFilter)initWithCount:(unint64_t)count feedforwardCoefficients:(double *)coefficients feedbackCoefficients:(double *)feedbackCoefficients;
- (double)filterWithInput:(void *)input;
- (double)output;
- (double)outputGradient;
- (double)zeroGradientThreshold;
- (uint64_t)setLowpassInertiaFilterCoefficient:(uint64_t)result;
- (uint64_t)setZeroGradientThreshold:(uint64_t)result;
- (void)dealloc;
- (void)resetToValue:(void *)result;
@end

@implementation WKBokehInfiniteImpulseResponseFilter

- (WKBokehInfiniteImpulseResponseFilter)initWithCount:(unint64_t)count feedforwardCoefficients:(double *)coefficients feedbackCoefficients:(double *)feedbackCoefficients
{
  if (count <= 1)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"count < 2";
LABEL_20:
    [v6 raise:v7 format:{v8, feedbackCoefficients}];
    selfCopy = 0;
    goto LABEL_21;
  }

  coefficientsCopy = coefficients;
  if (!coefficients)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"feedforwardCoefficients is NULL";
    goto LABEL_20;
  }

  feedbackCoefficientsCopy = feedbackCoefficients;
  if (!feedbackCoefficients)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"feedbackCoefficients is NULL";
    goto LABEL_20;
  }

  countCopy = count;
  v12 = 0.0;
  for (i = 1; i != count; ++i)
  {
    v12 = v12 + feedbackCoefficients[i];
  }

  v14 = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + coefficients[v14++];
  }

  while (count != v14);
  if (fabs((v15 - v12) * (1.0 / *feedbackCoefficients) + -1.0) > 0.00001)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"coefficients scale the output, (1.0 / fbC[0])(sum(ffC) - sum(fbC[1:])) should be 1.0"}];
  }

  v27.receiver = self;
  v27.super_class = WKBokehInfiniteImpulseResponseFilter;
  v16 = [(WKBokehInfiniteImpulseResponseFilter *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_count = countCopy;
    v16->_ffC = malloc_type_malloc(8 * countCopy, 0x100004000313F17uLL);
    v18 = malloc_type_malloc(8 * countCopy, 0x100004000313F17uLL);
    v17->_fbC = v18;
    ffC = v17->_ffC;
    v20 = countCopy;
    do
    {
      v21 = *coefficientsCopy++;
      *ffC++ = v21;
      v22 = *feedbackCoefficientsCopy++;
      *v18++ = v22;
      --v20;
    }

    while (v20);
    v17->_inputHistory = malloc_type_malloc(8 * countCopy, 0x100004000313F17uLL);
    v23 = malloc_type_malloc(8 * countCopy, 0x100004000313F17uLL);
    v17->_outputHistory = v23;
    inputHistory = v17->_inputHistory;
    do
    {
      *inputHistory++ = 0.0;
      *v23++ = 0.0;
      --countCopy;
    }

    while (countCopy);
    v17->_zeroGradientThreshold = 0.001;
  }

  self = v17;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

+ (id)lowpassFilterWithCoefficient:(double)coefficient
{
  v7[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (coefficient <= 0.0)
  {
    v2 = @"coeff <= 0.0";
  }

  else
  {
    if (coefficient < 1.0)
    {
      goto LABEL_6;
    }

    v2 = @"coeff >= 1.0";
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v2];
LABEL_6:
  v7[1] = 0;
  v6[0] = 0x3FF0000000000000;
  *&v6[1] = coefficient + -1.0;
  *v7 = coefficient;
  v3 = [objc_alloc(objc_opt_class()) initWithCount:2 feedforwardCoefficients:v7 feedbackCoefficients:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)lowpassInertiaFilterWithCoefficient:(double)coefficient
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  coefficientCopy = coefficient;
  if (coefficient <= 0.0)
  {
    v2 = @"coeff <= 0.0";
  }

  else
  {
    if (coefficient < 1.0)
    {
      goto LABEL_6;
    }

    v2 = @"coeff >= 1.0";
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v2, *&coefficient}];
  coefficientCopy = v8;
LABEL_6:
  v11 = coefficientCopy;
  v12 = vmulq_n_f64(xmmword_1E4AADDB0, coefficientCopy);
  v3 = vmulq_n_f64(xmmword_1E4AADDC0, coefficientCopy);
  v13 = coefficientCopy * 0.3;
  v14 = v3.f64[0];
  v9[0] = 0x3FF0000000000000;
  *&v9[1] = coefficientCopy + -1.0;
  *&v9[2] = coefficientCopy * 0.4;
  v10 = v3;
  v4 = [objc_alloc(objc_opt_class()) initWithCount:5 feedforwardCoefficients:&v11 feedbackCoefficients:v9];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)dealloc
{
  free(self->_ffC);
  free(self->_fbC);
  free(self->_inputHistory);
  free(self->_outputHistory);
  v3.receiver = self;
  v3.super_class = WKBokehInfiniteImpulseResponseFilter;
  [(WKBokehInfiniteImpulseResponseFilter *)&v3 dealloc];
}

- (uint64_t)setLowpassInertiaFilterCoefficient:(uint64_t)result
{
  if (result)
  {
    v2 = vmulq_n_f64(xmmword_1E4AADDC0, a2);
    v3 = *(result + 16);
    *v3 = a2;
    *(v3 + 8) = vmulq_n_f64(xmmword_1E4AADDB0, a2);
    *(v3 + 24) = a2 * 0.3;
    *(v3 + 32) = v2.f64[0];
    v4 = *(result + 24);
    *v4 = 0x3FF0000000000000;
    *(v4 + 8) = a2 + -1.0;
    *(v4 + 16) = a2 * 0.4;
    *(v4 + 24) = v2;
  }

  return result;
}

- (double)filterWithInput:(void *)input
{
  if (!input)
  {
    return 0.0;
  }

  v4 = input[4];
  memmove(v4 + 1, v4, 8 * input[1] - 8);
  *v4 = a2;
  v5 = input[1];
  if (v5 >= 2)
  {
    v6 = input[5];
    v7 = (input[3] + 8);
    v8 = v5 - 1;
    v9 = 0.0;
    do
    {
      v10 = *v6++;
      v11 = v10;
      v12 = *v7++;
      v9 = v9 + v11 * v12;
      --v8;
    }

    while (v8);
    goto LABEL_7;
  }

  v9 = 0.0;
  if (v5)
  {
LABEL_7:
    v13 = input[4];
    v14 = input[2];
    v15 = 0.0;
    v16 = input[1];
    do
    {
      v17 = *v13++;
      v18 = v17;
      v19 = *v14++;
      v15 = v15 + v18 * v19;
      --v16;
    }

    while (v16);
    v9 = v15 - v9;
  }

  v20 = v9 * (1.0 / *input[3]);
  v21 = input[5];
  memmove(v21 + 1, v21, 8 * v5 - 8);
  *v21 = v20;
  return v20;
}

- (double)output
{
  if (self)
  {
    return **(self + 40);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

- (double)outputGradient
{
  if (self)
  {
    return **(self + 40) - *(*(self + 40) + 8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

- (BOOL)zeroGradient
{
  if (result)
  {
    return vabdd_f64(**(result + 40), *(*(result + 40) + 8)) < *(result + 48);
  }

  return result;
}

- (void)resetToValue:(void *)result
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = (v2 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v4 = vdupq_n_s64(v2 - 1);
      v5 = xmmword_1E4AADDD0;
      v6 = (result[4] + 8);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v4, v5));
        if (v8.i8[0])
        {
          *(v6 - 1) = a2;
        }

        if (v8.i8[4])
        {
          *v6 = a2;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 2;
        v3 -= 2;
      }

      while (v3);
      v9 = (v2 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v10 = xmmword_1E4AADDD0;
      v11 = (result[5] + 8);
      v12 = vdupq_n_s64(2uLL);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v4, v10));
        if (v13.i8[0])
        {
          *(v11 - 1) = a2;
        }

        if (v13.i8[4])
        {
          *v11 = a2;
        }

        v10 = vaddq_s64(v10, v12);
        v11 += 2;
        v9 -= 2;
      }

      while (v9);
    }
  }

  return result;
}

- (double)zeroGradientThreshold
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

- (uint64_t)setZeroGradientThreshold:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

@end