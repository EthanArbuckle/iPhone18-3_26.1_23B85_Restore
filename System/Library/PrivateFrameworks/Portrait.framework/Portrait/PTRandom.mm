@interface PTRandom
+ (double)nextUshort2:(int)a3 seed:(std:()32 :()624 mersenne_twister_engine<unsigned)int;
- (PTRandom)initWithSeed:(unsigned int)a3;
- (double)nextGauss;
- (double)nextUshort2:(int)a3;
- (id).cxx_construct;
- (unsigned)nextUint:(unsigned int)a3;
@end

@implementation PTRandom

- (PTRandom)initWithSeed:(unsigned int)a3
{
  v11.receiver = self;
  v11.super_class = PTRandom;
  v4 = [(PTRandom *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_mt.__x_[0] = a3;
    v6 = 1;
    for (i = 3; i != 626; ++i)
    {
      v8 = 1812433253 * (a3 ^ (a3 >> 30));
      a3 = v8 + v6;
      *(&v4->super.isa + i) = i + v8 - 2;
      ++v6;
    }

    v4->_mt.__i_ = 0;
    v9 = v4;
  }

  return v5;
}

- (double)nextGauss
{
  v3 = xmmword_2244A5420;
  v4 = 0;
  return std::normal_distribution<double>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v3, &self->_mt, &v3);
}

- (unsigned)nextUint:(unsigned int)a3
{
  v4[0] = 0;
  v4[1] = a3;
  return std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v4, &self->_mt, v4);
}

- (double)nextUshort2:(int)a3
{
  v6[0] = 0;
  v6[1] = a3;
  v4 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v6, (a1 + 8), v6);
  return COERCE_DOUBLE(__PAIR64__(std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v6, (a1 + 8), v6), v4));
}

+ (double)nextUshort2:(int)a3 seed:(std:()32 :()624 mersenne_twister_engine<unsigned)int
{
  v8.__x_[0] = a4;
  for (i = 1; i != 624; ++i)
  {
    a4 = i + 1812433253 * (a4 ^ (a4 >> 30));
    v8.__x_[i] = a4;
  }

  v8.__i_ = 0;
  v7[0] = 0;
  v7[1] = a3;
  v5 = std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v7, &v8, v7);
  return COERCE_DOUBLE(__PAIR64__(std::uniform_int_distribution<unsigned int>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v7, &v8, v7), v5));
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 2) = 5489;
  v3 = 1;
  for (i = 3; i != 626; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 2;
    ++v3;
  }

  *(self + 313) = 0;
  return self;
}

@end