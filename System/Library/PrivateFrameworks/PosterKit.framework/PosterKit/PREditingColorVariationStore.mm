@interface PREditingColorVariationStore
+ (id)posterColorForColor:(id)color withAppliedVariation:(double)variation;
+ (void)performMigrationsIfNeededForStorage:(id)storage version:(unint64_t)version;
- (PREditingColorVariationStore)init;
- (PREditingColorVariationStore)initWithVariationStorage:(id)storage version:(unint64_t)version;
- (id)baseColorForVariedColor:(id)color forContextIdentifier:(id)identifier variation:(double *)variation forDataLayerPicker:(BOOL)picker;
- (id)dictionaryRepresentation;
- (id)persistedVariationForContextIdentifier:(id)identifier;
- (id)variationForPickerColor:(id)color forContextIdentifier:(id)identifier;
- (void)resetAllValues;
- (void)setVariation:(double)variation forPickerColor:(id)color forContextIdentifier:(id)identifier;
@end

@implementation PREditingColorVariationStore

+ (void)performMigrationsIfNeededForStorage:(id)storage version:(unint64_t)version
{
  storageCopy = storage;
  v6 = storageCopy;
  if (storageCopy)
  {
    v7 = storageCopy;
    storageCopy = [objc_opt_class() version];
    v6 = v7;
    if (version <= 2 && storageCopy > version)
    {
      storageCopy = [v7 removeAllObjects];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](storageCopy, v6);
}

+ (id)posterColorForColor:(id)color withAppliedVariation:(double)variation
{
  colorCopy = color;
  v6 = [[PRPosterColor alloc] initWithColor:colorCopy preferredStyle:0];

  v7 = variation * -0.25;
  hslValues = [(PRPosterColor *)v6 hslValues];
  [hslValues luminance];
  v10 = v9;

  v11 = fmax(v10 + v7, 0.0);
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  v12 = [(PRPosterColor *)v6 copyWithLuminance:v11];

  return v12;
}

- (PREditingColorVariationStore)initWithVariationStorage:(id)storage version:(unint64_t)version
{
  storageCopy = storage;
  v14.receiver = self;
  v14.super_class = PREditingColorVariationStore;
  v7 = [(PREditingColorVariationStore *)&v14 init];
  if (v7)
  {
    dictionary = [storageCopy mutableCopy];
    [objc_opt_class() performMigrationsIfNeededForStorage:dictionary version:version];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    variationStorage = v7->_variationStorage;
    v7->_variationStorage = dictionary;
    v10 = dictionary;

    v11 = [(NSMutableDictionary *)v10 mutableCopy];
    persistentVariationStorage = v7->_persistentVariationStorage;
    v7->_persistentVariationStorage = v11;
  }

  return v7;
}

- (PREditingColorVariationStore)init
{
  version = [objc_opt_class() version];

  return [(PREditingColorVariationStore *)self initWithVariationStorage:0 version:version];
}

- (id)baseColorForVariedColor:(id)color forContextIdentifier:(id)identifier variation:(double *)variation forDataLayerPicker:(BOOL)picker
{
  colorCopy = color;
  identifierCopy = identifier;
  v12 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:identifierCopy];
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
    pickerCopy = picker;
    v18 = colorCopy;
    selfCopy = self;
    v20 = &v23;
    v21 = &v29;
    [v12 enumerateKeysAndObjectsUsingBlock:v17];
    v13 = v24;
    v14 = v24[5];
    if (variation && v14)
    {
      *variation = v30[3];
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

- (id)variationForPickerColor:(id)color forContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  baseColor = [color baseColor];
  v8 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:identifierCopy];

  if (v8)
  {
    identifier = [baseColor identifier];
    v10 = [v8 objectForKeyedSubscript:identifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      colorValues = [baseColor colorValues];
      identifier2 = [colorValues identifier];

      v12 = [v8 objectForKeyedSubscript:identifier2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setVariation:(double)variation forPickerColor:(id)color forContextIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  baseColor = [color baseColor];
  v10 = [(NSMutableDictionary *)self->_variationStorage objectForKeyedSubscript:identifierCopy];
  v11 = v10;
  if (v10)
  {
    dictionary = [v10 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v13 = dictionary;
  identifier = [baseColor identifier];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:variation];
  [v13 setObject:v15 forKeyedSubscript:identifier];

  v16 = [v13 copy];
  [(NSMutableDictionary *)self->_variationStorage setObject:v16 forKeyedSubscript:identifierCopy];

  v19 = identifier;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:variation];
  v20[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [(NSMutableDictionary *)self->_persistentVariationStorage setObject:v18 forKeyedSubscript:identifierCopy];
}

- (id)persistedVariationForContextIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_persistentVariationStorage objectForKeyedSubscript:identifier];
  v4 = v3;
  if (v3 && [v3 count] <= 1)
  {
    allValues = [v4 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
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