@interface PXGNamedImageTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForImageWithName:(id)a3 inBundle:(id)a4 isSystemImage:(BOOL)a5 tintColor:(id)a6 imageConfiguration:(id)a7 userInterfaceDirection:(unint64_t)a8 screenScale:(double)a9 requestID:(int)a10;
@end

@implementation PXGNamedImageTextureProvider

- (void)_requestTextureForImageWithName:(id)a3 inBundle:(id)a4 isSystemImage:(BOOL)a5 tintColor:(id)a6 imageConfiguration:(id)a7 userInterfaceDirection:(unint64_t)a8 screenScale:(double)a9 requestID:(int)a10
{
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  objc_initWeak(location, self);
  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:a9];
  v23 = [v20 initWithObjects:{v16, v21, v22, 0}];

  if (v18)
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    if ([v18 getRed:&v49 green:&v48 blue:&v47 alpha:&v46])
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [v24 initWithFormat:@"%.2f-%.2f-%.2f-%.2f", v49, v48, v47, v46];
      [v23 addObject:v25];
    }
  }

  if (v19)
  {
    [v23 addObject:v19];
  }

  v26 = [objc_alloc(MEMORY[0x277D3CE08]) initWithObjects:v23];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke;
  v37[3] = &unk_2782AA540;
  v27 = v16;
  v38 = v27;
  v28 = v17;
  v39 = v28;
  v45 = v13;
  v29 = v18;
  v40 = v29;
  v30 = v19;
  v41 = v30;
  v44[1] = *&a9;
  v44[2] = a8;
  objc_copyWeak(v44, location);
  v31 = v26;
  v44[3] = a2;
  v42 = v31;
  v43 = self;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __161__PXGNamedImageTextureProvider__requestTextureForImageWithName_inBundle_isSystemImage_tintColor_imageConfiguration_userInterfaceDirection_screenScale_requestID___block_invoke_16;
  v34[3] = &unk_2782AA568;
  v35[1] = a8;
  objc_copyWeak(v35, location);
  v36 = a10;
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

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v10 = a3;
  length = a3.length;
  v13 = a7;
  v54.receiver = self;
  v54.super_class = PXGNamedImageTextureProvider;
  v14 = [(PXGTextureProvider *)&v54 requestTexturesForSpritesInRange:v10 geometries:a4 styles:a5 infos:a6 inLayout:v13];
  v37 = v15;
  v38 = v14;
  v40 = [v13 contentSource];
  val = self;
  v39 = [(PXGNamedImageTextureProvider *)self bundle];
  v41 = v13;
  [v13 displayScale];
  if (length)
  {
    v17 = v16;
    v18 = v38;
    do
    {
      v43 = length;
      v19 = [v40 imageConfigurationAtIndex:v10 inLayout:v41];
      v20 = [v19 imageConfiguration];
      v21 = [v41 userInterfaceDirection];
      v22 = [v19 imageName];
      v23 = [v19 isSystemImage];
      v24 = [v19 tintColor];
      v25 = [(PXGTextureProvider *)val viewEnvironment];
      v26 = [v25 traitCollection];

      v42 = v26;
      length = [v24 resolvedColorWithTraitCollection:v26];

      v27 = v39;
      v28 = [v19 bundle];

      if (v28)
      {
        v29 = [v19 bundle];

        v27 = v29;
      }

      objc_initWeak(&location, val);
      v30 = [(PXGTextureProvider *)val requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__PXGNamedImageTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782AA518;
      objc_copyWeak(v50, &location);
      v46 = v22;
      v47 = v27;
      v52 = v23;
      v48 = length;
      v49 = v20;
      v50[1] = v21;
      v50[2] = v17;
      v51 = v18;
      v31 = v20;
      v32 = length;
      v33 = v27;
      v34 = v22;
      dispatch_async(v30, block);

      objc_destroyWeak(v50);
      objc_destroyWeak(&location);

      ++v18;
      v10 = (v10.location + 1);
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