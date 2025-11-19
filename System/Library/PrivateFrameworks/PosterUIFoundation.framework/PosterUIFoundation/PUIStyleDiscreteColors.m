@interface PUIStyleDiscreteColors
- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4;
- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4;
- (NSArray)variationAppliedColors;
- (NSString)identifier;
- (NSString)nonVariatedIdentifier;
- (PUIStyleDiscreteColors)initWithCoder:(id)a3;
- (PUIStyleDiscreteColors)initWithColors:(id)a3 vibrant:(BOOL)a4 supportsVariation:(BOOL)a5 variationValue:(double)a6;
- (UIColor)vibrancyEffectColor;
- (id)copyWithVariation:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIStyleDiscreteColors

- (PUIStyleDiscreteColors)initWithColors:(id)a3 vibrant:(BOOL)a4 supportsVariation:(BOOL)a5 variationValue:(double)a6
{
  v7 = a5;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = PUIStyleDiscreteColors;
  v11 = [(PUIStyleDiscreteColors *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    colors = v11->_colors;
    v11->_colors = v12;

    v11->_vibrant = a4;
    v11->_supportsVariation = v7;
    if (v7)
    {
      v11->_variation = a6;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStyleDiscreteColors *)self isEqualToStyle:v6 ignoringVariation:v4];
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)a3 ignoringVariation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v12 = 1;
  if (v6 != self)
  {
    if (!v6 || !_PUIStyleCompareUsingIdentifiers(self, v6, v4) || (-[PUIStyleDiscreteColors colors](self, "colors"), v8 = objc_claimAutoreleasedReturnValue(), [v7 colors], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToArray:", v9), v9, v8, !v10) || (v11 = -[PUIStyleDiscreteColors isVibrant](self, "isVibrant"), v11 != objc_msgSend(v7, "isVibrant")) || self->_supportsVariation != v7[8] || !v4 && self->_supportsVariation && !BSFloatEqualToFloat())
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
  v4 = [(PUIStyleDiscreteColors *)self colors];
  v5 = [v4 bs_map:&__block_literal_global_29];
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
  v3 = [(PUIStyleDiscreteColors *)self allowsVariation];
  v4 = [(PUIStyleDiscreteColors *)self nonVariatedIdentifier];
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_variation];
    v6 = [v4 stringByAppendingFormat:@":%@", v5];

    v4 = v6;
  }

  return v4;
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
      v17 = self;
      v5 = &v13;
    }

    else
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __48__PUIStyleDiscreteColors_variationAppliedColors__block_invoke_2;
      v11 = &unk_1E7854460;
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

- (id)copyWithVariation:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  colors = self->_colors;
  vibrant = self->_vibrant;
  supportsVariation = self->_supportsVariation;

  return [v5 initWithColors:colors vibrant:vibrant supportsVariation:supportsVariation variationValue:a3];
}

- (UIColor)vibrancyEffectColor
{
  if ([(PUIStyleDiscreteColors *)self allowsVariation])
  {
    v3 = [(PUIStyleDiscreteColors *)self variationAppliedColors];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [(NSArray *)self->_colors firstObject];
  }

  return v4;
}

- (PUIStyleDiscreteColors)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colors"];
  v6 = [v4 decodeBoolForKey:@"vibrant"];
  v7 = [v4 decodeBoolForKey:@"supportsVariation"];
  [v4 decodeDoubleForKey:@"variation"];
  v9 = v8;
  v10 = [v4 decodeBoolForKey:@"needsToResolveVariation"];

  v11 = [[PUIStyleDiscreteColors alloc] initWithColors:v5 vibrant:v6 supportsVariation:v7 variationValue:v9];
  [(PUIStyleDiscreteColors *)v11 setNeedsToResolveVariationFromColorStore:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  colors = self->_colors;
  v5 = a3;
  [v5 encodeObject:colors forKey:@"colors"];
  [v5 encodeBool:self->_vibrant forKey:@"vibrant"];
  [v5 encodeBool:self->_supportsVariation forKey:@"supportsVariation"];
  [v5 encodeDouble:@"variation" forKey:self->_variation];
  [v5 encodeBool:self->_needsToResolveVariationFromColorStore forKey:@"needsToResolveVariation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithColors:self->_colors vibrant:self->_vibrant supportsVariation:self->_supportsVariation variationValue:self->_variation];
  [v4 setNeedsToResolveVariationFromColorStore:self->_needsToResolveVariationFromColorStore];
  return v4;
}

@end