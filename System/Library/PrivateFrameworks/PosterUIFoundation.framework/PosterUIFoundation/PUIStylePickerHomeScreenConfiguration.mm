@interface PUIStylePickerHomeScreenConfiguration
+ (id)_defaultVariantsForStyleTypeOptions;
+ (id)opaqueAccentColorFromColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHomeScreenConfiguration:(id)configuration;
- (CGSize)iconSize;
- (CGSize)iconSpacing;
- (PUIStylePickerHomeScreenConfiguration)init;
- (PUIStylePickerHomeScreenConfiguration)initWithCoder:(id)coder;
- (PUIStylePickerHomeScreenConfiguration)initWithStyleType:(unint64_t)type styleVariant:(unint64_t)variant variation:(double)variation luminance:(double)luminance saturation:(double)saturation;
- (UIColor)accentColor;
- (UIEdgeInsets)layoutInsets;
- (id)_clampedColorForInputColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccentStyle:(id)style;
- (void)setCaseAccentColor:(id)color;
- (void)setEnclosureAccentColor:(id)color;
- (void)setSuggestedAccentColor:(id)color;
@end

@implementation PUIStylePickerHomeScreenConfiguration

- (PUIStylePickerHomeScreenConfiguration)init
{
  v15.receiver = self;
  v15.super_class = PUIStylePickerHomeScreenConfiguration;
  v2 = [(PUIStylePickerHomeScreenConfiguration *)&v15 init];
  if (v2)
  {
    v3 = PUIFeatureEnabled(11);
    v4 = 5;
    if (!v3)
    {
      v4 = 0;
    }

    v2->_styleType = v4;
    v2->_styleVariant = 2;
    v5 = +[PUIStylePickerHomeScreenConfiguration _defaultVariantsForStyleTypeOptions];
    lastUserSelectedVariantForStyleTypeOption = v2->_lastUserSelectedVariantForStyleTypeOption;
    v2->_lastUserSelectedVariantForStyleTypeOption = v5;

    v7 = [[PUIDiscreteGradientVariatedCustomStyle alloc] initWithVariation:0.0];
    accentStyle = v2->_accentStyle;
    v2->_accentStyle = v7;

    v2->_iconTintSource = 2;
    v2->_iconContinuousCornerRadius = 14.3999996;
    __asm { FMOV            V1.2D, #12.0 }

    v2->_iconSize = vdupq_n_s64(0x4050000000000000uLL);
    v2->_iconSpacing = _Q1;
    *&v2->_layoutInsets.top = _Q1;
    *&v2->_layoutInsets.bottom = _Q1;
  }

  return v2;
}

+ (id)_defaultVariantsForStyleTypeOptions
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:@"light" forKey:@"default"];
  [v2 setObject:@"always" forKey:@"dark"];
  [v2 setObject:@"light" forKey:@"clear"];
  [v2 setObject:@"light" forKey:@"accent"];
  v3 = [v2 copy];

  return v3;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)iconSpacing
{
  width = self->_iconSpacing.width;
  height = self->_iconSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)layoutInsets
{
  top = self->_layoutInsets.top;
  left = self->_layoutInsets.left;
  bottom = self->_layoutInsets.bottom;
  right = self->_layoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (id)opaqueAccentColorFromColor:(id)color
{
  colorCopy = color;
  v4 = colorCopy;
  if (colorCopy)
  {
    v17 = 1.0;
    [colorCopy getWhite:0 alpha:&v17];
    if (BSFloatIsOne())
    {
      color = v4;
    }

    else
    {
      v6 = v17 + -1.0;
      [v4 pui_maxLuminance];
      v8 = v7;
      [v4 pui_minLuminance];
      v10 = v6 * (v8 - v9) / -0.75;
      [v4 pui_minLuminance];
      v12 = v11 + v10;
      v13 = [[PUIColorValues alloc] initWithColor:v4];
      v14 = [(PUIColorValues *)v13 copyWithAlpha:1.0];
      v15 = [v14 copyWithLuminance:v12];

      color = [v15 color];
    }
  }

  else
  {
    color = 0;
  }

  return color;
}

- (PUIStylePickerHomeScreenConfiguration)initWithStyleType:(unint64_t)type styleVariant:(unint64_t)variant variation:(double)variation luminance:(double)luminance saturation:(double)saturation
{
  v24.receiver = self;
  v24.super_class = PUIStylePickerHomeScreenConfiguration;
  v12 = [(PUIStylePickerHomeScreenConfiguration *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v12->_styleType = type;
    v12->_styleVariant = variant;
    v14 = +[PUIStylePickerHomeScreenConfiguration _defaultVariantsForStyleTypeOptions];
    lastUserSelectedVariantForStyleTypeOption = v13->_lastUserSelectedVariantForStyleTypeOption;
    v13->_lastUserSelectedVariantForStyleTypeOption = v14;

    v16 = [[PUIDiscreteGradientVariatedCustomStyle alloc] initWithVariation:variation luminance:luminance saturation:saturation];
    accentStyle = v13->_accentStyle;
    v13->_accentStyle = v16;

    v13->_iconContinuousCornerRadius = 14.3999996;
    __asm { FMOV            V1.2D, #12.0 }

    v13->_iconSize = vdupq_n_s64(0x4050000000000000uLL);
    v13->_iconSpacing = _Q1;
    *&v13->_layoutInsets.top = _Q1;
    *&v13->_layoutInsets.bottom = _Q1;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PUIStylePickerHomeScreenConfiguration *)self styleType]- 1;
  v5 = @"auto";
  if (v4 <= 4)
  {
    v5 = off_1E78559E0[v4];
  }

  [v3 appendString:v5 withName:@"_styleType"];
  v6 = [(PUIStylePickerHomeScreenConfiguration *)self styleVariant:MEMORY[0x1E69E9820]];
  v7 = @"dark";
  if (v6 != 1)
  {
    v7 = @"auto";
  }

  if (v6 == 2)
  {
    v8 = @"light";
  }

  else
  {
    v8 = v7;
  }

  [v3 appendString:v8 withName:@"_styleVariant"];
  v9 = [v3 appendObject:self->_accentStyle withName:@"_accentStyle"];
  build = [v3 build];

  return build;
}

__CFString *__52__PUIStylePickerHomeScreenConfiguration_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) styleType];
  if ((v1 - 1) > 4)
  {
    return @"auto";
  }

  else
  {
    return off_1E78559E0[v1 - 1];
  }
}

