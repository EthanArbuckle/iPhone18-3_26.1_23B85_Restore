@interface WKLayeredThumbnailWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (UIImage)thumbnailImage;
- (WKLayeredThumbnailWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 representedType:(unint64_t)a6 backgroundThumbnailImageURL:(id)a7 foregroundThumbnailImageURL:(id)a8 floatingThumbnailImageURL:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLayeredThumbnailWallpaper

- (WKLayeredThumbnailWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 representedType:(unint64_t)a6 backgroundThumbnailImageURL:(id)a7 foregroundThumbnailImageURL:(id)a8 floatingThumbnailImageURL:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = WKLayeredThumbnailWallpaper;
  v18 = [(WKAbstractWallpaper *)&v22 initWithIdentifier:a3 name:a4 type:a5 representedType:a6 backingType:1];
  if (v18)
  {
    v19 = [[WKLayeredThumbnailWallpaperInput alloc] initWithBackgroundThumbnailImageURL:v15 foregroundThumbnailImageURL:v16 floatingThumbnailImageURL:v17];
    wallpaperValue = v18->__wallpaperValue;
    v18->__wallpaperValue = v19;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = [objc_opt_class() allocWithZone:a3];
  v4 = [(WKAbstractWallpaper *)self identifier];
  v5 = [(WKAbstractWallpaper *)self name];
  v6 = [(WKAbstractWallpaper *)self type];
  v7 = [(WKAbstractWallpaper *)self representedType];
  v8 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v9 = [v8 backgroundThumbnailImageURL];
  v10 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v11 = [v10 foregroundThumbnailImageURL];
  v12 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v13 = [v12 floatingThumbnailImageURL];
  v14 = [v16 initWithIdentifier:v4 name:v5 type:v6 representedType:v7 backgroundThumbnailImageURL:v9 foregroundThumbnailImageURL:v11 floatingThumbnailImageURL:v13];

  return v14;
}

- (id)propertyListRepresentation
{
  v21.receiver = self;
  v21.super_class = WKLayeredThumbnailWallpaper;
  v3 = [(WKAbstractWallpaper *)&v21 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v7 = [v6 backgroundThumbnailImageURL];
  v8 = [v7 lastPathComponent];
  [v5 na_safeSetObject:v8 forKey:@"backgroundThumbnailImageFileName"];

  v9 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v10 = [v9 foregroundThumbnailImageURL];
  v11 = [v10 lastPathComponent];
  [v5 na_safeSetObject:v11 forKey:@"foregroundThumbnailImageFileName"];

  v12 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v13 = [v12 floatingThumbnailImageURL];
  v14 = [v13 lastPathComponent];
  [v5 na_safeSetObject:v14 forKey:@"floatingThumbnailImageFileName"];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  LODWORD(v14) = [v16 isEqualToString:v18];

  if (v14)
  {
    v19 = WKStringFromWallpaperType([(WKAbstractWallpaper *)self representedType]);
    [v5 na_safeSetObject:v19 forKey:@"representedType"];
  }

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v8 = [v7 backgroundThumbnailImageURL];
  v43 = a4;
  v44 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v11 = [v41 backgroundThumbnailImageURL];
    v12 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v13 = [v12 backgroundThumbnailImageURL];
    [v13 lastPathComponent];
    v15 = v14 = self;
    v16 = [v6 URLByAppendingPathComponent:v15];
    v17 = [v10 copyItemAtURL:v11 toURL:v16 error:a4];

    self = v14;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v18 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v19 = [v18 foregroundThumbnailImageURL];
  if (v19)
  {
    v20 = v19;
    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v23 = [v22 foregroundThumbnailImageURL];
    [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v25 = v24 = self;
    v26 = [v25 foregroundThumbnailImageURL];
    v27 = [v26 lastPathComponent];
    v28 = [v44 URLByAppendingPathComponent:v27];
    v42 = [v21 copyItemAtURL:v23 toURL:v28 error:v43];

    self = v24;
    if (!v42)
    {
LABEL_7:
      v29 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v30 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  v31 = [v30 floatingThumbnailImageURL];
  if (v31)
  {
    v32 = v31;
    v33 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v35 = [v34 floatingThumbnailImageURL];
    v36 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v37 = [v36 floatingThumbnailImageURL];
    v38 = [v37 lastPathComponent];
    v39 = [v44 URLByAppendingPathComponent:v38];
    v29 = [v33 copyItemAtURL:v35 toURL:v39 error:v43];
  }

  else
  {
    v29 = 1;
  }

LABEL_13:
  return v29 & 1;
}

- (UIImage)thumbnailImage
{
  v3 = [(WKLayeredThumbnailWallpaper *)self _thumbnailImage];

  if (!v3)
  {
    v4 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v5 = [v4 backgroundThumbnailImageURL];

    if (v5)
    {
      v6 = MEMORY[0x1E69DCAB8];
      v7 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      v8 = [v7 backgroundThumbnailImageURL];
      v9 = [v8 path];
      v10 = [v6 imageWithContentsOfFile:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v12 = [v11 foregroundThumbnailImageURL];

    if (v12)
    {
      v13 = MEMORY[0x1E69DCAB8];
      v14 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      v15 = [v14 foregroundThumbnailImageURL];
      v16 = [v15 path];
      v17 = [v13 imageWithContentsOfFile:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v19 = [v18 floatingThumbnailImageURL];

    if (v19)
    {
      v20 = MEMORY[0x1E69DCAB8];
      v21 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      v22 = [v21 floatingThumbnailImageURL];
      v23 = [v22 path];
      v24 = [v20 imageWithContentsOfFile:v23];
    }

    else
    {
      v24 = 0;
    }

    v25 = MEMORY[0x1E69DCAB8];
    v26 = [MEMORY[0x1E69DCAB8] wk_overlayForegroundImage:v17 overBackgroundImage:v10];
    v27 = [v25 wk_overlayForegroundImage:v24 overBackgroundImage:v26];
    [(WKLayeredThumbnailWallpaper *)self set_thumbnailImage:v27];
  }

  return [(WKLayeredThumbnailWallpaper *)self _thumbnailImage];
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_4 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_4, block);
  }

  v1 = _block_invoke_na_once_object_0_4;

  return v1;
}

void __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_4;
  _block_invoke_na_once_object_0_4 = v1;
}

id __42__WKLayeredThumbnailWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKLayeredThumbnailWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_5];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (id)descriptionBuilderBlock
{
  v9.receiver = self;
  v9.super_class = WKLayeredThumbnailWallpaper;
  v3 = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WKLayeredThumbnailWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __54__WKLayeredThumbnailWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained wallpaperValue];
  v5 = [v6 appendObject:v4 withName:@"wallpaperValue"];
}

@end