@interface UIRemoteViewControllerDisallowSceneShimFor3rdPartyExtensionOnUnreleasedHardware
@end

@implementation UIRemoteViewControllerDisallowSceneShimFor3rdPartyExtensionOnUnreleasedHardware

uint64_t ___UIRemoteViewControllerDisallowSceneShimFor3rdPartyExtensionOnUnreleasedHardware_block_invoke()
{
  result = MGGetProductType();
  v2 = result == 1872992317 || result == 936054259;
  byte_1ED499D1A = v2;
  return result;
}

@end