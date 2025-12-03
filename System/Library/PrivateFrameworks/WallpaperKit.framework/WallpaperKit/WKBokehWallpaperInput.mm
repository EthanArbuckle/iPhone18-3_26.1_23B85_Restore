@interface WKBokehWallpaperInput
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (WKBokehWallpaperInput)init;
- (WKBokehWallpaperInput)initWithBackgroundColors:(id)colors bubbleColors:(id)bubbleColors bubbleCount:(unint64_t)count bubbleScale:(double)scale parallaxMultiplier:(double)multiplier thumbnailSeed:(unint64_t)seed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilderBlock;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKBokehWallpaperInput

+ (id)new
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

- (WKBokehWallpaperInput)init
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

- (WKBokehWallpaperInput)initWithBackgroundColors:(id)colors bubbleColors:(id)bubbleColors bubbleCount:(unint64_t)count bubbleScale:(double)scale parallaxMultiplier:(double)multiplier thumbnailSeed:(unint64_t)seed
{
  colorsCopy = colors;
  bubbleColorsCopy = bubbleColors;
  v22.receiver = self;
  v22.super_class = WKBokehWallpaperInput;
  v16 = [(WKBokehWallpaperInput *)&v22 init];
  if (v16)
  {
    v17 = [colorsCopy copy];
    backgroundColors = v16->_backgroundColors;
    v16->_backgroundColors = v17;

    v19 = [bubbleColorsCopy copy];
    bubbleColors = v16->_bubbleColors;
    v16->_bubbleColors = v19;

    v16->_bubbleCount = count;
    v16->_bubbleScale = scale;
    v16->_parallaxMultiplier = multiplier;
    v16->_thumbnailSeed = seed;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backgroundColors = [(WKBokehWallpaperInput *)self backgroundColors];
  bubbleColors = [(WKBokehWallpaperInput *)self bubbleColors];
  bubbleCount = [(WKBokehWallpaperInput *)self bubbleCount];
  [(WKBokehWallpaperInput *)self bubbleScale];
  v9 = v8;
  [(WKBokehWallpaperInput *)self parallaxMultiplier];
  v11 = [v4 initWithBackgroundColors:backgroundColors bubbleColors:bubbleColors bubbleCount:bubbleCount bubbleScale:-[WKBokehWallpaperInput thumbnailSeed](self parallaxMultiplier:"thumbnailSeed") thumbnailSeed:{v9, v10}];

  return v11;
}

id __36__WKBokehWallpaperInput_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_1 != -1)
  {
    __36__WKBokehWallpaperInput_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_1;

  return v1;
}

uint64_t __36__WKBokehWallpaperInput_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_1 = __36__WKBokehWallpaperInput_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __36__WKBokehWallpaperInput_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_12];
  v2 = [v0 appendCharacteristic:&__block_literal_global_14];
  v3 = [v0 appendUnsignedIntegerCharacteristic:&__block_literal_global_17];
  v4 = [v0 appendDoubleCharacteristic:&__block_literal_global_20];
  v5 = [v0 appendDoubleCharacteristic:&__block_literal_global_22_0];
  v6 = [v0 appendUnsignedIntegerCharacteristic:&__block_literal_global_24];
  v7 = [v0 build];

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
  v7[2] = __46__WKBokehWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __46__WKBokehWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (id)description
{
  wk_descriptionBuilder = [(WKBokehWallpaperInput *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__WKBokehWallpaperInput_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __48__WKBokehWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backgroundColors];
  v5 = [v12 appendObject:v4 withName:@"backgroundColors"];

  v6 = [WeakRetained bubbleColors];
  v7 = [v12 appendObject:v6 withName:@"bubbleColors"];

  v8 = [v12 appendUnsignedInteger:objc_msgSend(WeakRetained withName:{"bubbleCount"), @"bubbleCount"}];
  [WeakRetained bubbleScale];
  v9 = [v12 appendDouble:@"bubbleScale" withName:2 decimalPrecision:?];
  [WeakRetained parallaxMultiplier];
  v10 = [v12 appendDouble:@"parallaxMultiplier" withName:2 decimalPrecision:?];
  v11 = [v12 appendUnsignedInteger:objc_msgSend(WeakRetained withName:{"thumbnailSeed"), @"thumbnailSeed"}];
}

@end