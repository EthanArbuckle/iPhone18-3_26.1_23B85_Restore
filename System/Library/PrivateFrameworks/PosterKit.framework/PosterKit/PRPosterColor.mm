@interface PRPosterColor
+ (PRPosterColor)vibrantMaterialColor;
+ (PRPosterColor)vibrantMonochromeColor;
+ (id)identifierForColorWithValues:(id)a3 style:(unint64_t)a4;
+ (id)styleStringForStyle:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToColor:(id)a3;
- (BOOL)isLUTBackedColor;
- (BOOL)isVibrantMaterialColor;
- (BOOL)isVibrantMonochromeColor;
- (BOOL)requiresVibrancyEffectView;
- (NSString)description;
- (PRPosterColor)initWithBSXPCCoder:(id)a3;
- (PRPosterColor)initWithCoder:(id)a3;
- (PRPosterColor)initWithColor:(id)a3 preferredStyle:(unint64_t)a4 localizedName:(id)a5 suggested:(BOOL)a6;
- (PRPosterColor)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6 preferredStyle:(unint64_t)a7 localizedName:(id)a8 suggested:(BOOL)a9;
- (PRPosterColor)initWithIdentifier:(id)a3 color:(id)a4 colorValues:(id)a5 preferredStyle:(unint64_t)a6 localizedName:(id)a7 suggested:(BOOL)a8;
- (PRPosterColor)initWithIdentifier:(id)a3 color:(id)a4 preferredStyle:(unint64_t)a5;
- (PRPosterColor)initWithLUTIdentifier:(id)a3;
- (PRPosterColor)initWithPosterColor:(id)a3;
- (PRPosterColorHSLValues)hslValues;
- (PRPosterColorValues)hsbValues;
- (id)colors;
- (id)contentStylePreferringVibrancy:(BOOL)a3;
- (id)copyAsSuggestedColor;
- (id)copyWithAlpha:(double)a3;
- (id)copyWithLuminance:(double)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)lutIdentifier;
- (id)vibrancyConfiguration;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterColor

+ (PRPosterColor)vibrantMaterialColor
{
  if (vibrantMaterialColor_onceToken != -1)
  {
    +[PRPosterColor vibrantMaterialColor];
  }

  v3 = vibrantMaterialColor_vibrantMaterialColor;

  return v3;
}

void __37__PRPosterColor_vibrantMaterialColor__block_invoke()
{
  v0 = [PRPosterColor alloc];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
  v1 = [(PRPosterColor *)v0 initWithIdentifier:@"vibrantMaterialColor" color:v3 preferredStyle:2];
  v2 = vibrantMaterialColor_vibrantMaterialColor;
  vibrantMaterialColor_vibrantMaterialColor = v1;
}

+ (PRPosterColor)vibrantMonochromeColor
{
  if (vibrantMonochromeColor_onceToken != -1)
  {
    +[PRPosterColor vibrantMonochromeColor];
  }

  v3 = vibrantMonochromeColor_vibrantMonochromeColor;

  return v3;
}

void __39__PRPosterColor_vibrantMonochromeColor__block_invoke()
{
  v0 = [PRPosterColor alloc];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [(PRPosterColor *)v0 initWithIdentifier:@"vibrantMonochromeColor" color:v3 preferredStyle:2];
  v2 = vibrantMonochromeColor_vibrantMonochromeColor;
  vibrantMonochromeColor_vibrantMonochromeColor = v1;
}

+ (id)styleStringForStyle:(unint64_t)a3
{
  v3 = @"default";
  if (a3 == 1)
  {
    v3 = @"regular";
  }

  if (a3 == 2)
  {
    return @"vibrant";
  }

  else
  {
    return v3;
  }
}

