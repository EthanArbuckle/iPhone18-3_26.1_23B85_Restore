@interface PRPosterTitleStyleConfiguration
+ (PRPosterTitleStyleConfiguration)allocWithZone:(_NSZone *)zone;
+ (id)defaultTitleContentStyleAdditionsForRole:(id)role;
+ (id)defaultTitleContentStyleForRole:(id)role;
+ (id)performMigrationIfNecessary:(id)necessary;
+ (id)titleColorForTitleContentStyle:(id)style;
+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVisiblyEqualToTitleStyleConfiguration:(id)configuration;
- (BOOL)prefersVerticalTitleLayout;
- (NSString)description;
- (NSString)effectiveTimeNumberingSystem;
- (PRPosterColor)effectiveTitleColor;
- (PRPosterTitleStyleConfiguration)init;
- (PRPosterTitleStyleConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterTitleStyleConfiguration)initWithCoder:(id)coder;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)y contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)y contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3 adaptiveTimeHeightUserConfigured:(BOOL)self4 version:(unint64_t)self5;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3 version:(unint64_t)self4;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 adaptiveTimeHeightUserConfigured:(BOOL)self5 version:(unint64_t)self6;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 version:(unint64_t)self5;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleColor:(id)color;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleColor:(id)color timeNumberingSystem:(id)system;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleContentStyle:(id)style;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleContentStyle:(id)style timeNumberingSystem:(id)system;
- (PRPosterTitleStyleConfiguration)initWithTitleStyleConfiguration:(id)configuration;
- (double)preferredTimeMaxYForOrientation:(int64_t)orientation;
- (id)_effectiveTitlePrivateContentStyleForRole:(id)role;
- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced role:(id)role;
- (id)effectiveTimeFontWithExtensionBundle:(id)bundle forRole:(id)role;
- (id)effectiveTimeFontWithExtensionBundleURL:(id)l forRole:(id)role;
- (id)effectiveTitleContentStyleForRole:(id)role;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)resolvedWithLookDefaultTitleStyleConfiguration:(id)configuration allowTitleColorUpdates:(BOOL)updates allowTitleFontUpdates:(BOOL)fontUpdates;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle forRole:(id)role;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced;
- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced forRole:(id)role;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced forRole:(id)role;
- (unint64_t)effectiveTitleAlignmentForText:(id)text withFont:(id)font;
- (unint64_t)effectiveTitleLayoutForText:(id)text;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterTitleStyleConfiguration

- (id)resolvedWithLookDefaultTitleStyleConfiguration:(id)configuration allowTitleColorUpdates:(BOOL)updates allowTitleFontUpdates:(BOOL)fontUpdates
{
  configurationCopy = configuration;
  v9 = [(PRPosterTitleStyleConfiguration *)self mutableCopy];
  [configurationCopy contentsLuminance];
  [v9 setContentsLuminance:?];
  groupName = [configurationCopy groupName];
  [v9 setGroupName:groupName];

  if (!updates)
  {
    effectiveTitleColor = [configurationCopy effectiveTitleColor];
    [v9 setTitleColor:effectiveTitleColor];
  }

  if (!fontUpdates)
  {
    timeFontConfiguration = [configurationCopy timeFontConfiguration];
    [v9 setTimeFontConfiguration:timeFontConfiguration];
  }

  v13 = [v9 copy];

  return v13;
}

+ (PRPosterTitleStyleConfiguration)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(PRPosterTitleStyleConfiguration *)PRImmutablePosterTitleStyleConfiguration allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PRPosterTitleStyleConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

+ (id)titleColorForTitleContentStyle:(id)style
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
  if (type > 2)
  {
    if (type == 3)
    {
      v10 = +[PRPosterColor vibrantMonochromeColor];
      goto LABEL_17;
    }

    if (type == 4)
    {
      lutIdentifier = [styleCopy lutIdentifier];
      v9 = [[PRPosterColor alloc] initWithLUTIdentifier:lutIdentifier];

      goto LABEL_18;
    }

    if (type != 5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v10 = +[PRPosterColor vibrantMaterialColor];
LABEL_17:
    v9 = v10;
    goto LABEL_18;
  }

  if (!type)
  {
    isVibrant = [styleCopy isVibrant];
    v12 = [PRPosterColor alloc];
    if (isVibrant)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    localizedName = [styleCopy localizedName];
    v9 = [(PRPosterColor *)v12 initWithColor:firstObject preferredStyle:v13 localizedName:localizedName];

    goto LABEL_18;
  }

  if (type == 1 || type == 2)
  {
    goto LABEL_11;
  }

LABEL_18:

  return v9;
}

