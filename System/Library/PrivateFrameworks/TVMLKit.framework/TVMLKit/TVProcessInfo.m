@interface TVProcessInfo
@end

@implementation TVProcessInfo

uint64_t __36___TVProcessInfo_currentProcessInfo__block_invoke()
{
  v0 = objc_alloc_init(_TVProcessInfo);
  v1 = currentProcessInfo_currentProcessInfo;
  currentProcessInfo_currentProcessInfo = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end