__CFString *__52__PUIStylePickerHomeScreenConfiguration_description__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) styleVariant];
  v2 = @"auto";
  if (v1 == 1)
  {
    v2 = @"dark";
  }

  if (v1 == 2)
  {
    return @"light";
  }

  else
  {
    return v2;
  }
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:self->_styleType];
  v5 = [builder appendObject:self->_accentStyle];
  v6 = [builder hash];

  return v6;
}

- (void)setAccentStyle:(id)style
{
  if (style)
  {
    v4 = [style copy];
  }

  else
  {
    v4 = [[PUIDiscreteGradientVariatedCustomStyle alloc] initWithVariation:0.0];
  }

  accentStyle = self->_accentStyle;
  self->_accentStyle = v4;

  MEMORY[0x1EEE66BB8](v4, accentStyle);
}

- (UIColor)accentColor
{
  iconTintSource = self->_iconTintSource;
  if (iconTintSource <= 1)
  {
    goto LABEL_7;
  }

  if (iconTintSource == 2)
  {
    goto LABEL_6;
  }

  if (iconTintSource == 3)
  {
    caseAccentColor = self->_caseAccentColor;
    goto LABEL_9;
  }

  if (iconTintSource != 4)
  {
LABEL_7:
    luminanceAppliedColor = [(PUIDiscreteGradientVariatedCustomStyle *)self->_accentStyle luminanceAppliedColor];
    goto LABEL_10;
  }

  caseAccentColor = self->_enclosureAccentColor;
  if (!caseAccentColor)
  {
LABEL_6:
    caseAccentColor = self->_suggestedAccentColor;
    if (!caseAccentColor)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  luminanceAppliedColor = caseAccentColor;
LABEL_10:

  return luminanceAppliedColor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStylePickerHomeScreenConfiguration *)self isEqualToHomeScreenConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    v28 = 1;
  }

  else if (configurationCopy && (-[PUIStylePickerHomeScreenConfiguration accentStyle](configurationCopy, "accentStyle"), v6 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration accentStyle](self, "accentStyle"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, v8) && (v9 = -[PUIStylePickerHomeScreenConfiguration styleType](v5, "styleType"), v9 == -[PUIStylePickerHomeScreenConfiguration styleType](self, "styleType")) && (v10 = -[PUIStylePickerHomeScreenConfiguration styleVariant](v5, "styleVariant"), v10 == -[PUIStylePickerHomeScreenConfiguration styleVariant](self, "styleVariant")) && (-[PUIStylePickerHomeScreenConfiguration lastUserSelectedVariantForStyleTypeOption](v5, "lastUserSelectedVariantForStyleTypeOption"), v11 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration lastUserSelectedVariantForStyleTypeOption](self, "lastUserSelectedVariantForStyleTypeOption"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) && (-[PUIStylePickerHomeScreenConfiguration suggestedAccentColor](self, "suggestedAccentColor"), v13 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration suggestedAccentColor](v5, "suggestedAccentColor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && (-[PUIStylePickerHomeScreenConfiguration enclosureAccentColor](self, "enclosureAccentColor"), v16 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration enclosureAccentColor](v5, "enclosureAccentColor"), v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && (-[PUIStylePickerHomeScreenConfiguration caseAccentColor](self, "caseAccentColor"), v19 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration caseAccentColor](v5, "caseAccentColor"), v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21) && (v22 = -[PUIStylePickerHomeScreenConfiguration iconTintSource](v5, "iconTintSource"), v22 == -[PUIStylePickerHomeScreenConfiguration iconTintSource](self, "iconTintSource")) && (-[PUIStylePickerHomeScreenConfiguration iconContinuousCornerRadius](v5, "iconContinuousCornerRadius"), -[PUIStylePickerHomeScreenConfiguration iconContinuousCornerRadius](self, "iconContinuousCornerRadius"), BSFloatEqualToFloat()))
  {
    [(PUIStylePickerHomeScreenConfiguration *)v5 iconSize];
    v24 = v23;
    v26 = v25;
    [(PUIStylePickerHomeScreenConfiguration *)self iconSize];
    v28 = 0;
    if (v24 == v29 && v26 == v27)
    {
      [(PUIStylePickerHomeScreenConfiguration *)v5 iconSpacing];
      v31 = v30;
      v33 = v32;
      [(PUIStylePickerHomeScreenConfiguration *)self iconSpacing];
      v28 = 0;
      if (v31 == v35 && v33 == v34)
      {
        [(PUIStylePickerHomeScreenConfiguration *)v5 layoutInsets];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        [(PUIStylePickerHomeScreenConfiguration *)self layoutInsets];
        v47 = v39 == v46;
        if (v37 != v48)
        {
          v47 = 0;
        }

        if (v43 != v45)
        {
          v47 = 0;
        }

        v28 = v41 == v44 && v47;
      }
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (PUIStylePickerHomeScreenConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = PUIStylePickerHomeScreenConfiguration;
  v5 = [(PUIStylePickerHomeScreenConfiguration *)&v41 init];
  if (v5)
  {
    v5->_styleType = [coderCopy decodeIntegerForKey:@"_styleType"];
    v5->_styleVariant = [coderCopy decodeIntegerForKey:@"_styleVariant"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_lastUserSelectedVariantForStyleTypeOption"];
    lastUserSelectedVariantForStyleTypeOption = v5->_lastUserSelectedVariantForStyleTypeOption;
    v5->_lastUserSelectedVariantForStyleTypeOption = v9;

    v11 = v5->_lastUserSelectedVariantForStyleTypeOption;
    if (!v11 || ![(NSDictionary *)v11 count])
    {
      v12 = +[PUIStylePickerHomeScreenConfiguration _defaultVariantsForStyleTypeOptions];
      v13 = v5->_lastUserSelectedVariantForStyleTypeOption;
      v5->_lastUserSelectedVariantForStyleTypeOption = v12;
    }

    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"_accentStyle"];
    accentStyle = v5->_accentStyle;
    v5->_accentStyle = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_suggestedAccentColor"];
    suggestedAccentColor = v5->_suggestedAccentColor;
    v5->_suggestedAccentColor = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_enclosureAccentColor"];
    enclosureAccentColor = v5->_enclosureAccentColor;
    v5->_enclosureAccentColor = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_caseAccentColor"];
    caseAccentColor = v5->_caseAccentColor;
    v5->_caseAccentColor = v21;

    v5->_iconTintSource = [coderCopy decodeIntegerForKey:@"_iconTintSource"];
    [coderCopy decodeDoubleForKey:@"_iconContinuousCornerRadius"];
    v5->_iconContinuousCornerRadius = v23;
    if (BSFloatIsZero())
    {
      v5->_iconContinuousCornerRadius = 14.3999996;
    }

    [coderCopy decodeCGSizeForKey:@"_iconSize"];
    v5->_iconSize.width = v25;
    v5->_iconSize.height = v24;
    v27 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] == v25 && v26 == v24)
    {
      v5->_iconSize = vdupq_n_s64(0x4050000000000000uLL);
    }

    [coderCopy decodeCGSizeForKey:@"_iconSpacing"];
    v5->_iconSpacing.width = v29;
    v5->_iconSpacing.height = v28;
    if (v27 == v29 && v26 == v28)
    {
      __asm { FMOV            V0.2D, #12.0 }

      v5->_iconSpacing = _Q0;
    }

    [coderCopy decodeUIEdgeInsetsForKey:@"_layoutInsets"];
    v5->_layoutInsets.top = v35.f64[0];
    v5->_layoutInsets.left = v36;
    v5->_layoutInsets.bottom = v37.f64[0];
    v5->_layoutInsets.right = v38;
    v35.f64[1] = v36;
    v37.f64[1] = v38;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v35), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v37)))))
    {
      __asm { FMOV            V0.2D, #12.0 }

      *&v5->_layoutInsets.top = _Q0;
      *&v5->_layoutInsets.bottom = _Q0;
    }
  }

  return v5;
}