- (PRPosterTitleStyleConfiguration)init
{
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v4) = 0;
  return [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:0 preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:0 timeNumberingSystem:0 userConfigured:0 contentsLuminance:v4 alternateDateEnabled:0 groupName:?];
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleContentStyle:(id)style
{
  styleCopy = style;
  configurationCopy = configuration;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:styleCopy timeNumberingSystem:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleContentStyle:(id)style timeNumberingSystem:(id)system
{
  systemCopy = system;
  styleCopy = style;
  configurationCopy = configuration;
  +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:styleCopy timeNumberingSystem:systemCopy userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3
{
  configuredCopy = configured;
  nameCopy = name;
  systemCopy = system;
  styleCopy = style;
  configurationCopy = configuration;
  LOBYTE(v29) = enabled;
  v27 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy timeNumberingSystem:systemCopy userConfigured:configuredCopy preferredTimeMaxYPortrait:portrait preferredTimeMaxYLandscape:landscape contentsLuminance:luminance alternateDateEnabled:v29 groupName:nameCopy version:+[PRPosterTitleStyleConfiguration currentVersion]];

  return v27;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3 version:(unint64_t)self4
{
  nameCopy = name;
  systemCopy = system;
  styleCopy = style;
  configurationCopy = configuration;
  v27 = [objc_opt_class() titleColorForTitleContentStyle:styleCopy];
  BYTE1(v30) = enabled;
  LOBYTE(v30) = configured;
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:v27 timeNumberingSystem:systemCopy userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v30 alternateDateEnabled:nameCopy groupName:version version:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3
{
  nameCopy = name;
  systemCopy = system;
  colorCopy = color;
  styleCopy = style;
  configurationCopy = configuration;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOWORD(v30) = __PAIR16__(enabled, configured);
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:y preferredTimeMaxYPortrait:v27 preferredTimeMaxYLandscape:luminance contentsLuminance:v30 alternateDateEnabled:nameCopy groupName:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4
{
  nameCopy = name;
  systemCopy = system;
  colorCopy = color;
  styleCopy = style;
  configurationCopy = configuration;
  LOWORD(v30) = __PAIR16__(enabled, configured);
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v30 alternateDateEnabled:nameCopy groupName:+[PRPosterTitleStyleConfiguration version:"currentVersion"]];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 version:(unint64_t)self5
{
  LOBYTE(v17) = 0;
  LOWORD(v16) = __PAIR16__(enabled, configured);
  return [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configuration preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:style titleColor:color timeNumberingSystem:system userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v16 alternateDateEnabled:name groupName:v17 adaptiveTimeHeightUserConfigured:version version:?];
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)portrait preferredTimeMaxYLandscape:(double)self0 contentsLuminance:(double)self1 alternateDateEnabled:(BOOL)self2 groupName:(id)self3 adaptiveTimeHeightUserConfigured:(BOOL)self4 version:(unint64_t)self5
{
  nameCopy = name;
  systemCopy = system;
  styleCopy = style;
  configurationCopy = configuration;
  v27 = [objc_opt_class() titleColorForTitleContentStyle:styleCopy];
  LOBYTE(v31) = userConfigured;
  BYTE1(v30) = enabled;
  LOBYTE(v30) = configured;
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:v27 timeNumberingSystem:systemCopy userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v30 alternateDateEnabled:nameCopy groupName:v31 adaptiveTimeHeightUserConfigured:version version:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 adaptiveTimeHeightUserConfigured:(BOOL)self5 version:(unint64_t)self6
{
  configurationCopy = configuration;
  styleCopy = style;
  colorCopy = color;
  systemCopy = system;
  nameCopy = name;
  v29 = objc_opt_self();
  v30 = [(PRPosterTitleStyleConfiguration *)self isMemberOfClass:v29];

  if (v30)
  {
    LOBYTE(v35) = userConfigured;
    LOWORD(v34) = __PAIR16__(enabled, configured);
    v31 = [[PRImmutablePosterTitleStyleConfiguration alloc] initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v34 alternateDateEnabled:nameCopy groupName:v35 adaptiveTimeHeightUserConfigured:version version:?];
  }

  else
  {
    v37.receiver = self;
    v37.super_class = PRPosterTitleStyleConfiguration;
    v31 = [(PRPosterTitleStyleConfiguration *)&v37 init];
    self = &v31->super;
  }

  p_super = &v31->super;

  return p_super;
}

- (PRPosterTitleStyleConfiguration)initWithTitleStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  timeFontConfiguration = [configurationCopy timeFontConfiguration];
  preferredTitleAlignment = [configurationCopy preferredTitleAlignment];
  preferredTitleLayout = [configurationCopy preferredTitleLayout];
  titleContentStyle = [configurationCopy titleContentStyle];
  titleColor = [configurationCopy titleColor];
  timeNumberingSystem = [configurationCopy timeNumberingSystem];
  isUserConfigured = [configurationCopy isUserConfigured];
  [configurationCopy preferredTimeMaxYPortrait];
  v10 = v9;
  [configurationCopy preferredTimeMaxYLandscape];
  v12 = v11;
  [configurationCopy contentsLuminance];
  v14 = v13;
  isAlternateDateEnabled = [configurationCopy isAlternateDateEnabled];
  groupName = [configurationCopy groupName];
  isAdaptiveTimeHeightUserConfigured = [configurationCopy isAdaptiveTimeHeightUserConfigured];
  version = [configurationCopy version];

  LOBYTE(v22) = isAdaptiveTimeHeightUserConfigured;
  BYTE1(v21) = isAlternateDateEnabled;
  LOBYTE(v21) = isUserConfigured;
  v19 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:timeFontConfiguration preferredTitleAlignment:preferredTitleAlignment preferredTitleLayout:preferredTitleLayout titleContentStyle:titleContentStyle titleColor:titleColor timeNumberingSystem:timeNumberingSystem userConfigured:v10 preferredTimeMaxYPortrait:v12 preferredTimeMaxYLandscape:v14 contentsLuminance:v21 alternateDateEnabled:groupName groupName:v22 adaptiveTimeHeightUserConfigured:version version:?];

  return v19;
}

- (id)effectiveTimeFontWithExtensionBundle:(id)bundle forRole:(id)role
{
  bundleCopy = bundle;
  roleCopy = role;
  if (!bundleCopy)
  {
    [PRPosterTitleStyleConfiguration effectiveTimeFontWithExtensionBundle:forRole:];
  }

  bundleURL = [bundleCopy bundleURL];
  v9 = [(PRPosterTitleStyleConfiguration *)self effectiveTimeFontWithExtensionBundleURL:bundleURL forRole:roleCopy];

  return v9;
}

- (id)effectiveTimeFontWithExtensionBundleURL:(id)l forRole:(id)role
{
  lCopy = l;
  roleCopy = role;
  if (!lCopy)
  {
    [PRPosterTitleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:forRole:];
  }

  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = timeFontConfiguration;
    timeFontIdentifier = [v11 timeFontIdentifier];
    if (timeFontIdentifier)
    {
      v13 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:timeFontIdentifier forRole:roleCopy];
      [v11 weight];
      v15 = [v13 pr_fontWithVariantWeight:v14 forRole:roleCopy];
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = objc_opt_self();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0 || ([timeFontConfiguration fontWithExtensionBundleURL:lCopy], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_11:
    v15 = [objc_opt_class() defaultTitleFontForRole:roleCopy];
  }

LABEL_12:

  return v15;
}

- (id)effectiveTitleContentStyleForRole:(id)role
{
  roleCopy = role;
  titleContentStyle = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  if (!titleContentStyle)
  {
    if (([(PRPosterTitleStyleConfiguration *)self isUserConfigured]& 1) != 0)
    {
      titleContentStyle = 0;
    }

    else
    {
      titleContentStyle = [objc_opt_class() defaultTitleContentStyleForRole:roleCopy];
    }
  }

  return titleContentStyle;
}

- (id)_effectiveTitlePrivateContentStyleForRole:(id)role
{
  v3 = [(PRPosterTitleStyleConfiguration *)self effectiveTitleContentStyleForRole:role];
  if ([v3 conformsToProtocol:&unk_1F1C8ED30])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)effectiveTitleAlignmentForText:(id)text withFont:(id)font
{
  textCopy = text;
  fontCopy = font;
  if (-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment") != 1 || (v8 = +[PRIncomingCallMetricsProvider canApplyKashidaToText:withFont:](PRIncomingCallMetricsProvider, "canApplyKashidaToText:withFont:", textCopy, fontCopy), preferredTitleAlignment = 0, [textCopy pr_isSuitableForArabicJustification]) && v8)
  {
    preferredTitleAlignment = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment];
  }

  return preferredTitleAlignment;
}

- (unint64_t)effectiveTitleLayoutForText:(id)text
{
  textCopy = text;
  if (!-[PRPosterTitleStyleConfiguration prefersVerticalTitleLayout](self, "prefersVerticalTitleLayout") || (v5 = [textCopy length], v6 = +[PRIncomingCallMetricsProvider maximumVerticalTextLength](PRIncomingCallMetricsProvider, "maximumVerticalTextLength"), preferredTitleLayout = 0, objc_msgSend(textCopy, "pr_isSuitableForVerticalLayout")) && v5 <= v6)
  {
    preferredTitleLayout = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout];
  }

  return preferredTitleLayout;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle forRole:(id)role
{
  roleCopy = role;
  bundleURL = [bundle bundleURL];
  v8 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL forRole:roleCopy];

  return v8;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced forRole:(id)role
{
  reducedCopy = reduced;
  roleCopy = role;
  bundleURL = [bundle bundleURL];
  v10 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL luminanceReduced:reducedCopy forRole:roleCopy];

  return v10;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced forRole:(id)role
{
  reducedCopy = reduced;
  lCopy = l;
  roleCopy = role;
  if (!lCopy)
  {
    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [PRPosterTitleStyleConfiguration vibrancyConfigurationWithExtensionBundleURL:v10 luminanceReduced:? forRole:?];
    }
  }

  v11 = [(PRPosterTitleStyleConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:lCopy luminanceReduced:reducedCopy role:roleCopy];

  return v11;
}

- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced role:(id)role
{
  reducedCopy = reduced;
  lCopy = l;
  vibrancyConfiguration = self->_vibrancyConfiguration;
  v10 = [(PRPosterTitleStyleConfiguration *)self _effectiveTitlePrivateContentStyleForRole:role];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v12 = PRPosterContentsBackgroundTypeForLuminance(v11);
  vibrancyEffectType = [v10 vibrancyEffectType];
  if (vibrancyConfiguration)
  {
    if ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType]== vibrancyEffectType)
    {
      groupName = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration groupName];
      groupName2 = [(PRPosterTitleStyleConfiguration *)self groupName];
      LODWORD(vibrancyConfiguration) = BSEqualObjects();
    }

    else
    {
      LODWORD(vibrancyConfiguration) = 0;
    }
  }

  v16 = [MEMORY[0x1E698E810] vibrancyLUTFromPrivateContentStyle:v10 extensionBundleURL:lCopy luminanceReduced:reducedCopy];
  if (!vibrancyConfiguration || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration alternativeVibrancyEffectLUT], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, (v18 & 1) == 0))
  {
    v19 = objc_alloc(MEMORY[0x1E698E810]);
    v20 = BSUIVibrancyBackgroundTypeForPRPosterContentsBackgroundType(v12);
    vibrancyEffectColor = [v10 vibrancyEffectColor];
    groupName3 = [(PRPosterTitleStyleConfiguration *)self groupName];
    v23 = [v19 initWithEffectType:vibrancyEffectType backgroundType:v20 color:vibrancyEffectColor groupName:groupName3 blendConfiguration:0 blendAmount:v16 alternativeVibrancyEffectLUT:0.0];
    v24 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v23;
  }

  v25 = self->_vibrancyConfiguration;
  v26 = v25;

  return v25;
}

