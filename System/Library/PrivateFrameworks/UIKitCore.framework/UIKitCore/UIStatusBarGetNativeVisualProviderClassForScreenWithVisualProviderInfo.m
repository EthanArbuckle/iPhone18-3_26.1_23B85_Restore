@interface UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo
@end

@implementation UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo

id ___UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo_block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  result = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(a2, *(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 48) + 8) + 24) != 0;
  return result;
}

@end