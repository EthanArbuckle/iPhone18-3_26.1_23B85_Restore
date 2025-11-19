@interface SBXXSetProceduralWallpaper
@end

@implementation SBXXSetProceduralWallpaper

void ___SBXXSetProceduralWallpaper_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 wallpaperConfigurationManager];
  [v3 setProceduralWallpaperIdentifier:*(a1 + 32) options:*(a1 + 40) forVariants:*(a1 + 48)];

  v4 = SBLogWallpaper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SETTING PROCEDURAL WALLPAPER %{public}@: %{public}@", &v7, 0x16u);
  }
}

@end