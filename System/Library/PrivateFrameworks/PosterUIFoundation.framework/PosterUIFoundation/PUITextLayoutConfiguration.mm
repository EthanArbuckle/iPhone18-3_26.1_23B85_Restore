@interface PUITextLayoutConfiguration
+ (PUIStyle)defaultStyle;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)defaultFontForRole:(id)a3;
+ (id)styleColorForStyle:(id)a3;
+ (unint64_t)maximumVerticalTextCharacters;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVisiblyEqualToTextLayoutConfiguration:(id)a3;
- (BOOL)prefersVerticalTitleLayout;
- (NSString)description;
- (NSString)effectiveNumberingSystemType;
- (PUIStyle)effectiveStyle;
- (PUITextLayoutConfiguration)init;
- (PUITextLayoutConfiguration)initWithBSXPCCoder:(id)a3;
- (PUITextLayoutConfiguration)initWithCoder:(id)a3;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 numberingSystemType:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 styleColor:(id)a7 numberingSystemType:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 styleColor:(id)a6 numberingSystemType:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 style:(id)a4;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 style:(id)a4 numberingSystemType:(id)a5;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 styleColor:(id)a4;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 styleColor:(id)a4 numberingSystemType:(id)a5;
- (PUITextLayoutConfiguration)initWithTextLayoutConfiguration:(id)a3;
- (id)_effectivePrivateStyle;
- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4;
- (id)effectiveFontWithExtensionBundle:(id)a3 forRole:(id)a4;
- (id)effectiveFontWithExtensionBundleURL:(id)a3 forRole:(id)a4;
- (id)effectiveStyleColor;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4;
- (unint64_t)effectiveAlignmentForText:(id)a3 withFont:(id)a4;
- (unint64_t)effectiveLayoutForText:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUITextLayoutConfiguration

+ (id)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PUITextLayoutConfiguration *)PUIImmutableTextLayoutConfiguration allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PUITextLayoutConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

+ (id)styleColorForStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 colors];
  v6 = [v5 firstObject];

  if ([v3 allowsVariation])
  {
    v7 = [v3 variationAppliedColors];
    v8 = [v7 firstObject];

    v6 = v8;
  }

  v9 = 0;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v10 = [v3 LUTIdentifier];
          v9 = [[PUIStyleColor alloc] initWithLUTIdentifier:v10];
        }

        goto LABEL_17;
      }

      v11 = +[PUIStyleColor vibrantMonochromeColor];
LABEL_12:
      v9 = v11;
      goto LABEL_17;
    }

LABEL_10:
    v11 = +[PUIStyleColor vibrantMaterialColor];
    goto LABEL_12;
  }

  if (!v4)
  {
    v12 = [v3 isVibrant];
    v13 = [PUIStyleColor alloc];
    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [v3 localizedName];
    v9 = [(PUIStyleColor *)v13 initWithColor:v6 preferredStyle:v14 localizedName:v15];

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    goto LABEL_10;
  }

LABEL_17:

  return v9;
}

