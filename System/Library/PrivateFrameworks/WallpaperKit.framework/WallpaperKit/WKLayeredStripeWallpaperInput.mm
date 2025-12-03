@interface WKLayeredStripeWallpaperInput
+ (WKLayeredStripeWallpaperInput)new;
- (BOOL)isEqual:(id)equal;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (WKLayeredStripeWallpaperInput)init;
- (WKLayeredStripeWallpaperInput)initWithBackgroundColor:(id)color stripeAngleDegrees:(double)degrees stripeHeightFactor:(double)factor firstStripeOffsetScaleFactor:(double)scaleFactor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (unint64_t)hash;
@end

@implementation WKLayeredStripeWallpaperInput

+ (WKLayeredStripeWallpaperInput)new
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

- (WKLayeredStripeWallpaperInput)init
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

- (WKLayeredStripeWallpaperInput)initWithBackgroundColor:(id)color stripeAngleDegrees:(double)degrees stripeHeightFactor:(double)factor firstStripeOffsetScaleFactor:(double)scaleFactor
{
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = WKLayeredStripeWallpaperInput;
  v11 = [(WKLayeredStripeWallpaperInput *)&v15 init];
  if (v11)
  {
    v12 = [colorCopy copy];
    backgroundColor = v11->_backgroundColor;
    v11->_backgroundColor = v12;

    v11->_stripeAngleDegrees = degrees;
    v11->_stripeHeightFactor = factor;
    v11->_firstStripeOffsetScaleFactor = scaleFactor;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backgroundColor = [(WKLayeredStripeWallpaperInput *)self backgroundColor];
  [(WKLayeredStripeWallpaperInput *)self stripeAngleDegrees];
  v7 = v6;
  [(WKLayeredStripeWallpaperInput *)self stripeHeightFactor];
  v9 = v8;
  [(WKLayeredStripeWallpaperInput *)self firstStripeOffsetScaleFactor];
  v11 = [v4 initWithBackgroundColor:backgroundColor stripeAngleDegrees:v7 stripeHeightFactor:v9 firstStripeOffsetScaleFactor:v10];

  return v11;
}

id __44__WKLayeredStripeWallpaperInput_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_13 != -1)
  {
    __44__WKLayeredStripeWallpaperInput_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_13;

  return v1;
}

uint64_t __44__WKLayeredStripeWallpaperInput_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_13 = __44__WKLayeredStripeWallpaperInput_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __44__WKLayeredStripeWallpaperInput_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_12_1];
  v2 = [v0 appendDoubleCharacteristic:&__block_literal_global_15_0];
  v3 = [v0 appendDoubleCharacteristic:&__block_literal_global_17_1];
  v4 = [v0 appendDoubleCharacteristic:&__block_literal_global_19_0];
  v5 = [v0 build];

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

- (NADescriptionBuilder)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WKLayeredStripeWallpaperInput_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __54__WKLayeredStripeWallpaperInput_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  wk_descriptionBuilder = [(WKLayeredStripeWallpaperInput *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__WKLayeredStripeWallpaperInput_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __56__WKLayeredStripeWallpaperInput_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained backgroundColor];
  v5 = [v9 appendObject:v4 withName:@"backgroundColor"];

  [WeakRetained stripeAngleDegrees];
  v6 = [v9 appendDouble:@"stripeAngleDegrees" withName:8 decimalPrecision:?];
  [WeakRetained stripeHeightFactor];
  v7 = [v9 appendDouble:@"stripeHeightFactor" withName:8 decimalPrecision:?];
  [WeakRetained firstStripeOffsetScaleFactor];
  v8 = [v9 appendDouble:@"firstStripeOffsetScaleFactor" withName:8 decimalPrecision:?];
}

@end