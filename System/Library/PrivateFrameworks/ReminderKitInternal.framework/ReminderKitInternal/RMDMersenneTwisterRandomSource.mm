@interface RMDMersenneTwisterRandomSource
- (RMDMersenneTwisterRandomSource)init;
- (RMDMersenneTwisterRandomSource)initWithSeed:(unint64_t)seed;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)encodeWithCoder:(id)coder;
- (void)setSeed:(unint64_t)seed;
@end

@implementation RMDMersenneTwisterRandomSource

- (RMDMersenneTwisterRandomSource)init
{
  bytes = 0;
  if (SecRandomCopyBytes(0, 8uLL, &bytes))
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"failed to generate secure random bytes" userInfo:MEMORY[0x277CBEC10]];
    objc_exception_throw(v4);
  }

  return [(RMDMersenneTwisterRandomSource *)self initWithSeed:bytes];
}

- (RMDMersenneTwisterRandomSource)initWithSeed:(unint64_t)seed
{
  v9.receiver = self;
  v9.super_class = RMDMersenneTwisterRandomSource;
  v4 = [(RMDRandomSource *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_seed = seed;
    __src[0] = seed;
    for (i = 1; i != 312; ++i)
    {
      seed = i + 0x5851F42D4C957F2DLL * (seed ^ (seed >> 62));
      __src[i] = seed;
    }

    __src[312] = 0;
    memcpy(&v4->_engine, __src, sizeof(v4->_engine));
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithSeed:self->_seed];
  memcpy((v4 + 16), &self->_engine, 0x9C8uLL);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RMDMersenneTwisterRandomSource;
  [(RMDRandomSource *)&v3 encodeWithCoder:coder];
}

- (void)setSeed:(unint64_t)seed
{
  self->_seed = seed;
  self->_engine.__x_[0] = seed;
  for (i = 1; i != 312; ++i)
  {
    seed = i + 0x5851F42D4C957F2DLL * (seed ^ (seed >> 62));
    self->_engine.__x_[i] = seed;
  }

  self->_engine.__i_ = 0;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v5 = bound - 1;
  if ((bound & (bound - 1)) == 0)
  {
    return ([(RMDMersenneTwisterRandomSource *)self nextBits:32]* bound) >> 32;
  }

  do
  {
    v7 = [(RMDMersenneTwisterRandomSource *)self nextBits:32];
    result = v7 % bound;
  }

  while (v5 + v7 < v7 % bound);
  return result;
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 2) = 5489;
  for (i = 1; i != 312; ++i)
  {
    v2 = i + 0x5851F42D4C957F2DLL * (v2 ^ (v2 >> 62));
    *(self + i + 2) = v2;
  }

  *(self + 314) = 0;
  return self;
}

@end