- (NSString)effectiveTimeNumberingSystem
{
  timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  if (!timeNumberingSystem)
  {
    timeNumberingSystem = [objc_opt_class() defaultTimeNumberingSystem];
  }

  return timeNumberingSystem;
}

- (BOOL)prefersVerticalTitleLayout
{
  preferredTitleLayout = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout];

  return PRPosterTitleLayoutIsVertical(preferredTitleLayout);
}

- (double)preferredTimeMaxYForOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 1)
  {
    if ((orientation - 3) > 1)
    {
      v5 = objc_opt_class();

      [v5 defaultPreferredTimeMaxY];
    }

    else
    {

      [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
    }
  }

  else
  {

    [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  }

  return result;
}

+ (id)defaultTitleContentStyleForRole:(id)role
{
  v3 = objc_alloc_init(PRPosterContentVibrantMaterialStyle);

  return v3;
}

+ (id)defaultTitleContentStyleAdditionsForRole:(id)role
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PRPosterContentVibrantMaterialStyle);
  v7[0] = v3;
  v4 = objc_alloc_init(PRPosterContentVibrantMonochromeStyle);
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
      timeFontConfiguration2 = [(PRPosterTitleStyleConfiguration *)v7 timeFontConfiguration];
      v10 = BSEqualObjects();

      if (v10 && (v11 = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment], v11 == [(PRPosterTitleStyleConfiguration *)v7 preferredTitleAlignment]) && (v12 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout], v12 == [(PRPosterTitleStyleConfiguration *)v7 preferredTitleLayout]) && ([(PRPosterTitleStyleConfiguration *)self titleContentStyle], v13 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v7 titleContentStyle], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PRPosterTitleStyleConfiguration *)self timeNumberingSystem], v16 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v7 timeNumberingSystem], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait], v20 = vcvtad_u64_f64(v19 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 preferredTimeMaxYPortrait], v20 == vcvtad_u64_f64(v21 * 10000.0)) && ([(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape], v23 = vcvtad_u64_f64(v22 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 preferredTimeMaxYLandscape], v23 == vcvtad_u64_f64(v24 * 10000.0)) && ([(PRPosterTitleStyleConfiguration *)self contentsLuminance], v26 = vcvtad_u64_f64(v25 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 contentsLuminance], v26 == vcvtad_u64_f64(v27 * 10000.0)) && (v28 = [(PRPosterTitleStyleConfiguration *)self isUserConfigured], v28 == [(PRPosterTitleStyleConfiguration *)v7 isUserConfigured]) && (v29 = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured], v29 == [(PRPosterTitleStyleConfiguration *)v7 isAdaptiveTimeHeightUserConfigured]) && (v30 = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled], v30 == [(PRPosterTitleStyleConfiguration *)v7 isAlternateDateEnabled]))
      {
        version = [(PRPosterTitleStyleConfiguration *)self version];
        v31 = version == [(PRPosterTitleStyleConfiguration *)v7 version];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (BOOL)isVisiblyEqualToTitleStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self == configurationCopy)
  {
    v16 = 1;
  }

  else
  {
    timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
    timeFontConfiguration2 = [(PRPosterTitleStyleConfiguration *)configurationCopy timeFontConfiguration];
    v7 = BSEqualObjects();

    if (v7 && (v8 = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment], v8 == [(PRPosterTitleStyleConfiguration *)configurationCopy preferredTitleAlignment]) && (v9 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout], v9 == [(PRPosterTitleStyleConfiguration *)configurationCopy preferredTitleLayout]) && ([(PRPosterTitleStyleConfiguration *)self titleContentStyle], v10 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)configurationCopy titleContentStyle], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(PRPosterTitleStyleConfiguration *)self timeNumberingSystem], v13 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)configurationCopy timeNumberingSystem], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
      [(PRPosterTitleStyleConfiguration *)configurationCopy isAlternateDateEnabled];
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
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v20 = vcvtad_u64_f64(v3 * 10000.0);
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v19 = vcvtad_u64_f64(v4 * 10000.0);
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v18 = vcvtad_u64_f64(v5 * 10000.0);
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v17 = [timeFontConfiguration hash];
  titleContentStyle = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v8 = [titleContentStyle hash];
  timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  v10 = [timeNumberingSystem hash];
  isUserConfigured = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  isAdaptiveTimeHeightUserConfigured = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterTitleStyleConfiguration isAlternateDateEnabled](self, "isAlternateDateEnabled")}];
  v14 = [v13 hash];
  v15 = v8 ^ v10 ^ isUserConfigured ^ isAdaptiveTimeHeightUserConfigured ^ v14 ^ [(PRPosterTitleStyleConfiguration *)self version];

  return v19 ^ v20 ^ v17 ^ v18 ^ v15;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46__PRPosterTitleStyleConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRPosterTitleStyleConfiguration *)PRMutablePosterTitleStyleConfiguration allocWithZone:zone];

  return [(PRPosterTitleStyleConfiguration *)v4 initWithTitleStyleConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  [coderCopy encodeObject:timeFontConfiguration forKey:*MEMORY[0x1E69C5528]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C5518]];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleLayout](self, "preferredTitleLayout")}];
  [coderCopy encodeObject:v7 forKey:*MEMORY[0x1E69C5520]];

  titleContentStyle = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = PRLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (titleContentStyle)
  {
    if (v10)
    {
      [PRPosterTitleStyleConfiguration encodeWithCoder:];
    }

    v9 = [PRPosterContentStyleSerialization dataForContentStyle:titleContentStyle error:0];
    [coderCopy encodeObject:v9 forKey:*MEMORY[0x1E69C5540]];
  }

  else if (v10)
  {
    [PRPosterTitleStyleConfiguration encodeWithCoder:];
  }

  titleColor = [(PRPosterTitleStyleConfiguration *)self titleColor];
  [coderCopy encodeObject:titleColor forKey:*MEMORY[0x1E69C5538]];

  timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  [coderCopy encodeObject:timeNumberingSystem forKey:*MEMORY[0x1E69C5530]];

  v13 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v14 = [v13 numberWithDouble:?];
  [coderCopy encodeObject:v14 forKey:@"preferredTimeMaxY"];

  v15 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v16 = [v15 numberWithDouble:?];
  [coderCopy encodeObject:v16 forKey:@"preferredTimeMaxYLandscape"];

  v17 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v18 = [v17 numberWithDouble:?];
  [coderCopy encodeObject:v18 forKey:*MEMORY[0x1E69C54F0]];

  groupName = [(PRPosterTitleStyleConfiguration *)self groupName];
  [coderCopy encodeObject:groupName forKey:*MEMORY[0x1E69C54F8]];

  isUserConfigured = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  [coderCopy encodeBool:isUserConfigured forKey:*MEMORY[0x1E69C5510]];
  isAdaptiveTimeHeightUserConfigured = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  [coderCopy encodeBool:isAdaptiveTimeHeightUserConfigured forKey:*MEMORY[0x1E69C5500]];
  isAlternateDateEnabled = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
  [coderCopy encodeBool:isAlternateDateEnabled forKey:*MEMORY[0x1E69C5508]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration version](self, "version")}];
  [coderCopy encodeObject:v23 forKey:@"version"];
}

