@interface PREditingColorVariationStore
+ (id)posterColorForColor:(id)a3 withAppliedVariation:(double)a4;
+ (void)performMigrationsIfNeededForStorage:(id)a3 version:(unint64_t)a4;
- (PREditingColorVariationStore)init;
- (PREditingColorVariationStore)initWithVariationStorage:(id)a3 version:(unint64_t)a4;
- (id)baseColorForVariedColor:(id)a3 forContextIdentifier:(id)a4 variation:(double *)a5 forDataLayerPicker:(BOOL)a6;
- (id)dictionaryRepresentation;
- (id)persistedVariationForContextIdentifier:(id)a3;
- (id)variationForPickerColor:(id)a3 forContextIdentifier:(id)a4;
- (void)resetAllValues;
- (void)setVariation:(double)a3 forPickerColor:(id)a4 forContextIdentifier:(id)a5;
@end

@implementation PREditingColorVariationStore

+ (void)performMigrationsIfNeededForStorage:(id)a3 version:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [objc_opt_class() version];
    v6 = v7;
    if (a4 <= 2 && v5 > a4)
    {
      v5 = [v7 removeAllObjects];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

+ (id)posterColorForColor:(id)a3 withAppliedVariation:(double)a4
{
  v5 = a3;
  v6 = [[PRPosterColor alloc] initWithColor:v5 preferredStyle:0];

  v7 = a4 * -0.25;
  v8 = [(PRPosterColor *)v6 hslValues];
  [v8 luminance];
  v10 = v9;

  v11 = fmax(v10 + v7, 0.0);
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  v12 = [(PRPosterColor *)v6 copyWithLuminance:v11];

  return v12;
}

- (PREditingColorVariationStore)initWithVariationStorage:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PREditingColorVariationStore;
  v7 = [(PREditingColorVariationStore *)&v14 init];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    [objc_opt_class() performMigrationsIfNeededForStorage:v8 version:a4];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
    }

    variationStorage = v7->_variationStorage;
    v7->_variationStorage = v8;
    v10 = v8;

    v11 = [(NSMutableDictionary *)v10 mutableCopy];
    persistentVariationStorage = v7->_persistentVariationStorage;
    v7->_persistentVariationStorage = v11;
  }

  return v7;
}

- (PREditingColorVariationStore)init
{
  v3 = [objc_opt_class() version];

  return [(PREditingColorVariationStore *)self initWithVariationStorage:0 version:v3];
}

- (id)baseColorForVariedColor:(id)a3 forContextIdentifier:(id)a4 variation:(double *)a5 forDataLayerPicker:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:v11];
  if (v12)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__PREditingColorVariationStore_baseColorForVariedColor_forContextIdentifier_variation_forDataLayerPicker___block_invoke;
    v17[3] = &unk_1E7843240;
    v22 = a6;
    v18 = v10;
    v19 = self;
    v20 = &v23;
    v21 = &v29;
    [v12 enumerateKeysAndObjectsUsingBlock:v17];
    v13 = v24;
    v14 = v24[5];
    if (a5 && v14)
    {
      *a5 = v30[3];
      v14 = v13[5];
    }

    v15 = v14;

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __106__PREditingColorVariationStore_baseColorForVariedColor_forContextIdentifier_variation_forDataLayerPicker___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 doubleValue];
  v9 = v8;
  if (*(a1 + 64) == 1)
  {
    v10 = [*(a1 + 32) colorWithAlphaComponent:1.0];
    v16 = [[PRPosterColor alloc] initWithColor:v10];
  }

  else
  {
    v16 = [objc_opt_class() posterColorForColor:*(a1 + 32) withAppliedVariation:-v8];
  }

  v11 = [(PRPosterColor *)v16 identifier];
  v12 = [v7 isEqualToString:v11];

  if (v12)
  {
    v13 = [(PRPosterColor *)v16 color];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 56) + 8) + 24) = v9;
    *a4 = 1;
  }
}

- (id)variationForPickerColor:(id)a3 forContextIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 baseColor];
  v8 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v7 identifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v13 = [v7 colorValues];
      v14 = [v13 identifier];

      v12 = [v8 objectForKeyedSubscript:v14];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setVariation:(double)a3 forPickerColor:(id)a4 forContextIdentifier:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [a4 baseColor];
  v10 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 mutableCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
  }

  v13 = v12;
  v14 = [v9 identifier];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v13 setObject:v15 forKeyedSubscript:v14];

  v16 = [v13 copy];
  [(NSMutableDictionary *)self->_variationStorage setObject:v16 forKeyedSubscript:v8];

  v19 = v14;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v20[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [(NSMutableDictionary *)self->_persistentVariationStorage setObject:v18 forKeyedSubscript:v8];
}

- (id)persistedVariationForContextIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_persistentVariationStorage objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3 && [v3 count] <= 1)
  {
    v6 = [v4 allValues];
    v5 = [v6 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_persistentVariationStorage copy];

  return v2;
}

- (void)resetAllValues
{
  [(NSMutableDictionary *)self->_variationStorage removeAllObjects];
  persistentVariationStorage = self->_persistentVariationStorage;

  [(NSMutableDictionary *)persistentVariationStorage removeAllObjects];
}

@end