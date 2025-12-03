@interface WKLayeredThumbnailWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (UIImage)thumbnailImage;
- (WKLayeredThumbnailWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type representedType:(unint64_t)representedType backgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLayeredThumbnailWallpaper

- (WKLayeredThumbnailWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name type:(unint64_t)type representedType:(unint64_t)representedType backgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v22.receiver = self;
  v22.super_class = WKLayeredThumbnailWallpaper;
  v18 = [(WKAbstractWallpaper *)&v22 initWithIdentifier:identifier name:name type:type representedType:representedType backingType:1];
  if (v18)
  {
    v19 = [[WKLayeredThumbnailWallpaperInput alloc] initWithBackgroundThumbnailImageURL:lCopy foregroundThumbnailImageURL:rLCopy floatingThumbnailImageURL:uRLCopy];
    wallpaperValue = v18->__wallpaperValue;
    v18->__wallpaperValue = v19;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  type = [(WKAbstractWallpaper *)self type];
  representedType = [(WKAbstractWallpaper *)self representedType];
  wallpaperValue = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  backgroundThumbnailImageURL = [wallpaperValue backgroundThumbnailImageURL];
  wallpaperValue2 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  foregroundThumbnailImageURL = [wallpaperValue2 foregroundThumbnailImageURL];
  wallpaperValue3 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  floatingThumbnailImageURL = [wallpaperValue3 floatingThumbnailImageURL];
  v14 = [v16 initWithIdentifier:identifier name:name type:type representedType:representedType backgroundThumbnailImageURL:backgroundThumbnailImageURL foregroundThumbnailImageURL:foregroundThumbnailImageURL floatingThumbnailImageURL:floatingThumbnailImageURL];

  return v14;
}

- (id)propertyListRepresentation
{
  v21.receiver = self;
  v21.super_class = WKLayeredThumbnailWallpaper;
  propertyListRepresentation = [(WKAbstractWallpaper *)&v21 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  wallpaperValue = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  backgroundThumbnailImageURL = [wallpaperValue backgroundThumbnailImageURL];
  lastPathComponent = [backgroundThumbnailImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"backgroundThumbnailImageFileName"];

  wallpaperValue2 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  foregroundThumbnailImageURL = [wallpaperValue2 foregroundThumbnailImageURL];
  lastPathComponent2 = [foregroundThumbnailImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent2 forKey:@"foregroundThumbnailImageFileName"];

  wallpaperValue3 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  floatingThumbnailImageURL = [wallpaperValue3 floatingThumbnailImageURL];
  lastPathComponent3 = [floatingThumbnailImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent3 forKey:@"floatingThumbnailImageFileName"];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  LODWORD(lastPathComponent3) = [v16 isEqualToString:v18];

  if (lastPathComponent3)
  {
    v19 = WKStringFromWallpaperType([(WKAbstractWallpaper *)self representedType]);
    [v5 na_safeSetObject:v19 forKey:@"representedType"];
  }

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  wallpaperValue = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  backgroundThumbnailImageURL = [wallpaperValue backgroundThumbnailImageURL];
  errorCopy = error;
  v44 = lCopy;
  if (backgroundThumbnailImageURL)
  {
    v9 = backgroundThumbnailImageURL;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue2 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    backgroundThumbnailImageURL2 = [wallpaperValue2 backgroundThumbnailImageURL];
    wallpaperValue3 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    backgroundThumbnailImageURL3 = [wallpaperValue3 backgroundThumbnailImageURL];
    [backgroundThumbnailImageURL3 lastPathComponent];
    v15 = v14 = self;
    v16 = [lCopy URLByAppendingPathComponent:v15];
    v17 = [defaultManager copyItemAtURL:backgroundThumbnailImageURL2 toURL:v16 error:error];

    self = v14;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  wallpaperValue4 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  foregroundThumbnailImageURL = [wallpaperValue4 foregroundThumbnailImageURL];
  if (foregroundThumbnailImageURL)
  {
    v20 = foregroundThumbnailImageURL;
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue5 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    foregroundThumbnailImageURL2 = [wallpaperValue5 foregroundThumbnailImageURL];
    [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    v25 = v24 = self;
    foregroundThumbnailImageURL3 = [v25 foregroundThumbnailImageURL];
    lastPathComponent = [foregroundThumbnailImageURL3 lastPathComponent];
    v28 = [v44 URLByAppendingPathComponent:lastPathComponent];
    v42 = [defaultManager2 copyItemAtURL:foregroundThumbnailImageURL2 toURL:v28 error:errorCopy];

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

  wallpaperValue6 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
  floatingThumbnailImageURL = [wallpaperValue6 floatingThumbnailImageURL];
  if (floatingThumbnailImageURL)
  {
    v32 = floatingThumbnailImageURL;
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue7 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    floatingThumbnailImageURL2 = [wallpaperValue7 floatingThumbnailImageURL];
    wallpaperValue8 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    floatingThumbnailImageURL3 = [wallpaperValue8 floatingThumbnailImageURL];
    lastPathComponent2 = [floatingThumbnailImageURL3 lastPathComponent];
    v39 = [v44 URLByAppendingPathComponent:lastPathComponent2];
    v29 = [defaultManager3 copyItemAtURL:floatingThumbnailImageURL2 toURL:v39 error:errorCopy];
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
  _thumbnailImage = [(WKLayeredThumbnailWallpaper *)self _thumbnailImage];

  if (!_thumbnailImage)
  {
    wallpaperValue = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    backgroundThumbnailImageURL = [wallpaperValue backgroundThumbnailImageURL];

    if (backgroundThumbnailImageURL)
    {
      v6 = MEMORY[0x1E69DCAB8];
      wallpaperValue2 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      backgroundThumbnailImageURL2 = [wallpaperValue2 backgroundThumbnailImageURL];
      path = [backgroundThumbnailImageURL2 path];
      v10 = [v6 imageWithContentsOfFile:path];
    }

    else
    {
      v10 = 0;
    }

    wallpaperValue3 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    foregroundThumbnailImageURL = [wallpaperValue3 foregroundThumbnailImageURL];

    if (foregroundThumbnailImageURL)
    {
      v13 = MEMORY[0x1E69DCAB8];
      wallpaperValue4 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      foregroundThumbnailImageURL2 = [wallpaperValue4 foregroundThumbnailImageURL];
      path2 = [foregroundThumbnailImageURL2 path];
      v17 = [v13 imageWithContentsOfFile:path2];
    }

    else
    {
      v17 = 0;
    }

    wallpaperValue5 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
    floatingThumbnailImageURL = [wallpaperValue5 floatingThumbnailImageURL];

    if (floatingThumbnailImageURL)
    {
      v20 = MEMORY[0x1E69DCAB8];
      wallpaperValue6 = [(WKLayeredThumbnailWallpaper *)self wallpaperValue];
      floatingThumbnailImageURL2 = [wallpaperValue6 floatingThumbnailImageURL];
      path3 = [floatingThumbnailImageURL2 path];
      v24 = [v20 imageWithContentsOfFile:path3];
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
  v4[4] = self;
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
  v9.super_class = WKLayeredThumbnailWallpaper;
  descriptionBuilderBlock = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WKLayeredThumbnailWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
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