- (void)setCaseAccentColor:(id)color
{
  if (self->_caseAccentColor != color)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    caseAccentColor = self->_caseAccentColor;
    self->_caseAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, caseAccentColor);
  }
}

- (void)setEnclosureAccentColor:(id)color
{
  if (self->_enclosureAccentColor != color)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    enclosureAccentColor = self->_enclosureAccentColor;
    self->_enclosureAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, enclosureAccentColor);
  }
}

- (void)setSuggestedAccentColor:(id)color
{
  if (self->_suggestedAccentColor != color)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    suggestedAccentColor = self->_suggestedAccentColor;
    self->_suggestedAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, suggestedAccentColor);
  }
}

- (id)_clampedColorForInputColor:(id)color
{
  if (color)
  {
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v3 = MEMORY[0x1E69DC888];
    colorCopy = color;
    v5 = +[PUIDiscreteGradientVariatedCustomStyle discreteGradientVariatedColors];
    [v3 pui_determineVarianceAndLuminanceForColor:colorCopy amongstColors:v5 minLuminance:0 maxLuminance:0 outHue:&v12 outSaturation:&v10 outLuminance:&v11];

    v6 = [PUIDiscreteGradientVariatedCustomStyle alloc];
    v7 = [(PUIDiscreteGradientVariatedCustomStyle *)v6 initWithHue:v12 saturation:v10 luminanceValue:v11 alpha:1.0];
    luminanceAppliedColor = [(PUIDiscreteGradientVariatedCustomStyle *)v7 luminanceAppliedColor];
  }

  else
  {
    luminanceAppliedColor = 0;
  }

  return luminanceAppliedColor;
}

