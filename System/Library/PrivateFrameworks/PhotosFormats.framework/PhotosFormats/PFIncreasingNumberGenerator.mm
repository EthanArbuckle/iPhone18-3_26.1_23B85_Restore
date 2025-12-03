@interface PFIncreasingNumberGenerator
- (PFIncreasingNumberGenerator)initWithSeed:(unint64_t)seed;
- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)than;
@end

@implementation PFIncreasingNumberGenerator

- (unint64_t)nextUnsignedIntegerLessThan:(unint64_t)than
{
  if (!than)
  {
    return 0;
  }

  seed = self->_seed;
  self->_seed = seed + 1;
  return seed % than;
}

- (PFIncreasingNumberGenerator)initWithSeed:(unint64_t)seed
{
  v6.receiver = self;
  v6.super_class = PFIncreasingNumberGenerator;
  v4 = [(PFIncreasingNumberGenerator *)&v6 init];
  [(PFIncreasingNumberGenerator *)v4 setSeed:seed];
  return v4;
}

@end