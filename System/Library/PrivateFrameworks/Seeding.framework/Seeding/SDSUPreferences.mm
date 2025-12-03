@interface SDSUPreferences
+ (id)sharedInstance;
@end

@implementation SDSUPreferences

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SDSUPreferences_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_obj;

  return v2;
}

uint64_t __33__SDSUPreferences_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_obj = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end