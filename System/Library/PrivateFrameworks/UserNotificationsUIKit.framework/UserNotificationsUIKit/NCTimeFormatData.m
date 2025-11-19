@interface NCTimeFormatData
@end

@implementation NCTimeFormatData

uint64_t __46___NCTimeFormatData__timeFormatDataAccessLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  _timeFormatDataAccessLock_accessLock = v0;

  return MEMORY[0x2821F96F8](v0);
}

@end