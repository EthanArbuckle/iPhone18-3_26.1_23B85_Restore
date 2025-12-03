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

  return MEMORY[0x2821F9670](EQKitEnvironmentInstance, sel_dataForEnvironment_, environment, v4);
}

@end