- (PUITextLayoutConfiguration)init
{
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v4) = 0;
  return [(PUITextLayoutConfiguration *)self initWithFontConfiguration:0 preferredAlignment:0 preferredLayout:0 style:0 numberingSystemType:0 userConfigured:0 contentsLuminance:v4 alternateDateEnabled:0 groupName:?];
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 style:(id)a4
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v7 preferredAlignment:0 preferredLayout:0 style:v6 numberingSystemType:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 style:(id)a4 numberingSystemType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[PUITextLayoutConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v10 preferredAlignment:0 preferredLayout:0 style:v9 numberingSystemType:v8 userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 numberingSystemType:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11
{
  v19 = a11;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = [objc_opt_class() styleColorForStyle:v21];
  BYTE1(v26) = a10;
  LOBYTE(v26) = a8;
  v24 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v22 preferredAlignment:a4 preferredLayout:a5 style:v21 styleColor:v23 numberingSystemType:v20 userConfigured:a9 contentsLuminance:v26 alternateDateEnabled:v19 groupName:?];

  return v24;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 styleColor:(id)a7 numberingSystemType:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12
{
  v19 = a3;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a12;
  v24 = objc_opt_self();
  v25 = [(PUITextLayoutConfiguration *)self isMemberOfClass:v24];

  if (v25)
  {
    LOWORD(v29) = __PAIR16__(a11, a9);
    v26 = [[PUIImmutableTextLayoutConfiguration alloc] initWithFontConfiguration:v19 preferredAlignment:a4 preferredLayout:a5 style:v20 styleColor:v21 numberingSystemType:v22 userConfigured:a10 contentsLuminance:v29 alternateDateEnabled:v23 groupName:?];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = PUITextLayoutConfiguration;
    v26 = [(PUITextLayoutConfiguration *)&v30 init];
    self = &v26->super;
  }

  p_super = &v26->super;

  return p_super;
}

- (PUITextLayoutConfiguration)initWithTextLayoutConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 fontConfiguration];
  v5 = [v3 preferredAlignment];
  v6 = [v3 preferredLayout];
  v7 = [v3 style];
  v8 = [v3 styleColor];
  v9 = [v3 numberingSystemType];
  v10 = [v3 isUserConfigured];
  [v3 contentsLuminance];
  v12 = v11;
  v13 = [v3 isAlternateDateEnabled];
  v14 = [v3 groupName];

  BYTE1(v17) = v13;
  LOBYTE(v17) = v10;
  v15 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v4 preferredAlignment:v5 preferredLayout:v6 style:v7 styleColor:v8 numberingSystemType:v9 userConfigured:v12 contentsLuminance:v17 alternateDateEnabled:v14 groupName:?];

  return v15;
}

- (id)effectiveFontWithExtensionBundle:(id)a3 forRole:(id)a4
{
  v6 = a4;
  v7 = [a3 bundleURL];
  v8 = [(PUITextLayoutConfiguration *)self effectiveFontWithExtensionBundleURL:v7 forRole:v6];

  return v8;
}

- (id)effectiveFontWithExtensionBundleURL:(id)a3 forRole:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = v8;
    v12 = [v11 fontIdentifier];
    if (v12)
    {
      v13 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:v12 forRole:v7];
      [v11 weight];
      v15 = [v13 pui_UIFontWithVariantWeight:v14 forRole:v7];
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = objc_opt_self();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0 || ([v8 fontWithExtensionBundleURL:v6], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_9:
    v15 = [objc_opt_class() defaultFontForRole:v7];
  }

LABEL_10:

  return v15;
}

- (PUIStyle)effectiveStyle
{
  v3 = [(PUITextLayoutConfiguration *)self style];
  if (!v3)
  {
    if (([(PUITextLayoutConfiguration *)self isUserConfigured]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_opt_class() defaultStyle];
    }
  }

  return v3;
}

- (id)_effectivePrivateStyle
{
  v2 = [(PUITextLayoutConfiguration *)self effectiveStyle];
  if ([v2 conformsToProtocol:&unk_1F1CA3DC8])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)effectiveStyleColor
{
  v3 = [(PUITextLayoutConfiguration *)self styleColor];
  if (!v3)
  {
    if (([(PUITextLayoutConfiguration *)self isUserConfigured]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_opt_class() defaultStyleColor];
    }
  }

  return v3;
}

- (unint64_t)effectiveAlignmentForText:(id)a3 withFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment") != 1 || (v8 = [getPRIncomingCallMetricsProviderClass() canApplyKashidaToText:v6 withFont:v7], v9 = 0, objc_msgSend(v6, "pui_isSuitableForArabicJustification")) && v8)
  {
    v9 = [(PUITextLayoutConfiguration *)self preferredAlignment];
  }

  return v9;
}

