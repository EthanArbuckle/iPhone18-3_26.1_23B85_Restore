@interface EQKitEnvironment
+ (id)dataForEnvironment:(id)environment;
@end

@implementation EQKitEnvironment

+ (id)dataForEnvironment:(id)environment
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [EQKitEnvironmentInstance dataForEnvironment:environment];
}

@end