@interface PRPosterColor
+ (PRPosterColor)vibrantMaterialColor;
+ (PRPosterColor)vibrantMonochromeColor;
+ (id)identifierForColorWithValues:(id)values style:(unint64_t)style;
+ (id)styleStringForStyle:(unint64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToColor:(id)color;
- (BOOL)isLUTBackedColor;
- (BOOL)isVibrantMaterialColor;
- (BOOL)isVibrantMonochromeColor;
- (BOOL)requiresVibrancyEffectView;
- (NSString)description;
- (PRPosterColor)initWithBSXPCCoder:(id)coder;
- (PRPosterColor)initWithCoder:(id)coder;
- (PRPosterColor)initWithColor:(id)color preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PRPosterColor)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PRPosterColor)initWithIdentifier:(id)identifier color:(id)color colorValues:(id)values preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PRPosterColor)initWithIdentifier:(id)identifier color:(id)color preferredStyle:(unint64_t)style;
- (PRPosterColor)initWithLUTIdentifier:(id)identifier;
- (PRPosterColor)initWithPosterColor:(id)color;
- (PRPosterColorHSLValues)hslValues;
- (PRPosterColorValues)hsbValues;
- (id)colors;
- (id)contentStylePreferringVibrancy:(BOOL)vibrancy;
- (id)copyAsSuggestedColor;
- (id)copyWithAlpha:(double)alpha;
- (id)copyWithLuminance:(double)luminance;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)lutIdentifier;
- (id)vibrancyConfiguration;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

+ (id)styleStringForStyle:(unint64_t)style
{
  v3 = @"default";
  if (style == 1)
  {
    v3 = @"regular";
  }

  if (style == 2)
  {
    return @"vibrant";
  }

  else
  {
    return v3;
  }
}

+ (id)identifierForColorWithValues:(id)values style:(unint64_t)style
{
  valuesCopy = values;
  v6 = [objc_opt_class() styleStringForStyle:style];
  identifier = [valuesCopy identifier];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, identifier];

  return v8;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  color = [(PRPosterColor *)self color];
  if (objc_opt_respondsToSelector())
  {
    v6 = color;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PRPosterColor;
    v6 = [(PRPosterColor *)&v9 forwardingTargetForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (PRPosterColor)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  nameCopy = name;
  v17 = [[PRPosterColorValues alloc] initWithHue:hue saturation:saturation luminance:luminance alpha:alpha];
  color = [(PRPosterColorValues *)v17 color];
  v19 = [objc_opt_class() identifierForColorWithValues:v17 style:style];
  v20 = [(PRPosterColor *)self initWithIdentifier:v19 color:color colorValues:v17 preferredStyle:style localizedName:nameCopy suggested:suggestedCopy];

  return v20;
}

- (PRPosterColor)initWithColor:(id)color preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  nameCopy = name;
  colorCopy = color;
  v12 = [[PRPosterColorValues alloc] initWithColor:colorCopy];
  v13 = [objc_opt_class() identifierForColorWithValues:v12 style:style];
  v14 = [(PRPosterColor *)self initWithIdentifier:v13 color:colorCopy colorValues:v12 preferredStyle:style localizedName:nameCopy suggested:suggestedCopy];

  return v14;
}

- (PRPosterColor)initWithIdentifier:(id)identifier color:(id)color preferredStyle:(unint64_t)style
{
  colorCopy = color;
  identifierCopy = identifier;
  v10 = [[PRPosterColorValues alloc] initWithColor:colorCopy];
  v11 = [(PRPosterColor *)self initWithIdentifier:identifierCopy color:colorCopy colorValues:v10 preferredStyle:style];

  return v11;
}

- (PRPosterColor)initWithPosterColor:(id)color
{
  colorCopy = color;
  identifier = [colorCopy identifier];
  color = [colorCopy color];
  colorValues = [colorCopy colorValues];
  preferredStyle = [colorCopy preferredStyle];
  localizedName = [colorCopy localizedName];
  isSuggested = [colorCopy isSuggested];

  v11 = [(PRPosterColor *)self initWithIdentifier:identifier color:color colorValues:colorValues preferredStyle:preferredStyle localizedName:localizedName suggested:isSuggested];
  return v11;
}

- (PRPosterColor)initWithLUTIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"lutColor-", identifier];
  v5 = [(PRPosterColor *)self initWithIdentifier:identifier color:0 preferredStyle:0];

  return v5;
}

