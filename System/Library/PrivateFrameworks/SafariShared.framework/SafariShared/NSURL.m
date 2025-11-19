@interface NSURL
@end

@implementation NSURL

void __68__NSURL_SafariSharedExtras___safari_isWithinQuirkedNavigationScope___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([*(a1 + 32) hasPrefix:v8])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) hasPrefix:v7];
    *a4 = 1;
  }
}

@end