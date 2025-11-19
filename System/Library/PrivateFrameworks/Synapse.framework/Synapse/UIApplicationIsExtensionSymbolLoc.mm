@interface UIApplicationIsExtensionSymbolLoc
@end

@implementation UIApplicationIsExtensionSymbolLoc

void *__get_UIApplicationIsExtensionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_0();
  result = dlsym(v2, "_UIApplicationIsExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_UIApplicationIsExtensionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end