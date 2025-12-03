@interface MURandom
+ (id)randomGeneratorWithSeed:(unint64_t)seed;
@end

@implementation MURandom

+ (id)randomGeneratorWithSeed:(unint64_t)seed
{
  v4 = objc_alloc_init(MURandom);
  [(MURandom *)v4 _seed:seed];

  return v4;
}

@end