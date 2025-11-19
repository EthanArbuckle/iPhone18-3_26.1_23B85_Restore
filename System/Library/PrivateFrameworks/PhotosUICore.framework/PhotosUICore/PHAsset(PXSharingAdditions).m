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

  v4 = [v3 lowercaseString];
  if (v4)
  {
    v5 = [px_isSupportedApp__supportedOriginators containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end