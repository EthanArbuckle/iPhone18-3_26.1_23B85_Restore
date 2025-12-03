@interface WFResourceManager
+ (id)sharedManager;
- (id)frameworkBundle;
- (id)localizedStringForKey:(id)key;
@end

@implementation WFResourceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[WFResourceManager sharedManager];
  }

  v3 = sharedManager_sSharedManager;

  return v3;
}

uint64_t __34__WFResourceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFResourceManager);
  v1 = sharedManager_sSharedManager;
  sharedManager_sSharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)frameworkBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  frameworkBundle = [(WFResourceManager *)self frameworkBundle];
  tableName = [(WFResourceManager *)self tableName];
  v7 = [frameworkBundle localizedStringForKey:keyCopy value:&stru_28823D638 table:tableName];

  return v7;
}

@end