@interface WKParameterizedCAWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (WKParameterizedCAWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 fileURL:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKParameterizedCAWallpaper

- (WKParameterizedCAWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 fileURL:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = WKParameterizedCAWallpaper;
  v9 = [(WKAbstractWallpaper *)&v13 initWithIdentifier:a3 name:a4 type:8 representedType:8 backingType:1];
  if (v9)
  {
    v10 = [[WKParameterizedCAWallpaperInput alloc] initWithFileURL:v8];
    wallpaperValue = v9->__wallpaperValue;
    v9->__wallpaperValue = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKAbstractWallpaper *)self identifier];
  v6 = [(WKAbstractWallpaper *)self name];
  v7 = [(WKParameterizedCAWallpaper *)self wallpaperValue];
  v8 = [v7 fileURL];
  v9 = [v4 initWithIdentifier:v5 name:v6 fileURL:v8];

  return v9;
}

- (id)propertyListRepresentation
{
  v10.receiver = self;
  v10.super_class = WKParameterizedCAWallpaper;
  v3 = [(WKAbstractWallpaper *)&v10 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKParameterizedCAWallpaper *)self wallpaperValue];
  v7 = [v6 fileURL];
  v8 = [v7 lastPathComponent];
  [v5 na_safeSetObject:v8 forKey:@"assetFileName"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WKParameterizedCAWallpaper *)self wallpaperValue];
  v8 = [v7 fileURL];
  if (v8)
  {
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(WKParameterizedCAWallpaper *)self wallpaperValue];
    v10 = [v9 fileURL];
    v11 = [(WKParameterizedCAWallpaper *)self wallpaperValue];
    v12 = [v11 fileURL];
    v13 = [v12 lastPathComponent];
    v14 = [v6 URLByAppendingPathComponent:v13];
    v15 = a4;
    v16 = v6;
    v17 = v14;
    v18 = [v20 copyItemAtURL:v10 toURL:v14 error:v15];

    v6 = v16;
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__WKParameterizedCAWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __41__WKParameterizedCAWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __41__WKParameterizedCAWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WKParameterizedCAWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_11 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_11, block);
  }

  v1 = _block_invoke_na_once_object_0_11;

  return v1;
}

void __41__WKParameterizedCAWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__WKParameterizedCAWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __41__WKParameterizedCAWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_11;
  _block_invoke_na_once_object_0_11 = v1;
}

id __41__WKParameterizedCAWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKParameterizedCAWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_11];
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
  v9.super_class = WKParameterizedCAWallpaper;
  v3 = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__WKParameterizedCAWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __53__WKParameterizedCAWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained wallpaperValue];
  v5 = [v6 appendObject:v4 withName:@"wallpaperValue"];
}

@end