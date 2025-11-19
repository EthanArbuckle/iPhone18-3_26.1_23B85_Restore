@interface WFEventSignificantFigureValueTransformer
- (id)transformedValue:(id)a3;
@end

@implementation WFEventSignificantFigureValueTransformer

- (id)transformedValue:(id)a3
{
  if (a3)
  {
    [a3 floatValue];
    v5 = v4;
    v6 = log10(fabsf(v4));
    v7 = __exp10((vcvtpd_s64_f64(v6) - 2));
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * round(v5 / v7)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end