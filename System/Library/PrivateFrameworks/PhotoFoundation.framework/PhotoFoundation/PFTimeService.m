@interface PFTimeService
+ (PFTimeService)defaultTimeService;
@end

@implementation PFTimeService

+ (PFTimeService)defaultTimeService
{
  if (defaultTimeService_onceToken != -1)
  {
    dispatch_once(&defaultTimeService_onceToken, &__block_literal_global_407);
  }

  v3 = defaultTimeService_defaultTimeService;

  return v3;
}

uint64_t __35__PFTimeService_defaultTimeService__block_invoke()
{
  defaultTimeService_defaultTimeService = objc_alloc_init(PFTimeService);

  return MEMORY[0x1EEE66BB8]();
}

@end