- (unint64_t)effectiveLayoutForText:(id)a3
{
  v4 = a3;
  if (!-[PUITextLayoutConfiguration prefersVerticalTitleLayout](self, "prefersVerticalTitleLayout") || (v5 = [v4 length], v6 = objc_msgSend(getPRIncomingCallMetricsProviderClass(), "maximumVerticalTextLength"), v7 = 0, objc_msgSend(v4, "pui_isSuitableForVerticalLayout")) && v5 <= v6)
  {
    v7 = [(PUITextLayoutConfiguration *)self preferredLayout];
  }

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3
{
  v4 = [a3 bundleURL];
  v5 = [(PUITextLayoutConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v4];

  return v5;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 bundleURL];
  v7 = [(PUITextLayoutConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v6 luminanceReduced:v4];

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v7 = PUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PUITextLayoutConfiguration vibrancyConfigurationWithExtensionBundleURL:v7 luminanceReduced:?];
    }
  }

  v8 = [(PUITextLayoutConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:v6 luminanceReduced:v4];

  return v8;
}

- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  vibrancyConfiguration = self->_vibrancyConfiguration;
  v8 = [(PUITextLayoutConfiguration *)self _effectivePrivateStyle];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v10 = PUIStyleBackgroundTypeForLuminance(v9);
  v11 = [v8 vibrancyEffectType];
  if (vibrancyConfiguration)
  {
    if ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType]== v11)
    {
      v12 = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration groupName];
      v13 = [(PUITextLayoutConfiguration *)self groupName];
      LODWORD(vibrancyConfiguration) = BSEqualObjects();
    }

    else
    {
      LODWORD(vibrancyConfiguration) = 0;
    }
  }

  v14 = [MEMORY[0x1E698E810] pui_vibrancyLUTFromPrivateStyle:v8 extensionBundleURL:v6 luminanceReduced:v4];
  if (!vibrancyConfiguration || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration alternativeVibrancyEffectLUT], v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, (v16 & 1) == 0))
  {
    v17 = objc_alloc(MEMORY[0x1E698E810]);
    v18 = BSUIVibrancyBackgroundTypeForPUIStyleBackgroundType(v10);
    v19 = [v8 vibrancyEffectColor];
    v20 = [(PUITextLayoutConfiguration *)self groupName];
    v21 = [v17 initWithEffectType:v11 backgroundType:v18 color:v19 groupName:v20 blendConfiguration:0 blendAmount:v14 alternativeVibrancyEffectLUT:0.0];
    v22 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v21;
  }

  v23 = self->_vibrancyConfiguration;
  v24 = v23;

  return v23;
}

- (NSString)effectiveNumberingSystemType
{
  v2 = [(PUITextLayoutConfiguration *)self numberingSystemType];
  if (!v2)
  {
    v2 = [objc_opt_class() defaultNumberingSystemType];
  }

  return v2;
}

- (BOOL)prefersVerticalTitleLayout
{
  v2 = [(PUITextLayoutConfiguration *)self preferredLayout];

  return PUITextLayoutIsVertical(v2);
}

+ (id)defaultFontForRole:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pui_defaultFontForRole:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DB878] pui_defaultFont];
  }

  v6 = v5;

  return v6;
}

+ (PUIStyle)defaultStyle
{
  v2 = objc_alloc_init(PUIStyleVibrantMaterial);

  return v2;
}

+ (unint64_t)maximumVerticalTextCharacters
{
  if (maximumVerticalTextCharacters_onceToken != -1)
  {
    +[PUITextLayoutConfiguration maximumVerticalTextCharacters];
  }

  return maximumVerticalTextCharacters_maximumVerticalTextCharacters;
}

