@interface PUIStylePickerHomeScreenConfiguration
+ (id)_defaultVariantsForStyleTypeOptions;
+ (id)opaqueAccentColorFromColor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHomeScreenConfiguration:(id)a3;
- (CGSize)iconSize;
- (CGSize)iconSpacing;
- (PUIStylePickerHomeScreenConfiguration)init;
- (PUIStylePickerHomeScreenConfiguration)initWithCoder:(id)a3;
- (PUIStylePickerHomeScreenConfiguration)initWithStyleType:(unint64_t)a3 styleVariant:(unint64_t)a4 variation:(double)a5 luminance:(double)a6 saturation:(double)a7;
- (UIColor)accentColor;
- (UIEdgeInsets)layoutInsets;
- (id)_clampedColorForInputColor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccentStyle:(id)a3;
- (void)setCaseAccentColor:(id)a3;
- (void)setEnclosureAccentColor:(id)a3;
- (void)setSuggestedAccentColor:(id)a3;
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

+ (id)opaqueAccentColorFromColor:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v17 = 1.0;
    [v3 getWhite:0 alpha:&v17];
    if (BSFloatIsOne())
    {
      v5 = v4;
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

      v5 = [v15 color];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PUIStylePickerHomeScreenConfiguration)initWithStyleType:(unint64_t)a3 styleVariant:(unint64_t)a4 variation:(double)a5 luminance:(double)a6 saturation:(double)a7
{
  v24.receiver = self;
  v24.super_class = PUIStylePickerHomeScreenConfiguration;
  v12 = [(PUIStylePickerHomeScreenConfiguration *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v12->_styleType = a3;
    v12->_styleVariant = a4;
    v14 = +[PUIStylePickerHomeScreenConfiguration _defaultVariantsForStyleTypeOptions];
    lastUserSelectedVariantForStyleTypeOption = v13->_lastUserSelectedVariantForStyleTypeOption;
    v13->_lastUserSelectedVariantForStyleTypeOption = v14;

    v16 = [[PUIDiscreteGradientVariatedCustomStyle alloc] initWithVariation:a5 luminance:a6 saturation:a7];
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
  v10 = [v3 build];

  return v10;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:self->_styleType];
  v5 = [v3 appendObject:self->_accentStyle];
  v6 = [v3 hash];

  return v6;
}

- (void)setAccentStyle:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
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
    v4 = [(PUIDiscreteGradientVariatedCustomStyle *)self->_accentStyle luminanceAppliedColor];
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
  v4 = caseAccentColor;
LABEL_10:

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUIStylePickerHomeScreenConfiguration *)self isEqualToHomeScreenConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v28 = 1;
  }

  else if (v4 && (-[PUIStylePickerHomeScreenConfiguration accentStyle](v4, "accentStyle"), v6 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration accentStyle](self, "accentStyle"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, v8) && (v9 = -[PUIStylePickerHomeScreenConfiguration styleType](v5, "styleType"), v9 == -[PUIStylePickerHomeScreenConfiguration styleType](self, "styleType")) && (v10 = -[PUIStylePickerHomeScreenConfiguration styleVariant](v5, "styleVariant"), v10 == -[PUIStylePickerHomeScreenConfiguration styleVariant](self, "styleVariant")) && (-[PUIStylePickerHomeScreenConfiguration lastUserSelectedVariantForStyleTypeOption](v5, "lastUserSelectedVariantForStyleTypeOption"), v11 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration lastUserSelectedVariantForStyleTypeOption](self, "lastUserSelectedVariantForStyleTypeOption"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) && (-[PUIStylePickerHomeScreenConfiguration suggestedAccentColor](self, "suggestedAccentColor"), v13 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration suggestedAccentColor](v5, "suggestedAccentColor"), v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && (-[PUIStylePickerHomeScreenConfiguration enclosureAccentColor](self, "enclosureAccentColor"), v16 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration enclosureAccentColor](v5, "enclosureAccentColor"), v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && (-[PUIStylePickerHomeScreenConfiguration caseAccentColor](self, "caseAccentColor"), v19 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerHomeScreenConfiguration caseAccentColor](v5, "caseAccentColor"), v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21) && (v22 = -[PUIStylePickerHomeScreenConfiguration iconTintSource](v5, "iconTintSource"), v22 == -[PUIStylePickerHomeScreenConfiguration iconTintSource](self, "iconTintSource")) && (-[PUIStylePickerHomeScreenConfiguration iconContinuousCornerRadius](v5, "iconContinuousCornerRadius"), -[PUIStylePickerHomeScreenConfiguration iconContinuousCornerRadius](self, "iconContinuousCornerRadius"), BSFloatEqualToFloat()))
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

- (PUIStylePickerHomeScreenConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PUIStylePickerHomeScreenConfiguration;
  v5 = [(PUIStylePickerHomeScreenConfiguration *)&v41 init];
  if (v5)
  {
    v5->_styleType = [v4 decodeIntegerForKey:@"_styleType"];
    v5->_styleVariant = [v4 decodeIntegerForKey:@"_styleVariant"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_lastUserSelectedVariantForStyleTypeOption"];
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
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"_accentStyle"];
    accentStyle = v5->_accentStyle;
    v5->_accentStyle = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_suggestedAccentColor"];
    suggestedAccentColor = v5->_suggestedAccentColor;
    v5->_suggestedAccentColor = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_enclosureAccentColor"];
    enclosureAccentColor = v5->_enclosureAccentColor;
    v5->_enclosureAccentColor = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_caseAccentColor"];
    caseAccentColor = v5->_caseAccentColor;
    v5->_caseAccentColor = v21;

    v5->_iconTintSource = [v4 decodeIntegerForKey:@"_iconTintSource"];
    [v4 decodeDoubleForKey:@"_iconContinuousCornerRadius"];
    v5->_iconContinuousCornerRadius = v23;
    if (BSFloatIsZero())
    {
      v5->_iconContinuousCornerRadius = 14.3999996;
    }

    [v4 decodeCGSizeForKey:@"_iconSize"];
    v5->_iconSize.width = v25;
    v5->_iconSize.height = v24;
    v27 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    if (*MEMORY[0x1E695F060] == v25 && v26 == v24)
    {
      v5->_iconSize = vdupq_n_s64(0x4050000000000000uLL);
    }

    [v4 decodeCGSizeForKey:@"_iconSpacing"];
    v5->_iconSpacing.width = v29;
    v5->_iconSpacing.height = v28;
    if (v27 == v29 && v26 == v28)
    {
      __asm { FMOV            V0.2D, #12.0 }

      v5->_iconSpacing = _Q0;
    }

    [v4 decodeUIEdgeInsetsForKey:@"_layoutInsets"];
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

- (void)setCaseAccentColor:(id)a3
{
  if (self->_caseAccentColor != a3)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    caseAccentColor = self->_caseAccentColor;
    self->_caseAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, caseAccentColor);
  }
}

- (void)setEnclosureAccentColor:(id)a3
{
  if (self->_enclosureAccentColor != a3)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    enclosureAccentColor = self->_enclosureAccentColor;
    self->_enclosureAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, enclosureAccentColor);
  }
}

- (void)setSuggestedAccentColor:(id)a3
{
  if (self->_suggestedAccentColor != a3)
  {
    v5 = [(PUIStylePickerHomeScreenConfiguration *)self _clampedColorForInputColor:?];
    suggestedAccentColor = self->_suggestedAccentColor;
    self->_suggestedAccentColor = v5;

    MEMORY[0x1EEE66BB8](v5, suggestedAccentColor);
  }
}

