@interface NCIsFullScreenBannerPresentationPossible
@end

@implementation NCIsFullScreenBannerPresentationPossible

void ___NCIsFullScreenBannerPresentationPossible_block_invoke()
{
  v1 = [MEMORY[0x277D75418] currentDevice];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = _os_feature_enabled_impl();
  }

  _NCIsFullScreenBannerPresentationPossible___isFullScreenBannerPresentationPossible = v0;
}

@end