+ (id)identifierForColorWithValues:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() styleStringForStyle:a4];
  v7 = [v5 identifier];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(PRPosterColor *)self color];
  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PRPosterColor;
    v6 = [(PRPosterColor *)&v9 forwardingTargetForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (PRPosterColor)initWithHue:(double)a3 saturation:(double)a4 luminance:(double)a5 alpha:(double)a6 preferredStyle:(unint64_t)a7 localizedName:(id)a8 suggested:(BOOL)a9
{
  v9 = a9;
  v16 = a8;
  v17 = [[PRPosterColorValues alloc] initWithHue:a3 saturation:a4 luminance:a5 alpha:a6];
  v18 = [(PRPosterColorValues *)v17 color];
  v19 = [objc_opt_class() identifierForColorWithValues:v17 style:a7];
  v20 = [(PRPosterColor *)self initWithIdentifier:v19 color:v18 colorValues:v17 preferredStyle:a7 localizedName:v16 suggested:v9];

  return v20;
}

- (PRPosterColor)initWithColor:(id)a3 preferredStyle:(unint64_t)a4 localizedName:(id)a5 suggested:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[PRPosterColorValues alloc] initWithColor:v11];
  v13 = [objc_opt_class() identifierForColorWithValues:v12 style:a4];
  v14 = [(PRPosterColor *)self initWithIdentifier:v13 color:v11 colorValues:v12 preferredStyle:a4 localizedName:v10 suggested:v6];

  return v14;
}

- (PRPosterColor)initWithIdentifier:(id)a3 color:(id)a4 preferredStyle:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[PRPosterColorValues alloc] initWithColor:v8];
  v11 = [(PRPosterColor *)self initWithIdentifier:v9 color:v8 colorValues:v10 preferredStyle:a5];

  return v11;
}

- (PRPosterColor)initWithPosterColor:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 color];
  v7 = [v4 colorValues];
  v8 = [v4 preferredStyle];
  v9 = [v4 localizedName];
  v10 = [v4 isSuggested];

  v11 = [(PRPosterColor *)self initWithIdentifier:v5 color:v6 colorValues:v7 preferredStyle:v8 localizedName:v9 suggested:v10];
  return v11;
}

- (PRPosterColor)initWithLUTIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"lutColor-", a3];
  v5 = [(PRPosterColor *)self initWithIdentifier:v4 color:0 preferredStyle:0];

  return v5;
}

- (PRPosterColor)initWithIdentifier:(id)a3 color:(id)a4 colorValues:(id)a5 preferredStyle:(unint64_t)a6 localizedName:(id)a7 suggested:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = PRPosterColor;
  v18 = [(PRPosterColor *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    if (v15)
    {
      v21 = [v15 copy];
      color = v18->_color;
      v18->_color = v21;
    }

    else
    {
      color = [objc_opt_class() vibrantMaterialColor];
      v23 = [color color];
      v24 = v18->_color;
      v18->_color = v23;
    }

    objc_storeStrong(&v18->_colorValues, a5);
    v18->_preferredStyle = a6;
    v25 = [v17 copy];
    localizedName = v18->_localizedName;
    v18->_localizedName = v25;

    v18->_suggested = a8;
  }

  return v18;
}

- (BOOL)isVibrantMaterialColor
{
  v3 = [objc_opt_class() vibrantMaterialColor];
  LOBYTE(self) = v3 == self;

  return self;
}

- (BOOL)isVibrantMonochromeColor
{
  v3 = [objc_opt_class() vibrantMonochromeColor];
  LOBYTE(self) = v3 == self;

  return self;
}

- (BOOL)isLUTBackedColor
{
  v2 = [(PRPosterColor *)self identifier];
  v3 = [v2 hasPrefix:@"lutColor-"];

  return v3;
}

