@interface SBXXGetNowPlayingAppBundleIdentifier
@end

@implementation SBXXGetNowPlayingAppBundleIdentifier

void ___SBXXGetNowPlayingAppBundleIdentifier_block_invoke(uint64_t a1)
{
  v6 = +[SBMediaController sharedInstance];
  v2 = [v6 nowPlayingApplication];
  v3 = [v2 bundleIdentifier];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end