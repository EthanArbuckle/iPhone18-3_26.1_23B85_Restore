@interface EQKitEnvironment
+ (id)dataForEnvironment:(id)a3;
@end

@implementation EQKitEnvironment

+ (id)dataForEnvironment:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [EQKitEnvironmentInstance dataForEnvironment:a3];
}

@end