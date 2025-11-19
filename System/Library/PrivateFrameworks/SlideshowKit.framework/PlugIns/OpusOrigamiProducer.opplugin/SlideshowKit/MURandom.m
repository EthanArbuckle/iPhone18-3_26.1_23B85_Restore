@interface MURandom
+ (id)randomGeneratorWithSeed:(unint64_t)a3;
@end

@implementation MURandom

+ (id)randomGeneratorWithSeed:(unint64_t)a3
{
  v4 = objc_alloc_init(MURandom);
  [(MURandom *)v4 _seed:a3];

  return v4;
}

@end