- (PRPosterTitleStyleConfiguration)initWithCoder:(id)coder
{
  v61 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_self();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v53 = [coderCopy decodeObjectOfClasses:v8 forKey:*MEMORY[0x1E69C5528]];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5540]];
  v52 = v9;
  if (v9)
  {
    v54 = 0;
    contentStyle = [PRPosterContentStyleSerialization contentStyleForData:v9 error:&v54];
    v11 = v54;
    if (contentStyle)
    {
      goto LABEL_13;
    }

    contentStyle = [objc_opt_class() defaultTitleContentStyleForRole:@"PRPosterRoleLockScreen"];
    v12 = PRLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v56 = v11;
      v57 = 2114;
      v58 = @"PRPosterRoleLockScreen";
      v59 = 2114;
      v60 = contentStyle;
      _os_log_error_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_ERROR, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle deserialization failed with error: %{public}@, falling back to defaultTitleContentStyle for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v13 = objc_opt_self();
    v14 = *MEMORY[0x1E69C5538];
    v11 = [coderCopy decodeObjectOfClass:v13 forKey:*MEMORY[0x1E69C5538]];

    if (!v11)
    {
      v15 = objc_opt_self();
      v16 = [coderCopy decodeObjectOfClass:v15 forKey:v14];

      if (v16)
      {
        v11 = [[PRPosterColor alloc] initWithColor:v16];
      }

      else
      {
        v11 = 0;
      }
    }

    contentStyle = [(PRPosterColor *)v11 contentStyle];
    v12 = PRLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = contentStyle;
      _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle data was nil... so we got a title color and a style from it: %@", buf, 0xCu);
    }
  }

