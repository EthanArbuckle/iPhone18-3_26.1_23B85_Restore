@interface WKAbstractWallpaper
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (NSURL)thumbnailImageURL;
- (UIImage)thumbnailImage;
- (WKAbstractWallpaper)init;
- (WKAbstractWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 representedType:(unint64_t)a6 backingType:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (unint64_t)hash;
@end

@implementation WKAbstractWallpaper

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

- (WKAbstractWallpaper)init
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

- (WKAbstractWallpaper)initWithIdentifier:(int64_t)a3 name:(id)a4 type:(unint64_t)a5 representedType:(unint64_t)a6 backingType:(unint64_t)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = WKAbstractWallpaper;
  v14 = [(WKAbstractWallpaper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_identifier = a3;
    objc_storeStrong(&v14->_name, a4);
    v15->_type = a5;
    v15->_representedType = a6;
    v15->_backingType = a7;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKAbstractWallpaper *)self identifier];
  v6 = [(WKAbstractWallpaper *)self name];
  v7 = [v4 initWithIdentifier:v5 name:v6 type:-[WKAbstractWallpaper type](self representedType:"type") backingType:{-[WKAbstractWallpaper representedType](self, "representedType"), -[WKAbstractWallpaper backingType](self, "backingType")}];

  return v7;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WKAbstractWallpaper identifier](self, "identifier")}];
  [v3 na_safeSetObject:v4 forKey:@"identifier"];

  v5 = WKStringFromWallpaperType([(WKAbstractWallpaper *)self type]);
  [v3 na_safeSetObject:v5 forKey:@"type"];

  v6 = [(WKAbstractWallpaper *)self name];
  [v3 na_safeSetObject:v6 forKey:@"name"];

  return v3;
}

- (NSURL)thumbnailImageURL
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (UIImage)thumbnailImage
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

id __34__WKAbstractWallpaper_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_0_5 != -1)
  {
    __34__WKAbstractWallpaper_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0_5;

  return v1;
}

uint64_t __34__WKAbstractWallpaper_na_identity__block_invoke_2()
{
  _block_invoke_na_once_object_0_5 = __34__WKAbstractWallpaper_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __34__WKAbstractWallpaper_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendIntegerCharacteristic:&__block_literal_global_17_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_20_0];
  v3 = [v0 appendIntegerCharacteristic:&__block_literal_global_22_1];
  v4 = [v0 appendIntegerCharacteristic:&__block_literal_global_24_0];
  v5 = [v0 appendIntegerCharacteristic:&__block_literal_global_26];
  v6 = [v0 appendCharacteristic:&__block_literal_global_28];
  v7 = [v0 appendCharacteristic:&__block_literal_global_30_0];
  v8 = [v0 build];

  return v8;
}

uint64_t __34__WKAbstractWallpaper_na_identity__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 supportsSerialization];

  return [v2 numberWithBool:v3];
}

uint64_t __34__WKAbstractWallpaper_na_identity__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 supportsCopying];

  return [v2 numberWithBool:v3];
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
  v7[2] = __44__WKAbstractWallpaper_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __44__WKAbstractWallpaper_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  v2 = [(WKAbstractWallpaper *)self wk_descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__WKAbstractWallpaper_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __46__WKAbstractWallpaper_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 appendUnsignedInteger:objc_msgSend(WeakRetained withName:{"identifier"), @"identifier"}];
  v5 = [WeakRetained name];
  [v3 appendString:v5 withName:@"name"];

  v6 = WKStringFromWallpaperType([WeakRetained type]);
  [v3 appendString:v6 withName:@"type"];

  v7 = WKStringFromWallpaperType([WeakRetained representedType]);
  [v3 appendString:v7 withName:@"representedType"];

  v8 = WKStringFromWallpaperBackingType([WeakRetained backingType]);
  [v3 appendString:v8 withName:@"backingType"];

  v9 = WKStringFromWallpaperBackingType([WeakRetained supportsSerialization]);
  [v3 appendString:v9 withName:@"supportsSerialization"];
}

@end