@interface PMLLaplaceSampler
- (PMLLaplaceSampler)initWithMagnitude:(float)magnitude;
- (PMLLaplaceSampler)initWithMagnitude:(float)magnitude seed:(unint64_t)seed;
- (float)sample;
@end

@implementation PMLLaplaceSampler

- (float)sample
{
  magnitude = self->_magnitude;
  v3 = self->_rng.s[0];
  v4 = self->_rng.s[1];
  v5 = v4 + v3;
  v6 = v4 ^ v3;
  self->_rng.s[0] = __ROR8__(v3, 9) ^ (v6 << 14) ^ v6;
  self->_rng.s[1] = __ROR8__(v6, 28);
  v7 = COERCE_DOUBLE((v5 >> 12) | 0x3FF0000000000000) + -1.0 + -0.5;
  v8 = v7;
  LODWORD(v3) = v8 > 0.0;
  LODWORD(v6) = v8 < 0.0;
  return log(fabs(v7) * -2.0 + 1.0) * (v3 - v6) * magnitude;
}

- (PMLLaplaceSampler)initWithMagnitude:(float)magnitude
{
  v7.receiver = self;
  v7.super_class = PMLLaplaceSampler;
  v4 = [(PMLLaplaceSampler *)&v7 init];
  v5 = v4;
  if (v4)
  {
    arc4random_buf(&v4->_rng, 0x10uLL);
    v5->_magnitude = magnitude;
  }

  return v5;
}

- (PMLLaplaceSampler)initWithMagnitude:(float)magnitude seed:(unint64_t)seed
{
  v7.receiver = self;
  v7.super_class = PMLLaplaceSampler;
  v5 = [(PMLLaplaceSampler *)&v7 init];
  if (v5)
  {
    _PASRngSeed64();
    v5->_magnitude = magnitude;
  }

  return v5;
}

@end