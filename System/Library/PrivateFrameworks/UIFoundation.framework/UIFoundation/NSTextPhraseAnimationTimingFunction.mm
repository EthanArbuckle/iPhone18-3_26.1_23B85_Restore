@interface NSTextPhraseAnimationTimingFunction
+ (NSTextPhraseAnimationTimingFunction)cubicBezierTimingFunctionWithSamplingFrequency:(double)frequency duration:(double)duration initialValue:(double)value finalValue:(double)finalValue point1:(double)point1 point2:(uint64_t)point2;
- (NSTextPhraseAnimationTimingFunction)initWithSamplingFrequency:(unint64_t)frequency duration:(double)duration initialValue:(double)value finalValue:(double)finalValue;
- (double)sampleAtIndex:(uint64_t)index;
- (void)populateValues;
@end

@implementation NSTextPhraseAnimationTimingFunction

- (NSTextPhraseAnimationTimingFunction)initWithSamplingFrequency:(unint64_t)frequency duration:(double)duration initialValue:(double)value finalValue:(double)finalValue
{
  v11.receiver = self;
  v11.super_class = NSTextPhraseAnimationTimingFunction;
  result = [(NSTextPhraseAnimationTimingFunction *)&v11 init];
  if (result)
  {
    result->_duration = duration;
    result->_initialValue = value;
    result->_finalValue = finalValue;
    result->_indexCount = (frequency * duration);
    result->_frequency = frequency;
    result->_populatedSamples = 0;
  }

  return result;
}

+ (NSTextPhraseAnimationTimingFunction)cubicBezierTimingFunctionWithSamplingFrequency:(double)frequency duration:(double)duration initialValue:(double)value finalValue:(double)finalValue point1:(double)point1 point2:(uint64_t)point2
{
  objc_opt_self();
  v17 = [[NSTextPhraseAnimationTimingFunction alloc] initWithSamplingFrequency:a9 duration:self initialValue:a2 finalValue:frequency];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __133__NSTextPhraseAnimationTimingFunction_cubicBezierTimingFunctionWithSamplingFrequency_duration_initialValue_finalValue_point1_point2___block_invoke;
  v19[3] = &__block_descriptor_64_e8_d16__0d8l;
  *&v19[4] = duration;
  *&v19[5] = value;
  *&v19[6] = finalValue;
  *&v19[7] = point1;
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

- (double)sampleAtIndex:(uint64_t)index
{
  v2 = 0.0;
  if (index && *(index + 8) == 1 && *(index + 16) > a2)
  {
    v3 = [*(index + 56) objectAtIndex:a2];
    [v3 floatValue];
    v2 = v4;
  }

  return v2;
}

@end