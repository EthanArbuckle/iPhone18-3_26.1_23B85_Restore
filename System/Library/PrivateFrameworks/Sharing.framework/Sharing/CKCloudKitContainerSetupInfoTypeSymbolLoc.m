@interface CKCloudKitContainerSetupInfoTypeSymbolLoc
@end

@implementation CKCloudKitContainerSetupInfoTypeSymbolLoc

void *__get_CKCloudKitContainerSetupInfoTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "_CKCloudKitContainerSetupInfoType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end