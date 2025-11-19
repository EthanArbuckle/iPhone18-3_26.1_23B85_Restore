@interface DownlinkMuteAttributeSymbolLoc
@end

@implementation DownlinkMuteAttributeSymbolLoc

void *__getAVSystemController_DownlinkMuteAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_DownlinkMuteAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_DownlinkMuteAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end