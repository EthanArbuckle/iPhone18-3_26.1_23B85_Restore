@interface PUIStyleColor
+ (PUIStyleColor)vibrantMaterialColor;
+ (PUIStyleColor)vibrantMonochromeColor;
+ (id)identifierForColorWithValues:(id)values style:(unint64_t)style;
+ (id)styleStringForStyle:(unint64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToColor:(id)color;
- (BOOL)isLUTBackedColor;
- (BOOL)isVibrantMaterialColor;
- (BOOL)isVibrantMonochromeColor;
- (BOOL)requiresVibrancyEffectView;
- (NSString)description;
- (PUIStyleColor)initWithBSXPCCoder:(id)coder;
- (PUIStyleColor)initWithCoder:(id)coder;
- (PUIStyleColor)initWithColor:(id)color preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PUIStyleColor)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PUIStyleColor)initWithIdentifier:(id)identifier color:(id)color colorValues:(id)values preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested;
- (PUIStyleColor)initWithIdentifier:(id)identifier color:(id)color preferredStyle:(unint64_t)style;
- (PUIStyleColor)initWithLUTIdentifier:(id)identifier;
- (PUIStyleColor)initWithPosterColor:(id)color;
- (id)colors;
- (id)contentStylePreferringVibrancy:(BOOL)vibrancy;
- (id)copyAsSuggestedColor;
- (id)copyWithAlpha:(double)alpha;
- (id)copyWithLuminance:(double)luminance;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)hsbValues;
- (id)hslValues;
- (id)lutIdentifier;
- (id)vibrancyConfiguration;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStyleColor

+ (PUIStyleColor)vibrantMaterialColor
{
  if (vibrantMaterialColor_onceToken != -1)
  {
    +[PUIStyleColor vibrantMaterialColor];
  }

  v3 = vibrantMaterialColor_vibrantMaterialColor;

  return v3;
}

void __37__PUIStyleColor_vibrantMaterialColor__block_invoke()
{
  v0 = [PUIStyleColor alloc];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
  v1 = [(PUIStyleColor *)v0 initWithIdentifier:@"vibrantMaterialColor" color:v3 preferredStyle:2];
  v2 = vibrantMaterialColor_vibrantMaterialColor;
  vibrantMaterialColor_vibrantMaterialColor = v1;
}

+ (PUIStyleColor)vibrantMonochromeColor
{
  if (vibrantMonochromeColor_onceToken != -1)
  {
    +[PUIStyleColor vibrantMonochromeColor];
  }

  v3 = vibrantMonochromeColor_vibrantMonochromeColor;

  return v3;
}

void __39__PUIStyleColor_vibrantMonochromeColor__block_invoke()
{
  v0 = [PUIStyleColor alloc];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [(PUIStyleColor *)v0 initWithIdentifier:@"vibrantMonochromeColor" color:v3 preferredStyle:2];
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
  color = [(PUIStyleColor *)self color];
  if (objc_opt_respondsToSelector())
  {
    v6 = color;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PUIStyleColor;
    v6 = [(PUIStyleColor *)&v9 forwardingTargetForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (PUIStyleColor)initWithHue:(double)hue saturation:(double)saturation luminance:(double)luminance alpha:(double)alpha preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  nameCopy = name;
  v17 = [[PUIColorValues alloc] initWithHue:hue saturation:saturation luminance:luminance alpha:alpha];
  color = [(PUIColorValues *)v17 color];
  v19 = [objc_opt_class() identifierForColorWithValues:v17 style:style];
  v20 = [(PUIStyleColor *)self initWithIdentifier:v19 color:color colorValues:v17 preferredStyle:style localizedName:nameCopy suggested:suggestedCopy];

  return v20;
}

- (PUIStyleColor)initWithColor:(id)color preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  nameCopy = name;
  colorCopy = color;
  v12 = [[PUIColorValues alloc] initWithColor:colorCopy];
  v13 = [objc_opt_class() identifierForColorWithValues:v12 style:style];
  v14 = [(PUIStyleColor *)self initWithIdentifier:v13 color:colorCopy colorValues:v12 preferredStyle:style localizedName:nameCopy suggested:suggestedCopy];

  return v14;
}

- (PUIStyleColor)initWithIdentifier:(id)identifier color:(id)color preferredStyle:(unint64_t)style
{
  colorCopy = color;
  identifierCopy = identifier;
  v10 = [[PUIColorValues alloc] initWithColor:colorCopy];
  v11 = [(PUIStyleColor *)self initWithIdentifier:identifierCopy color:colorCopy colorValues:v10 preferredStyle:style];

  return v11;
}

- (PUIStyleColor)initWithPosterColor:(id)color
{
  colorCopy = color;
  identifier = [colorCopy identifier];
  color = [colorCopy color];
  colorValues = [colorCopy colorValues];
  preferredStyle = [colorCopy preferredStyle];
  localizedName = [colorCopy localizedName];
  isSuggested = [colorCopy isSuggested];

  v11 = [(PUIStyleColor *)self initWithIdentifier:identifier color:color colorValues:colorValues preferredStyle:preferredStyle localizedName:localizedName suggested:isSuggested];
  return v11;
}

- (PUIStyleColor)initWithLUTIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"lutColor-", identifier];
  v5 = [(PUIStyleColor *)self initWithIdentifier:identifier color:0 preferredStyle:0];

  return v5;
}

