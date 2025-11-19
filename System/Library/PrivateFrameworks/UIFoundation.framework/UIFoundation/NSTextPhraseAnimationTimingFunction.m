@interface NSTextPhraseAnimationTimingFunction
+ (NSTextPhraseAnimationTimingFunction)cubicBezierTimingFunctionWithSamplingFrequency:(double)a3 duration:(double)a4 initialValue:(double)a5 finalValue:(double)a6 point1:(double)a7 point2:(uint64_t)a8;
- (NSTextPhraseAnimationTimingFunction)initWithSamplingFrequency:(unint64_t)a3 duration:(double)a4 initialValue:(double)a5 finalValue:(double)a6;
- (double)sampleAtIndex:(uint64_t)a1;
- (void)populateValues;
@end

@implementation NSTextPhraseAnimationTimingFunction

- (NSTextPhraseAnimationTimingFunction)initWithSamplingFrequency:(unint64_t)a3 duration:(double)a4 initialValue:(double)a5 finalValue:(double)a6
{
  v11.receiver = self;
  v11.super_class = NSTextPhraseAnimationTimingFunction;
  result = [(NSTextPhraseAnimationTimingFunction *)&v11 init];
  if (result)
  {
    result->_duration = a4;
    result->_initialValue = a5;
    result->_finalValue = a6;
    result->_indexCount = (a3 * a4);
    result->_frequency = a3;
    result->_populatedSamples = 0;
  }

  return result;
}

+ (NSTextPhraseAnimationTimingFunction)cubicBezierTimingFunctionWithSamplingFrequency:(double)a3 duration:(double)a4 initialValue:(double)a5 finalValue:(double)a6 point1:(double)a7 point2:(uint64_t)a8
{
  objc_opt_self();
  v17 = [[NSTextPhraseAnimationTimingFunction alloc] initWithSamplingFrequency:a9 duration:a1 initialValue:a2 finalValue:a3];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __133__NSTextPhraseAnimationTimingFunction_cubicBezierTimingFunctionWithSamplingFrequency_duration_initialValue_finalValue_point1_point2___block_invoke;
  v19[3] = &__block_descriptor_64_e8_d16__0d8l;
  *&v19[4] = a4;
  *&v19[5] = a5;
  *&v19[6] = a6;
  *&v19[7] = a7;
  [(NSTextPhraseAnimationTimingFunction *)v17 setCalcTimingFunction:v19];
  [(NSTextPhraseAnimationTimingFunction *)v17 populateValues];

  return v17;
}

double __133__NSTextPhraseAnimationTimingFunction_cubicBezierTimingFunctionWithSamplingFrequency_duration_initialValue_finalValue_point1_point2___block_invoke(double *a1, double a2)
{
  v2 = 0.0;
  v3 = 1.0;
  do
  {
    v4 = (v2 + v3) * 0.5;
    if (v4 * ((1.0 - v4) * (a1[4] * 3.0 * (1.0 - v4))) + (1.0 - v4) * ((1.0 - v4) * 0.0) * (1.0 - v4) + v4 * (a1[6] * 3.0 * (1.0 - v4)) * v4 + v4 * v4 * v4 <= a2)
    {
      v2 = (v2 + v3) * 0.5;
    }

    else
    {
      v3 = (v2 + v3) * 0.5;
    }
  }

  while (v3 - v2 > 0.00001);
  v5 = (v3 + v2) * 0.5;
  return v5 * ((1.0 - v5) * (a1[5] * 3.0 * (1.0 - v5))) + (1.0 - v5) * ((1.0 - v5) * 0.0) * (1.0 - v5) + v5 * (a1[7] * 3.0 * (1.0 - v5)) * v5 + v5 * v5 * v5;
}

- (void)populateValues
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_indexCount];
  sampledValues = self->_sampledValues;
  self->_sampledValues = v3;

  indexCount = self->_indexCount;
  if (indexCount)
  {
    for (i = 0; i < indexCount; ++i)
    {
      initialValue = self->_initialValue;
      v8 = self->_finalValue - initialValue;
      v9 = initialValue + v8 * (*(self->_calcTimingFunction + 2))(i / indexCount);
      v10 = self->_sampledValues;
      *&v9 = v9;
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [(NSMutableArray *)v10 setObject:v11 atIndexedSubscript:i];

      indexCount = self->_indexCount;
    }
  }

  self->_populatedSamples = 1;
}

- (double)sampleAtIndex:(uint64_t)a1
{
  v2 = 0.0;
  if (a1 && *(a1 + 8) == 1 && *(a1 + 16) > a2)
  {
    v3 = [*(a1 + 56) objectAtIndex:a2];
    [v3 floatValue];
    v2 = v4;
  }

  return v2;
}

@end