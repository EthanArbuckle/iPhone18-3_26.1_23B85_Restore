@interface WKLayeredAnimationWallpaperInput
- (BOOL)isEqual:(id)equal;
- (WKLayeredAnimationWallpaperInput)initWithBackgroundAnimationFileURL:(id)l foregroundAnimationFileURL:(id)rL floatingAnimationFileURL:(id)uRL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilderBlock;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKLayeredAnimationWallpaperInput

- (WKLayeredAnimationWallpaperInput)initWithBackgroundAnimationFileURL:(id)l foregroundAnimationFileURL:(id)rL floatingAnimationFileURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v19.receiver = self;
  v19.super_class = WKLayeredAnimationWallpaperInput;
  v11 = [(WKLayeredAnimationWallpaperInput *)&v19 init];
  if (v11)
  {
    v12 = [lCopy copy];
    backgroundAnimationFileURL = v11->_backgroundAnimationFileURL;
    v11->_backgroundAnimationFileURL = v12;

    v14 = [rLCopy copy];
    foregroundAnimationFileURL = v11->_foregroundAnimationFileURL;
    v11->_foregroundAnimationFileURL = v14;

    v16 = [uRLCopy copy];
    floatingAnimationFileURL = v11->_floatingAnimationFileURL;
    v11->_floatingAnimationFileURL = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backgroundAnimationFileURL = [(WKLayeredAnimationWallpaperInput *)self backgroundAnimationFileURL];
  foregroundAnimationFileURL = [(WKLayeredAnimationWallpaperInput *)self foregroundAnimationFileURL];
  floatingAnimationFileURL = [(WKLayeredAnimationWallpaperInput *)self floatingAnimationFileURL];
  v8 = [v4 initWithBackgroundAnimationFileURL:backgroundAnimationFileURL foregroundAnimationFileURL:foregroundAnimationFileURL floatingAnimationFileURL:floatingAnimationFileURL];

  return v8;
}

id __47__WKLayeredAnimationWallpaperInput_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_8 != -1)
  {
    __47__WKLayeredAnimationWallpaperInput_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_8;

  return v1;
}

uint64_t __47__WKLayeredAnimationWallpaperInput_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_8 = __47__WKLayeredAnimationWallpaperInput_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __47__WKLayeredAnimationWallpaperInput_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_9];
  v2 = [v0 appendCharacteristic:&__block_literal_global_11];
  v3 = [v0 appendCharacteristic:&__block_literal_global_13_0];
  v4 = [v0 build];

  return v4;
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
  v7[2] = __57__WKLayeredAnimationWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __57__WKLayeredAnimationWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (id)description
{
  wk_descriptionBuilder = [(WKLayeredAnimationWallpaperInput *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__WKLayeredAnimationWallpaperInput_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __59__WKLayeredAnimationWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backgroundAnimationFileURL];
  v5 = [v10 appendObject:v4 withName:@"backgroundAnimationFileURL"];

  v6 = [WeakRetained foregroundAnimationFileURL];
  v7 = [v10 appendObject:v6 withName:@"foregroundAnimationFileURL"];

  v8 = [WeakRetained floatingAnimationFileURL];
  v9 = [v10 appendObject:v8 withName:@"floatingAnimationFileURL"];
}

@end