- (PRPosterColor)initWithIdentifier:(id)identifier color:(id)color colorValues:(id)values preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  identifierCopy = identifier;
  colorCopy = color;
  valuesCopy = values;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = PRPosterColor;
  v18 = [(PRPosterColor *)&v28 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    if (colorCopy)
    {
      v21 = [colorCopy copy];
      color = v18->_color;
      v18->_color = v21;
    }

    else
    {
      color = [objc_opt_class() vibrantMaterialColor];
      color = [color color];
      v24 = v18->_color;
      v18->_color = color;
    }

    objc_storeStrong(&v18->_colorValues, values);
    v18->_preferredStyle = style;
    v25 = [nameCopy copy];
    localizedName = v18->_localizedName;
    v18->_localizedName = v25;

    v18->_suggested = suggested;
  }

  return v18;
}

- (BOOL)isVibrantMaterialColor
{
  vibrantMaterialColor = [objc_opt_class() vibrantMaterialColor];
  LOBYTE(self) = vibrantMaterialColor == self;

  return self;
}

- (BOOL)isVibrantMonochromeColor
{
  vibrantMonochromeColor = [objc_opt_class() vibrantMonochromeColor];
  LOBYTE(self) = vibrantMonochromeColor == self;

  return self;
}

- (BOOL)isLUTBackedColor
{
  identifier = [(PRPosterColor *)self identifier];
  v3 = [identifier hasPrefix:@"lutColor-"];

  return v3;
}

