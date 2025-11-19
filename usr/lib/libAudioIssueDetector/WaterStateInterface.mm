@interface WaterStateInterface
+ (id)sharedInstance;
@end

@implementation WaterStateInterface

+ (id)sharedInstance
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __37__WaterStateInterface_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[WaterStateInterface sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[WaterStateInterface sharedInstance]::onceToken, block);
  }

  v2 = +[WaterStateInterface sharedInstance]::sharedWaterStateInterface;

  return v2;
}

uint64_t __37__WaterStateInterface_sharedInstance__block_invoke(uint64_t a1)
{
  +[WaterStateInterface sharedInstance]::sharedWaterStateInterface = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

@end