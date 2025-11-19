@interface WFEventLogarithmicBinningValueTransformer
- (id)transformedValue:(id)a3;
@end

@implementation WFEventLogarithmicBinningValueTransformer

- (id)transformedValue:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
    v5 = v4;
    v6 = log2(fabs(v4));
    v7 = exp2(round(v6));
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:(v7 * round(v5 / v7))];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end