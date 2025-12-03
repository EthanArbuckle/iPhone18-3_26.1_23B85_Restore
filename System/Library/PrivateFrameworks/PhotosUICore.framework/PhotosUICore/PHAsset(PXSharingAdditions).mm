@interface PHAsset(PXSharingAdditions)
- (uint64_t)px_isSupportedApp:()PXSharingAdditions;
@end

@implementation PHAsset(PXSharingAdditions)

- (uint64_t)px_isSupportedApp:()PXSharingAdditions
{
  v3 = a3;
  if (px_isSupportedApp__onceToken != -1)
  {
    dispatch_once(&px_isSupportedApp__onceToken, &__block_literal_global_196323);
  }

  lowercaseString = [v3 lowercaseString];
  if (lowercaseString)
  {
    v5 = [px_isSupportedApp__supportedOriginators containsObject:lowercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end