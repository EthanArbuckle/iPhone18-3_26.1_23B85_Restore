@interface PUITextLayoutConfiguration
+ (PUIStyle)defaultStyle;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)defaultFontForRole:(id)role;
+ (id)styleColorForStyle:(id)style;
+ (unint64_t)maximumVerticalTextCharacters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVisiblyEqualToTextLayoutConfiguration:(id)configuration;
- (BOOL)prefersVerticalTitleLayout;
- (NSString)description;
- (NSString)effectiveNumberingSystemType;
- (PUIStyle)effectiveStyle;
- (PUITextLayoutConfiguration)init;
- (PUITextLayoutConfiguration)initWithBSXPCCoder:(id)coder;
- (PUITextLayoutConfiguration)initWithCoder:(id)coder;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration style:(id)style;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration style:(id)style numberingSystemType:(id)type;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration styleColor:(id)color;
- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration styleColor:(id)color numberingSystemType:(id)type;
- (PUITextLayoutConfiguration)initWithTextLayoutConfiguration:(id)configuration;
- (id)_effectivePrivateStyle;
- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced;
- (id)effectiveFontWithExtensionBundle:(id)bundle forRole:(id)role;
- (id)effectiveFontWithExtensionBundleURL:(id)l forRole:(id)role;
- (id)effectiveStyleColor;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced;
- (unint64_t)effectiveAlignmentForText:(id)text withFont:(id)font;
- (unint64_t)effectiveLayoutForText:(id)text;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUITextLayoutConfiguration

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PUITextLayoutConfiguration *)PUIImmutableTextLayoutConfiguration allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PUITextLayoutConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

