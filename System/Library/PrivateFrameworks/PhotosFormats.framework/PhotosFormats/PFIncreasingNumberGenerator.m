@interface PFIncreasingNumberGenerator
- (PFIncreasingNumberGenerator)initWithSeed:(unint64_t)a3;
- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)a3;
@end

@implementation PFIncreasingNumberGenerator

- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  seed = self->_seed;
  self->_seed = seed + 1;
  return seed % a3;
}

- (PFIncreasingNumberGenerator)initWithSeed:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PFIncreasingNumberGenerator;
  v4 = [(PFIncreasingNumberGenerator *)&v6 init];
  [(PFIncreasingNumberGenerator *)v4 setSeed:a3];
  return v4;
}

@end