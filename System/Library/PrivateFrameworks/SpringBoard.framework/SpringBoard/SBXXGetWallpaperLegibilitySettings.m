@interface SBXXGetWallpaperLegibilitySettings
@end

@implementation SBXXGetWallpaperLegibilitySettings

void ___SBXXGetWallpaperLegibilitySettings_block_invoke(uint64_t a1)
{
  v5 = +[SBWallpaperController sharedInstance];
  v2 = [v5 legibilitySettingsForVariant:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end