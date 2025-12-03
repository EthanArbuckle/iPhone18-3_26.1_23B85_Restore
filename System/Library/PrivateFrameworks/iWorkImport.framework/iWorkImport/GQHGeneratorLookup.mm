@interface GQHGeneratorLookup
+ (Class)generatorForApplication:(int)application;
@end

@implementation GQHGeneratorLookup

+ (Class)generatorForApplication:(int)application
{
  if ((application - 1) > 2)
  {
    return 0;
  }

  v3 = *off_807B8[application - 1];
  return objc_opt_class();
}

@end