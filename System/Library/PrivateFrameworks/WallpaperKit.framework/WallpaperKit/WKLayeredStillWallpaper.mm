@interface WKLayeredStillWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (WKLayeredStillWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL backgroundFullSizeImageURL:(id)imageURL foregroundFullSizeImageURL:(id)sizeImageURL floatingFullSizeImageURL:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertyListRepresentation;
@end

@implementation WKLayeredStillWallpaper

- (WKLayeredStillWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL backgroundFullSizeImageURL:(id)imageURL foregroundFullSizeImageURL:(id)sizeImageURL floatingFullSizeImageURL:(id)self0
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  imageURLCopy = imageURL;
  sizeImageURLCopy = sizeImageURL;
  fullSizeImageURLCopy = fullSizeImageURL;
  v26.receiver = self;
  v26.super_class = WKLayeredStillWallpaper;
  v22 = [(WKLayeredThumbnailWallpaper *)&v26 initWithIdentifier:identifier name:name type:4 representedType:4 backgroundThumbnailImageURL:lCopy foregroundThumbnailImageURL:rLCopy floatingThumbnailImageURL:uRLCopy];
  if (v22)
  {
    v23 = [[WKLayeredStillWallpaperInput alloc] initWithBackgroundThumbnailImageURL:lCopy foregroundThumbnailImageURL:rLCopy floatingThumbnailImageURL:uRLCopy backgroundFullSizeImageURL:imageURLCopy foregroundFullSizeImageURL:sizeImageURLCopy floatingFullSizeImageURL:fullSizeImageURLCopy];
    wallpaperValue = v22->__wallpaperValue;
    v22->__wallpaperValue = v23;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  wallpaperValue = [(WKLayeredStillWallpaper *)self wallpaperValue];
  backgroundThumbnailImageURL = [wallpaperValue backgroundThumbnailImageURL];
  wallpaperValue2 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  foregroundThumbnailImageURL = [wallpaperValue2 foregroundThumbnailImageURL];
  wallpaperValue3 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  floatingThumbnailImageURL = [wallpaperValue3 floatingThumbnailImageURL];
  wallpaperValue4 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  backgroundFullSizeImageURL = [wallpaperValue4 backgroundFullSizeImageURL];
  wallpaperValue5 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  foregroundFullSizeImageURL = [wallpaperValue5 foregroundFullSizeImageURL];
  wallpaperValue6 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  floatingFullSizeImageURL = [wallpaperValue6 floatingFullSizeImageURL];
  v13 = [v17 initWithIdentifier:identifier name:name backgroundThumbnailImageURL:backgroundThumbnailImageURL foregroundThumbnailImageURL:foregroundThumbnailImageURL floatingThumbnailImageURL:floatingThumbnailImageURL backgroundFullSizeImageURL:backgroundFullSizeImageURL foregroundFullSizeImageURL:foregroundFullSizeImageURL floatingFullSizeImageURL:floatingFullSizeImageURL];

  return v13;
}

- (id)propertyListRepresentation
{
  v16.receiver = self;
  v16.super_class = WKLayeredStillWallpaper;
  propertyListRepresentation = [(WKLayeredThumbnailWallpaper *)&v16 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  wallpaperValue = [(WKLayeredStillWallpaper *)self wallpaperValue];
  backgroundFullSizeImageURL = [wallpaperValue backgroundFullSizeImageURL];
  lastPathComponent = [backgroundFullSizeImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"backgroundFullSizeImageFileName"];

  wallpaperValue2 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  foregroundFullSizeImageURL = [wallpaperValue2 foregroundFullSizeImageURL];
  lastPathComponent2 = [foregroundFullSizeImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent2 forKey:@"foregroundFullSizeImageFileName"];

  wallpaperValue3 = [(WKLayeredStillWallpaper *)self wallpaperValue];
  floatingFullSizeImageURL = [wallpaperValue3 floatingFullSizeImageURL];
  lastPathComponent3 = [floatingFullSizeImageURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent3 forKey:@"floatingFullSizeImageFileName"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  v48.receiver = self;
  v48.super_class = WKLayeredStillWallpaper;
  errorCopy = error;
  v7 = [(WKLayeredThumbnailWallpaper *)&v48 copyWallpaperContentsToDestinationDirectoryURL:lCopy error:error];
  v8 = v7;
  if (v7)
  {
    v45 = v7;
    wallpaperValue = [(WKLayeredStillWallpaper *)self wallpaperValue];
    backgroundFullSizeImageURL = [wallpaperValue backgroundFullSizeImageURL];
    if (backgroundFullSizeImageURL)
    {
      v11 = backgroundFullSizeImageURL;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      wallpaperValue2 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      backgroundFullSizeImageURL2 = [wallpaperValue2 backgroundFullSizeImageURL];
      wallpaperValue3 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      backgroundFullSizeImageURL3 = [wallpaperValue3 backgroundFullSizeImageURL];
      lastPathComponent = [backgroundFullSizeImageURL3 lastPathComponent];
      [lCopy URLByAppendingPathComponent:lastPathComponent];
      v18 = v17 = lCopy;
      v41 = [defaultManager copyItemAtURL:backgroundFullSizeImageURL2 toURL:v18 error:errorCopy];

      lCopy = v17;
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

    wallpaperValue4 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    foregroundFullSizeImageURL = [wallpaperValue4 foregroundFullSizeImageURL];
    if (foregroundFullSizeImageURL)
    {
      v21 = foregroundFullSizeImageURL;
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      wallpaperValue5 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      [wallpaperValue5 foregroundFullSizeImageURL];
      v24 = v23 = lCopy;
      wallpaperValue6 = [(WKLayeredStillWallpaper *)self wallpaperValue];
      foregroundFullSizeImageURL2 = [wallpaperValue6 foregroundFullSizeImageURL];
      lastPathComponent2 = [foregroundFullSizeImageURL2 lastPathComponent];
      v28 = [v23 URLByAppendingPathComponent:lastPathComponent2];
      v42 = [defaultManager2 copyItemAtURL:v24 toURL:v28 error:errorCopy];

      lCopy = v23;
      if (!v42)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    wallpaperValue7 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    floatingFullSizeImageURL = [wallpaperValue7 floatingFullSizeImageURL];
    if (!floatingFullSizeImageURL)
    {

      v8 = v45;
      goto LABEL_14;
    }

    v31 = floatingFullSizeImageURL;
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue8 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    [wallpaperValue8 floatingFullSizeImageURL];
    v35 = v34 = lCopy;
    wallpaperValue9 = [(WKLayeredStillWallpaper *)self wallpaperValue];
    floatingFullSizeImageURL2 = [wallpaperValue9 floatingFullSizeImageURL];
    lastPathComponent3 = [floatingFullSizeImageURL2 lastPathComponent];
    v39 = [v34 URLByAppendingPathComponent:lastPathComponent3];
    v47 = [defaultManager3 copyItemAtURL:v35 toURL:v39 error:errorCopy];

    lCopy = v34;
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
  v4[4] = self;
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