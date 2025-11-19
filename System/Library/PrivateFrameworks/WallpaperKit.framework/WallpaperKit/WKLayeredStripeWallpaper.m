@interface WKLayeredStripeWallpaper
+ (id)na_identity;
- (BOOL)isEqual:(id)a3;
- (WKLayeredStripeWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundColor:(id)a5 stripeAngleDegrees:(double)a6 stripeHeightFactor:(double)a7 firstStripeOffsetScaleFactor:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKLayeredStripeWallpaper

- (WKLayeredStripeWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 backgroundColor:(id)a5 stripeAngleDegrees:(double)a6 stripeHeightFactor:(double)a7 firstStripeOffsetScaleFactor:(double)a8
{
  v14 = a5;
  v19.receiver = self;
  v19.super_class = WKLayeredStripeWallpaper;
  v15 = [(WKAbstractWallpaper *)&v19 initWithIdentifier:a3 name:a4 type:5 representedType:5 backingType:1];
  if (v15)
  {
    v16 = [[WKLayeredStripeWallpaperInput alloc] initWithBackgroundColor:v14 stripeAngleDegrees:a6 stripeHeightFactor:a7 firstStripeOffsetScaleFactor:a8];
    wallpaperValue = v15->__wallpaperValue;
    v15->__wallpaperValue = v16;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKAbstractWallpaper *)self identifier];
  v6 = [(WKAbstractWallpaper *)self name];
  v7 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  v8 = [v7 backgroundColor];
  v9 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v9 stripeAngleDegrees];
  v11 = v10;
  v12 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v12 stripeHeightFactor];
  v14 = v13;
  v15 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v15 firstStripeOffsetScaleFactor];
  v17 = [v4 initWithIdentifier:v5 name:v6 backgroundColor:v8 stripeAngleDegrees:v11 stripeHeightFactor:v14 firstStripeOffsetScaleFactor:v16];

  return v17;
}

- (id)propertyListRepresentation
{
  v19.receiver = self;
  v19.super_class = WKLayeredStripeWallpaper;
  v3 = [(WKAbstractWallpaper *)&v19 propertyListRepresentation];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v6 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  v7 = [v6 backgroundColor];
  v8 = [v7 wk_colorHexString];
  [v5 na_safeSetObject:v8 forKey:@"backgroundColor"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v10 stripeAngleDegrees];
  v11 = [v9 numberWithDouble:?];
  [v5 na_safeSetObject:v11 forKey:@"stripeAngleDegrees"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v13 stripeHeightFactor];
  v14 = [v12 numberWithDouble:?];
  [v5 na_safeSetObject:v14 forKey:@"stripeHeightFactor"];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(WKLayeredStripeWallpaper *)self wallpaperValue];
  [v16 firstStripeOffsetScaleFactor];
  v17 = [v15 numberWithDouble:?];
  [v5 na_safeSetObject:v17 forKey:@"firstStripeVerticalOffsetScaleFactor"];

  return v5;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__WKLayeredStripeWallpaper_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __39__WKLayeredStripeWallpaper_na_identity__block_invoke(v4);

  return v2;
}

id __39__WKLayeredStripeWallpaper_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WKLayeredStripeWallpaper_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_block_invoke_na_once_token_0 != -1)
  {
    dispatch_once(&_block_invoke_na_once_token_0, block);
  }

  v1 = _block_invoke_na_once_object_0;

  return v1;
}

void __39__WKLayeredStripeWallpaper_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__WKLayeredStripeWallpaper_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __39__WKLayeredStripeWallpaper_na_identity__block_invoke_3(v3);
  v2 = _block_invoke_na_once_object_0;
  _block_invoke_na_once_object_0 = v1;
}

id __39__WKLayeredStripeWallpaper_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___WKLayeredStripeWallpaper;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_0];
  v5 = [v3 build];

  return v5;
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

- (id)descriptionBuilderBlock
{
  v9.receiver = self;
  v9.super_class = WKLayeredStripeWallpaper;
  v3 = [(WKAbstractWallpaper *)&v9 descriptionBuilderBlock];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__WKLayeredStripeWallpaper_descriptionBuilderBlock__block_invoke;
  aBlock[3] = &unk_1E8766BF0;
  objc_copyWeak(&v7, &location);
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __51__WKLayeredStripeWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = [WeakRetained wallpaperValue];
  v5 = [v6 appendObject:v4 withName:@"wallpaperValue"];
}

@end