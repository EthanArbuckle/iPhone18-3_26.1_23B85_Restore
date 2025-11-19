@interface SBXXSetWallpaperImageForLocations
@end

@implementation SBXXSetWallpaperImageForLocations

void ___SBXXSetWallpaperImageForLocations_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 wallpaperConfigurationManager];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v5 = vcvtq_f64_f32(*(a1 + 72));
  v6 = vcvtq_f64_f32(*(a1 + 80));
  v23 = v5;
  v24 = v6;
  v7 = *(a1 + 88);
  v22 = v7;
  v20 = v6;
  v21 = v5;
  if (*(a1 + 48) && *(a1 + 92))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:*(a1 + 48) length:*(a1 + 92) freeWhenDone:0];
    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = 0;
    }

    v6 = v20;
    v5 = v21;
  }

  else
  {
    v9 = 0;
  }

  v10 = v5.f64[1];
  v11 = v6.f64[1];
  v12 = v5.f64[1];
  v13 = v6.f64[1];
  if (CGRectIsEmpty(*v5.f64) && *(a1 + 96) != 0.0 && BSFloatIsOne())
  {
    v15 = v20.f64[0];
    v14 = v21.f64[0];
    if (!*(a1 + 100) && !v4)
    {
      [*(a1 + 32) size];
      v23 = 0uLL;
      v24.f64[0] = v16;
      v24.f64[1] = v17;
      [v3 getBestCropRect:&v23 zoomScale:&v22 forImageSize:*(a1 + 101) != 0 portrait:? parallaxFactor:?];
      v7 = v22;
      v10 = v23.f64[1];
      v14 = v23.f64[0];
      v11 = v24.f64[1];
      v15 = v24.f64[0];
    }
  }

  else
  {
    v15 = v20.f64[0];
    v14 = v21.f64[0];
  }

  v18 = [MEMORY[0x277D37C88] optionsWithName:v4 parallaxFactor:*(a1 + 102) != 0 zoomScale:*(a1 + 101) != 0 supportsCropping:*(a1 + 100) != 0 cropRect:*(a1 + 103) portrait:*(a1 + 104) hasVideo:*(a1 + 96) stillTimeInVideo:v7 wallpaperMode:v14 wallpaperStatus:v10 wallpaperKitData:{v15, v11, *(a1 + 56), v9}];
  v19 = SBLogWallpaper();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "SETTING WALLPAPER: %{public}@", buf, 0xCu);
  }

  **(a1 + 64) = [v3 setWallpaperImage:*(a1 + 32) adjustedImage:0 thumbnailData:0 imageHashData:0 wallpaperOptions:v18 forVariants:*(a1 + 105) wallpaperMode:*(a1 + 106)];
}

@end