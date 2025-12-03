@interface VSSiriServerConfiguration
+ (id)defaultConfig;
- (double)timeoutForAppId:(id)id;
@end

@implementation VSSiriServerConfiguration

- (double)timeoutForAppId:(id)id
{
  isHomeHub = [MEMORY[0x277D799C0] isHomeHub];
  result = 5.0;
  if ((isHomeHub & 1) == 0)
  {
    isWatch = [MEMORY[0x277D799C0] isWatch];
    result = 1.0;
    if (isWatch)
    {
      return 5.0;
    }
  }

  return result;
}

+ (id)defaultConfig
{
  if (defaultConfig_onceToken != -1)
  {
    dispatch_once(&defaultConfig_onceToken, &__block_literal_global_2227);
  }

  v3 = defaultConfig___defaultConfig;

  return v3;
}

uint64_t __42__VSSiriServerConfiguration_defaultConfig__block_invoke()
{
  defaultConfig___defaultConfig = objc_alloc_init(VSSiriServerConfiguration);

  return MEMORY[0x2821F96F8]();
}

@end