LABEL_13:
  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:*MEMORY[0x1E69C5518]];

  if (v18)
  {
    unsignedIntegerValue = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:*MEMORY[0x1E69C5520]];

  v51 = v18;
  if (v20)
  {
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v21 = objc_opt_self();
  v48 = [coderCopy decodeObjectOfClass:v21 forKey:*MEMORY[0x1E69C5530]];

  v46 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5510]];
  v45 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5500]];
  v22 = objc_opt_self();
  v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"preferredTimeMaxY"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  if (v23)
  {
    [v23 doubleValue];
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [coderCopy decodeObjectOfClass:v26 forKey:@"preferredTimeMaxYLandscape"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  if (v27)
  {
    [v27 doubleValue];
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [coderCopy decodeObjectOfClass:v30 forKey:*MEMORY[0x1E69C54F0]];

  [objc_opt_class() defaultContentsLuminance];
  v50 = v20;
  if (v31)
  {
    [v31 doubleValue];
  }

  v33 = v32;
  v34 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5508]];
  v35 = objc_opt_self();
  v36 = [coderCopy decodeObjectOfClass:v35 forKey:*MEMORY[0x1E69C54F8]];

  v37 = objc_opt_self();
  v38 = [coderCopy decodeObjectOfClass:v37 forKey:@"version"];

  if (v38)
  {
    unsignedIntegerValue3 = [v38 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = 0;
  }

  LOBYTE(v44) = v45;
  LOBYTE(v43) = v34;
  v40 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v53 preferredTitleAlignment:unsignedIntegerValue preferredTitleLayout:unsignedIntegerValue2 titleContentStyle:contentStyle timeNumberingSystem:v48 userConfigured:v46 preferredTimeMaxYPortrait:v25 preferredTimeMaxYLandscape:v29 contentsLuminance:v33 alternateDateEnabled:v43 groupName:v36 adaptiveTimeHeightUserConfigured:v44 version:unsignedIntegerValue3];
  v41 = [PRPosterTitleStyleConfiguration performMigrationIfNecessary:v40];

  return v41;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  [coderCopy encodeObject:timeFontConfiguration forKey:*MEMORY[0x1E69C5528]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C5518]];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleLayout](self, "preferredTitleLayout")}];
  [coderCopy encodeObject:v7 forKey:*MEMORY[0x1E69C5520]];

  titleContentStyle = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = PRLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (titleContentStyle)
  {
    if (v10)
    {
      [PRPosterTitleStyleConfiguration encodeWithCoder:];
    }

    v9 = [PRPosterContentStyleSerialization dataForContentStyle:titleContentStyle error:0];
    [coderCopy encodeObject:v9 forKey:*MEMORY[0x1E69C5540]];
  }

  else if (v10)
  {
    [PRPosterTitleStyleConfiguration encodeWithCoder:];
  }

  titleColor = [(PRPosterTitleStyleConfiguration *)self titleColor];
  [coderCopy encodeObject:titleColor forKey:*MEMORY[0x1E69C5538]];

  timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  [coderCopy encodeObject:timeNumberingSystem forKey:*MEMORY[0x1E69C5530]];

  v13 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v14 = [v13 numberWithDouble:?];
  [coderCopy encodeObject:v14 forKey:@"preferredTimeMaxY"];

  v15 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v16 = [v15 numberWithDouble:?];
  [coderCopy encodeObject:v16 forKey:@"preferredTimeMaxYLandscape"];

  v17 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v18 = [v17 numberWithDouble:?];
  [coderCopy encodeObject:v18 forKey:*MEMORY[0x1E69C54F0]];

  groupName = [(PRPosterTitleStyleConfiguration *)self groupName];
  [coderCopy encodeObject:groupName forKey:*MEMORY[0x1E69C54F8]];

  isUserConfigured = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  [coderCopy encodeBool:isUserConfigured forKey:*MEMORY[0x1E69C5510]];
  isAdaptiveTimeHeightUserConfigured = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  [coderCopy encodeBool:isAdaptiveTimeHeightUserConfigured forKey:*MEMORY[0x1E69C5500]];
  isAlternateDateEnabled = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
  [coderCopy encodeBool:isAlternateDateEnabled forKey:*MEMORY[0x1E69C5508]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration version](self, "version")}];
  [coderCopy encodeObject:v23 forKey:@"version"];
}