uint64_t __59__PUITextLayoutConfiguration_maximumVerticalTextCharacters__block_invoke()
{
  result = [getPRIncomingCallMetricsProviderClass() maxVerticalTextLength];
  maximumVerticalTextCharacters_maximumVerticalTextCharacters = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PUITextLayoutConfiguration *)self fontConfiguration];
      v9 = [(PUITextLayoutConfiguration *)v7 fontConfiguration];
      v10 = BSEqualObjects();

      if (v10 && (v11 = [(PUITextLayoutConfiguration *)self preferredAlignment], v11 == [(PUITextLayoutConfiguration *)v7 preferredAlignment]) && (v12 = [(PUITextLayoutConfiguration *)self preferredLayout], v12 == [(PUITextLayoutConfiguration *)v7 preferredLayout]) && ([(PUITextLayoutConfiguration *)self style], v13 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v7 style], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PUITextLayoutConfiguration *)self numberingSystemType], v16 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v7 numberingSystemType], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PUITextLayoutConfiguration *)self contentsLuminance], v20 = vcvtad_u64_f64(v19 * 10000.0), [(PUITextLayoutConfiguration *)v7 contentsLuminance], v20 == vcvtad_u64_f64(v21 * 10000.0)) && (v22 = [(PUITextLayoutConfiguration *)self isUserConfigured], v22 == [(PUITextLayoutConfiguration *)v7 isUserConfigured]))
      {
        v25 = [(PUITextLayoutConfiguration *)self isAlternateDateEnabled];
        v23 = v25 ^ [(PUITextLayoutConfiguration *)v7 isAlternateDateEnabled]^ 1;
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (BOOL)isVisiblyEqualToTextLayoutConfiguration:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(PUITextLayoutConfiguration *)self fontConfiguration];
    v6 = [(PUITextLayoutConfiguration *)v4 fontConfiguration];
    v7 = BSEqualObjects();

    if (v7 && (v8 = [(PUITextLayoutConfiguration *)self preferredAlignment], v8 == [(PUITextLayoutConfiguration *)v4 preferredAlignment]) && (v9 = [(PUITextLayoutConfiguration *)self preferredLayout], v9 == [(PUITextLayoutConfiguration *)v4 preferredLayout]) && ([(PUITextLayoutConfiguration *)self style], v10 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v4 style], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(PUITextLayoutConfiguration *)self numberingSystemType], v13 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v4 numberingSystemType], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      [(PUITextLayoutConfiguration *)self isAlternateDateEnabled];
      [(PUITextLayoutConfiguration *)v4 isAlternateDateEnabled];
      v16 = BSEqualBools();
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v4 = vcvtad_u64_f64(v3 * 10000.0);
  v5 = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v6 = [v5 hash];
  v7 = [(PUITextLayoutConfiguration *)self style];
  v8 = [v7 hash];
  v9 = [(PUITextLayoutConfiguration *)self numberingSystemType];
  v10 = [v9 hash];
  v11 = [(PUITextLayoutConfiguration *)self isUserConfigured];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUITextLayoutConfiguration isAlternateDateEnabled](self, "isAlternateDateEnabled")}];
  v13 = v6 ^ v8 ^ v10 ^ v11 ^ [v12 hash];

  return v13 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __41__PUITextLayoutConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PUITextLayoutConfiguration *)PUIMutableTextLayoutConfiguration allocWithZone:a3];

  return [(PUITextLayoutConfiguration *)v4 initWithTextLayoutConfiguration:self];
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(PUITextLayoutConfiguration *)self fontConfiguration];
  [v13 encodeObject:v4 forKey:@"fontConfiguration"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment")}];
  [v13 encodeObject:v5 forKey:@"preferredAlignment"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredLayout](self, "preferredLayout")}];
  [v13 encodeObject:v6 forKey:@"preferredLayout"];

  v7 = [(PUITextLayoutConfiguration *)self style];
  [v13 pui_encodeStyle:v7 forKey:@"style" error:0];

  v8 = [(PUITextLayoutConfiguration *)self styleColor];
  [v13 encodeObject:v8 forKey:@"styleColor"];

  v9 = [(PUITextLayoutConfiguration *)self numberingSystemType];
  [v13 encodeObject:v9 forKey:@"numberingSystemType"];

  v10 = MEMORY[0x1E696AD98];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v11 = [v10 numberWithDouble:?];
  [v13 encodeObject:v11 forKey:@"contentsLuminence"];

  v12 = [(PUITextLayoutConfiguration *)self groupName];
  [v13 encodeObject:v12 forKey:@"groupName"];

  [v13 encodeBool:-[PUITextLayoutConfiguration isUserConfigured](self forKey:{"isUserConfigured"), @"userConfigured"}];
  [v13 encodeBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self forKey:{"isAlternateDateEnabled"), @"alternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_self();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v38 = [v4 decodeObjectOfClasses:v8 forKey:@"fontConfiguration"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];
  v37 = v9;
  if (v9)
  {
    v39 = 0;
    v10 = [PUIStyleSerialization styleForData:v9 error:&v39];
    v11 = v39;
    if (!v10)
    {
      v12 = PUILogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PUITextLayoutConfiguration *)v11 initWithCoder:v12];
      }

      v10 = [objc_opt_class() defaultStyle];
    }

    v36 = v10;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v4 decodeObjectOfClass:v13 forKey:@"styleColor"];

    if (!v14)
    {
      v15 = objc_opt_self();
      v16 = [v4 decodeObjectOfClass:v15 forKey:@"styleColor"];

      if (v16)
      {
        v14 = [[PUIStyleColor alloc] initWithColor:v16];
      }

      else
      {
        v14 = 0;
      }
    }

    v36 = [(PUIStyleColor *)v14 contentStyle];
  }

  v17 = objc_opt_self();
  v18 = [v4 decodeObjectOfClass:v17 forKey:@"textAlignment"];

  if (v18)
  {
    v35 = [v18 unsignedIntegerValue];
  }

  else
  {
    v35 = 0;
  }

  v19 = objc_opt_self();
  v20 = [v4 decodeObjectOfClass:v19 forKey:@"preferredLayout"];

  if (v20)
  {
    v34 = [v20 unsignedIntegerValue];
  }

  else
  {
    v34 = 0;
  }

  v21 = objc_opt_self();
  v22 = [v4 decodeObjectOfClass:v21 forKey:@"numberingSystemType"];

  v23 = [v4 decodeBoolForKey:@"userConfigured"];
  v24 = objc_opt_self();
  v25 = [v4 decodeObjectOfClass:v24 forKey:@"contentsLuminence"];

  [objc_opt_class() defaultContentsLuminance];
  if (v25)
  {
    [v25 doubleValue];
  }

  v27 = v26;
  v28 = [v4 decodeBoolForKey:@"alternateDateEnabled"];
  v29 = objc_opt_self();
  v30 = [v4 decodeObjectOfClass:v29 forKey:@"groupName"];

  LOBYTE(v33) = v28;
  v31 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v38 preferredAlignment:v35 preferredLayout:v34 style:v36 numberingSystemType:v22 userConfigured:v23 contentsLuminance:v27 alternateDateEnabled:v33 groupName:v30];

  return v31;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUITextLayoutConfiguration *)self fontConfiguration];
  [v4 encodeObject:v5 forKey:@"fontConfiguration"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment")}];
  [v4 encodeObject:v6 forKey:@"preferredAlignment"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredLayout](self, "preferredLayout")}];
  [v4 encodeObject:v7 forKey:@"preferredLayout"];

  v8 = [(PUITextLayoutConfiguration *)self style];
  v14 = [PUIStyleSerialization dataForStyle:v8 error:0];

  [v4 encodeObject:v14 forKey:@"style"];
  v9 = [(PUITextLayoutConfiguration *)self styleColor];
  [v4 encodeObject:v9 forKey:@"styleColor"];

  v10 = [(PUITextLayoutConfiguration *)self numberingSystemType];
  [v4 encodeObject:v10 forKey:@"numberingSystemType"];

  v11 = MEMORY[0x1E696AD98];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v12 = [v11 numberWithDouble:?];
  [v4 encodeObject:v12 forKey:@"contentsLuminence"];

  v13 = [(PUITextLayoutConfiguration *)self groupName];
  [v4 encodeObject:v13 forKey:@"groupName"];

  [v4 encodeBool:-[PUITextLayoutConfiguration isUserConfigured](self forKey:{"isUserConfigured"), @"userConfigured"}];
  [v4 encodeBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self forKey:{"isAlternateDateEnabled"), @"alternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v37 = [v4 decodeObjectOfClass:v5 forKey:@"fontConfiguration"];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"style"];
  v36 = v6;
  if (v6)
  {
    v38 = 0;
    v7 = [PUIStyleSerialization styleForData:v6 error:&v38];
    v8 = v38;
    v35 = v8;
    if (v7)
    {
      v34 = v7;
    }

    else
    {
      v13 = v8;
      v14 = PUILogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PUITextLayoutConfiguration *)v13 initWithCoder:v14];
      }

      v34 = [objc_opt_class() defaultStyle];
    }
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"styleColor"];

    if (!v10)
    {
      v11 = objc_opt_self();
      v12 = [v4 decodeObjectOfClass:v11 forKey:@"styleColor"];

      if (v12)
      {
        v10 = [[PUIStyleColor alloc] initWithColor:v12];
      }

      else
      {
        v10 = 0;
      }
    }

    v34 = [(PUIStyleColor *)v10 contentStyle];

    v35 = 0;
  }

  v15 = objc_opt_self();
  v16 = [v4 decodeObjectOfClass:v15 forKey:@"preferredAlignment"];

  if (v16)
  {
    v33 = [v16 unsignedIntegerValue];
  }

  else
  {
    v33 = 0;
  }

  v17 = objc_opt_self();
  v18 = [v4 decodeObjectOfClass:v17 forKey:@"preferredLayout"];

  if (v18)
  {
    v32 = [v18 unsignedIntegerValue];
  }

  else
  {
    v32 = 0;
  }

  v19 = objc_opt_self();
  v20 = [v4 decodeObjectOfClass:v19 forKey:@"numberingSystemType"];

  v21 = [v4 decodeBoolForKey:@"userConfigured"];
  v22 = objc_opt_self();
  v23 = [v4 decodeObjectOfClass:v22 forKey:@"contentsLuminence"];

  [objc_opt_class() defaultContentsLuminance];
  if (v23)
  {
    [v23 doubleValue];
  }

  v25 = v24;
  v26 = [v4 decodeBoolForKey:@"alternateDateEnabled"];
  v27 = objc_opt_self();
  v28 = [v4 decodeObjectOfClass:v27 forKey:@"groupName"];

  LOBYTE(v31) = v26;
  v29 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v37 preferredAlignment:v33 preferredLayout:v32 style:v34 numberingSystemType:v20 userConfigured:v21 contentsLuminance:v25 alternateDateEnabled:v31 groupName:v28];

  return v29;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v15 = a3;
  v4 = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v5 = [v15 appendObject:v4 withName:@"fontConfiguration"];

  v6 = [v15 appendInteger:-[PUITextLayoutConfiguration preferredAlignment](self withName:{"preferredAlignment"), @"preferredAlignment"}];
  v7 = [v15 appendInteger:-[PUITextLayoutConfiguration preferredLayout](self withName:{"preferredLayout"), @"preferredLayout"}];
  v8 = [(PUITextLayoutConfiguration *)self style];
  v9 = [v15 appendObject:v8 withName:@"style"];

  v10 = [(PUITextLayoutConfiguration *)self numberingSystemType];
  v11 = [v15 appendObject:v10 withName:@"numberingSystemType"];

  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v12 = [v15 appendDouble:@"contentsLuminance" withName:5 decimalPrecision:?];
  v13 = [v15 appendBool:-[PUITextLayoutConfiguration isUserConfigured](self withName:{"isUserConfigured"), @"userConfigured"}];
  v14 = [v15 appendBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self withName:{"isAlternateDateEnabled"), @"isAlternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 styleColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v7 preferredAlignment:0 preferredLayout:0 styleColor:v6 numberingSystemType:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 styleColor:(id)a4 numberingSystemType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[PUITextLayoutConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v10 preferredAlignment:0 preferredLayout:0 styleColor:v9 numberingSystemType:v8 userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 styleColor:(id)a6 numberingSystemType:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11
{
  v19 = a11;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = [v21 contentStyle];
  BYTE1(v26) = a10;
  LOBYTE(v26) = a8;
  v24 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v22 preferredAlignment:a4 preferredLayout:a5 style:v23 styleColor:v21 numberingSystemType:v20 userConfigured:a9 contentsLuminance:v26 alternateDateEnabled:v19 groupName:?];

  return v24;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_ERROR, "Content style deserialization failed with error: %{public}@, falling back to defaultStyle", &v2, 0xCu);
}

@end