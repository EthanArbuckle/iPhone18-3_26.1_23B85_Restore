@interface WKThumbnailWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (WKThumbnailWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type representedType:(unint64_t)representedType backingType:(unint64_t)backingType thumbnailImageURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (id)thumbnailImage;
- (unint64_t)hash;
@end

@implementation WKThumbnailWallpaper

- (WKThumbnailWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type representedType:(unint64_t)representedType backingType:(unint64_t)backingType thumbnailImageURL:(id)l
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = WKThumbnailWallpaper;
  v15 = [(WKAbstractWallpaper *)&v19 initWithIdentifier:identifier name:name type:type representedType:representedType backingType:backingType];
  if (v15)
  {
    v16 = [lCopy copy];
    thumbnailImageURL = v15->_thumbnailImageURL;
    v15->_thumbnailImageURL = v16;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  type = [(WKAbstractWallpaper *)self type];
  representedType = [(WKAbstractWallpaper *)self representedType];
  backingType = [(WKAbstractWallpaper *)self backingType];
  thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  v11 = [v4 initWithIdentifier:identifier name:name type:type representedType:representedType backingType:backingType thumbnailImageURL:thumbnailImageURL];

  return v11;
}

- (id)propertyListRepresentation
{
  v15.receiver = self;
  v15.super_class = WKThumbnailWallpaper;
  propertyListRepresentation = [(WKAbstractWallpaper *)&v15 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  lastPathComponent = [thumbnailImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"thumbnailImageFileName"];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = WKStringFromWallpaperType([(WKAbstractWallpaper *)self representedType]);
    [v5 na_safeSetObject:v13 forKey:@"representedType"];
  }

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
  lastPathComponent = [thumbnailImageURL lastPathComponent];
  v9 = [lCopy URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v9 path];
  LOBYTE(lastPathComponent) = [defaultManager fileExistsAtPath:path];

  if (lastPathComponent)
  {
    v12 = 1;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    thumbnailImageURL2 = [(WKThumbnailWallpaper *)self thumbnailImageURL];
    v12 = [defaultManager2 copyItemAtURL:thumbnailImageURL2 toURL:v9 error:error];
  }

  return v12;
}

- (id)thumbnailImage
{
  _thumbnailImage = [(WKThumbnailWallpaper *)self _thumbnailImage];

  if (!_thumbnailImage)
  {
    v4 = MEMORY[0x1E69DCAB8];
    thumbnailImageURL = [(WKThumbnailWallpaper *)self thumbnailImageURL];
    path = [thumbnailImageURL path];
    v7 = [v4 imageWithContentsOfFile:path];
    [(WKThumbnailWallpaper *)self set_thumbnailImage:v7];
  }

  return [(WKThumbnailWallpaper *)self _thumbnailImage];
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__WKThumbnailWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __35__WKThumbnailWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __35__WKThumbnailWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WKThumbnailWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_6 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_6, block);
  }

  v1 = _block_invoke_na_once_object_0_6;

  return v1;
}

void __35__WKThumbnailWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__WKThumbnailWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __35__WKThumbnailWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_6;
  _block_invoke_na_once_object_0_6 = v1;
}

id __35__WKThumbnailWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKThumbnailWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_7];
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
  v9.super_class = WKThumbnailWallpaper;
  descriptionBuilderBlock = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__WKThumbnailWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __47__WKThumbnailWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained thumbnailImageURL];
  v5 = [v4 path];
  [v3 appendString:v5 withName:@"thumbnailImageURL"];
}

@end