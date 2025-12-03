@interface PUIStyleDiscreteColors
- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation;
- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation;
- (NSArray)variationAppliedColors;
- (NSString)identifier;
- (NSString)nonVariatedIdentifier;
- (PUIStyleDiscreteColors)initWithCoder:(id)coder;
- (PUIStyleDiscreteColors)initWithColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variationValue:(double)value;
- (UIColor)vibrancyEffectColor;
- (id)copyWithVariation:(double)variation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleDiscreteColors

- (PUIStyleDiscreteColors)initWithColors:(id)colors vibrant:(BOOL)vibrant supportsVariation:(BOOL)variation variationValue:(double)value
{
  variationCopy = variation;
  colorsCopy = colors;
  v15.receiver = self;
  v15.super_class = PUIStyleDiscreteColors;
  v11 = [(PUIStyleDiscreteColors *)&v15 init];
  if (v11)
  {
    v12 = [colorsCopy copy];
    colors = v11->_colors;
    v11->_colors = v12;

    v11->_vibrant = vibrant;
    v11->_supportsVariation = variationCopy;
    if (variationCopy)
    {
      v11->_variation = value;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleDiscreteColors *)self isEqualToStyle:equalCopy ignoringVariation:variationCopy];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style ignoringVariation:(BOOL)variation
{
  variationCopy = variation;
  styleCopy = style;
  v7 = styleCopy;
  v12 = 1;
  if (styleCopy != self)
  {
    if (!styleCopy || !_PUIStyleCompareUsingIdentifiers(self, styleCopy, variationCopy) || (-[PUIStyleDiscreteColors colors](self, "colors"), v8 = objc_claimAutoreleasedReturnValue(), [v7 colors], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToArray:", v9), v9, v8, !v10) || (v11 = -[PUIStyleDiscreteColors isVibrant](self, "isVibrant"), v11 != objc_msgSend(v7, "isVibrant")) || self->_supportsVariation != v7[8] || !variationCopy && self->_supportsVariation && !BSFloatEqualToFloat())
    {
      v12 = 0;
    }
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

  v8 = [v3 hash];

  return v8;
}

- (NSString)nonVariatedIdentifier
{
  v3 = NSStringFromPUIStyleType([(PUIStyleDiscreteColors *)self type]);
  colors = [(PUIStyleDiscreteColors *)self colors];
  v5 = [colors bs_map:&__block_literal_global_29];
  v6 = [v5 componentsJoinedByString:@"_"];
  v7 = [v3 stringByAppendingFormat:@"-%@", v6];

  return v7;
}

uint64_t __47__PUIStyleDiscreteColors_nonVariatedIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

- (NSString)identifier
{
  allowsVariation = [(PUIStyleDiscreteColors *)self allowsVariation];
  nonVariatedIdentifier = [(PUIStyleDiscreteColors *)self nonVariatedIdentifier];
  if (allowsVariation)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_variation];
    v6 = [nonVariatedIdentifier stringByAppendingFormat:@":%@", v5];

    nonVariatedIdentifier = v6;
  }

  return nonVariatedIdentifier;
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
      v15 = __48__PUIStyleDiscreteColors_variationAppliedColors__block_invoke;
      v16 = &unk_1E7854460;
      selfCopy = self;
      v5 = &v13;
    }

    else
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __48__PUIStyleDiscreteColors_variationAppliedColors__block_invoke_2;
      v11 = &unk_1E7854460;
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

id __48__PUIStyleDiscreteColors_variationAppliedColors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PUIColorValues alloc] initWithColor:v3];

  v5 = *(*(a1 + 32) + 16) * -0.25;
  v6 = [(PUIColorValues *)v4 hslValues];
  [v6 luminance];
  v8 = v7;

  v9 = fmax(v8 + v5, 0.0);
  if (v9 > 1.0)
  {
    v9 = 1.0;
  }

  v10 = [(PUIColorValues *)v4 copyWithLuminance:v9];
  v11 = [v10 color];

  return v11;
}

- (id)copyWithVariation:(double)variation
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:variation];
}

- (UIColor)vibrancyEffectColor
{
  if ([(PUIStyleDiscreteColors *)self allowsVariation])
  {
    variationAppliedColors = [(PUIStyleDiscreteColors *)self variationAppliedColors];
    firstObject = [variationAppliedColors firstObject];
  }

  else
  {
    firstObject = [(NSArray *)self->_colors firstObject];
  }

  return firstObject;
}

- (PUIStyleDiscreteColors)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colors"];
  v6 = [coderCopy decodeBoolForKey:@"vibrant"];
  v7 = [coderCopy decodeBoolForKey:@"supportsVariation"];
  [coderCopy decodeDoubleForKey:@"variation"];
  v9 = v8;
  v10 = [coderCopy decodeBoolForKey:@"needsToResolveVariation"];

  v11 = [[PUIStyleDiscreteColors alloc] initWithColors:v5 vibrant:v6 supportsVariation:v7 variationValue:v9];
  [(PUIStyleDiscreteColors *)v11 setNeedsToResolveVariationFromColorStore:v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  colors = self->_colors;
  coderCopy = coder;
  [coderCopy encodeObject:colors forKey:@"colors"];
  [coderCopy encodeBool:self->_vibrant forKey:@"vibrant"];
  [coderCopy encodeBool:self->_supportsVariation forKey:@"supportsVariation"];
  [coderCopy encodeDouble:@"variation" forKey:self->_variation];
  [coderCopy encodeBool:self->_needsToResolveVariationFromColorStore forKey:@"needsToResolveVariation"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithColors:self->_colors vibrant:self->_vibrant supportsVariation:self->_supportsVariation variationValue:self->_variation];
  [v4 setNeedsToResolveVariationFromColorStore:self->_needsToResolveVariationFromColorStore];
  return v4;
}

@end