- (id)copyWithLuminance:(double)a3
{
  if ([(PRPosterColor *)self isVibrantMonochromeColor]|| [(PRPosterColor *)self isVibrantMaterialColor]|| [(PRPosterColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    v5 = [(PRPosterColor *)self colorValues];

    if (v5)
    {
      v6 = [(PRPosterColor *)self colorValues];
      v7 = [v6 hslValues];

      v8 = objc_alloc(objc_opt_class());
      [v7 hue];
      v10 = v9;
      [v7 saturation];
      v12 = v11;
      v13 = [(PRPosterColor *)self colorValues];
      [v13 alpha];
      v15 = [v8 initWithHue:-[PRPosterColor preferredStyle](self saturation:"preferredStyle") luminance:-[PRPosterColor isSuggested](self alpha:"isSuggested") preferredStyle:v10 suggested:{v12, a3, v14}];

      return v15;
    }

    else
    {
      v16 = objc_opt_class();

      return [v16 initWithPosterColor:self];
    }
  }
}

- (id)copyWithAlpha:(double)a3
{
  if ([(PRPosterColor *)self isVibrantMonochromeColor]|| [(PRPosterColor *)self isVibrantMaterialColor]|| [(PRPosterColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    v5 = [(PRPosterColor *)self color];
    v6 = [v5 colorWithAlphaComponent:a3];
    v7 = objc_alloc(objc_opt_class());
    v8 = [(PRPosterColor *)self preferredStyle];
    v9 = [(PRPosterColor *)self localizedName];
    v10 = [v7 initWithColor:v6 preferredStyle:v8 localizedName:v9 suggested:{-[PRPosterColor isSuggested](self, "isSuggested")}];

    return v10;
  }
}

- (PRPosterColorValues)hsbValues
{
  v2 = [(PRPosterColor *)self colorValues];
  v3 = [v2 hsbValues];

  return v3;
}

- (PRPosterColorHSLValues)hslValues
{
  v2 = [(PRPosterColor *)self colorValues];
  v3 = [v2 hslValues];

  return v3;
}

- (id)lutIdentifier
{
  if ([(PRPosterColor *)self isLUTBackedColor])
  {
    v3 = [(PRPosterColor *)self identifier];
    v4 = [v3 substringFromIndex:{objc_msgSend(@"lutColor-", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyAsSuggestedColor
{
  v3 = [PRPosterColor alloc];
  v4 = [(PRPosterColor *)self identifier];
  v5 = [(PRPosterColor *)self color];
  v6 = [(PRPosterColor *)self colorValues];
  v7 = [(PRPosterColor *)self preferredStyle];
  v8 = [(PRPosterColor *)self localizedName];
  v9 = [(PRPosterColor *)v3 initWithIdentifier:v4 color:v5 colorValues:v6 preferredStyle:v7 localizedName:v8 suggested:1];

  return v9;
}

- (BOOL)isEquivalentToColor:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterColor *)self identifier];
  v6 = [v4 identifier];
  v7 = BSEqualStrings();

  if (v7)
  {
    v8 = [(PRPosterColor *)self localizedName];
    v9 = [v4 localizedName];
    v10 = BSEqualStrings();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contentStylePreferringVibrancy:(BOOL)a3
{
  v3 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(PRPosterColor *)self isVibrantMaterialColor])
  {
    v5 = PRPosterContentVibrantMaterialStyle;
LABEL_5:
    v6 = objc_alloc_init(v5);
    goto LABEL_6;
  }

  if ([(PRPosterColor *)self isVibrantMonochromeColor])
  {
    v5 = PRPosterContentVibrantMonochromeStyle;
    goto LABEL_5;
  }

  if (![(PRPosterColor *)self isLUTBackedColor])
  {
    v10 = [(PRPosterColor *)self requiresVibrancyEffectView];
    if (v10 || !v3)
    {
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else if ([(PRPosterColor *)self preferredStyle])
    {
LABEL_14:
      v11 = 0;
      v12 = 0.0;
LABEL_17:
      v15 = [PRPosterContentDiscreteColorsStyle alloc];
      v16 = [(PRPosterColor *)self color];
      v19[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      if (v3)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      v6 = [(PRPosterContentDiscreteColorsStyle *)v15 initWithColors:v17 vibrant:v11 supportsVariation:1 variationValue:v18 preferredMaterialType:v12];

      [(PRPosterContentDiscreteColorsStyle *)v6 setNeedsToResolveVariationFromColorStore:1];
      goto LABEL_6;
    }

    v13 = [(PRPosterColor *)self colorValues];
    [v13 alpha];
    v12 = v14;

    v11 = 1;
    goto LABEL_17;
  }

  v8 = [PRPosterContentLUTStyle alloc];
  v9 = [(PRPosterColor *)self lutIdentifier];
  v6 = [(PRPosterContentLUTStyle *)v8 initWithLUTIdentifier:v9];

LABEL_6:

  return v6;
}

- (BOOL)requiresVibrancyEffectView
{
  v3 = [(PRPosterColor *)self colorValues];
  [v3 alpha];

  return !BSFloatIsOne() || [(PRPosterColor *)self preferredStyle]== 2;
}

- (id)vibrancyConfiguration
{
  if ([(PRPosterColor *)self isVibrantMaterialColor])
  {
    v3 = objc_alloc(MEMORY[0x1E698E810]);
    v4 = [(PRPosterColor *)self color];
    v5 = v3;
    v6 = 0;
  }

  else if ([(PRPosterColor *)self isVibrantMonochromeColor])
  {
    v7 = objc_alloc(MEMORY[0x1E698E810]);
    v4 = [(PRPosterColor *)self color];
    v5 = v7;
    v6 = 2;
  }

  else
  {
    v8 = [(PRPosterColor *)self isLUTBackedColor];
    v9 = objc_alloc(MEMORY[0x1E698E810]);
    v4 = [(PRPosterColor *)self color];
    v5 = v9;
    if (v8)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  v10 = [v5 initWithEffectType:v6 backgroundType:0 color:v4];

  return v10;
}

- (id)colors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PRPosterColor *)self color];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      if ([(PRPosterColor *)self isEquivalentToColor:v7])
      {
        v8 = [(PRPosterColor *)self isSuggested];
        v9 = v8 ^ [(PRPosterColor *)v7 isSuggested]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [(PRPosterColor *)self identifier];
  v5 = [v3 appendString:v4];

  v6 = [(PRPosterColor *)self localizedName];
  v7 = [v3 appendString:v6];

  v8 = [v3 appendBool:{-[PRPosterColor isSuggested](self, "isSuggested")}];
  v9 = [v3 hash];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__PRPosterColor_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterColor *)self identifier];
  [v8 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PRPosterColor *)self color];
  [v8 encodeObject:v5 forKey:*MEMORY[0x1E69C5448]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColor preferredStyle](self, "preferredStyle")}];
  [v8 encodeObject:v6 forKey:*MEMORY[0x1E69C5458]];

  [v8 encodeBool:self->_suggested forKey:@"suggested"];
  if (self->_localizedName)
  {
    v7 = [(PRPosterColor *)self localizedName];
    [v8 encodeObject:v7 forKey:*MEMORY[0x1E69C5450]];
  }
}

- (PRPosterColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PRPosterColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5448]];
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5458]];
      v10 = [v9 unsignedIntegerValue];

      v11 = [v4 decodeBoolForKey:@"suggested"];
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5450]];
      v13 = [[PRPosterColorValues alloc] initWithColor:v8];
      v7 = [[PRPosterColor alloc] initWithIdentifier:v5 color:v8 colorValues:v13 preferredStyle:v10 localizedName:v12 suggested:v11];

      goto LABEL_7;
    }

    v6 = +[PRPosterColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterColor *)self identifier];
  [v8 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PRPosterColor *)self color];
  [v8 encodeObject:v5 forKey:*MEMORY[0x1E69C5448]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColor preferredStyle](self, "preferredStyle")}];
  [v8 encodeObject:v6 forKey:*MEMORY[0x1E69C5458]];

  [v8 encodeBool:-[PRPosterColor isSuggested](self forKey:{"isSuggested"), @"suggested"}];
  if (self->_localizedName)
  {
    v7 = [(PRPosterColor *)self localizedName];
    [v8 encodeObject:v7 forKey:*MEMORY[0x1E69C5450]];
  }
}

- (PRPosterColor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PRPosterColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = objc_opt_self();
      v9 = [v4 decodeObjectOfClass:v8 forKey:*MEMORY[0x1E69C5448]];

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5458]];
      v11 = [v10 unsignedIntegerValue];

      v12 = [v4 decodeBoolForKey:@"suggested"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5450]];
      v14 = [[PRPosterColorValues alloc] initWithColor:v9];
      v7 = [[PRPosterColor alloc] initWithIdentifier:v5 color:v9 colorValues:v14 preferredStyle:v11 localizedName:v13 suggested:v12];

      goto LABEL_7;
    }

    v6 = +[PRPosterColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v10 = a3;
  v4 = [(PRPosterColor *)self identifier];
  v5 = [v10 appendObject:v4 withName:@"identifier"];

  v6 = [(PRPosterColor *)self color];
  v7 = [v10 appendObject:v6 withName:@"color"];

  v8 = [v10 appendUnsignedInteger:-[PRPosterColor preferredStyle](self withName:{"preferredStyle"), @"preferredStyle"}];
  v9 = [v10 appendBool:-[PRPosterColor isSuggested](self withName:"isSuggested") ifEqualTo:{@"isSuggested", 1}];
}

@end