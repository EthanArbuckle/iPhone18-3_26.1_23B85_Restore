@interface WKLayeredStillWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (WKLayeredStillWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundThumbnailImageURL:(id)a5 foregroundThumbnailImageURL:(id)a6 floatingThumbnailImageURL:(id)a7 backgroundFullSizeImageURL:(id)a8 foregroundFullSizeImageURL:(id)a9 floatingFullSizeImageURL:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListRepresentation;
@end

@implementation WKLayeredStillWallpaper

- (WKLayeredStillWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundThumbnailImageURL:(id)a5 foregroundThumbnailImageURL:(id)a6 floatingThumbnailImageURL:(id)a7 backgroundFullSizeImageURL:(id)a8 foregroundFullSizeImageURL:(id)a9 floatingFullSizeImageURL:(id)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v26.receiver = self;
  v26.super_class = WKLayeredStillWallpaper;
  v22 = [(WKLayeredThumbnailWallpaper *)&v26 initWithIdentifier:a3 name:a4 type:4 representedType:4 backgroundThumbnailImageURL:v16 foregroundThumbnailImageURL:v17 floatingThumbnailImageURL:v18];
  if (v22)
  {
    v23 = [[WKLayeredStillWallpaperInput alloc] initWithBackgroundThumbnailImageURL:v16 foregroundThumbnailImageURL:v17 floatingThumbnailImageURL:v18 backgroundFullSizeImageURL:v19 foregroundFullSizeImageURL:v20 floatingFullSizeImageURL:v21];
    wallpaperValue = v22->__wallpaperValue;
    v22->__wallpaperValue = v23;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [objc_opt_class() allocWithZone:a3];
  v16 = [(WKAbstractWallpaper *)self identifier];
  v15 = [(WKAbstractWallpaper *)self name];
  v20 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v4 = [v20 backgroundThumbnailImageURL];
  v19 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v5 = [v19 foregroundThumbnailImageURL];
  v18 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v6 = [v18 floatingThumbnailImageURL];
  v7 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v8 = [v7 backgroundFullSizeImageURL];
  v9 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v10 = [v9 foregroundFullSizeImageURL];
  v11 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v12 = [v11 floatingFullSizeImageURL];
  v13 = [v17 initWithIdentifier:v16 name:v15 backgroundThumbnailImageURL:v4 foregroundThumbnailImageURL:v5 floatingThumbnailImageURL:v6 backgroundFullSizeImageURL:v8 foregroundFullSizeImageURL:v10 floatingFullSizeImageURL:v12];

  return v13;
}

- (id)propertyListRepresentation
{
  v16.receiver = self;
  v16.super_class = WKLayeredStillWallpaper;
  v3 = [(WKLayeredThumbnailWallpaper *)&v16 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v7 = [v6 backgroundFullSizeImageURL];
  v8 = [v7 lastPathComponent];
  [v5 na_safeSetObject:v8 forKey:@"backgroundFullSizeImageFileName"];

  v9 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v10 = [v9 foregroundFullSizeImageURL];
  v11 = [v10 lastPathComponent];
  [v5 na_safeSetObject:v11 forKey:@"foregroundFullSizeImageFileName"];

  v12 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  v13 = [v12 floatingFullSizeImageURL];
  v14 = [v13 lastPathComponent];
  [v5 na_safeSetObject:v14 forKey:@"floatingFullSizeImageFileName"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v48.receiver = self;
  v48.super_class = WKLayeredStillWallpaper;
  v46 = a4;
  v7 = [(WKLayeredThumbnailWallpaper *)&v48 copyWallpaperContentsToDestinationDirectoryURL:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v45 = v7;
    v9 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    v10 = [v9 backgroundFullSizeImageURL];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v43 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      v13 = [v43 backgroundFullSizeImageURL];
      v14 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      v15 = [v14 backgroundFullSizeImageURL];
      v16 = [v15 lastPathComponent];
      [v6 URLByAppendingPathComponent:v16];
      v18 = v17 = v6;
      v41 = [v12 copyItemAtURL:v13 toURL:v18 error:v46];

      v6 = v17;
      if (!v41)
      {
LABEL_12:
        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v19 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    v20 = [v19 foregroundFullSizeImageURL];
    if (v20)
    {
      v21 = v20;
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v44 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      [v44 foregroundFullSizeImageURL];
      v24 = v23 = v6;
      v25 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      v26 = [v25 foregroundFullSizeImageURL];
      v27 = [v26 lastPathComponent];
      v28 = [v23 URLByAppendingPathComponent:v27];
      v42 = [v22 copyItemAtURL:v24 toURL:v28 error:v46];

      v6 = v23;
      if (!v42)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v29 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    v30 = [v29 floatingFullSizeImageURL];
    if (!v30)
    {

      v8 = v45;
      goto LABEL_14;
    }

    v31 = v30;
    v32 = [MEMORY[0x1E696AC08] defaultManager];
    v33 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    [v33 floatingFullSizeImageURL];
    v35 = v34 = v6;
    v36 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    v37 = [v36 floatingFullSizeImageURL];
    v38 = [v37 lastPathComponent];
    v39 = [v34 URLByAppendingPathComponent:v38];
    v47 = [v32 copyItemAtURL:v35 toURL:v39 error:v46];

    v6 = v34;
    v8 = v45;
    if (!v47)
    {
      goto LABEL_12;
    }
  }

LABEL_14:

  return v8;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__WKLayeredStillWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __38__WKLayeredStillWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __38__WKLayeredStillWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WKLayeredStillWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_10 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_10, block);
  }

  v1 = _block_invoke_na_once_object_0_10;

  return v1;
}

void __38__WKLayeredStillWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__WKLayeredStillWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __38__WKLayeredStillWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_10;
  _block_invoke_na_once_object_0_10 = v1;
}

id __38__WKLayeredStillWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___WKLayeredStillWallpaper;
  v2 = objc_msgSendSuper2(&v6, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 build];

  return v4;
}

@end