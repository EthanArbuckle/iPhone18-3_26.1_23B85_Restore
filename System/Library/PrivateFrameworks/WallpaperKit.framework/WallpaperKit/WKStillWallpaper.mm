@interface WKStillWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (WKStillWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 thumbnailImageURL:(id)a6 fullsizeImageURL:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKStillWallpaper

- (WKStillWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 thumbnailImageURL:(id)a6 fullsizeImageURL:(id)a7
{
  v12 = a7;
  v17.receiver = self;
  v17.super_class = WKStillWallpaper;
  v13 = [(WKThumbnailWallpaper *)&v17 initWithIdentifier:a3 name:a4 type:a5 representedType:a5 backingType:0 thumbnailImageURL:a6];
  if (v13)
  {
    v14 = [v12 copy];
    fullsizeImageURL = v13->_fullsizeImageURL;
    v13->_fullsizeImageURL = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKAbstractWallpaper *)self identifier];
  v6 = [(WKAbstractWallpaper *)self name];
  v7 = [(WKAbstractWallpaper *)self type];
  v8 = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  v9 = [(WKStillWallpaper *)self fullsizeImageURL];
  v10 = [v4 initWithIdentifier:v5 name:v6 type:v7 thumbnailImageURL:v8 fullsizeImageURL:v9];

  return v10;
}

- (id)propertyListRepresentation
{
  v9.receiver = self;
  v9.super_class = WKStillWallpaper;
  v3 = [(WKThumbnailWallpaper *)&v9 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKStillWallpaper *)self fullsizeImageURL];
  v7 = [v6 lastPathComponent];
  [v5 na_safeSetObject:v7 forKey:@"fullSizeImageFileName"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = WKStillWallpaper;
  if ([(WKThumbnailWallpaper *)&v17 copyWallpaperContentsToDestinationDirectoryURL:v6 error:a4])
  {
    v7 = [(WKStillWallpaper *)self fullsizeImageURL];
    v8 = [(WKThumbnailWallpaper *)self thumbnailImageURL];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [(WKStillWallpaper *)self fullsizeImageURL];
      v13 = [(WKStillWallpaper *)self fullsizeImageURL];
      v14 = [v13 lastPathComponent];
      v15 = [v6 URLByAppendingPathComponent:v14];
      v10 = [v11 copyItemAtURL:v12 toURL:v15 error:a4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__WKStillWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __31__WKStillWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __31__WKStillWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__WKStillWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_9 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_9, block);
  }

  v1 = _block_invoke_na_once_object_0_9;

  return v1;
}

void __31__WKStillWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__WKStillWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __31__WKStillWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_9;
  _block_invoke_na_once_object_0_9 = v1;
}

id __31__WKStillWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKStillWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_10];
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
  v9.super_class = WKStillWallpaper;
  v3 = [(WKThumbnailWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__WKStillWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __43__WKStillWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained fullsizeImageURL];
  v5 = [v4 path];
  [v3 appendString:v5 withName:@"fullsizeImageURL"];
}

@end