- (id)copyWithLuminance:(double)luminance
{
  if ([(PRPosterColor *)self isVibrantMonochromeColor]|| [(PRPosterColor *)self isVibrantMaterialColor]|| [(PRPosterColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    colorValues = [(PRPosterColor *)self colorValues];

    if (colorValues)
    {
      colorValues2 = [(PRPosterColor *)self colorValues];
      hslValues = [colorValues2 hslValues];

      v8 = objc_alloc(objc_opt_class());
      [hslValues hue];
      v10 = v9;
      [hslValues saturation];
      v12 = v11;
      colorValues3 = [(PRPosterColor *)self colorValues];
      [colorValues3 alpha];
      v15 = [v8 initWithHue:-[PRPosterColor preferredStyle](self saturation:"preferredStyle") luminance:-[PRPosterColor isSuggested](self alpha:"isSuggested") preferredStyle:v10 suggested:{v12, luminance, v14}];

      return v15;
    }

    else
    {
      v16 = objc_opt_class();

      return [v16 initWithPosterColor:self];
    }
  }
}

- (id)copyWithAlpha:(double)alpha
{
  if ([(PRPosterColor *)self isVibrantMonochromeColor]|| [(PRPosterColor *)self isVibrantMaterialColor]|| [(PRPosterColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    color = [(PRPosterColor *)self color];
    v6 = [color colorWithAlphaComponent:alpha];
    v7 = objc_alloc(objc_opt_class());
    preferredStyle = [(PRPosterColor *)self preferredStyle];
    localizedName = [(PRPosterColor *)self localizedName];
    v10 = [v7 initWithColor:v6 preferredStyle:preferredStyle localizedName:localizedName suggested:{-[PRPosterColor isSuggested](self, "isSuggested")}];

    return v10;
  }
}

- (PRPosterColorValues)hsbValues
{
  colorValues = [(PRPosterColor *)self colorValues];
  hsbValues = [colorValues hsbValues];

  return hsbValues;
}

- (PRPosterColorHSLValues)hslValues
{
  colorValues = [(PRPosterColor *)self colorValues];
  hslValues = [colorValues hslValues];

  return hslValues;
}

- (id)lutIdentifier
{
  if ([(PRPosterColor *)self isLUTBackedColor])
  {
    identifier = [(PRPosterColor *)self identifier];
    v4 = [identifier substringFromIndex:{objc_msgSend(@"lutColor-", "length")}];
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
  identifier = [(PRPosterColor *)self identifier];
  color = [(PRPosterColor *)self color];
  colorValues = [(PRPosterColor *)self colorValues];
  preferredStyle = [(PRPosterColor *)self preferredStyle];
  localizedName = [(PRPosterColor *)self localizedName];
  v9 = [(PRPosterColor *)v3 initWithIdentifier:identifier color:color colorValues:colorValues preferredStyle:preferredStyle localizedName:localizedName suggested:1];

  return v9;
}

- (BOOL)isEquivalentToColor:(id)color
{
  colorCopy = color;
  identifier = [(PRPosterColor *)self identifier];
  identifier2 = [colorCopy identifier];
  v7 = BSEqualStrings();

  if (v7)
  {
    localizedName = [(PRPosterColor *)self localizedName];
    localizedName2 = [colorCopy localizedName];
    v10 = BSEqualStrings();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contentStylePreferringVibrancy:(BOOL)vibrancy
{
  vibrancyCopy = vibrancy;
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
    requiresVibrancyEffectView = [(PRPosterColor *)self requiresVibrancyEffectView];
    if (requiresVibrancyEffectView || !vibrancyCopy)
    {
      if (!requiresVibrancyEffectView)
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
      color = [(PRPosterColor *)self color];
      v19[0] = color;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      if (vibrancyCopy)
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

    colorValues = [(PRPosterColor *)self colorValues];
    [colorValues alpha];
    v12 = v14;

    v11 = 1;
    goto LABEL_17;
  }

  v8 = [PRPosterContentLUTStyle alloc];
  lutIdentifier = [(PRPosterColor *)self lutIdentifier];
  v6 = [(PRPosterContentLUTStyle *)v8 initWithLUTIdentifier:lutIdentifier];

LABEL_6:

  return v6;
}

- (BOOL)requiresVibrancyEffectView
{
  colorValues = [(PRPosterColor *)self colorValues];
  [colorValues alpha];

  return !BSFloatIsOne() || [(PRPosterColor *)self preferredStyle]== 2;
}

- (id)vibrancyConfiguration
{
  if ([(PRPosterColor *)self isVibrantMaterialColor])
  {
    v3 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PRPosterColor *)self color];
    v5 = v3;
    v6 = 0;
  }

  else if ([(PRPosterColor *)self isVibrantMonochromeColor])
  {
    v7 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PRPosterColor *)self color];
    v5 = v7;
    v6 = 2;
  }

  else
  {
    isLUTBackedColor = [(PRPosterColor *)self isLUTBackedColor];
    v9 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PRPosterColor *)self color];
    v5 = v9;
    if (isLUTBackedColor)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  v10 = [v5 initWithEffectType:v6 backgroundType:0 color:color];

  return v10;
}

- (id)colors
{
  v5[1] = *MEMORY[0x1E69E9840];
  color = [(PRPosterColor *)self color];
  v5[0] = color;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if ([(PRPosterColor *)self isEquivalentToColor:v7])
      {
        isSuggested = [(PRPosterColor *)self isSuggested];
        v9 = isSuggested ^ [(PRPosterColor *)v7 isSuggested]^ 1;
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
  identifier = [(PRPosterColor *)self identifier];
  v5 = [v3 appendString:identifier];

  localizedName = [(PRPosterColor *)self localizedName];
  v7 = [v3 appendString:localizedName];

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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PRPosterColor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  color = [(PRPosterColor *)self color];
  [coderCopy encodeObject:color forKey:*MEMORY[0x1E69C5448]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColor preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C5458]];

  [coderCopy encodeBool:self->_suggested forKey:@"suggested"];
  if (self->_localizedName)
  {
    localizedName = [(PRPosterColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:*MEMORY[0x1E69C5450]];
  }
}

- (PRPosterColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PRPosterColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5448]];
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5458]];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      v11 = [coderCopy decodeBoolForKey:@"suggested"];
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5450]];
      v13 = [[PRPosterColorValues alloc] initWithColor:v8];
      v7 = [[PRPosterColor alloc] initWithIdentifier:v5 color:v8 colorValues:v13 preferredStyle:unsignedIntegerValue localizedName:v12 suggested:v11];

      goto LABEL_7;
    }

    v6 = +[PRPosterColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PRPosterColor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  color = [(PRPosterColor *)self color];
  [coderCopy encodeObject:color forKey:*MEMORY[0x1E69C5448]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColor preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C5458]];

  [coderCopy encodeBool:-[PRPosterColor isSuggested](self forKey:{"isSuggested"), @"suggested"}];
  if (self->_localizedName)
  {
    localizedName = [(PRPosterColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:*MEMORY[0x1E69C5450]];
  }
}

- (PRPosterColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PRPosterColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = objc_opt_self();
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:*MEMORY[0x1E69C5448]];

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5458]];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      v12 = [coderCopy decodeBoolForKey:@"suggested"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5450]];
      v14 = [[PRPosterColorValues alloc] initWithColor:v9];
      v7 = [[PRPosterColor alloc] initWithIdentifier:v5 color:v9 colorValues:v14 preferredStyle:unsignedIntegerValue localizedName:v13 suggested:v12];

      goto LABEL_7;
    }

    v6 = +[PRPosterColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PRPosterColor *)self identifier];
  v5 = [formatterCopy appendObject:identifier withName:@"identifier"];

  color = [(PRPosterColor *)self color];
  v7 = [formatterCopy appendObject:color withName:@"color"];

  v8 = [formatterCopy appendUnsignedInteger:-[PRPosterColor preferredStyle](self withName:{"preferredStyle"), @"preferredStyle"}];
  v9 = [formatterCopy appendBool:-[PRPosterColor isSuggested](self withName:"isSuggested") ifEqualTo:{@"isSuggested", 1}];
}

@end