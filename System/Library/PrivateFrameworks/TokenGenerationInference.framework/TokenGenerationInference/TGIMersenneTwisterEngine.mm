@interface TGIMersenneTwisterEngine
- (TGIMersenneTwisterEngine)initWithSeed:(unint64_t)seed;
- (id).cxx_construct;
@end

@implementation TGIMersenneTwisterEngine

- (TGIMersenneTwisterEngine)initWithSeed:(unint64_t)seed
{
  v9.receiver = self;
  v9.super_class = TGIMersenneTwisterEngine;
  v4 = [(TGIMersenneTwisterEngine *)&v9 init];
  v5 = v4;
  if (v4)
  {
    __src[0] = seed;
    for (i = 1; i != 312; ++i)
    {
      seed = i + 0x5851F42D4C957F2DLL * (seed ^ (seed >> 62));
      __src[i] = seed;
    }

    __src[312] = 0;
    memcpy(&v4->_mersenneTwisterEngine, __src, sizeof(v4->_mersenneTwisterEngine));
  }

  return v5;
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 1) = 5489;
  v3 = 1;
  for (i = 2; i != 313; ++i)
  {
    v5 = 0x5851F42D4C957F2DLL * (v2 ^ (v2 >> 62));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 1;
    ++v3;
  }

  *(self + 313) = 0;
  return self;
}

@end