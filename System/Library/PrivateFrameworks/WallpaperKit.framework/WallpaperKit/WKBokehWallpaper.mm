@interface WKBokehWallpaper
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (UIImage)thumbnailImage;
- (WKBokehWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundColors:(id)colors bubbleColors:(id)bubbleColors bubbleCount:(unint64_t)count bubbleScale:(double)scale parallaxMultiplier:(double)multiplier thumbnailSeed:(unint64_t)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKBokehWallpaper

- (WKBokehWallpaper)initWithIdentifier:(int64_t)identifier name:(id)name backgroundColors:(id)colors bubbleColors:(id)bubbleColors bubbleCount:(unint64_t)count bubbleScale:(double)scale parallaxMultiplier:(double)multiplier thumbnailSeed:(unint64_t)self0
{
  colorsCopy = colors;
  bubbleColorsCopy = bubbleColors;
  v24.receiver = self;
  v24.super_class = WKBokehWallpaper;
  v20 = [(WKAbstractWallpaper *)&v24 initWithIdentifier:identifier name:name type:6 representedType:6 backingType:1];
  if (v20)
  {
    v21 = [[WKBokehWallpaperInput alloc] initWithBackgroundColors:colorsCopy bubbleColors:bubbleColorsCopy bubbleCount:count bubbleScale:seed parallaxMultiplier:scale thumbnailSeed:multiplier];
    wallpaperValue = v20->__wallpaperValue;
    v20->__wallpaperValue = v21;
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = [objc_opt_class() allocWithZone:zone];
  identifier = [(WKAbstractWallpaper *)self identifier];
  name = [(WKAbstractWallpaper *)self name];
  wallpaperValue = [(WKBokehWallpaper *)self wallpaperValue];
  backgroundColors = [wallpaperValue backgroundColors];
  wallpaperValue2 = [(WKBokehWallpaper *)self wallpaperValue];
  bubbleColors = [wallpaperValue2 bubbleColors];
  wallpaperValue3 = [(WKBokehWallpaper *)self wallpaperValue];
  bubbleCount = [wallpaperValue3 bubbleCount];
  wallpaperValue4 = [(WKBokehWallpaper *)self wallpaperValue];
  [wallpaperValue4 bubbleScale];
  v13 = v12;
  wallpaperValue5 = [(WKBokehWallpaper *)self wallpaperValue];
  [wallpaperValue5 parallaxMultiplier];
  v16 = v15;
  wallpaperValue6 = [(WKBokehWallpaper *)self wallpaperValue];
  v18 = [v21 initWithIdentifier:identifier name:name backgroundColors:backgroundColors bubbleColors:bubbleColors bubbleCount:bubbleCount bubbleScale:objc_msgSend(wallpaperValue6 parallaxMultiplier:"thumbnailSeed") thumbnailSeed:{v13, v16}];

  return v18;
}

- (id)propertyListRepresentation
{
  v25.receiver = self;
  v25.super_class = WKBokehWallpaper;
  propertyListRepresentation = [(WKAbstractWallpaper *)&v25 propertyListRepresentation];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  if (propertyListRepresentation)
  {
    [dictionary addEntriesFromDictionary:propertyListRepresentation];
  }

  wallpaperValue = [(WKBokehWallpaper *)self wallpaperValue];
  backgroundColors = [wallpaperValue backgroundColors];
  v8 = [backgroundColors na_map:&__block_literal_global_3];

  [v5 na_safeSetObject:v8 forKey:@"backgroundColors"];
  wallpaperValue2 = [(WKBokehWallpaper *)self wallpaperValue];
  bubbleColors = [wallpaperValue2 bubbleColors];
  v11 = [bubbleColors na_map:&__block_literal_global_5_0];

  [v5 na_safeSetObject:v11 forKey:@"bubbleColors"];
  v12 = MEMORY[0x1E696AD98];
  wallpaperValue3 = [(WKBokehWallpaper *)self wallpaperValue];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(wallpaperValue3, "bubbleCount")}];
  [v5 na_safeSetObject:v14 forKey:@"bubbleCount"];

  v15 = MEMORY[0x1E696AD98];
  wallpaperValue4 = [(WKBokehWallpaper *)self wallpaperValue];
  [wallpaperValue4 bubbleScale];
  v17 = [v15 numberWithDouble:?];
  [v5 na_safeSetObject:v17 forKey:@"bubbleScale"];

  v18 = MEMORY[0x1E696AD98];
  wallpaperValue5 = [(WKBokehWallpaper *)self wallpaperValue];
  [wallpaperValue5 parallaxMultiplier];
  v20 = [v18 numberWithDouble:?];
  [v5 na_safeSetObject:v20 forKey:@"parallaxMultiplier"];

  v21 = MEMORY[0x1E696AD98];
  wallpaperValue6 = [(WKBokehWallpaper *)self wallpaperValue];
  v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(wallpaperValue6, "thumbnailSeed")}];
  [v5 na_safeSetObject:v23 forKey:@"thumbnailSeed"];

  return v5;
}

- (UIImage)thumbnailImage
{
  _thumbnailImage = [(WKBokehWallpaper *)self _thumbnailImage];

  if (!_thumbnailImage)
  {
    v4 = [WKBokehView thumbnailImageWithBokehInput:self->__wallpaperValue];
    [(WKBokehWallpaper *)self set_thumbnailImage:v4];
  }

  return [(WKBokehWallpaper *)self _thumbnailImage];
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__WKBokehWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __31__WKBokehWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __31__WKBokehWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__WKBokehWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_2 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_2, block);
  }

  v1 = _block_invoke_na_once_object_0_2;

  return v1;
}

void __31__WKBokehWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__WKBokehWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __31__WKBokehWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_2;
  _block_invoke_na_once_object_0_2 = v1;
}

id __31__WKBokehWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKBokehWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_14_0];
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
  v9.super_class = WKBokehWallpaper;
  descriptionBuilderBlock = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__WKBokehWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __43__WKBokehWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained wallpaperValue];
  v5 = [v6 appendObject:v4 withName:@"wallpaperValue"];
}

@end