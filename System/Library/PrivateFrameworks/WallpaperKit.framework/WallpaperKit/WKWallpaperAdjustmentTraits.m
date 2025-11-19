@interface WKWallpaperAdjustmentTraits
- (BOOL)isEqual:(id)a3;
- (WKWallpaperAdjustmentTraits)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionBuilderBlock;
- (id)propertyListRepresentation;
- (id)wk_descriptionBuilder;
- (unint64_t)hash;
@end

@implementation WKWallpaperAdjustmentTraits

- (WKWallpaperAdjustmentTraits)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WKWallpaperAdjustmentTraits;
  v5 = [(WKWallpaperAdjustmentTraits *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"adjustmentTraitOffset"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [[WKWallpaperAdjustmentTraitOffset alloc] initWithAttributeDictionary:v8];
    offset = v5->_offset;
    v5->_offset = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKWallpaperAdjustmentTraits *)self propertyListRepresentation];
  v6 = [v4 initWithDictionary:v5];

  return v6;
}

- (id)propertyListRepresentation
{
  v2 = [(WKWallpaperAdjustmentTraits *)self offset];
  v3 = [v2 propertyListRepresentation];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 na_safeSetObject:v3 forKey:@"adjustmentTraitOffset"];
  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __42__WKWallpaperAdjustmentTraits_na_identity__block_invoke()
{
  if (WKWallpaperAdjustmentTraitOffsetKey_block_invoke_na_once_token_0 != -1)
  {
    __42__WKWallpaperAdjustmentTraits_na_identity__block_invoke_cold_1();
  }

  v1 = WKWallpaperAdjustmentTraitOffsetKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __42__WKWallpaperAdjustmentTraits_na_identity__block_invoke_2()
{
  WKWallpaperAdjustmentTraitOffsetKey_block_invoke_na_once_object_0 = __42__WKWallpaperAdjustmentTraits_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __42__WKWallpaperAdjustmentTraits_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_22];
  v2 = [v0 build];

  return v2;
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

- (id)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  v4 = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WKWallpaperAdjustmentTraits_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __52__WKWallpaperAdjustmentTraits_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (id)description
{
  v2 = [(WKWallpaperAdjustmentTraits *)self wk_descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__WKWallpaperAdjustmentTraits_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __54__WKWallpaperAdjustmentTraits_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained offset];
  v5 = [v4 description];
  [v3 appendString:v5 withName:@"offset"];
}

@end