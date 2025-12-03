@interface WKLiveWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (WKLiveWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type thumbnailImageURL:(id)l fullsizeImageURL:(id)rL videoAssetURL:(id)uRL stillTimeInVideo:(double)video;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLiveWallpaper

- (WKLiveWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type thumbnailImageURL:(id)l fullsizeImageURL:(id)rL videoAssetURL:(id)uRL stillTimeInVideo:(double)video
{
  uRLCopy = uRL;
  v21.receiver = self;
  v21.super_class = WKLiveWallpaper;
  v17 = [(WKStillWallpaper *)&v21 initWithIdentifier:identifier name:name type:type thumbnailImageURL:l fullsizeImageURL:rL];
  if (v17)
  {
    v18 = [uRLCopy copy];
    videoAssetURL = v17->_videoAssetURL;
    v17->_videoAssetURL = v18;

    v17->_stillTimeInVideo = video;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  type = [(WKAbstractWallpaper *)self type];
  thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  fullsizeImageURL = [(WKStillWallpaper *)self fullsizeImageURL];
  videoAssetURL = [(WKLiveWallpaper *)self videoAssetURL];
  [(WKLiveWallpaper *)self stillTimeInVideo];
  v11 = [v4 initWithIdentifier:identifier name:name type:type thumbnailImageURL:thumbnailImageURL fullsizeImageURL:fullsizeImageURL videoAssetURL:videoAssetURL stillTimeInVideo:?];

  return v11;
}

- (id)propertyListRepresentation
{
  v11.receiver = self;
  v11.super_class = WKLiveWallpaper;
  propertyListRepresentation = [(WKStillWallpaper *)&v11 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  videoAssetURL = [(WKLiveWallpaper *)self videoAssetURL];
  lastPathComponent = [videoAssetURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"videoFileName"];

  v8 = MEMORY[0x1E696AD98];
  [(WKLiveWallpaper *)self stillTimeInVideo];
  v9 = [v8 numberWithDouble:?];
  [v5 na_safeSetObject:v9 forKey:@"stillTimeInVideo"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WKLiveWallpaper;
  if ([(WKStillWallpaper *)&v14 copyWallpaperContentsToDestinationDirectoryURL:lCopy error:error])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    videoAssetURL = [(WKLiveWallpaper *)self videoAssetURL];
    videoAssetURL2 = [(WKLiveWallpaper *)self videoAssetURL];
    lastPathComponent = [videoAssetURL2 lastPathComponent];
    v11 = [lCopy URLByAppendingPathComponent:lastPathComponent];
    v12 = [defaultManager copyItemAtURL:videoAssetURL toURL:v11 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__WKLiveWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __30__WKLiveWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __30__WKLiveWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__WKLiveWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_0 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_0, block);
  }

  v1 = _block_invoke_na_once_object_0_0;

  return v1;
}

void __30__WKLiveWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__WKLiveWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __30__WKLiveWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_0;
  _block_invoke_na_once_object_0_0 = v1;
}

id __30__WKLiveWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___WKLiveWallpaper;
  v2 = objc_msgSendSuper2(&v8, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_1];
  v5 = [v3 appendDoubleCharacteristic:&__block_literal_global_13];
  v6 = [v3 build];

  return v6;
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
  v9.super_class = WKLiveWallpaper;
  descriptionBuilderBlock = [(WKStillWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__WKLiveWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __42__WKLiveWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained videoAssetURL];
  v5 = [v4 path];
  [v7 appendString:v5 withName:@"videoAssetURL"];

  [WeakRetained stillTimeInVideo];
  v6 = [v7 appendTimeInterval:@"stillTimeInVideo" withName:1 decomposeUnits:?];
}

@end