- (id)_clampedColorForInputColor:(id)a3
{
  if (a3)
  {
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v3 = MEMORY[0x1E69DC888];
    v4 = a3;
    v5 = +[PUIDiscreteGradientVariatedCustomStyle discreteGradientVariatedColors];
    [v3 pui_determineVarianceAndLuminanceForColor:v4 amongstColors:v5 minLuminance:0 maxLuminance:0 outHue:&v12 outSaturation:&v10 outLuminance:&v11];

    v6 = [PUIDiscreteGradientVariatedCustomStyle alloc];
    v7 = [(PUIDiscreteGradientVariatedCustomStyle *)v6 initWithHue:v12 saturation:v10 luminanceValue:v11 alpha:1.0];
    v8 = [(PUIDiscreteGradientVariatedCustomStyle *)v7 luminanceAppliedColor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  styleType = self->_styleType;
  v5 = a3;
  [v5 encodeInteger:styleType forKey:@"_styleType"];
  [v5 encodeInteger:self->_styleVariant forKey:@"_styleVariant"];
  [v5 encodeObject:self->_lastUserSelectedVariantForStyleTypeOption forKey:@"_lastUserSelectedVariantForStyleTypeOption"];
  [v5 encodeObject:self->_accentStyle forKey:@"_accentStyle"];
  [v5 encodeObject:self->_suggestedAccentColor forKey:@"_suggestedAccentColor"];
  [v5 encodeObject:self->_enclosureAccentColor forKey:@"_enclosureAccentColor"];
  [v5 encodeObject:self->_caseAccentColor forKey:@"_caseAccentColor"];
  [v5 encodeInteger:self->_iconTintSource forKey:@"_iconTintSource"];
  [v5 encodeDouble:@"_iconContinuousCornerRadius" forKey:self->_iconContinuousCornerRadius];
  [v5 encodeCGSize:@"_iconSize" forKey:{self->_iconSize.width, self->_iconSize.height}];
  [v5 encodeCGSize:@"_iconSpacing" forKey:{self->_iconSpacing.width, self->_iconSpacing.height}];
  [v5 encodeUIEdgeInsets:@"_layoutInsets" forKey:{self->_layoutInsets.top, self->_layoutInsets.left, self->_layoutInsets.bottom, self->_layoutInsets.right}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PUIStylePickerHomeScreenConfiguration allocWithZone:?]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleType:[(PUIStylePickerHomeScreenConfiguration *)self styleType]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleVariant:[(PUIStylePickerHomeScreenConfiguration *)self styleVariant]];
  v5 = [(PUIStylePickerHomeScreenConfiguration *)self lastUserSelectedVariantForStyleTypeOption];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLastUserSelectedVariantForStyleTypeOption:v5];

  v6 = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setAccentStyle:v6];

  v7 = [(PUIStylePickerHomeScreenConfiguration *)self suggestedAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setSuggestedAccentColor:v7];

  v8 = [(PUIStylePickerHomeScreenConfiguration *)self enclosureAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setEnclosureAccentColor:v8];

  v9 = [(PUIStylePickerHomeScreenConfiguration *)self caseAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setCaseAccentColor:v9];

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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PUIStylePickerHomeScreenConfiguration *)[PUIMutableStylePickerHomeScreenConfiguration allocWithZone:?]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleType:[(PUIStylePickerHomeScreenConfiguration *)self styleType]];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setStyleVariant:[(PUIStylePickerHomeScreenConfiguration *)self styleVariant]];
  v5 = [(PUIStylePickerHomeScreenConfiguration *)self lastUserSelectedVariantForStyleTypeOption];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setLastUserSelectedVariantForStyleTypeOption:v5];

  v6 = [(PUIStylePickerHomeScreenConfiguration *)self accentStyle];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setAccentStyle:v6];

  v7 = [(PUIStylePickerHomeScreenConfiguration *)self suggestedAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setSuggestedAccentColor:v7];

  v8 = [(PUIStylePickerHomeScreenConfiguration *)self enclosureAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setEnclosureAccentColor:v8];

  v9 = [(PUIStylePickerHomeScreenConfiguration *)self caseAccentColor];
  [(PUIStylePickerHomeScreenConfiguration *)v4 setCaseAccentColor:v9];

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