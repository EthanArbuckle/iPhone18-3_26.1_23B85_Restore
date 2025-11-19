@interface PIDToInheritApplicationStateFromSymbolLoc
@end

@implementation PIDToInheritApplicationStateFromSymbolLoc

void *__getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_PIDToInheritApplicationStateFrom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49D828 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaExperienceLibrary_1();
  result = dlsym(v2, "AVSystemController_PIDToInheritApplicationStateFrom");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end