- (PRPosterTitleStyleConfiguration)initWithBSXPCCoder:(id)coder
{
  v60 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v52 = [coderCopy decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C5528]];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5540]];
  v51 = v6;
  if (v6)
  {
    v53 = 0;
    contentStyle = [PRPosterContentStyleSerialization contentStyleForData:v6 error:&v53];
    v8 = v53;
    if (contentStyle)
    {
      goto LABEL_14;
    }

    contentStyle = [objc_opt_class() defaultTitleContentStyleForRole:@"PRPosterRoleLockScreen"];
    v9 = PRLogCommon();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v55 = v8;
      v56 = 2114;
      v57 = @"PRPosterRoleLockScreen";
      v58 = 2114;
      v59 = contentStyle;
      _os_log_error_impl(&dword_1A8AA7000, &v9->super, OS_LOG_TYPE_ERROR, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle deserialization failed with error: %{public}@, falling back to defaultTitleContentStyle for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = *MEMORY[0x1E69C5538];
    v9 = [coderCopy decodeObjectOfClass:v10 forKey:*MEMORY[0x1E69C5538]];

    if (!v9)
    {
      v12 = objc_opt_self();
      v13 = [coderCopy decodeObjectOfClass:v12 forKey:v11];

      if (v13)
      {
        v9 = [[PRPosterColor alloc] initWithColor:v13];
      }

      else
      {
        v9 = 0;
      }
    }

    contentStyle = [(PRPosterColor *)v9 contentStyle];
    v14 = PRLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = contentStyle;
      _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle data was nil... so we got a title color and a style from it: %@", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_14:
  v15 = objc_opt_self();
  v16 = [coderCopy decodeObjectOfClass:v15 forKey:*MEMORY[0x1E69C5518]];

  if (v16)
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:*MEMORY[0x1E69C5520]];

  v49 = v16;
  if (v18)
  {
    unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v19 = objc_opt_self();
  v46 = [coderCopy decodeObjectOfClass:v19 forKey:*MEMORY[0x1E69C5530]];

  v44 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5510]];
  v43 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5500]];
  v20 = objc_opt_self();
  v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"preferredTimeMaxY"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  v48 = v18;
  if (v21)
  {
    [v21 doubleValue];
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"preferredTimeMaxYLandscape"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  v50 = v8;
  if (v25)
  {
    [v25 doubleValue];
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [coderCopy decodeObjectOfClass:v28 forKey:*MEMORY[0x1E69C54F0]];

  [objc_opt_class() defaultContentsLuminance];
  if (v29)
  {
    [v29 doubleValue];
  }

  v31 = v30;
  v32 = [coderCopy decodeBoolForKey:*MEMORY[0x1E69C5508]];
  v33 = objc_opt_self();
  v34 = [coderCopy decodeObjectOfClass:v33 forKey:*MEMORY[0x1E69C54F8]];

  v35 = objc_opt_self();
  v36 = [coderCopy decodeObjectOfClass:v35 forKey:@"version"];

  if (v36)
  {
    unsignedIntegerValue3 = [v36 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue3 = 0;
  }

  LOBYTE(v42) = v43;
  BYTE1(v41) = v32;
  LOBYTE(v41) = v44;
  v38 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v52 preferredTitleAlignment:unsignedIntegerValue preferredTitleLayout:unsignedIntegerValue2 titleContentStyle:contentStyle titleColor:0 timeNumberingSystem:v46 userConfigured:v23 preferredTimeMaxYPortrait:v27 preferredTimeMaxYLandscape:v31 contentsLuminance:v41 alternateDateEnabled:v34 groupName:v42 adaptiveTimeHeightUserConfigured:unsignedIntegerValue3 version:?];
  v39 = [PRPosterTitleStyleConfiguration performMigrationIfNecessary:v38];

  return v39;
}

+ (id)performMigrationIfNecessary:(id)necessary
{
  v46 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  version = [necessaryCopy version];
  if (version < +[PRPosterTitleStyleConfiguration currentVersion]&& PUIFeatureEnabled())
  {
    timeFontConfiguration = [necessaryCopy timeFontConfiguration];
    v6 = objc_opt_class();
    v7 = timeFontConfiguration;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v11 = v7;
    if (v10)
    {
      v12 = MEMORY[0x1E69DB878];
      timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)v10 timeFontIdentifier];
      v14 = [v12 pr_fontWithTimeFontIdentifier:timeFontIdentifier];

      v11 = v7;
      if ([MEMORY[0x1E6999608] providesMetricsForFont:v14])
      {
        [(PRPosterSystemTimeFontConfiguration *)v10 weight];
        v11 = v7;
        if (v15 == [v14 pr_variantWeight])
        {
          [MEMORY[0x1E6999608] defaultWeightForBaseFont:v14];
          v17 = v16;
          v18 = [PRPosterSystemTimeFontConfiguration alloc];
          timeFontIdentifier2 = [(PRPosterSystemTimeFontConfiguration *)v10 timeFontIdentifier];
          v11 = [(PRPosterSystemTimeFontConfiguration *)v18 initWithTimeFontIdentifier:timeFontIdentifier2 weight:[(PRPosterSystemTimeFontConfiguration *)v10 isSystemItem] systemItem:v17];

          v20 = PRLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [(PRPosterSystemTimeFontConfiguration *)v10 weight];
            *buf = 134218240;
            v43 = v21;
            v44 = 2048;
            v45 = v17;
            _os_log_impl(&dword_1A8AA7000, v20, OS_LOG_TYPE_DEFAULT, "Migrating font weight from %f to %f", buf, 0x16u);
          }
        }
      }
    }

    v40 = v7;
    v41 = v10;
    v22 = [PRPosterTitleStyleConfiguration alloc];
    preferredTitleAlignment = [necessaryCopy preferredTitleAlignment];
    preferredTitleLayout = [necessaryCopy preferredTitleLayout];
    titleContentStyle = [necessaryCopy titleContentStyle];
    timeNumberingSystem = [necessaryCopy timeNumberingSystem];
    isUserConfigured = [necessaryCopy isUserConfigured];
    [necessaryCopy preferredTimeMaxYPortrait];
    v29 = v28;
    [necessaryCopy preferredTimeMaxYLandscape];
    v31 = v30;
    [necessaryCopy contentsLuminance];
    v33 = v32;
    isAlternateDateEnabled = [necessaryCopy isAlternateDateEnabled];
    groupName = [necessaryCopy groupName];
    LOBYTE(v39) = isAlternateDateEnabled;
    v9 = [(PRPosterTitleStyleConfiguration *)v22 initWithTimeFontConfiguration:v11 preferredTitleAlignment:preferredTitleAlignment preferredTitleLayout:preferredTitleLayout titleContentStyle:titleContentStyle timeNumberingSystem:timeNumberingSystem userConfigured:isUserConfigured preferredTimeMaxYPortrait:v29 preferredTimeMaxYLandscape:v31 contentsLuminance:v33 alternateDateEnabled:v39 groupName:groupName];

    v36 = PRLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      version2 = [(PRPosterTitleStyleConfiguration *)v9 version];
      *buf = 134217984;
      v43 = version2;
      _os_log_impl(&dword_1A8AA7000, v36, OS_LOG_TYPE_DEFAULT, "Migrating titleStyleConfiguration to version: %lu", buf, 0xCu);
    }
  }

  else
  {
    v9 = necessaryCopy;
  }

  return v9;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  timeFontConfiguration = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v5 = [formatterCopy appendObject:timeFontConfiguration withName:@"timeFontConfiguration"];

  v6 = [formatterCopy appendInteger:-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self withName:{"preferredTitleAlignment"), @"preferredTitleAlignment"}];
  v7 = [formatterCopy appendInteger:-[PRPosterTitleStyleConfiguration preferredTitleLayout](self withName:{"preferredTitleLayout"), @"preferredTitleLayout"}];
  titleContentStyle = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = [formatterCopy appendObject:titleContentStyle withName:@"titleContentStyle"];

  timeNumberingSystem = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  v11 = [formatterCopy appendObject:timeNumberingSystem withName:@"timeNumberingSystem"];

  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v12 = [formatterCopy appendDouble:@"preferredTimeMaxYPortrait" withName:5 decimalPrecision:?];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v13 = [formatterCopy appendDouble:@"preferredTimeMaxYLandscape" withName:5 decimalPrecision:?];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v14 = [formatterCopy appendDouble:@"contentsLuminance" withName:5 decimalPrecision:?];
  v15 = [formatterCopy appendBool:-[PRPosterTitleStyleConfiguration isUserConfigured](self withName:{"isUserConfigured"), @"userConfigured"}];
  v16 = [formatterCopy appendBool:-[PRPosterTitleStyleConfiguration isAlternateDateEnabled](self withName:{"isAlternateDateEnabled"), @"isAlternateDateEnabled"}];
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleColor:(id)color
{
  colorCopy = color;
  configurationCopy = configuration;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:colorCopy timeNumberingSystem:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration titleColor:(id)color timeNumberingSystem:(id)system
{
  systemCopy = system;
  colorCopy = color;
  configurationCopy = configuration;
  +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)luminance alternateDateEnabled:(BOOL)self0 groupName:(id)self1
{
  configuredCopy = configured;
  nameCopy = name;
  systemCopy = system;
  colorCopy = color;
  configurationCopy = configuration;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOBYTE(v24) = enabled;
  v22 = [PRPosterTitleStyleConfiguration initWithTimeFontConfiguration:"initWithTimeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleColor:timeNumberingSystem:userConfigured:preferredTimeMaxY:contentsLuminance:alternateDateEnabled:groupName:" preferredTitleAlignment:configurationCopy preferredTitleLayout:alignment titleColor:layout timeNumberingSystem:colorCopy userConfigured:systemCopy preferredTimeMaxY:configuredCopy contentsLuminance:v24 alternateDateEnabled:nameCopy groupName:?];

  return v22;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)y contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2
{
  nameCopy = name;
  systemCopy = system;
  colorCopy = color;
  configurationCopy = configuration;
  contentStyle = [colorCopy contentStyle];
  BYTE1(v28) = enabled;
  LOBYTE(v28) = configured;
  v26 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:contentStyle titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:y preferredTimeMaxY:luminance contentsLuminance:v28 alternateDateEnabled:nameCopy groupName:?];

  return v26;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxY:(double)y contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2
{
  nameCopy = name;
  systemCopy = system;
  styleCopy = style;
  configurationCopy = configuration;
  v25 = [objc_opt_class() titleColorForTitleContentStyle:styleCopy];
  BYTE1(v28) = enabled;
  LOBYTE(v28) = configured;
  v26 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:v25 timeNumberingSystem:systemCopy userConfigured:y preferredTimeMaxY:luminance contentsLuminance:v28 alternateDateEnabled:nameCopy groupName:?];

  return v26;
}