- (void)encodeWithCoder:(id)coder
{
  styleType = self->_styleType;
  coderCopy = coder;
  [coderCopy encodeInteger:styleType forKey:@"_styleType"];
  [coderCopy encodeInteger:self->_styleVariant forKey:@"_styleVariant"];
  [coderCopy encodeObject:self->_lastUserSelectedVariantForStyleTypeOption forKey:@"_lastUserSelectedVariantForStyleTypeOption"];
  [coderCopy encodeObject:self->_accentStyle forKey:@"_accentStyle"];
  [coderCopy encodeObject:self->_suggestedAccentColor forKey:@"_suggestedAccentColor"];
  [coderCopy encodeObject:self->_enclosureAccentColor forKey:@"_enclosureAccentColor"];
  [coderCopy encodeObject:self->_caseAccentColor forKey:@"_caseAccentColor"];
  [coderCopy encodeInteger:self->_iconTintSource forKey:@"_iconTintSource"];
  [coderCopy encodeDouble:@"_iconContinuousCornerRadius" forKey:self->_iconContinuousCornerRadius];
  [coderCopy encodeCGSize:@"_iconSize" forKey:{self->_iconSize.width, self->_iconSize.height}];
  [coderCopy encodeCGSize:@"_iconSpacing" forKey:{self->_iconSpacing.width, self->_iconSpacing.height}];
  [coderCopy encodeUIEdgeInsets:@"_layoutInsets" forKey:{self->_layoutInsets.top, self->_layoutInsets.left, self->_layoutInsets.bottom, self->_layoutInsets.right}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PUIStylePickerHomeScreenConfiguration allocWithZone:?]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleType:[(PUIStylePickerHomeScreenConfiguration *)self styleType]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleVariant:[(PUIStylePickerHomeScreenConfiguration *)self styleVariant]];
  lastUserSelectedVariantForStyleTypeOption = [(PUIStylePickerHomeScreenConfiguration *)self lastUserSelectedVariantForStyleTypeOption];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLastUserSelectedVariantForStyleTypeOption:lastUserSelectedVariantForStyleTypeOption];

  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setAccentStyle:accentStyle];

  suggestedAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self suggestedAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setSuggestedAccentColor:suggestedAccentColor];

  enclosureAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self enclosureAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setEnclosureAccentColor:enclosureAccentColor];

  caseAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self caseAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setCaseAccentColor:caseAccentColor];

  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconTintSource:[(PUIStylePickerHomeScreenConfiguration *)self iconTintSource]];
  [(PUIStylePickerHomeScreenConfiguration *)self iconContinuousCornerRadius];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconContinuousCornerRadius:?];
  [(PUIStylePickerHomeScreenConfiguration *)self iconSize];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconSize:?];
  [(PUIStylePickerHomeScreenConfiguration *)self iconSpacing];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconSpacing:?];
  [(PUIStylePickerHomeScreenConfiguration *)self layoutInsets];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLayoutInsets:?];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PUIStylePickerHomeScreenConfiguration *)[PUIMutableStylePickerHomeScreenConfiguration allocWithZone:?]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleType:[(PUIStylePickerHomeScreenConfiguration *)self styleType]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleVariant:[(PUIStylePickerHomeScreenConfiguration *)self styleVariant]];
  lastUserSelectedVariantForStyleTypeOption = [(PUIStylePickerHomeScreenConfiguration *)self lastUserSelectedVariantForStyleTypeOption];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLastUserSelectedVariantForStyleTypeOption:lastUserSelectedVariantForStyleTypeOption];

  accentStyle = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setAccentStyle:accentStyle];

  suggestedAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self suggestedAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setSuggestedAccentColor:suggestedAccentColor];

  enclosureAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self enclosureAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setEnclosureAccentColor:enclosureAccentColor];

  caseAccentColor = [(PUIStylePickerHomeScreenConfiguration *)self caseAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setCaseAccentColor:caseAccentColor];

  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconTintSource:[(PUIStylePickerHomeScreenConfiguration *)self iconTintSource]];
  [(PUIStylePickerHomeScreenConfiguration *)self iconContinuousCornerRadius];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconContinuousCornerRadius:?];
  [(PUIStylePickerHomeScreenConfiguration *)self iconSize];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconSize:?];
  [(PUIStylePickerHomeScreenConfiguration *)self iconSpacing];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setIconSpacing:?];
  [(PUIStylePickerHomeScreenConfiguration *)self layoutInsets];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLayoutInsets:?];
  return v4;
}

@end