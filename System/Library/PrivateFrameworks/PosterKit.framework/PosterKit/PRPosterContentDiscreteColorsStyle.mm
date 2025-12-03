@interface PRPosterContentDiscreteColorsStyle
+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (NSArray)variationAppliedColors;
- (NSString)identifier;
- (NSString)nonVariatedIdentifier;
- (PRPosterContentDiscreteColorsStyle)initWithCoder:(id)coder;
- (PRPosterContentDiscreteColorsStyle)initWithColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variationValue:(double)value preferredMaterialType:(unint64_t)type;
- (UIColor)vibrancyEffectColor;
- (id)copyWithPreferredMaterial:(unint64_t)material;
- (id)copyWithVariation:(double)variation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)applyStyleWithRenderer:(id)renderer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterContentDiscreteColorsStyle

- (PRPosterContentDiscreteColorsStyle)initWithColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variationValue:(double)value preferredMaterialType:(unint64_t)type
{
  variationCopy = variation;
  colorsCopy = colors;
  v17.receiver = self;
  v17.super_class = PRPosterContentDiscreteColorsStyle;
  v13 = [(PRPosterContentDiscreteColorsStyle *)&v17 init];
  if (v13)
  {
    v14 = [colorsCopy copy];
    colors = v13->_colors;
    v13->_colors = v14;

    v13->_vibrant = vibrant;
    v13->_supportsVariation = variationCopy;
    if (variationCopy)
    {
      v13->_variation = value;
    }

    v13->_preferredMaterialType = type;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    colors = [(PRPosterContentDiscreteColorsStyle *)self colors];
    colors2 = [v7 colors];
    v10 = [colors isEqualToArray:colors2];

    v12 = v10 && (v11 = -[PRPosterContentDiscreteColorsStyle isVibrant](self, "isVibrant"), v11 == [v7 isVibrant]) && self->_supportsVariation == v7[8] && (variation || !self->_supportsVariation || BSFloatEqualToFloat()) && self->_preferredMaterialType == *(v7 + 5);
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
  colors = [(PRPosterContentDiscreteColorsStyle *)self colors];
  v5 = [colors bs_map:&__block_literal_global_9];
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
  nonVariatedIdentifier = [(PRPosterContentDiscreteColorsStyle *)self nonVariatedIdentifier];
  if (supportsVariation)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_variation];
    v6 = [nonVariatedIdentifier stringByAppendingFormat:@":%@", v5];

    nonVariatedIdentifier = v6;
  }

  return nonVariatedIdentifier;
}

- (void)applyStyleWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy renderDiscreteColorStyle:self];
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
      selfCopy = self;
      v5 = &v13;
    }

    else
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __60__PRPosterContentDiscreteColorsStyle_variationAppliedColors__block_invoke_2;
      v11 = &unk_1E78435C0;
      selfCopy2 = self;
      v5 = &v8;
    }

    selfCopy = [(NSArray *)colors bs_map:v5, v8, v9, v10, v11, selfCopy2, v13, v14, v15, v16, selfCopy];
  }

  else
  {
    selfCopy = self->_colors;
  }

  return selfCopy;
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

- (id)copyWithVariation:(double)variation
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;
  preferredMaterialType = self->_preferredMaterialType;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:preferredMaterialType preferredMaterialType:variation];
}

- (UIColor)vibrancyEffectColor
{
  if ([(PRPosterContentDiscreteColorsStyle *)self allowsVariation])
  {
    variationAppliedColors = [(PRPosterContentDiscreteColorsStyle *)self variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = [(NSArray *)self->_colors firstObject];
  }

  return firstObject;
}

- (id)copyWithPreferredMaterial:(unint64_t)material
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;
  variation = self->_variation;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:material preferredMaterialType:variation];
}

- (PRPosterContentDiscreteColorsStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5478]];
  v6 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5480]];
  v7 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5470]];
  [coderCopy decodeDoubleForKey:*MEMORY[0x1E69C5488]];
  v9 = v8;
  v10 = [coderCopy decodeBoolForKey:@"needsToResolveVariation"];
  v11 = [coderCopy decodeIntegerForKey:*MEMORY[0x1E69C54B8]];

  v12 = [[PRPosterContentDiscreteColorsStyle alloc] initWithColors:v5 vibrant:v6 supportsVariation:v7 variationValue:v11 preferredMaterialType:v9];
  [(PRPosterContentDiscreteColorsStyle *)v12 setNeedsToResolveVariationFromColorStore:v10];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  colors = self->_colors;
  v5 = *MEMORY[0x1E69C5478];
  coderCopy = coder;
  [coderCopy encodeObject:colors forKey:v5];
  [coderCopy encodeBool:self->_vibrant forKey:*MEMORY[0x1E69C5480]];
  [coderCopy encodeBool:self->_supportsVariation forKey:*MEMORY[0x1E69C5470]];
  [coderCopy encodeDouble:*MEMORY[0x1E69C5488] forKey:self->_variation];
  [coderCopy encodeBool:self->_needsToResolveVariationFromColorStore forKey:@"needsToResolveVariation"];
  [coderCopy encodeInteger:self->_preferredMaterialType forKey:*MEMORY[0x1E69C54B8]];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithColors:self->_colors vibrant:self->_vibrant supportsVariation:self->_supportsVariation variationValue:self->_preferredMaterialType preferredMaterialType:self->_variation];
  [v4 setNeedsToResolveVariationFromColorStore:self->_needsToResolveVariationFromColorStore];
  return v4;
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver
{
  sub_1A8BDDB64();
  unarchiverCopy = unarchiver;
  sub_1A8BDDB54();
}

@end