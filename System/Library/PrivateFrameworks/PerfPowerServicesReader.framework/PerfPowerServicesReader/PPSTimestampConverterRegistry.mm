@interface PPSTimestampConverterRegistry
+ (id)converterForFilepath:(id)a3;
+ (id)sharedInstance;
- (PPSTimestampConverterRegistry)init;
@end

@implementation PPSTimestampConverterRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PPSTimestampConverterRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

- (PPSTimestampConverterRegistry)init
{
  v6.receiver = self;
  v6.super_class = PPSTimestampConverterRegistry;
  v2 = [(PPSTimestampConverterRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    converters = v2->_converters;
    v2->_converters = v3;
  }

  return v2;
}

uint64_t __47__PPSTimestampConverterRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)converterForFilepath:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedInstance];
  v5 = [v4 converters];
  v6 = [v5 objectForKey:v3];

  if (!v6)
  {
    v6 = [[PPSTimestampConverter alloc] initWithFilepath:v3];
    if (v6)
    {
      v7 = [v4 converters];
      [v7 setObject:v6 forKeyedSubscript:v3];
    }
  }

  return v6;
}

@end