+ (id)styleColorForStyle:(id)style
{
  styleCopy = style;
  type = [styleCopy type];
  colors = [styleCopy colors];
  firstObject = [colors firstObject];

  if ([styleCopy allowsVariation])
  {
    variationAppliedColors = [styleCopy variationAppliedColors];
    firstObject2 = [variationAppliedColors firstObject];

    firstObject = firstObject2;
  }

  v9 = 0;
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        if (type == 4)
        {
          lUTIdentifier = [styleCopy LUTIdentifier];
          v9 = [[PUIStyleColor alloc] initWithLUTIdentifier:lUTIdentifier];
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

  if (!type)
  {
    isVibrant = [styleCopy isVibrant];
    v13 = [PUIStyleColor alloc];
    if (isVibrant)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    localizedName = [styleCopy localizedName];
    v9 = [(PUIStyleColor *)v13 initWithColor:firstObject preferredStyle:v14 localizedName:localizedName];

    goto LABEL_17;
  }

  if (type == 1)
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

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration style:(id)style
{
  styleCopy = style;
  configurationCopy = configuration;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:0 preferredLayout:0 style:styleCopy numberingSystemType:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration style:(id)style numberingSystemType:(id)type
{
  typeCopy = type;
  styleCopy = style;
  configurationCopy = configuration;
  +[PUITextLayoutConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:0 preferredLayout:0 style:styleCopy numberingSystemType:typeCopy userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1
{
  nameCopy = name;
  typeCopy = type;
  styleCopy = style;
  configurationCopy = configuration;
  v23 = [objc_opt_class() styleColorForStyle:styleCopy];
  BYTE1(v26) = enabled;
  LOBYTE(v26) = configured;
  v24 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:alignment preferredLayout:layout style:styleCopy styleColor:v23 numberingSystemType:typeCopy userConfigured:luminance contentsLuminance:v26 alternateDateEnabled:nameCopy groupName:?];

  return v24;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2
{
  configurationCopy = configuration;
  styleCopy = style;
  colorCopy = color;
  typeCopy = type;
  nameCopy = name;
  v24 = objc_opt_self();
  v25 = [(PUITextLayoutConfiguration *)self isMemberOfClass:v24];

  if (v25)
  {
    LOWORD(v29) = __PAIR16__(enabled, configured);
    v26 = [[PUIImmutableTextLayoutConfiguration alloc] initWithFontConfiguration:configurationCopy preferredAlignment:alignment preferredLayout:layout style:styleCopy styleColor:colorCopy numberingSystemType:typeCopy userConfigured:luminance contentsLuminance:v29 alternateDateEnabled:nameCopy groupName:?];
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

- (PUITextLayoutConfiguration)initWithTextLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fontConfiguration = [configurationCopy fontConfiguration];
  preferredAlignment = [configurationCopy preferredAlignment];
  preferredLayout = [configurationCopy preferredLayout];
  style = [configurationCopy style];
  styleColor = [configurationCopy styleColor];
  numberingSystemType = [configurationCopy numberingSystemType];
  isUserConfigured = [configurationCopy isUserConfigured];
  [configurationCopy contentsLuminance];
  v12 = v11;
  isAlternateDateEnabled = [configurationCopy isAlternateDateEnabled];
  groupName = [configurationCopy groupName];

  BYTE1(v17) = isAlternateDateEnabled;
  LOBYTE(v17) = isUserConfigured;
  v15 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:fontConfiguration preferredAlignment:preferredAlignment preferredLayout:preferredLayout style:style styleColor:styleColor numberingSystemType:numberingSystemType userConfigured:v12 contentsLuminance:v17 alternateDateEnabled:groupName groupName:?];

  return v15;
}

- (id)effectiveFontWithExtensionBundle:(id)bundle forRole:(id)role
{
  roleCopy = role;
  bundleURL = [bundle bundleURL];
  v8 = [(PUITextLayoutConfiguration *)self effectiveFontWithExtensionBundleURL:bundleURL forRole:roleCopy];

  return v8;
}

- (id)effectiveFontWithExtensionBundleURL:(id)l forRole:(id)role
{
  lCopy = l;
  roleCopy = role;
  fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = fontConfiguration;
    fontIdentifier = [v11 fontIdentifier];
    if (fontIdentifier)
    {
      v13 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:fontIdentifier forRole:roleCopy];
      [v11 weight];
      v15 = [v13 pui_UIFontWithVariantWeight:v14 forRole:roleCopy];
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

  if ((v17 & 1) == 0 || ([fontConfiguration fontWithExtensionBundleURL:lCopy], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_9:
    v15 = [objc_opt_class() defaultFontForRole:roleCopy];
  }

LABEL_10:

  return v15;
}

- (PUIStyle)effectiveStyle
{
  style = [(PUITextLayoutConfiguration *)self style];
  if (!style)
  {
    if (([(PUITextLayoutConfiguration *)self isUserConfigured]& 1) != 0)
    {
      style = 0;
    }

    else
    {
      style = [objc_opt_class() defaultStyle];
    }
  }

  return style;
}

- (id)_effectivePrivateStyle
{
  effectiveStyle = [(PUITextLayoutConfiguration *)self effectiveStyle];
  if ([effectiveStyle conformsToProtocol:&unk_1F1CA3DC8])
  {
    v3 = effectiveStyle;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)effectiveStyleColor
{
  styleColor = [(PUITextLayoutConfiguration *)self styleColor];
  if (!styleColor)
  {
    if (([(PUITextLayoutConfiguration *)self isUserConfigured]& 1) != 0)
    {
      styleColor = 0;
    }

    else
    {
      styleColor = [objc_opt_class() defaultStyleColor];
    }
  }

  return styleColor;
}

- (unint64_t)effectiveAlignmentForText:(id)text withFont:(id)font
{
  textCopy = text;
  fontCopy = font;
  if (-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment") != 1 || (v8 = [getPRIncomingCallMetricsProviderClass() canApplyKashidaToText:textCopy withFont:fontCopy], preferredAlignment = 0, objc_msgSend(textCopy, "pui_isSuitableForArabicJustification")) && v8)
  {
    preferredAlignment = [(PUITextLayoutConfiguration *)self preferredAlignment];
  }

  return preferredAlignment;
}

- (unint64_t)effectiveLayoutForText:(id)text
{
  textCopy = text;
  if (!-[PUITextLayoutConfiguration prefersVerticalTitleLayout](self, "prefersVerticalTitleLayout") || (v5 = [textCopy length], v6 = objc_msgSend(getPRIncomingCallMetricsProviderClass(), "maximumVerticalTextLength"), preferredLayout = 0, objc_msgSend(textCopy, "pui_isSuitableForVerticalLayout")) && v5 <= v6)
  {
    preferredLayout = [(PUITextLayoutConfiguration *)self preferredLayout];
  }

  return preferredLayout;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle
{
  bundleURL = [bundle bundleURL];
  v5 = [(PUITextLayoutConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL];

  return v5;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  bundleURL = [bundle bundleURL];
  v7 = [(PUITextLayoutConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL luminanceReduced:reducedCopy];

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  lCopy = l;
  if (!lCopy)
  {
    v7 = PUILogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PUITextLayoutConfiguration vibrancyConfigurationWithExtensionBundleURL:v7 luminanceReduced:?];
    }
  }

  v8 = [(PUITextLayoutConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:lCopy luminanceReduced:reducedCopy];

  return v8;
}

- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  lCopy = l;
  vibrancyConfiguration = self->_vibrancyConfiguration;
  _effectivePrivateStyle = [(PUITextLayoutConfiguration *)self _effectivePrivateStyle];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v10 = PUIStyleBackgroundTypeForLuminance(v9);
  vibrancyEffectType = [_effectivePrivateStyle vibrancyEffectType];
  if (vibrancyConfiguration)
  {
    if ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType]== vibrancyEffectType)
    {
      groupName = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration groupName];
      groupName2 = [(PUITextLayoutConfiguration *)self groupName];
      LODWORD(vibrancyConfiguration) = BSEqualObjects();
    }

    else
    {
      LODWORD(vibrancyConfiguration) = 0;
    }
  }

  v14 = [MEMORY[0x1E698E810] pui_vibrancyLUTFromPrivateStyle:_effectivePrivateStyle extensionBundleURL:lCopy luminanceReduced:reducedCopy];
  if (!vibrancyConfiguration || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration alternativeVibrancyEffectLUT], v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, (v16 & 1) == 0))
  {
    v17 = objc_alloc(MEMORY[0x1E698E810]);
    v18 = BSUIVibrancyBackgroundTypeForPUIStyleBackgroundType(v10);
    vibrancyEffectColor = [_effectivePrivateStyle vibrancyEffectColor];
    groupName3 = [(PUITextLayoutConfiguration *)self groupName];
    v21 = [v17 initWithEffectType:vibrancyEffectType backgroundType:v18 color:vibrancyEffectColor groupName:groupName3 blendConfiguration:0 blendAmount:v14 alternativeVibrancyEffectLUT:0.0];
    v22 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v21;
  }

  v23 = self->_vibrancyConfiguration;
  v24 = v23;

  return v23;
}

- (NSString)effectiveNumberingSystemType
{
  numberingSystemType = [(PUITextLayoutConfiguration *)self numberingSystemType];
  if (!numberingSystemType)
  {
    numberingSystemType = [objc_opt_class() defaultNumberingSystemType];
  }

  return numberingSystemType;
}

- (BOOL)prefersVerticalTitleLayout
{
  preferredLayout = [(PUITextLayoutConfiguration *)self preferredLayout];

  return PUITextLayoutIsVertical(preferredLayout);
}

+ (id)defaultFontForRole:(id)role
{
  v3 = [MEMORY[0x1E69DB878] pui_defaultFontForRole:role];
  v4 = v3;
  if (v3)
  {
    pui_defaultFont = v3;
  }

  else
  {
    pui_defaultFont = [MEMORY[0x1E69DB878] pui_defaultFont];
  }

  v6 = pui_defaultFont;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
      fontConfiguration2 = [(PUITextLayoutConfiguration *)v7 fontConfiguration];
      v10 = BSEqualObjects();

      if (v10 && (v11 = [(PUITextLayoutConfiguration *)self preferredAlignment], v11 == [(PUITextLayoutConfiguration *)v7 preferredAlignment]) && (v12 = [(PUITextLayoutConfiguration *)self preferredLayout], v12 == [(PUITextLayoutConfiguration *)v7 preferredLayout]) && ([(PUITextLayoutConfiguration *)self style], v13 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v7 style], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PUITextLayoutConfiguration *)self numberingSystemType], v16 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)v7 numberingSystemType], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PUITextLayoutConfiguration *)self contentsLuminance], v20 = vcvtad_u64_f64(v19 * 10000.0), [(PUITextLayoutConfiguration *)v7 contentsLuminance], v20 == vcvtad_u64_f64(v21 * 10000.0)) && (v22 = [(PUITextLayoutConfiguration *)self isUserConfigured], v22 == [(PUITextLayoutConfiguration *)v7 isUserConfigured]))
      {
        isAlternateDateEnabled = [(PUITextLayoutConfiguration *)self isAlternateDateEnabled];
        v23 = isAlternateDateEnabled ^ [(PUITextLayoutConfiguration *)v7 isAlternateDateEnabled]^ 1;
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

- (BOOL)isVisiblyEqualToTextLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self == configurationCopy)
  {
    v16 = 1;
  }

  else
  {
    fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
    fontConfiguration2 = [(PUITextLayoutConfiguration *)configurationCopy fontConfiguration];
    v7 = BSEqualObjects();

    if (v7 && (v8 = [(PUITextLayoutConfiguration *)self preferredAlignment], v8 == [(PUITextLayoutConfiguration *)configurationCopy preferredAlignment]) && (v9 = [(PUITextLayoutConfiguration *)self preferredLayout], v9 == [(PUITextLayoutConfiguration *)configurationCopy preferredLayout]) && ([(PUITextLayoutConfiguration *)self style], v10 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)configurationCopy style], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(PUITextLayoutConfiguration *)self numberingSystemType], v13 = objc_claimAutoreleasedReturnValue(), [(PUITextLayoutConfiguration *)configurationCopy numberingSystemType], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      [(PUITextLayoutConfiguration *)self isAlternateDateEnabled];
      [(PUITextLayoutConfiguration *)configurationCopy isAlternateDateEnabled];
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
  fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v6 = [fontConfiguration hash];
  style = [(PUITextLayoutConfiguration *)self style];
  v8 = [style hash];
  numberingSystemType = [(PUITextLayoutConfiguration *)self numberingSystemType];
  v10 = [numberingSystemType hash];
  isUserConfigured = [(PUITextLayoutConfiguration *)self isUserConfigured];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUITextLayoutConfiguration isAlternateDateEnabled](self, "isAlternateDateEnabled")}];
  v13 = v6 ^ v8 ^ v10 ^ isUserConfigured ^ [v12 hash];

  return v13 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __41__PUITextLayoutConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PUITextLayoutConfiguration *)PUIMutableTextLayoutConfiguration allocWithZone:zone];

  return [(PUITextLayoutConfiguration *)v4 initWithTextLayoutConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
  [coderCopy encodeObject:fontConfiguration forKey:@"fontConfiguration"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment")}];
  [coderCopy encodeObject:v5 forKey:@"preferredAlignment"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredLayout](self, "preferredLayout")}];
  [coderCopy encodeObject:v6 forKey:@"preferredLayout"];

  style = [(PUITextLayoutConfiguration *)self style];
  [coderCopy pui_encodeStyle:style forKey:@"style" error:0];

  styleColor = [(PUITextLayoutConfiguration *)self styleColor];
  [coderCopy encodeObject:styleColor forKey:@"styleColor"];

  numberingSystemType = [(PUITextLayoutConfiguration *)self numberingSystemType];
  [coderCopy encodeObject:numberingSystemType forKey:@"numberingSystemType"];

  v10 = MEMORY[0x1E696AD98];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v11 = [v10 numberWithDouble:?];
  [coderCopy encodeObject:v11 forKey:@"contentsLuminence"];

  groupName = [(PUITextLayoutConfiguration *)self groupName];
  [coderCopy encodeObject:groupName forKey:@"groupName"];

  [coderCopy encodeBool:-[PUITextLayoutConfiguration isUserConfigured](self forKey:{"isUserConfigured"), @"userConfigured"}];
  [coderCopy encodeBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self forKey:{"isAlternateDateEnabled"), @"alternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_self();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v8 forKey:@"fontConfiguration"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
  v37 = v9;
  if (v9)
  {
    v39 = 0;
    defaultStyle = [PUIStyleSerialization styleForData:v9 error:&v39];
    v11 = v39;
    if (!defaultStyle)
    {
      v12 = PUILogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PUITextLayoutConfiguration *)v11 initWithCoder:v12];
      }

      defaultStyle = [objc_opt_class() defaultStyle];
    }

    contentStyle = defaultStyle;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"styleColor"];

    if (!v14)
    {
      v15 = objc_opt_self();
      v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"styleColor"];

      if (v16)
      {
        v14 = [[PUIStyleColor alloc] initWithColor:v16];
      }

      else
      {
        v14 = 0;
      }
    }

    contentStyle = [(PUIStyleColor *)v14 contentStyle];
  }

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"textAlignment"];

  if (v18)
  {
    unsignedIntegerValue = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"preferredLayout"];

  if (v20)
  {
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v21 = objc_opt_self();
  v22 = [coderCopy decodeObjectOfClass:v21 forKey:@"numberingSystemType"];

  v23 = [coderCopy decodeBoolForKey:@"userConfigured"];
  v24 = objc_opt_self();
  v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"contentsLuminence"];

  [objc_opt_class() defaultContentsLuminance];
  if (v25)
  {
    [v25 doubleValue];
  }

  v27 = v26;
  v28 = [coderCopy decodeBoolForKey:@"alternateDateEnabled"];
  v29 = objc_opt_self();
  v30 = [coderCopy decodeObjectOfClass:v29 forKey:@"groupName"];

  LOBYTE(v33) = v28;
  v31 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v38 preferredAlignment:unsignedIntegerValue preferredLayout:unsignedIntegerValue2 style:contentStyle numberingSystemType:v22 userConfigured:v23 contentsLuminance:v27 alternateDateEnabled:v33 groupName:v30];

  return v31;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
  [coderCopy encodeObject:fontConfiguration forKey:@"fontConfiguration"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredAlignment](self, "preferredAlignment")}];
  [coderCopy encodeObject:v6 forKey:@"preferredAlignment"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUITextLayoutConfiguration preferredLayout](self, "preferredLayout")}];
  [coderCopy encodeObject:v7 forKey:@"preferredLayout"];

  style = [(PUITextLayoutConfiguration *)self style];
  v14 = [PUIStyleSerialization dataForStyle:style error:0];

  [coderCopy encodeObject:v14 forKey:@"style"];
  styleColor = [(PUITextLayoutConfiguration *)self styleColor];
  [coderCopy encodeObject:styleColor forKey:@"styleColor"];

  numberingSystemType = [(PUITextLayoutConfiguration *)self numberingSystemType];
  [coderCopy encodeObject:numberingSystemType forKey:@"numberingSystemType"];

  v11 = MEMORY[0x1E696AD98];
  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v12 = [v11 numberWithDouble:?];
  [coderCopy encodeObject:v12 forKey:@"contentsLuminence"];

  groupName = [(PUITextLayoutConfiguration *)self groupName];
  [coderCopy encodeObject:groupName forKey:@"groupName"];

  [coderCopy encodeBool:-[PUITextLayoutConfiguration isUserConfigured](self forKey:{"isUserConfigured"), @"userConfigured"}];
  [coderCopy encodeBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self forKey:{"isAlternateDateEnabled"), @"alternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v37 = [coderCopy decodeObjectOfClass:v5 forKey:@"fontConfiguration"];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
  v36 = v6;
  if (v6)
  {
    v38 = 0;
    v7 = [PUIStyleSerialization styleForData:v6 error:&v38];
    v8 = v38;
    v35 = v8;
    if (v7)
    {
      defaultStyle = v7;
    }

    else
    {
      v13 = v8;
      v14 = PUILogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(PUITextLayoutConfiguration *)v13 initWithCoder:v14];
      }

      defaultStyle = [objc_opt_class() defaultStyle];
    }
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"styleColor"];

    if (!v10)
    {
      v11 = objc_opt_self();
      v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"styleColor"];

      if (v12)
      {
        v10 = [[PUIStyleColor alloc] initWithColor:v12];
      }

      else
      {
        v10 = 0;
      }
    }

    defaultStyle = [(PUIStyleColor *)v10 contentStyle];

    v35 = 0;
  }

  v15 = objc_opt_self();
  v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"preferredAlignment"];

  if (v16)
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"preferredLayout"];

  if (v18)
  {
    unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"numberingSystemType"];

  v21 = [coderCopy decodeBoolForKey:@"userConfigured"];
  v22 = objc_opt_self();
  v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"contentsLuminence"];

  [objc_opt_class() defaultContentsLuminance];
  if (v23)
  {
    [v23 doubleValue];
  }

  v25 = v24;
  v26 = [coderCopy decodeBoolForKey:@"alternateDateEnabled"];
  v27 = objc_opt_self();
  v28 = [coderCopy decodeObjectOfClass:v27 forKey:@"groupName"];

  LOBYTE(v31) = v26;
  v29 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:v37 preferredAlignment:unsignedIntegerValue preferredLayout:unsignedIntegerValue2 style:defaultStyle numberingSystemType:v20 userConfigured:v21 contentsLuminance:v25 alternateDateEnabled:v31 groupName:v28];

  return v29;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  fontConfiguration = [(PUITextLayoutConfiguration *)self fontConfiguration];
  v5 = [formatterCopy appendObject:fontConfiguration withName:@"fontConfiguration"];

  v6 = [formatterCopy appendInteger:-[PUITextLayoutConfiguration preferredAlignment](self withName:{"preferredAlignment"), @"preferredAlignment"}];
  v7 = [formatterCopy appendInteger:-[PUITextLayoutConfiguration preferredLayout](self withName:{"preferredLayout"), @"preferredLayout"}];
  style = [(PUITextLayoutConfiguration *)self style];
  v9 = [formatterCopy appendObject:style withName:@"style"];

  numberingSystemType = [(PUITextLayoutConfiguration *)self numberingSystemType];
  v11 = [formatterCopy appendObject:numberingSystemType withName:@"numberingSystemType"];

  [(PUITextLayoutConfiguration *)self contentsLuminance];
  v12 = [formatterCopy appendDouble:@"contentsLuminance" withName:5 decimalPrecision:?];
  v13 = [formatterCopy appendBool:-[PUITextLayoutConfiguration isUserConfigured](self withName:{"isUserConfigured"), @"userConfigured"}];
  v14 = [formatterCopy appendBool:-[PUITextLayoutConfiguration isAlternateDateEnabled](self withName:{"isAlternateDateEnabled"), @"isAlternateDateEnabled"}];
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration styleColor:(id)color
{
  colorCopy = color;
  configurationCopy = configuration;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:0 preferredLayout:0 styleColor:colorCopy numberingSystemType:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration styleColor:(id)color numberingSystemType:(id)type
{
  typeCopy = type;
  colorCopy = color;
  configurationCopy = configuration;
  +[PUITextLayoutConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:0 preferredLayout:0 styleColor:colorCopy numberingSystemType:typeCopy userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PUITextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1
{
  nameCopy = name;
  typeCopy = type;
  colorCopy = color;
  configurationCopy = configuration;
  contentStyle = [colorCopy contentStyle];
  BYTE1(v26) = enabled;
  LOBYTE(v26) = configured;
  v24 = [(PUITextLayoutConfiguration *)self initWithFontConfiguration:configurationCopy preferredAlignment:alignment preferredLayout:layout style:contentStyle styleColor:colorCopy numberingSystemType:typeCopy userConfigured:luminance contentsLuminance:v26 alternateDateEnabled:nameCopy groupName:?];

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