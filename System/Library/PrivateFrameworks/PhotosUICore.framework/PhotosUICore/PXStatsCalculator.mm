@interface PXStatsCalculator
- (PXStatsCalculator)init;
- (void)addValue:(double)a3;
@end

@implementation PXStatsCalculator

- (void)addValue:(double)a3
{
  v3 = self->_squareSum + a3 * a3;
  self->_sum = self->_sum + a3;
  self->_squareSum = v3;
  count = self->_count;
  self->_count = count + 1;
  if (count)
  {
    v5 = *&self->_min;
    v6 = vcgtq_f64(vdupq_lane_s64(*&a3, 0), v5);
    v7.i64[0] = *&self->_min;
    *&v7.i64[1] = a3;
    v5.f64[0] = a3;
    *&self->_min = vbslq_s8(v6, v7, v5);
  }

  else
  {
    self->_max = a3;
    self->_first = a3;
    self->_min = a3;
  }
}

- (PXStatsCalculator)init
{
  v3.receiver = self;
  v3.super_class = PXStatsCalculator;
  result = [(PXStatsCalculator *)&v3 init];
  if (result)
  {
    result->_first = NAN;
    *&result->_min = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return result;
}

@end