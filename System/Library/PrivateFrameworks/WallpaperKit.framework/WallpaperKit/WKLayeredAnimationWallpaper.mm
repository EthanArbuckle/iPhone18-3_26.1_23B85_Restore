@interface WKLayeredAnimationWallpaper
+ (id)na_identity;
- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (WKLayeredAnimationWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundAnimationFileURL:(id)l foregroundAnimationFileURL:(id)rL floatingAnimationFileURL:(id)uRL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLayeredAnimationWallpaper

- (WKLayeredAnimationWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundAnimationFileURL:(id)l foregroundAnimationFileURL:(id)rL floatingAnimationFileURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v19.receiver = self;
  v19.super_class = WKLayeredAnimationWallpaper;
  v15 = [(WKAbstractWallpaper *)&v19 initWithIdentifier:identifier name:name type:7 representedType:7 backingType:1];
  if (v15)
  {
    v16 = [[WKLayeredAnimationWallpaperInput alloc] initWithBackgroundAnimationFileURL:lCopy foregroundAnimationFileURL:rLCopy floatingAnimationFileURL:uRLCopy];
    wallpaperValue = v15->__wallpaperValue;
    v15->__wallpaperValue = v16;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  wallpaperValue = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  backgroundAnimationFileURL = [wallpaperValue backgroundAnimationFileURL];
  wallpaperValue2 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  foregroundAnimationFileURL = [wallpaperValue2 foregroundAnimationFileURL];
  wallpaperValue3 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  floatingAnimationFileURL = [wallpaperValue3 floatingAnimationFileURL];
  v13 = [v4 initWithIdentifier:identifier name:name backgroundAnimationFileURL:backgroundAnimationFileURL foregroundAnimationFileURL:foregroundAnimationFileURL floatingAnimationFileURL:floatingAnimationFileURL];

  return v13;
}

- (id)propertyListRepresentation
{
  v16.receiver = self;
  v16.super_class = WKLayeredAnimationWallpaper;
  propertyListRepresentation = [(WKAbstractWallpaper *)&v16 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  wallpaperValue = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  backgroundAnimationFileURL = [wallpaperValue backgroundAnimationFileURL];
  lastPathComponent = [backgroundAnimationFileURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent forKey:@"backgroundAnimationFileName"];

  wallpaperValue2 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  foregroundAnimationFileURL = [wallpaperValue2 foregroundAnimationFileURL];
  lastPathComponent2 = [foregroundAnimationFileURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent2 forKey:@"foregroundAnimationFileName"];

  wallpaperValue3 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  floatingAnimationFileURL = [wallpaperValue3 floatingAnimationFileURL];
  lastPathComponent3 = [floatingAnimationFileURL lastPathComponent];
  [v5 na_safeSetObject:lastPathComponent3 forKey:@"floatingAnimationFileNameKey"];

  return v5;
}

- (BOOL)copyWallpaperContentsToDestinationDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  wallpaperValue = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  backgroundAnimationFileURL = [wallpaperValue backgroundAnimationFileURL];
  errorCopy = error;
  v44 = lCopy;
  if (backgroundAnimationFileURL)
  {
    v9 = backgroundAnimationFileURL;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue2 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    backgroundAnimationFileURL2 = [wallpaperValue2 backgroundAnimationFileURL];
    wallpaperValue3 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    backgroundAnimationFileURL3 = [wallpaperValue3 backgroundAnimationFileURL];
    [backgroundAnimationFileURL3 lastPathComponent];
    v15 = v14 = self;
    v16 = [lCopy URLByAppendingPathComponent:v15];
    v17 = [defaultManager copyItemAtURL:backgroundAnimationFileURL2 toURL:v16 error:error];

    self = v14;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  wallpaperValue4 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  foregroundAnimationFileURL = [wallpaperValue4 foregroundAnimationFileURL];
  if (foregroundAnimationFileURL)
  {
    v20 = foregroundAnimationFileURL;
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue5 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    foregroundAnimationFileURL2 = [wallpaperValue5 foregroundAnimationFileURL];
    [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    v25 = v24 = self;
    foregroundAnimationFileURL3 = [v25 foregroundAnimationFileURL];
    lastPathComponent = [foregroundAnimationFileURL3 lastPathComponent];
    v28 = [v44 URLByAppendingPathComponent:lastPathComponent];
    v42 = [defaultManager2 copyItemAtURL:foregroundAnimationFileURL2 toURL:v28 error:errorCopy];

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

  wallpaperValue6 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
  floatingAnimationFileURL = [wallpaperValue6 floatingAnimationFileURL];
  if (floatingAnimationFileURL)
  {
    v32 = floatingAnimationFileURL;
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    wallpaperValue7 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    floatingAnimationFileURL2 = [wallpaperValue7 floatingAnimationFileURL];
    wallpaperValue8 = [(WKLayeredAnimationWallpaper *)self wallpaperValue];
    floatingAnimationFileURL3 = [wallpaperValue8 floatingAnimationFileURL];
    lastPathComponent2 = [floatingAnimationFileURL3 lastPathComponent];
    v39 = [v44 URLByAppendingPathComponent:lastPathComponent2];
    v29 = [defaultManager3 copyItemAtURL:floatingAnimationFileURL2 toURL:v39 error:errorCopy];
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
  v4[4] = self;
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
  v9.super_class = WKLayeredAnimationWallpaper;
  descriptionBuilderBlock = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WKLayeredAnimationWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
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