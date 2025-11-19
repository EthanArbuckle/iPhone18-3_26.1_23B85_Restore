@interface SBXXSetWallpaperImageSurfaceForLocations
@end

@implementation SBXXSetWallpaperImageSurfaceForLocations

void ___SBXXSetWallpaperImageSurfaceForLocations_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CD2930]) initWithMachPort:*(a1 + 80)];
  v3 = [objc_alloc(MEMORY[0x277CD2930]) initWithMachPort:*(a1 + 84)];
  v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(a1 + 32) length:*(a1 + 88) freeWhenDone:0];
  v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*(a1 + 40) length:*(a1 + 92) freeWhenDone:0];
  if (!v2)
  {
    v6 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_23;
  }

  v6 = [MEMORY[0x277D755B8] sbf_imageWithIOSurface:v2 scale:0 orientation:SBScreenScale()];
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = [MEMORY[0x277D755B8] sbf_imageWithIOSurface:v3 scale:0 orientation:SBScreenScale()];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = +[SBWallpaperController sharedInstance];
    v29 = [v9 wallpaperConfigurationManager];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 48)];
    v11 = v10;
    v12 = vcvtq_f64_f32(*(a1 + 96));
    v13 = vcvtq_f64_f32(*(a1 + 104));
    v34 = v12;
    v35 = v13;
    v14 = *(a1 + 112);
    v33 = v14;
    v30 = v13;
    v31 = v12;
    if (*(a1 + 56) && *(a1 + 116))
    {
      v15 = v10;
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:*(a1 + 56) length:*(a1 + 116) freeWhenDone:0];
      v17 = [MEMORY[0x277CCAC58] propertyListWithData:v16 options:0 format:0 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v17 = 0;
      }

      v11 = v15;
      v13 = v30;
      v12 = v31;
    }

    else
    {
      v17 = 0;
    }

    v18 = v12.f64[1];
    v19 = v13.f64[1];
    v20 = v12.f64[1];
    v21 = v13.f64[1];
    if (CGRectIsEmpty(*v12.f64) && *(a1 + 120) != 0.0 && BSFloatIsOne())
    {
      v23 = v30.f64[0];
      v22 = v31.f64[0];
      if (!*(a1 + 124) && !v11)
      {
        [v6 size];
        v34 = 0uLL;
        v35.f64[0] = v24;
        v35.f64[1] = v25;
        [v29 getBestCropRect:&v34 zoomScale:&v33 forImageSize:*(a1 + 125) != 0 portrait:? parallaxFactor:?];
        v14 = v33;
        v18 = v34.f64[1];
        v22 = v34.f64[0];
        v19 = v35.f64[1];
        v23 = v35.f64[0];
      }
    }

    else
    {
      v23 = v30.f64[0];
      v22 = v31.f64[0];
    }

    v26 = v17;
    v32 = v11;
    v27 = [MEMORY[0x277D37C88] optionsWithName:v11 parallaxFactor:*(a1 + 126) != 0 zoomScale:*(a1 + 125) != 0 supportsCropping:*(a1 + 124) != 0 cropRect:*(a1 + 127) portrait:*(a1 + 128) hasVideo:*(a1 + 120) stillTimeInVideo:v14 wallpaperMode:v22 wallpaperStatus:v18 wallpaperKitData:{v23, v19, *(a1 + 64), v17}];
    v28 = SBLogWallpaper();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v27;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "SETTING WALLPAPER: %{public}@", buf, 0xCu);
    }

    **(a1 + 72) = [v29 setWallpaperImage:v6 adjustedImage:v8 thumbnailData:v4 imageHashData:v5 wallpaperOptions:v27 forVariants:*(a1 + 129) wallpaperMode:*(a1 + 130)];
  }

LABEL_23:
}

void ___SBXXSetWallpaperImageSurfaceForLocations_block_invoke_169(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end