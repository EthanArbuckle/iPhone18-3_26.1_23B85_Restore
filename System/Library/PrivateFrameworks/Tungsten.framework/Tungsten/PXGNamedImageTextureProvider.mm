@interface PXGNamedImageTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestTextureForImageWithName:(id)name inBundle:(id)bundle isSystemImage:(BOOL)image tintColor:(id)color imageConfiguration:(id)configuration userInterfaceDirection:(unint64_t)direction screenScale:(double)scale requestID:(int)self0;
@end

@implementation PXGNamedImageTextureProvider

- (void)_requestTextureForImageWithName:(id)name inBundle:(id)bundle isSystemImage:(BOOL)image tintColor:(id)color imageConfiguration:(id)configuration userInterfaceDirection:(unint64_t)direction screenScale:(double)scale requestID:(int)self0
{
  imageCopy = image;
  nameCopy = name;
  bundleCopy = bundle;
  colorCopy = color;
  configurationCopy = configuration;
  objc_initWeak(location, self);
  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = [MEMORY[0x277CCABB0] numberWithBool:imageCopy];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
  v23 = [v20 initWithObjects:{nameCopy, v21, v22, 0}];

  if (colorCopy)
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    if ([colorCopy getRed:&v49 green:&v48 blue:&v47 alpha:&v46])
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v24 initWithFormat:@"%.2f-%.2f-%.2f-%.2f", v49, v48, v47, v46];
      [v23 addObject:v25];
    }
  }

  if (configurationCopy)
  {
    [v23 addObject:configurationCopy];
  }

  v26 = [objc_alloc(MEMORY[0x277D3CE08]) initWithObjects:v23];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke;
  v37[3] = &unk_2782AA540;
  v27 = nameCopy;
  v38 = v27;
  v28 = bundleCopy;
  v39 = v28;
  v45 = imageCopy;
  v29 = colorCopy;
  v40 = v29;
  v30 = configurationCopy;
  v41 = v30;
  v44[1] = *&scale;
  v44[2] = direction;
  objc_copyWeak(v44, location);
  v31 = v26;
  v44[3] = a2;
  v42 = v31;
  selfCopy = self;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke_16;
  v34[3] = &unk_2782AA568;
  v35[1] = direction;
  objc_copyWeak(v35, location);
  dCopy = d;
  [(PXGCGImageTextureProvider *)self requestCGImageAndAdditionalInfoWithCacheKey:v31 imageProvider:v37 resultHandler:v34];
  objc_destroyWeak(v35);

  objc_destroyWeak(v44);
  objc_destroyWeak(location);
}

CGImageRef __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = PXGCGImageForImageNamedInBundle(*(a1 + 32), *(a1 + 40), *(a1 + 112), *(a1 + 48), *(a1 + 56), &v12);
  v3 = CGImageRetain(v2);
  if (*(a1 + 96) == 1 && v12 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v13 = @"PXGNamedImageTextureProviderImageOrientationKey";
    v14[0] = &unk_282C7F610;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [WeakRetained cacheAdditionalInfo:v5 withKey:*(a1 + 64)];
  }

  if (!v3)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "result shouldn't be nil", v11, 2u);
    }

    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277D75348] whiteColor];
    v9 = [v7 px_imageFromSolidColor:v8];
    v3 = CGImageRetain([v9 CGImage]);
  }

  return v3;
}

void __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) == 1)
  {
    v5 = [a3 objectForKeyedSubscript:@"PXGNamedImageTextureProviderImageOrientationKey"];
    v6 = [v5 unsignedIntegerValue];

    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v14 = 0;
  v13 = 0;
  v17 = 0;
  v18 = 0;
  if (PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken != -1)
  {
    dispatch_once(&PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken, &__block_literal_global_10913);
  }

  v10 = PXGSpriteTextureInfoOrientationFromCGOrientation_transforms[v7];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = *(a1 + 48);
  v11 = v10;
  v12 = 0;
  v15 = 1065353216;
  v16 = 0;
  [WeakRetained provideCGImage:a2 options:&v11 forRequestID:v9];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  rangeCopy = range;
  length = range.length;
  layoutCopy = layout;
  v54.receiver = self;
  v54.super_class = PXGNamedImageTextureProvider;
  v14 = [(PXGTextureProvider *)&v54 requestTexturesForSpritesInRange:rangeCopy geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v37 = v15;
  v38 = v14;
  contentSource = [layoutCopy contentSource];
  val = self;
  bundle = [(PXGNamedImageTextureProvider *)self bundle];
  v41 = layoutCopy;
  [layoutCopy displayScale];
  if (length)
  {
    v17 = v16;
    v18 = v38;
    do
    {
      v43 = length;
      v19 = [contentSource imageConfigurationAtIndex:rangeCopy inLayout:v41];
      imageConfiguration = [v19 imageConfiguration];
      userInterfaceDirection = [v41 userInterfaceDirection];
      imageName = [v19 imageName];
      isSystemImage = [v19 isSystemImage];
      tintColor = [v19 tintColor];
      viewEnvironment = [(PXGTextureProvider *)val viewEnvironment];
      traitCollection = [viewEnvironment traitCollection];

      v42 = traitCollection;
      length = [tintColor resolvedColorWithTraitCollection:traitCollection];

      v27 = bundle;
      bundle2 = [v19 bundle];

      if (bundle2)
      {
        bundle3 = [v19 bundle];

        v27 = bundle3;
      }

      objc_initWeak(&location, val);
      requestQueue = [(PXGTextureProvider *)val requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__PXGNamedImageTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782AA518;
      objc_copyWeak(v50, &location);
      v46 = imageName;
      v47 = v27;
      v52 = isSystemImage;
      v48 = length;
      v49 = imageConfiguration;
      v50[1] = userInterfaceDirection;
      v50[2] = v17;
      v51 = v18;
      v31 = imageConfiguration;
      v32 = length;
      v33 = v27;
      v34 = imageName;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(v50);
      objc_destroyWeak(&location);

      ++v18;
      rangeCopy = (rangeCopy.location + 1);
      LODWORD(length) = v43 - 1;
    }

    while (v43 != 1);
  }

  v36 = v37;
  v35 = v38;
  result.length = v36;
  result.location = v35;
  return result;
}

void __98__PXGNamedImageTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  LODWORD(v2) = *(a1 + 88);
  [WeakRetained _requestTextureForImageWithName:*(a1 + 32) inBundle:*(a1 + 40) isSystemImage:*(a1 + 92) tintColor:*(a1 + 48) imageConfiguration:*(a1 + 56) userInterfaceDirection:*(a1 + 72) screenScale:*(a1 + 80) requestID:v2];
}

@end