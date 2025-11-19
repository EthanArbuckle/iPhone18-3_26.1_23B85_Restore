@interface WKLayeredThumbnailWallpaperInput
+ (WKLayeredThumbnailWallpaperInput)new;
- (BOOL)isEqual:(id)a3;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (WKLayeredThumbnailWallpaperInput)init;
- (WKLayeredThumbnailWallpaperInput)initWithBackgroundThumbnailImageURL:(id)a3 foregroundThumbnailImageURL:(id)a4 floatingThumbnailImageURL:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (unint64_t)hash;
@end

@implementation WKLayeredThumbnailWallpaperInput

+ (WKLayeredThumbnailWallpaperInput)new
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Attempted to initialize %@ without using designated initializer.", v6];
  v8 = [v2 exceptionWithName:v3 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (WKLayeredThumbnailWallpaperInput)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Attempted to initialize %@ without using designated initializer.", v6];
  v8 = [v2 exceptionWithName:v3 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (WKLayeredThumbnailWallpaperInput)initWithBackgroundThumbnailImageURL:(id)a3 foregroundThumbnailImageURL:(id)a4 floatingThumbnailImageURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WKLayeredThumbnailWallpaperInput;
  v11 = [(WKLayeredThumbnailWallpaperInput *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    backgroundThumbnailImageURL = v11->_backgroundThumbnailImageURL;
    v11->_backgroundThumbnailImageURL = v12;

    v14 = [v9 copy];
    foregroundThumbnailImageURL = v11->_foregroundThumbnailImageURL;
    v11->_foregroundThumbnailImageURL = v14;

    v16 = [v10 copy];
    floatingThumbnailImageURL = v11->_floatingThumbnailImageURL;
    v11->_floatingThumbnailImageURL = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKLayeredThumbnailWallpaperInput *)self backgroundThumbnailImageURL];
  v6 = [(WKLayeredThumbnailWallpaperInput *)self foregroundThumbnailImageURL];
  v7 = [(WKLayeredThumbnailWallpaperInput *)self floatingThumbnailImageURL];
  v8 = [v4 initWithBackgroundThumbnailImageURL:v5 foregroundThumbnailImageURL:v6 floatingThumbnailImageURL:v7];

  return v8;
}

id __47__WKLayeredThumbnailWallpaperInput_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_7 != -1)
  {
    __47__WKLayeredThumbnailWallpaperInput_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_7;

  return v1;
}

uint64_t __47__WKLayeredThumbnailWallpaperInput_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_7 = __47__WKLayeredThumbnailWallpaperInput_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __47__WKLayeredThumbnailWallpaperInput_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_12_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_14_1];
  v3 = [v0 appendCharacteristic:&__block_literal_global_16];
  v4 = [v0 build];

  return v4;
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

- (NADescriptionBuilder)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  v4 = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WKLayeredThumbnailWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __57__WKLayeredThumbnailWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  v2 = [(WKLayeredThumbnailWallpaperInput *)self wk_descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__WKLayeredThumbnailWallpaperInput_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __59__WKLayeredThumbnailWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backgroundThumbnailImageURL];
  v5 = [v4 path];
  v6 = [v13 appendObject:v5 withName:@"backgroundThumbnailImageURL"];

  v7 = [WeakRetained foregroundThumbnailImageURL];
  v8 = [v7 path];
  v9 = [v13 appendObject:v8 withName:@"foregroundThumbnailImageURL"];

  v10 = [WeakRetained floatingThumbnailImageURL];
  v11 = [v10 path];
  v12 = [v13 appendObject:v11 withName:@"floatingThumbnailImageURL"];
}

@end