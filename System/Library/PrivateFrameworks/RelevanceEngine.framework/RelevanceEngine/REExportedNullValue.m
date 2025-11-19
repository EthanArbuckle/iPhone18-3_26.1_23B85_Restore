@interface REExportedNullValue
+ (id)sharedInstance;
@end

@implementation REExportedNullValue

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[REExportedNullValue sharedInstance];
  }

  v3 = sharedInstance_Null;

  return v3;
}

uint64_t __37__REExportedNullValue_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(REExportedNullValue);
  v1 = sharedInstance_Null;
  sharedInstance_Null = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end