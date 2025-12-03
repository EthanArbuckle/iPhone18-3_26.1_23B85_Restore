@interface WKLayeredStillWallpaperInput
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (WKLayeredStillWallpaperInput)initWithBackgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL backgroundFullSizeImageURL:(id)imageURL foregroundFullSizeImageURL:(id)sizeImageURL floatingFullSizeImageURL:(id)fullSizeImageURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilderBlock;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKLayeredStillWallpaperInput

- (WKLayeredStillWallpaperInput)initWithBackgroundThumbnailImageURL:(id)l foregroundThumbnailImageURL:(id)rL floatingThumbnailImageURL:(id)uRL backgroundFullSizeImageURL:(id)imageURL foregroundFullSizeImageURL:(id)sizeImageURL floatingFullSizeImageURL:(id)fullSizeImageURL
{
  imageURLCopy = imageURL;
  sizeImageURLCopy = sizeImageURL;
  fullSizeImageURLCopy = fullSizeImageURL;
  v25.receiver = self;
  v25.super_class = WKLayeredStillWallpaperInput;
  v17 = [(WKLayeredThumbnailWallpaperInput *)&v25 initWithBackgroundThumbnailImageURL:l foregroundThumbnailImageURL:rL floatingThumbnailImageURL:uRL];
  if (v17)
  {
    v18 = [imageURLCopy copy];
    backgroundFullSizeImageURL = v17->_backgroundFullSizeImageURL;
    v17->_backgroundFullSizeImageURL = v18;

    v20 = [sizeImageURLCopy copy];
    foregroundFullSizeImageURL = v17->_foregroundFullSizeImageURL;
    v17->_foregroundFullSizeImageURL = v20;

    v22 = [fullSizeImageURLCopy copy];
    floatingFullSizeImageURL = v17->_floatingFullSizeImageURL;
    v17->_floatingFullSizeImageURL = v22;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backgroundThumbnailImageURL = [(WKLayeredThumbnailWallpaperInput *)self backgroundThumbnailImageURL];
  foregroundThumbnailImageURL = [(WKLayeredThumbnailWallpaperInput *)self foregroundThumbnailImageURL];
  floatingThumbnailImageURL = [(WKLayeredThumbnailWallpaperInput *)self floatingThumbnailImageURL];
  backgroundFullSizeImageURL = [(WKLayeredStillWallpaperInput *)self backgroundFullSizeImageURL];
  foregroundFullSizeImageURL = [(WKLayeredStillWallpaperInput *)self foregroundFullSizeImageURL];
  floatingFullSizeImageURL = [(WKLayeredStillWallpaperInput *)self floatingFullSizeImageURL];
  v11 = [v4 initWithBackgroundThumbnailImageURL:backgroundThumbnailImageURL foregroundThumbnailImageURL:foregroundThumbnailImageURL floatingThumbnailImageURL:floatingThumbnailImageURL backgroundFullSizeImageURL:backgroundFullSizeImageURL foregroundFullSizeImageURL:foregroundFullSizeImageURL floatingFullSizeImageURL:floatingFullSizeImageURL];

  return v11;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__WKLayeredStillWallpaperInput_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __43__WKLayeredStillWallpaperInput_na_identity__block_invoke(v4);

  return v2;
}

id __43__WKLayeredStillWallpaperInput_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__WKLayeredStillWallpaperInput_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0_14 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0_14, block);
  }

  v1 = _block_invoke_na_once_object_0_14;

  return v1;
}

void __43__WKLayeredStillWallpaperInput_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__WKLayeredStillWallpaperInput_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __43__WKLayeredStillWallpaperInput_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0_14;
  _block_invoke_na_once_object_0_14 = v1;
}

id __43__WKLayeredStillWallpaperInput_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___WKLayeredStillWallpaperInput;
  v2 = objc_msgSendSuper2(&v9, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_14];
  v5 = [v3 appendCharacteristic:&__block_literal_global_5_4];
  v6 = [v3 appendCharacteristic:&__block_literal_global_7];
  v7 = [v3 build];

  return v7;
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

- (id)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WKLayeredStillWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __53__WKLayeredStillWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (id)description
{
  wk_descriptionBuilder = [(WKLayeredStillWallpaperInput *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  v9.receiver = self;
  v9.super_class = WKLayeredStillWallpaperInput;
  descriptionBuilderBlock = [(WKLayeredThumbnailWallpaperInput *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__WKLayeredStillWallpaperInput_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = descriptionBuilderBlock;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __55__WKLayeredStillWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained backgroundFullSizeImageURL];
  v5 = [v4 path];
  v6 = [v13 appendObject:v5 withName:@"backgroundFullSizeImageURL"];

  v7 = [WeakRetained foregroundFullSizeImageURL];
  v8 = [v7 path];
  v9 = [v13 appendObject:v8 withName:@"foregroundFullSizeImageURL"];

  v10 = [WeakRetained floatingFullSizeImageURL];
  v11 = [v10 path];
  v12 = [v13 appendObject:v11 withName:@"floatingFullSizeImageURL"];
}

@end