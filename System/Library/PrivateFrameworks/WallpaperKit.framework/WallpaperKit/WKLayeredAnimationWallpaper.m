@interface WKLayeredAnimationWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (WKLayeredAnimationWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundAnimationFileURL:(id)a5 foregroundAnimationFileURL:(id)a6 floatingAnimationFileURL:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLayeredAnimationWallpaper

- (WKLayeredAnimationWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundAnimationFileURL:(id)a5 foregroundAnimationFileURL:(id)a6 floatingAnimationFileURL:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = WKLayeredAnimationWallpaper;
  v15 = [(WKAbstractWallpaper *)&v19 initWithIdentifier:a3 name:a4 type:7 representedType:7 backingType:1];
  if (v15)
  {
    v16 = [[WKLayeredAnimationWallpaperInput alloc] initWithBackgroundAnimationFileURL:v12 foregroundAnimationFileURL:v13 floatingAnimationFileURL:v14];
    wallpaperValue = v15->__wallpaperValue;
    v15->__wallpaperValue = v16;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKAbstractWallpaper *)self identifier];
  v6 = [(WKAbstractWallpaper *)self name];
  v7 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v8 = [v7 backgroundAnimationFileURL];
  v9 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v10 = [v9 foregroundAnimationFileURL];
  v11 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v12 = [v11 floatingAnimationFileURL];
  v13 = [v4 initWithIdentifier:v5 name:v6 backgroundAnimationFileURL:v8 foregroundAnimationFileURL:v10 floatingAnimationFileURL:v12];

  return v13;
}

- (id)propertyListRepresentation
{
  v16.receiver = self;
  v16.super_class = WKLayeredAnimationWallpaper;
  v3 = [(WKAbstractWallpaper *)&v16 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v7 = [v6 backgroundAnimationFileURL];
  v8 = [v7 lastPathComponent];
  [v5 na_safeSetObject:v8 forKey:@"backgroundAnimationFileName"];

  v9 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v10 = [v9 foregroundAnimationFileURL];
  v11 = [v10 lastPathComponent];
  [v5 na_safeSetObject:v11 forKey:@"foregroundAnimationFileName"];

  v12 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v13 = [v12 floatingAnimationFileURL];
  v14 = [v13 lastPathComponent];
  [v5 na_safeSetObject:v14 forKey:@"floatingAnimationFileNameKey"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v8 = [v7 backgroundAnimationFileURL];
  v43 = a4;
  v44 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v11 = [v41 backgroundAnimationFileURL];
    v12 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v13 = [v12 backgroundAnimationFileURL];
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

  v18 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v19 = [v18 foregroundAnimationFileURL];
  if (v19)
  {
    v20 = v19;
    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v23 = [v22 foregroundAnimationFileURL];
    [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v25 = v24 = self;
    v26 = [v25 foregroundAnimationFileURL];
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

  v30 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  v31 = [v30 floatingAnimationFileURL];
  if (v31)
  {
    v32 = v31;
    v33 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v35 = [v34 floatingAnimationFileURL];
    v36 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v37 = [v36 floatingAnimationFileURL];
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

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__WKLayeredAnimationWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __42__WKLayeredAnimationWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __42__WKLayeredAnimationWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WKLayeredAnimationWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_3 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_3, block);
  }

  v1 = _block_invoke_na_once_object_0_3;

  return v1;
}

void __42__WKLayeredAnimationWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__WKLayeredAnimationWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __42__WKLayeredAnimationWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_3;
  _block_invoke_na_once_object_0_3 = v1;
}

id __42__WKLayeredAnimationWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKLayeredAnimationWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_4];
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
  v9.super_class = WKLayeredAnimationWallpaper;
  v3 = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WKLayeredAnimationWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __54__WKLayeredAnimationWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained wallpaperValue];
  v5 = [v6 appendObject:v4 withName:@"wallpaperValue"];
}

@end