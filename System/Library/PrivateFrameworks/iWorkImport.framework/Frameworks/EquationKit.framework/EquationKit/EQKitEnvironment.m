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

  return MEMORY[0x2821F9670](EQKitEnvironmentInstance, sel_dataForEnvironment_, a3, v4);
}

@end