- (PUIStyleColor)initWithIdentifier:(id)identifier color:(id)color colorValues:(id)values preferredStyle:(unint64_t)style localizedName:(id)name suggested:(BOOL)suggested
{
  identifierCopy = identifier;
  colorCopy = color;
  valuesCopy = values;
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = PUIStyleColor;
  v18 = [(PUIStyleColor *)&v28 init];
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
  identifier = [(PUIStyleColor *)self identifier];
  v3 = [identifier hasPrefix:@"lutColor-"];

  return v3;
}

- (id)copyWithLuminance:(double)luminance
{
  if ([(PUIStyleColor *)self isVibrantMonochromeColor]|| [(PUIStyleColor *)self isVibrantMaterialColor]|| [(PUIStyleColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    colorValues = [(PUIStyleColor *)self colorValues];

    if (colorValues)
    {
      colorValues2 = [(PUIStyleColor *)self colorValues];
      hslValues = [colorValues2 hslValues];

      v8 = objc_alloc(objc_opt_class());
      [hslValues hue];
      v10 = v9;
      [hslValues saturation];
      v12 = v11;
      colorValues3 = [(PUIStyleColor *)self colorValues];
      [colorValues3 alpha];
      v15 = [v8 initWithHue:-[PUIStyleColor preferredStyle](self saturation:"preferredStyle") luminance:-[PUIStyleColor isSuggested](self alpha:"isSuggested") preferredStyle:v10 suggested:{v12, luminance, v14}];

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
  if ([(PUIStyleColor *)self isVibrantMonochromeColor]|| [(PUIStyleColor *)self isVibrantMaterialColor]|| [(PUIStyleColor *)self isLUTBackedColor])
  {

    return self;
  }

  else
  {
    color = [(PUIStyleColor *)self color];
    v6 = [color colorWithAlphaComponent:alpha];
    v7 = objc_alloc(objc_opt_class());
    preferredStyle = [(PUIStyleColor *)self preferredStyle];
    localizedName = [(PUIStyleColor *)self localizedName];
    v10 = [v7 initWithColor:v6 preferredStyle:preferredStyle localizedName:localizedName suggested:{-[PUIStyleColor isSuggested](self, "isSuggested")}];

    return v10;
  }
}

- (id)hsbValues
{
  colorValues = [(PUIStyleColor *)self colorValues];
  hsbValues = [colorValues hsbValues];

  return hsbValues;
}

- (id)hslValues
{
  colorValues = [(PUIStyleColor *)self colorValues];
  hslValues = [colorValues hslValues];

  return hslValues;
}

- (id)lutIdentifier
{
  if ([(PUIStyleColor *)self isLUTBackedColor])
  {
    identifier = [(PUIStyleColor *)self identifier];
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
  v3 = [PUIStyleColor alloc];
  identifier = [(PUIStyleColor *)self identifier];
  color = [(PUIStyleColor *)self color];
  colorValues = [(PUIStyleColor *)self colorValues];
  preferredStyle = [(PUIStyleColor *)self preferredStyle];
  localizedName = [(PUIStyleColor *)self localizedName];
  v9 = [(PUIStyleColor *)v3 initWithIdentifier:identifier color:color colorValues:colorValues preferredStyle:preferredStyle localizedName:localizedName suggested:1];

  return v9;
}

- (BOOL)isEquivalentToColor:(id)color
{
  colorCopy = color;
  identifier = [(PUIStyleColor *)self identifier];
  identifier2 = [colorCopy identifier];
  v7 = BSEqualStrings();

  if (v7)
  {
    localizedName = [(PUIStyleColor *)self localizedName];
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
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(PUIStyleColor *)self isVibrantMaterialColor])
  {
    v5 = PUIStyleVibrantMaterial;
LABEL_5:
    v6 = objc_alloc_init(v5);
    goto LABEL_6;
  }

  if ([(PUIStyleColor *)self isVibrantMonochromeColor])
  {
    v5 = PUIStyleVibrantMonochrome;
    goto LABEL_5;
  }

  if ([(PUIStyleColor *)self isLUTBackedColor])
  {
    v8 = [PUIStyleLUT alloc];
    lutIdentifier = [(PUIStyleColor *)self lutIdentifier];
    v6 = [(PUIStyleLUT *)v8 initWithLUTIdentifier:lutIdentifier];

    goto LABEL_6;
  }

  requiresVibrancyEffectView = [(PUIStyleColor *)self requiresVibrancyEffectView];
  if (requiresVibrancyEffectView || !vibrancyCopy)
  {
    if (!requiresVibrancyEffectView)
    {
      goto LABEL_14;
    }

LABEL_16:
    colorValues = [(PUIStyleColor *)self colorValues];
    [colorValues alpha];
    v12 = v14;

    v11 = 1;
    goto LABEL_17;
  }

  if (![(PUIStyleColor *)self preferredStyle])
  {
    goto LABEL_16;
  }

LABEL_14:
  v11 = 0;
  v12 = 0.0;
LABEL_17:
  v15 = [PUIStyleDiscreteColors alloc];
  color = [(PUIStyleColor *)self color];
  v18[0] = color;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [(PUIStyleDiscreteColors *)v15 initWithColors:v17 vibrant:v11 supportsVariation:1 variationValue:v12];

  [(PUIStyleLUT *)v6 setNeedsToResolveVariationFromColorStore:1];
LABEL_6:

  return v6;
}

- (BOOL)requiresVibrancyEffectView
{
  colorValues = [(PUIStyleColor *)self colorValues];
  [colorValues alpha];

  return !BSFloatIsOne() || [(PUIStyleColor *)self preferredStyle]== 2;
}

- (id)vibrancyConfiguration
{
  if ([(PUIStyleColor *)self isVibrantMaterialColor])
  {
    v3 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PUIStyleColor *)self color];
    v5 = v3;
    v6 = 0;
  }

  else if ([(PUIStyleColor *)self isVibrantMonochromeColor])
  {
    v7 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PUIStyleColor *)self color];
    v5 = v7;
    v6 = 2;
  }

  else
  {
    isLUTBackedColor = [(PUIStyleColor *)self isLUTBackedColor];
    v9 = objc_alloc(MEMORY[0x1E698E810]);
    color = [(PUIStyleColor *)self color];
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
  color = [(PUIStyleColor *)self color];
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
      if ([(PUIStyleColor *)self isEquivalentToColor:v7])
      {
        isSuggested = [(PUIStyleColor *)self isSuggested];
        v9 = isSuggested ^ [(PUIStyleColor *)v7 isSuggested]^ 1;
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
  identifier = [(PUIStyleColor *)self identifier];
  v5 = [v3 appendString:identifier];

  localizedName = [(PUIStyleColor *)self localizedName];
  v7 = [v3 appendString:localizedName];

  v8 = [v3 appendBool:{-[PUIStyleColor isSuggested](self, "isSuggested")}];
  v9 = [v3 hash];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__PUIStyleColor_description__block_invoke;
  v10 = &unk_1E78548A0;
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
  identifier = [(PUIStyleColor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  color = [(PUIStyleColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleColor preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:@"preferredStyle"];

  [coderCopy encodeBool:self->_suggested forKey:@"suggested"];
  if (self->_localizedName)
  {
    localizedName = [(PUIStyleColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:@"localizedName"];
  }
}

- (PUIStyleColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PUIStyleColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = objc_opt_self();
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"color"];

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      v12 = [coderCopy decodeBoolForKey:@"suggested"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
      v14 = [[PUIColorValues alloc] initWithColor:v9];
      v7 = [[PUIStyleColor alloc] initWithIdentifier:v5 color:v9 colorValues:v14 preferredStyle:unsignedIntegerValue localizedName:v13 suggested:v12];

      goto LABEL_7;
    }

    v6 = +[PUIStyleColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PUIStyleColor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  color = [(PUIStyleColor *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleColor preferredStyle](self, "preferredStyle")}];
  [coderCopy encodeObject:v6 forKey:@"preferredStyle"];

  [coderCopy encodeBool:-[PUIStyleColor isSuggested](self forKey:{"isSuggested"), @"suggested"}];
  if (self->_localizedName)
  {
    localizedName = [(PUIStyleColor *)self localizedName];
    [coderCopy encodeObject:localizedName forKey:@"localizedName"];
  }
}

- (PUIStyleColor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if ([v5 isEqualToString:@"vibrantMaterialColor"])
  {
    v6 = +[PUIStyleColor vibrantMaterialColor];
  }

  else
  {
    if (![v5 isEqualToString:@"vibrantMonochromeColor"])
    {
      v8 = objc_opt_self();
      v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"color"];

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredStyle"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      v12 = [coderCopy decodeBoolForKey:@"suggested"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
      v14 = [[PUIColorValues alloc] initWithColor:v9];
      v7 = [[PUIStyleColor alloc] initWithIdentifier:v5 color:v9 colorValues:v14 preferredStyle:unsignedIntegerValue localizedName:v13 suggested:v12];

      goto LABEL_7;
    }

    v6 = +[PUIStyleColor vibrantMonochromeColor];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PUIStyleColor *)self identifier];
  v5 = [formatterCopy appendObject:identifier withName:@"identifier"];

  color = [(PUIStyleColor *)self color];
  v7 = [formatterCopy appendObject:color withName:@"color"];

  v8 = [formatterCopy appendUnsignedInteger:-[PUIStyleColor preferredStyle](self withName:{"preferredStyle"), @"preferredStyle"}];
  v9 = [formatterCopy appendBool:-[PUIStyleColor isSuggested](self withName:"isSuggested") ifEqualTo:{@"isSuggested", 1}];
}

@end