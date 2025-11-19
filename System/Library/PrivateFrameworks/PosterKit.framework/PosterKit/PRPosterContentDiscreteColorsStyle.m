@interface PRPosterContentDiscreteColorsStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (NSArray)variationAppliedColors;
- (NSString)identifier;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentDiscreteColorsStyle)initWithCoder:(id)a3;
- (PRPosterContentDiscreteColorsStyle)initWithColors:(id)a3 vibrant:(BOOL)a4 supportsVariation:(BOOL)a5 variationValue:(double)a6 preferredMaterialType:(unint64_t)a7;
- (UIColor)vibrancyEffectColor;
- (id)copyWithPreferredMaterial:(unint64_t)a3;
- (id)copyWithVariation:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterContentDiscreteColorsStyle

- (PRPosterContentDiscreteColorsStyle)initWithColors:(id)a3 vibrant:(BOOL)a4 supportsVariation:(BOOL)a5 variationValue:(double)a6 preferredMaterialType:(unint64_t)a7
{
  v9 = a5;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = PRPosterContentDiscreteColorsStyle;
  v13 = [(PRPosterContentDiscreteColorsStyle *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    colors = v13->_colors;
    v13->_colors = v14;

    v13->_vibrant = a4;
    v13->_supportsVariation = v9;
    if (v9)
    {
      v13->_variation = a6;
    }

    v13->_preferredMaterialType = a7;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(PRPosterContentDiscreteColorsStyle *)self colors];
    v9 = [v7 colors];
    v10 = [v8 isEqualToArray:v9];

    v12 = v10 && (v11 = -[PRPosterContentDiscreteColorsStyle isVibrant](self, "isVibrant"), v11 == [v7 isVibrant]) && self->_supportsVariation == v7[8] && (a4 || !self->_supportsVariation || BSFloatEqualToFloat()) && self->_preferredMaterialType == *(v7 + 5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendObject:self->_colors];
  v5 = [v3 appendBool:self->_vibrant];
  v6 = [v3 appendBool:self->_supportsVariation];
  if (self->_supportsVariation)
  {
    v7 = [v3 appendCGFloat:self->_variation];
  }

  v8 = [v3 appendUnsignedInteger:self->_preferredMaterialType];
  v9 = [v3 hash];

  return v9;
}

- (NSString)nonVariatedIdentifier
{
  v3 = _PRPosterContentStyleStringForType([(PRPosterContentDiscreteColorsStyle *)self type]);
  v4 = [(PRPosterContentDiscreteColorsStyle *)self colors];
  v5 = [v4 bs_map:&__block_literal_global_9];
  v6 = [v5 componentsJoinedByString:@"_"];
  v7 = [v3 stringByAppendingFormat:@"-%@", v6];

  return v7;
}

uint64_t __59__PRPosterContentDiscreteColorsStyle_nonVariatedIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

- (NSString)identifier
{
  supportsVariation = self->_supportsVariation;
  v4 = [(PRPosterContentDiscreteColorsStyle *)self nonVariatedIdentifier];
  if (supportsVariation)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_variation];
    v6 = [v4 stringByAppendingFormat:@":%@", v5];

    v4 = v6;
  }

  return v4;
}

- (void)applyStyleWithRenderer:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 renderDiscreteColorStyle:self];
  }
}

- (NSArray)variationAppliedColors
{
  if (self->_supportsVariation)
  {
    vibrant = self->_vibrant;
    colors = self->_colors;
    if (vibrant)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __60__PRPosterContentDiscreteColorsStyle_variationAppliedColors__block_invoke;
      v16 = &unk_1E78435C0;
      v17 = self;
      v5 = &v13;
    }

    else
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __60__PRPosterContentDiscreteColorsStyle_variationAppliedColors__block_invoke_2;
      v11 = &unk_1E78435C0;
      v12 = self;
      v5 = &v8;
    }

    v6 = [(NSArray *)colors bs_map:v5, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17];
  }

  else
  {
    v6 = self->_colors;
  }

  return v6;
}

id __60__PRPosterContentDiscreteColorsStyle_variationAppliedColors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PRPosterColorValues alloc] initWithColor:v3];

  v5 = *(*(a1 + 32) + 16) * -0.25;
  v6 = [(PRPosterColorValues *)v4 hslValues];
  [v6 luminance];
  v8 = v7;

  v9 = fmax(v8 + v5, 0.0);
  if (v9 > 1.0)
  {
    v9 = 1.0;
  }

  v10 = [(PRPosterColorValues *)v4 copyWithLuminance:v9];
  v11 = [v10 color];

  return v11;
}

- (id)copyWithVariation:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;
  preferredMaterialType = self->_preferredMaterialType;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:preferredMaterialType preferredMaterialType:a3];
}

- (UIColor)vibrancyEffectColor
{
  if ([(PRPosterContentDiscreteColorsStyle *)self allowsVariation])
  {
    v3 = [(PRPosterContentDiscreteColorsStyle *)self variationAppliedColors];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [(NSArray *)self->_colors firstObject];
  }

  return v4;
}

- (id)copyWithPreferredMaterial:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;
  variation = self->_variation;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:a3 preferredMaterialType:variation];
}

- (PRPosterContentDiscreteColorsStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5478]];
  v6 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5480]];
  v7 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5470]];
  [v4 decodeDoubleForKey:*MEMORY[0x1E69C5488]];
  v9 = v8;
  v10 = [v4 decodeBoolForKey:@"needsToResolveVariation"];
  v11 = [v4 decodeIntegerForKey:*MEMORY[0x1E69C54B8]];

  v12 = [[PRPosterContentDiscreteColorsStyle alloc] initWithColors:v5 vibrant:v6 supportsVariation:v7 variationValue:v11 preferredMaterialType:v9];
  [(PRPosterContentDiscreteColorsStyle *)v12 setNeedsToResolveVariationFromColorStore:v10];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  colors = self->_colors;
  v5 = *MEMORY[0x1E69C5478];
  v6 = a3;
  [v6 encodeObject:colors forKey:v5];
  [v6 encodeBool:self->_vibrant forKey:*MEMORY[0x1E69C5480]];
  [v6 encodeBool:self->_supportsVariation forKey:*MEMORY[0x1E69C5470]];
  [v6 encodeDouble:*MEMORY[0x1E69C5488] forKey:self->_variation];
  [v6 encodeBool:self->_needsToResolveVariationFromColorStore forKey:@"needsToResolveVariation"];
  [v6 encodeInteger:self->_preferredMaterialType forKey:*MEMORY[0x1E69C54B8]];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithColors:self->_colors vibrant:self->_vibrant supportsVariation:self->_supportsVariation variationValue:self->_preferredMaterialType preferredMaterialType:self->_variation];
  [v4 setNeedsToResolveVariationFromColorStore:self->_needsToResolveVariationFromColorStore];
  return v4;
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDB64();
  v4 = a3;
  sub_1A8BDDB54();
}

@end