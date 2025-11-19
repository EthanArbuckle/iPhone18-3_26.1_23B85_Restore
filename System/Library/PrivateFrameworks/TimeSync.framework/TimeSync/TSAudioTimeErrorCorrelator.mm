@interface TSAudioTimeErrorCorrelator
- (TSAudioTimeErrorCorrelator)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5;
- (void)_calculateUpsamplerCoefficients:(float *)a3 length:(int64_t *)a4;
@end

@implementation TSAudioTimeErrorCorrelator

- (TSAudioTimeErrorCorrelator)initWithMaxCorrelationLength:(int64_t)a3 andUpscaleFactor:(int64_t)a4 forSamplingRate:(double)a5
{
  v9.receiver = self;
  v9.super_class = TSAudioTimeErrorCorrelator;
  result = [(TSAudioTimeErrorCorrelator *)&v9 init];
  if (result)
  {
    result->_samplingRate = a5;
    result->_maxCorrelationLength = a3;
    result->_upscaleFactor = a4;
  }

  return result;
}

- (void)_calculateUpsamplerCoefficients:(float *)a3 length:(int64_t *)a4
{
  if (a3 && a4)
  {
    upscaleFactor = self->_upscaleFactor;
    v8 = 200 * upscaleFactor;
    v9 = (200 * upscaleFactor) | 1;
    v10 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
    if (!v10)
    {
LABEL_16:
      *a3 = v10;
      *a4 = v9;
      return;
    }

    if (v8 >> 1 < 0)
    {
      v12 = v8;
      if ((upscaleFactor & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v12 = v8;
      v13 = 200 * upscaleFactor;
      do
      {
        v14 = cos(v11 * 6.28318531 / v12) * -0.5 + 0.42;
        v15 = v14 + cos(v11 * 12.5663706 / v12) * 0.08;
        v10[v11++] = v15;
        v10[v13--] = v15;
      }

      while ((v8 >> 1) + 1 != v11);
      if ((upscaleFactor & 0x8000000000000000) == 0)
      {
LABEL_8:
        v16 = 1.0 / (upscaleFactor / 0.899999976);
        v17 = v12 * -0.5 * v16;
        v18 = v8 + 1;
        v19 = 0.0;
        v20 = v10;
        do
        {
          v21 = 1.0;
          if (fabs(v17) >= 0.000001)
          {
            v21 = sin(v17 * 3.14159265) / (v17 * 3.14159265);
          }

          v22 = v21 * *v20;
          *v20++ = v22;
          v19 = v19 + v22;
          v17 = v16 + v17;
          --v18;
        }

        while (v18);
        goto LABEL_15;
      }
    }

    v19 = 0.0;
LABEL_15:
    v23 = self->_upscaleFactor / v19;
    v24 = v23;
    MEMORY[0x2743881D0](v10, 1, &v24, v10, 1, v9);
    goto LABEL_16;
  }
}

@end