- (PRPosterColor)effectiveTitleColor
{
  titleColor = [(PRPosterTitleStyleConfiguration *)self titleColor];
  if (!titleColor)
  {
    if (([(PRPosterTitleStyleConfiguration *)self isUserConfigured]& 1) != 0)
    {
      titleColor = 0;
    }

    else
    {
      titleColor = [objc_opt_class() defaultTitleColor];
    }
  }

  return titleColor;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle
{
  bundleURL = [bundle bundleURL];
  v5 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL];

  return v5;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)bundle luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  bundleURL = [bundle bundleURL];
  v7 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:bundleURL luminanceReduced:reducedCopy];

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)l luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  lCopy = l;
  if (!lCopy)
  {
    v7 = PRLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PRPosterTitleStyleConfiguration vibrancyConfigurationWithExtensionBundleURL:v7 luminanceReduced:? forRole:?];
    }
  }

  v8 = [(PRPosterTitleStyleConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:lCopy luminanceReduced:reducedCopy role:@"PRPosterRoleLockScreen"];

  return v8;
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)unarchiver
{
  sub_1A8BDDB44();
  unarchiverCopy = unarchiver;
  MEMORY[0x1AC573340]();
}

- (void)effectiveTimeFontWithExtensionBundle:forRole:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"PRPosterTitleStyleConfiguration.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"extensionBundle != nil"}];
}

- (void)effectiveTimeFontWithExtensionBundleURL:forRole:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"PRPosterTitleStyleConfiguration.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleURL != nil"}];
}

- (void)encodeWithCoder:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)encodeWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end