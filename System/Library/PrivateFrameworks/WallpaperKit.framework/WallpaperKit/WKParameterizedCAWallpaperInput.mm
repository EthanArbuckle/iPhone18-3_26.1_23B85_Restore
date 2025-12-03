@interface WKParameterizedCAWallpaperInput
- (BOOL)isEqual:(id)equal;
- (WKParameterizedCAWallpaperInput)initWithFileURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilderBlock;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKParameterizedCAWallpaperInput

- (WKParameterizedCAWallpaperInput)initWithFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = WKParameterizedCAWallpaperInput;
  v5 = [(WKParameterizedCAWallpaperInput *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  fileURL = [(WKParameterizedCAWallpaperInput *)self fileURL];
  v6 = [v4 initWithFileURL:fileURL];

  return v6;
}

id __46__WKParameterizedCAWallpaperInput_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_12 != -1)
  {
    __46__WKParameterizedCAWallpaperInput_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_12;

  return v1;
}

uint64_t __46__WKParameterizedCAWallpaperInput_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_12 = __46__WKParameterizedCAWallpaperInput_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __46__WKParameterizedCAWallpaperInput_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_9_1];
  v2 = [v0 build];

  return v2;
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
  v7[2] = __56__WKParameterizedCAWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __56__WKParameterizedCAWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (id)description
{
  wk_descriptionBuilder = [(WKParameterizedCAWallpaperInput *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__WKParameterizedCAWallpaperInput_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __58__WKParameterizedCAWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained fileURL];
  v5 = [v6 appendObject:v4 withName:@"fileURL"];
}

@end