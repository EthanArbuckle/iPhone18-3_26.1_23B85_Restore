@interface SBXXGetWallpaperOptions
@end

@implementation SBXXGetWallpaperOptions

void ___SBXXGetWallpaperOptions_block_invoke(uint64_t a1)
{
  v2 = +[SBWallpaperController sharedInstance];
  v17 = [v2 wallpaperConfigurationManager];

  v3 = [v17 wallpaperConfigurationForVariant:*(a1 + 120) includingValuesForTypes:16];
  v4 = [v3 wallpaperOptions];
  v5 = [v4 wallpaperKitData];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v4 parallaxFactor];
  *&v8 = v8;
  **(a1 + 40) = LODWORD(v8);
  [v4 zoomScale];
  *&v9 = v9;
  **(a1 + 48) = LODWORD(v9);
  **(a1 + 56) = [v4 supportsCropping];
  [v4 cropRect];
  *&v10 = v10;
  v11 = *(a1 + 72);
  **(a1 + 64) = LODWORD(v10);
  *&v10 = v12;
  *v11 = LODWORD(v10);
  *&v10 = v13;
  v14 = *(a1 + 88);
  **(a1 + 80) = LODWORD(v10);
  *&v10 = v15;
  *v14 = LODWORD(v10);
  **(a1 + 96) = [v4 isPortrait];
  **(a1 + 104) = [v4 hasVideo];
  [v4 stillTimeInVideo];
  **(a1 + 112) = v16;
}

@end