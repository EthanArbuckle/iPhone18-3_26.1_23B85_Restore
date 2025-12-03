@interface WKStillWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (WKStillWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type thumbnailImageURL:(id)l fullsizeImageURL:(id)rL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKStillWallpaper

- (WKStillWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type thumbnailImageURL:(id)l fullsizeImageURL:(id)rL
{
  rLCopy = rL;
  v17.receiver = self;
  v17.super_class = WKStillWallpaper;
  v13 = [(WKThumbnailWallpaper *)&v17 initWithIdentifier:identifier name:name type:type representedType:type backingType:0 thumbnailImageURL:l];
  if (v13)
  {
    v14 = [rLCopy copy];
    fullsizeImageURL = v13->_fullsizeImageURL;
    v13->_fullsizeImageURL = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  type = [(WKAbstractWallpaper *)self type];
  thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  fullsizeImageURL = [(WKStillWallpaper *)self fullsizeImageURL];
  v10 = [v4 initWithIdentifier:identifier name:name type:type thumbnailImageURL:thumbnailImageURL fullsizeImageURL:fullsizeImageURL];

  return v10;
}

- (id)propertyListRepresentation
{
  v9.receiver = self;
  v9.super_class = WKStillWallpaper;
  propertyListRepresentation = [(WKThumbnailWallpaper *)&v9 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  fullsizeImageURL = [(WKStillWallpaper *)self fullsizeImageURL];
  lastPathComponent = [fullsizeImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"fullSizeImageFileName"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WKStillWallpaper;
  if ([(WKThumbnailWallpaper *)&v17 copyWallpaperContentsToDestinationDirectoryURL:lCopy error:error])
  {
    fullsizeImageURL = [(WKStillWallpaper *)self fullsizeImageURL];
    thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
    v9 = [fullsizeImageURL isEqual:thumbnailImageURL];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      fullsizeImageURL2 = [(WKStillWallpaper *)self fullsizeImageURL];
      fullsizeImageURL3 = [(WKStillWallpaper *)self fullsizeImageURL];
      lastPathComponent = [fullsizeImageURL3 lastPathComponent];
      v15 = [lCopy URLByAppendingPathComponent:lastPathComponent];
      v10 = [defaultManager copyItemAtURL:fullsizeImageURL2 toURL:v15 error:error];
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
  v4[4] = self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (id)descriptionBuilderBlock
{
  v9.receiver = self;
  v9.super_class = WKStillWallpaper;
  descriptionBuilderBlock = [(WKThumbnailWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__WKStillWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
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