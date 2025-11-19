@interface SBXXSetWallpaperOptionsForLocations
@end

@implementation SBXXSetWallpaperOptionsForLocations

void ___SBXXSetWallpaperOptionsForLocations_block_invoke(uint64_t a1)
{
  v2 = +[SBWallpaperController sharedInstance];
  v5 = [v2 wallpaperConfigurationManager];

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 32)];
  v4 = [MEMORY[0x277D37C88] optionsWithName:v3 parallaxFactor:*(a1 + 80) != 0 zoomScale:*(a1 + 81) != 0 supportsCropping:*(a1 + 82) != 0 cropRect:*(a1 + 72) portrait:*(a1 + 76) hasVideo:*(a1 + 56) stillTimeInVideo:{*(a1 + 60), *(a1 + 64), *(a1 + 68), *(a1 + 40)}];
  **(a1 + 48) = [v5 setWallpaperOptions:v4 forVariants:*(a1 + 83)];
}

@end