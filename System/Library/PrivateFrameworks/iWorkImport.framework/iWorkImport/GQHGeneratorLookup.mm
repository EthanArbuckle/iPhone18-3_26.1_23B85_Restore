@interface GQHGeneratorLookup
+ (Class)generatorForApplication:(int)a3;
@end

@implementation GQHGeneratorLookup

+ (Class)generatorForApplication:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  v3 = *off_807B8[a3 - 1];
  return objc_opt_class();
}

@end