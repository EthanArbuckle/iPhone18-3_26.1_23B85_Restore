@interface PRPosterTitleStyleConfiguration
+ (PRPosterTitleStyleConfiguration)allocWithZone:(_NSZone *)a3;
+ (id)defaultTitleContentStyleAdditionsForRole:(id)a3;
+ (id)defaultTitleContentStyleForRole:(id)a3;
+ (id)performMigrationIfNecessary:(id)a3;
+ (id)titleColorForTitleContentStyle:(id)a3;
+ (void)performClassReplacementForKeyedUnarchiver:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVisiblyEqualToTitleStyleConfiguration:(id)a3;
- (BOOL)prefersVerticalTitleLayout;
- (NSString)description;
- (NSString)effectiveTimeNumberingSystem;
- (PRPosterColor)effectiveTitleColor;
- (PRPosterTitleStyleConfiguration)init;
- (PRPosterTitleStyleConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterTitleStyleConfiguration)initWithCoder:(id)a3;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleColor:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleColor:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxY:(double)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxY:(double)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13 adaptiveTimeHeightUserConfigured:(BOOL)a14 version:(unint64_t)a15;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13 version:(unint64_t)a14;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxY:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 adaptiveTimeHeightUserConfigured:(BOOL)a15 version:(unint64_t)a16;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 version:(unint64_t)a15;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleColor:(id)a4;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleColor:(id)a4 timeNumberingSystem:(id)a5;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleContentStyle:(id)a4;
- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleContentStyle:(id)a4 timeNumberingSystem:(id)a5;
- (PRPosterTitleStyleConfiguration)initWithTitleStyleConfiguration:(id)a3;
- (double)preferredTimeMaxYForOrientation:(int64_t)a3;
- (id)_effectiveTitlePrivateContentStyleForRole:(id)a3;
- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4 role:(id)a5;
- (id)effectiveTimeFontWithExtensionBundle:(id)a3 forRole:(id)a4;
- (id)effectiveTimeFontWithExtensionBundleURL:(id)a3 forRole:(id)a4;
- (id)effectiveTitleContentStyleForRole:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)resolvedWithLookDefaultTitleStyleConfiguration:(id)a3 allowTitleColorUpdates:(BOOL)a4 allowTitleFontUpdates:(BOOL)a5;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 forRole:(id)a4;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4;
- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4 forRole:(id)a5;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4;
- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4 forRole:(id)a5;
- (unint64_t)effectiveTitleAlignmentForText:(id)a3 withFont:(id)a4;
- (unint64_t)effectiveTitleLayoutForText:(id)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterTitleStyleConfiguration

- (id)resolvedWithLookDefaultTitleStyleConfiguration:(id)a3 allowTitleColorUpdates:(BOOL)a4 allowTitleFontUpdates:(BOOL)a5
{
  v8 = a3;
  v9 = [(PRPosterTitleStyleConfiguration *)self mutableCopy];
  [v8 contentsLuminance];
  [v9 setContentsLuminance:?];
  v10 = [v8 groupName];
  [v9 setGroupName:v10];

  if (!a4)
  {
    v11 = [v8 effectiveTitleColor];
    [v9 setTitleColor:v11];
  }

  if (!a5)
  {
    v12 = [v8 timeFontConfiguration];
    [v9 setTimeFontConfiguration:v12];
  }

  v13 = [v9 copy];

  return v13;
}

+ (PRPosterTitleStyleConfiguration)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(PRPosterTitleStyleConfiguration *)PRImmutablePosterTitleStyleConfiguration allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PRPosterTitleStyleConfiguration;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

+ (id)titleColorForTitleContentStyle:(id)a3
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
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v10 = +[PRPosterColor vibrantMonochromeColor];
      goto LABEL_17;
    }

    if (v4 == 4)
    {
      v16 = [v3 lutIdentifier];
      v9 = [[PRPosterColor alloc] initWithLUTIdentifier:v16];

      goto LABEL_18;
    }

    if (v4 != 5)
    {
      goto LABEL_18;
    }

LABEL_11:
    v10 = +[PRPosterColor vibrantMaterialColor];
LABEL_17:
    v9 = v10;
    goto LABEL_18;
  }

  if (!v4)
  {
    v11 = [v3 isVibrant];
    v12 = [PRPosterColor alloc];
    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [v3 localizedName];
    v9 = [(PRPosterColor *)v12 initWithColor:v6 preferredStyle:v13 localizedName:v14];

    goto LABEL_18;
  }

  if (v4 == 1 || v4 == 2)
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

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleContentStyle:(id)a4
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v7 preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:v6 timeNumberingSystem:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleContentStyle:(id)a4 timeNumberingSystem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v10 preferredTitleAlignment:0 preferredTitleLayout:0 titleContentStyle:v9 timeNumberingSystem:v8 userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13
{
  v16 = a8;
  v23 = a13;
  v24 = a7;
  v25 = a6;
  v26 = a3;
  LOBYTE(v29) = a12;
  v27 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v26 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 timeNumberingSystem:v24 userConfigured:v16 preferredTimeMaxYPortrait:a9 preferredTimeMaxYLandscape:a10 contentsLuminance:a11 alternateDateEnabled:v29 groupName:v23 version:+[PRPosterTitleStyleConfiguration currentVersion]];

  return v27;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13 version:(unint64_t)a14
{
  v23 = a13;
  v24 = a7;
  v25 = a6;
  v26 = a3;
  v27 = [objc_opt_class() titleColorForTitleContentStyle:v25];
  BYTE1(v30) = a12;
  LOBYTE(v30) = a8;
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v26 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 titleColor:v27 timeNumberingSystem:v24 userConfigured:a9 preferredTimeMaxYPortrait:a10 preferredTimeMaxYLandscape:a11 contentsLuminance:v30 alternateDateEnabled:v23 groupName:a14 version:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxY:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13
{
  v22 = a13;
  v23 = a8;
  v24 = a7;
  v25 = a6;
  v26 = a3;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOWORD(v30) = __PAIR16__(a12, a9);
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v26 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 titleColor:v24 timeNumberingSystem:v23 userConfigured:a10 preferredTimeMaxYPortrait:v27 preferredTimeMaxYLandscape:a11 contentsLuminance:v30 alternateDateEnabled:v22 groupName:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14
{
  v23 = a14;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a3;
  LOWORD(v30) = __PAIR16__(a13, a9);
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v27 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v26 titleColor:v25 timeNumberingSystem:v24 userConfigured:a10 preferredTimeMaxYPortrait:a11 preferredTimeMaxYLandscape:a12 contentsLuminance:v30 alternateDateEnabled:v23 groupName:+[PRPosterTitleStyleConfiguration version:"currentVersion"]];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 version:(unint64_t)a15
{
  LOBYTE(v17) = 0;
  LOWORD(v16) = __PAIR16__(a13, a9);
  return [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:a3 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:a6 titleColor:a7 timeNumberingSystem:a8 userConfigured:a10 preferredTimeMaxYPortrait:a11 preferredTimeMaxYLandscape:a12 contentsLuminance:v16 alternateDateEnabled:a14 groupName:v17 adaptiveTimeHeightUserConfigured:a15 version:?];
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxYPortrait:(double)a9 preferredTimeMaxYLandscape:(double)a10 contentsLuminance:(double)a11 alternateDateEnabled:(BOOL)a12 groupName:(id)a13 adaptiveTimeHeightUserConfigured:(BOOL)a14 version:(unint64_t)a15
{
  v23 = a13;
  v24 = a7;
  v25 = a6;
  v26 = a3;
  v27 = [objc_opt_class() titleColorForTitleContentStyle:v25];
  LOBYTE(v31) = a14;
  BYTE1(v30) = a12;
  LOBYTE(v30) = a8;
  v28 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v26 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 titleColor:v27 timeNumberingSystem:v24 userConfigured:a9 preferredTimeMaxYPortrait:a10 preferredTimeMaxYLandscape:a11 contentsLuminance:v30 alternateDateEnabled:v23 groupName:v31 adaptiveTimeHeightUserConfigured:a15 version:?];

  return v28;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 adaptiveTimeHeightUserConfigured:(BOOL)a15 version:(unint64_t)a16
{
  v24 = a3;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a14;
  v29 = objc_opt_self();
  v30 = [(PRPosterTitleStyleConfiguration *)self isMemberOfClass:v29];

  if (v30)
  {
    LOBYTE(v35) = a15;
    LOWORD(v34) = __PAIR16__(a13, a9);
    v31 = [[PRImmutablePosterTitleStyleConfiguration alloc] initWithTimeFontConfiguration:v24 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 titleColor:v26 timeNumberingSystem:v27 userConfigured:a10 preferredTimeMaxYPortrait:a11 preferredTimeMaxYLandscape:a12 contentsLuminance:v34 alternateDateEnabled:v28 groupName:v35 adaptiveTimeHeightUserConfigured:a16 version:?];
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

- (PRPosterTitleStyleConfiguration)initWithTitleStyleConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 timeFontConfiguration];
  v24 = [v3 preferredTitleAlignment];
  v23 = [v3 preferredTitleLayout];
  v5 = [v3 titleContentStyle];
  v6 = [v3 titleColor];
  v7 = [v3 timeNumberingSystem];
  v8 = [v3 isUserConfigured];
  [v3 preferredTimeMaxYPortrait];
  v10 = v9;
  [v3 preferredTimeMaxYLandscape];
  v12 = v11;
  [v3 contentsLuminance];
  v14 = v13;
  v15 = [v3 isAlternateDateEnabled];
  v16 = [v3 groupName];
  v17 = [v3 isAdaptiveTimeHeightUserConfigured];
  v18 = [v3 version];

  LOBYTE(v22) = v17;
  BYTE1(v21) = v15;
  LOBYTE(v21) = v8;
  v19 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v4 preferredTitleAlignment:v24 preferredTitleLayout:v23 titleContentStyle:v5 titleColor:v6 timeNumberingSystem:v7 userConfigured:v10 preferredTimeMaxYPortrait:v12 preferredTimeMaxYLandscape:v14 contentsLuminance:v21 alternateDateEnabled:v16 groupName:v22 adaptiveTimeHeightUserConfigured:v18 version:?];

  return v19;
}

- (id)effectiveTimeFontWithExtensionBundle:(id)a3 forRole:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [PRPosterTitleStyleConfiguration effectiveTimeFontWithExtensionBundle:forRole:];
  }

  v8 = [v6 bundleURL];
  v9 = [(PRPosterTitleStyleConfiguration *)self effectiveTimeFontWithExtensionBundleURL:v8 forRole:v7];

  return v9;
}

- (id)effectiveTimeFontWithExtensionBundleURL:(id)a3 forRole:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [PRPosterTitleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:forRole:];
  }

  v8 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = v8;
    v12 = [v11 timeFontIdentifier];
    if (v12)
    {
      v13 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:v12 forRole:v7];
      [v11 weight];
      v15 = [v13 pr_fontWithVariantWeight:v14 forRole:v7];
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

  if ((v17 & 1) == 0 || ([v8 fontWithExtensionBundleURL:v6], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_11:
    v15 = [objc_opt_class() defaultTitleFontForRole:v7];
  }

LABEL_12:

  return v15;
}

- (id)effectiveTitleContentStyleForRole:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  if (!v5)
  {
    if (([(PRPosterTitleStyleConfiguration *)self isUserConfigured]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_opt_class() defaultTitleContentStyleForRole:v4];
    }
  }

  return v5;
}

- (id)_effectiveTitlePrivateContentStyleForRole:(id)a3
{
  v3 = [(PRPosterTitleStyleConfiguration *)self effectiveTitleContentStyleForRole:a3];
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

- (unint64_t)effectiveTitleAlignmentForText:(id)a3 withFont:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment") != 1 || (v8 = +[PRIncomingCallMetricsProvider canApplyKashidaToText:withFont:](PRIncomingCallMetricsProvider, "canApplyKashidaToText:withFont:", v6, v7), v9 = 0, [v6 pr_isSuitableForArabicJustification]) && v8)
  {
    v9 = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment];
  }

  return v9;
}

- (unint64_t)effectiveTitleLayoutForText:(id)a3
{
  v4 = a3;
  if (!-[PRPosterTitleStyleConfiguration prefersVerticalTitleLayout](self, "prefersVerticalTitleLayout") || (v5 = [v4 length], v6 = +[PRIncomingCallMetricsProvider maximumVerticalTextLength](PRIncomingCallMetricsProvider, "maximumVerticalTextLength"), v7 = 0, objc_msgSend(v4, "pr_isSuitableForVerticalLayout")) && v5 <= v6)
  {
    v7 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout];
  }

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 forRole:(id)a4
{
  v6 = a4;
  v7 = [a3 bundleURL];
  v8 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v7 forRole:v6];

  return v8;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4 forRole:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 bundleURL];
  v10 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v9 luminanceReduced:v5 forRole:v8];

  return v10;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4 forRole:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [PRPosterTitleStyleConfiguration vibrancyConfigurationWithExtensionBundleURL:v10 luminanceReduced:? forRole:?];
    }
  }

  v11 = [(PRPosterTitleStyleConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:v8 luminanceReduced:v6 role:v9];

  return v11;
}

- (id)_vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4 role:(id)a5
{
  v6 = a4;
  v8 = a3;
  vibrancyConfiguration = self->_vibrancyConfiguration;
  v10 = [(PRPosterTitleStyleConfiguration *)self _effectiveTitlePrivateContentStyleForRole:a5];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v12 = PRPosterContentsBackgroundTypeForLuminance(v11);
  v13 = [v10 vibrancyEffectType];
  if (vibrancyConfiguration)
  {
    if ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType]== v13)
    {
      v14 = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration groupName];
      v15 = [(PRPosterTitleStyleConfiguration *)self groupName];
      LODWORD(vibrancyConfiguration) = BSEqualObjects();
    }

    else
    {
      LODWORD(vibrancyConfiguration) = 0;
    }
  }

  v16 = [MEMORY[0x1E698E810] vibrancyLUTFromPrivateContentStyle:v10 extensionBundleURL:v8 luminanceReduced:v6];
  if (!vibrancyConfiguration || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration alternativeVibrancyEffectLUT], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, (v18 & 1) == 0))
  {
    v19 = objc_alloc(MEMORY[0x1E698E810]);
    v20 = BSUIVibrancyBackgroundTypeForPRPosterContentsBackgroundType(v12);
    v21 = [v10 vibrancyEffectColor];
    v22 = [(PRPosterTitleStyleConfiguration *)self groupName];
    v23 = [v19 initWithEffectType:v13 backgroundType:v20 color:v21 groupName:v22 blendConfiguration:0 blendAmount:v16 alternativeVibrancyEffectLUT:0.0];
    v24 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v23;
  }

  v25 = self->_vibrancyConfiguration;
  v26 = v25;

  return v25;
}

- (NSString)effectiveTimeNumberingSystem
{
  v2 = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  if (!v2)
  {
    v2 = [objc_opt_class() defaultTimeNumberingSystem];
  }

  return v2;
}

- (BOOL)prefersVerticalTitleLayout
{
  v2 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout];

  return PRPosterTitleLayoutIsVertical(v2);
}

- (double)preferredTimeMaxYForOrientation:(int64_t)a3
{
  if ((a3 - 1) > 1)
  {
    if ((a3 - 3) > 1)
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

+ (id)defaultTitleContentStyleForRole:(id)a3
{
  v3 = objc_alloc_init(PRPosterContentVibrantMaterialStyle);

  return v3;
}

+ (id)defaultTitleContentStyleAdditionsForRole:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(PRPosterContentVibrantMaterialStyle);
  v7[0] = v3;
  v4 = objc_alloc_init(PRPosterContentVibrantMonochromeStyle);
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
      v9 = [(PRPosterTitleStyleConfiguration *)v7 timeFontConfiguration];
      v10 = BSEqualObjects();

      if (v10 && (v11 = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment], v11 == [(PRPosterTitleStyleConfiguration *)v7 preferredTitleAlignment]) && (v12 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout], v12 == [(PRPosterTitleStyleConfiguration *)v7 preferredTitleLayout]) && ([(PRPosterTitleStyleConfiguration *)self titleContentStyle], v13 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v7 titleContentStyle], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PRPosterTitleStyleConfiguration *)self timeNumberingSystem], v16 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v7 timeNumberingSystem], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait], v20 = vcvtad_u64_f64(v19 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 preferredTimeMaxYPortrait], v20 == vcvtad_u64_f64(v21 * 10000.0)) && ([(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape], v23 = vcvtad_u64_f64(v22 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 preferredTimeMaxYLandscape], v23 == vcvtad_u64_f64(v24 * 10000.0)) && ([(PRPosterTitleStyleConfiguration *)self contentsLuminance], v26 = vcvtad_u64_f64(v25 * 10000.0), [(PRPosterTitleStyleConfiguration *)v7 contentsLuminance], v26 == vcvtad_u64_f64(v27 * 10000.0)) && (v28 = [(PRPosterTitleStyleConfiguration *)self isUserConfigured], v28 == [(PRPosterTitleStyleConfiguration *)v7 isUserConfigured]) && (v29 = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured], v29 == [(PRPosterTitleStyleConfiguration *)v7 isAdaptiveTimeHeightUserConfigured]) && (v30 = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled], v30 == [(PRPosterTitleStyleConfiguration *)v7 isAlternateDateEnabled]))
      {
        v33 = [(PRPosterTitleStyleConfiguration *)self version];
        v31 = v33 == [(PRPosterTitleStyleConfiguration *)v7 version];
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

- (BOOL)isVisiblyEqualToTitleStyleConfiguration:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
    v6 = [(PRPosterTitleStyleConfiguration *)v4 timeFontConfiguration];
    v7 = BSEqualObjects();

    if (v7 && (v8 = [(PRPosterTitleStyleConfiguration *)self preferredTitleAlignment], v8 == [(PRPosterTitleStyleConfiguration *)v4 preferredTitleAlignment]) && (v9 = [(PRPosterTitleStyleConfiguration *)self preferredTitleLayout], v9 == [(PRPosterTitleStyleConfiguration *)v4 preferredTitleLayout]) && ([(PRPosterTitleStyleConfiguration *)self titleContentStyle], v10 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v4 titleContentStyle], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(PRPosterTitleStyleConfiguration *)self timeNumberingSystem], v13 = objc_claimAutoreleasedReturnValue(), [(PRPosterTitleStyleConfiguration *)v4 timeNumberingSystem], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
      [(PRPosterTitleStyleConfiguration *)v4 isAlternateDateEnabled];
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
  v6 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v17 = [v6 hash];
  v7 = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v8 = [v7 hash];
  v9 = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  v10 = [v9 hash];
  v11 = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  v12 = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PRPosterTitleStyleConfiguration isAlternateDateEnabled](self, "isAlternateDateEnabled")}];
  v14 = [v13 hash];
  v15 = v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ [(PRPosterTitleStyleConfiguration *)self version];

  return v19 ^ v20 ^ v17 ^ v18 ^ v15;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __46__PRPosterTitleStyleConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PRPosterTitleStyleConfiguration *)PRMutablePosterTitleStyleConfiguration allocWithZone:a3];

  return [(PRPosterTitleStyleConfiguration *)v4 initWithTitleStyleConfiguration:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  [v4 encodeObject:v5 forKey:*MEMORY[0x1E69C5528]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment")}];
  [v4 encodeObject:v6 forKey:*MEMORY[0x1E69C5518]];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleLayout](self, "preferredTitleLayout")}];
  [v4 encodeObject:v7 forKey:*MEMORY[0x1E69C5520]];

  v8 = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = PRLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [PRPosterTitleStyleConfiguration encodeWithCoder:];
    }

    v9 = [PRPosterContentStyleSerialization dataForContentStyle:v8 error:0];
    [v4 encodeObject:v9 forKey:*MEMORY[0x1E69C5540]];
  }

  else if (v10)
  {
    [PRPosterTitleStyleConfiguration encodeWithCoder:];
  }

  v11 = [(PRPosterTitleStyleConfiguration *)self titleColor];
  [v4 encodeObject:v11 forKey:*MEMORY[0x1E69C5538]];

  v12 = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  [v4 encodeObject:v12 forKey:*MEMORY[0x1E69C5530]];

  v13 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v14 = [v13 numberWithDouble:?];
  [v4 encodeObject:v14 forKey:@"preferredTimeMaxY"];

  v15 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v16 = [v15 numberWithDouble:?];
  [v4 encodeObject:v16 forKey:@"preferredTimeMaxYLandscape"];

  v17 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v18 = [v17 numberWithDouble:?];
  [v4 encodeObject:v18 forKey:*MEMORY[0x1E69C54F0]];

  v19 = [(PRPosterTitleStyleConfiguration *)self groupName];
  [v4 encodeObject:v19 forKey:*MEMORY[0x1E69C54F8]];

  v20 = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  [v4 encodeBool:v20 forKey:*MEMORY[0x1E69C5510]];
  v21 = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  [v4 encodeBool:v21 forKey:*MEMORY[0x1E69C5500]];
  v22 = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
  [v4 encodeBool:v22 forKey:*MEMORY[0x1E69C5508]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration version](self, "version")}];
  [v4 encodeObject:v23 forKey:@"version"];
}

- (PRPosterTitleStyleConfiguration)initWithCoder:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_self();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v53 = [v4 decodeObjectOfClasses:v8 forKey:*MEMORY[0x1E69C5528]];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5540]];
  v52 = v9;
  if (v9)
  {
    v54 = 0;
    v10 = [PRPosterContentStyleSerialization contentStyleForData:v9 error:&v54];
    v11 = v54;
    if (v10)
    {
      goto LABEL_13;
    }

    v10 = [objc_opt_class() defaultTitleContentStyleForRole:@"PRPosterRoleLockScreen"];
    v12 = PRLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v56 = v11;
      v57 = 2114;
      v58 = @"PRPosterRoleLockScreen";
      v59 = 2114;
      v60 = v10;
      _os_log_error_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_ERROR, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle deserialization failed with error: %{public}@, falling back to defaultTitleContentStyle for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v13 = objc_opt_self();
    v14 = *MEMORY[0x1E69C5538];
    v11 = [v4 decodeObjectOfClass:v13 forKey:*MEMORY[0x1E69C5538]];

    if (!v11)
    {
      v15 = objc_opt_self();
      v16 = [v4 decodeObjectOfClass:v15 forKey:v14];

      if (v16)
      {
        v11 = [[PRPosterColor alloc] initWithColor:v16];
      }

      else
      {
        v11 = 0;
      }
    }

    v10 = [(PRPosterColor *)v11 contentStyle];
    v12 = PRLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v10;
      _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle data was nil... so we got a title color and a style from it: %@", buf, 0xCu);
    }
  }

LABEL_13:
  v17 = objc_opt_self();
  v18 = [v4 decodeObjectOfClass:v17 forKey:*MEMORY[0x1E69C5518]];

  if (v18)
  {
    v49 = [v18 unsignedIntegerValue];
  }

  else
  {
    v49 = 0;
  }

  v19 = objc_opt_self();
  v20 = [v4 decodeObjectOfClass:v19 forKey:*MEMORY[0x1E69C5520]];

  v51 = v18;
  if (v20)
  {
    v47 = [v20 unsignedIntegerValue];
  }

  else
  {
    v47 = 0;
  }

  v21 = objc_opt_self();
  v48 = [v4 decodeObjectOfClass:v21 forKey:*MEMORY[0x1E69C5530]];

  v46 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5510]];
  v45 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5500]];
  v22 = objc_opt_self();
  v23 = [v4 decodeObjectOfClass:v22 forKey:@"preferredTimeMaxY"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  if (v23)
  {
    [v23 doubleValue];
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v4 decodeObjectOfClass:v26 forKey:@"preferredTimeMaxYLandscape"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  if (v27)
  {
    [v27 doubleValue];
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v4 decodeObjectOfClass:v30 forKey:*MEMORY[0x1E69C54F0]];

  [objc_opt_class() defaultContentsLuminance];
  v50 = v20;
  if (v31)
  {
    [v31 doubleValue];
  }

  v33 = v32;
  v34 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5508]];
  v35 = objc_opt_self();
  v36 = [v4 decodeObjectOfClass:v35 forKey:*MEMORY[0x1E69C54F8]];

  v37 = objc_opt_self();
  v38 = [v4 decodeObjectOfClass:v37 forKey:@"version"];

  if (v38)
  {
    v39 = [v38 unsignedIntegerValue];
  }

  else
  {
    v39 = 0;
  }

  LOBYTE(v44) = v45;
  LOBYTE(v43) = v34;
  v40 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v53 preferredTitleAlignment:v49 preferredTitleLayout:v47 titleContentStyle:v10 timeNumberingSystem:v48 userConfigured:v46 preferredTimeMaxYPortrait:v25 preferredTimeMaxYLandscape:v29 contentsLuminance:v33 alternateDateEnabled:v43 groupName:v36 adaptiveTimeHeightUserConfigured:v44 version:v39];
  v41 = [PRPosterTitleStyleConfiguration performMigrationIfNecessary:v40];

  return v41;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  [v4 encodeObject:v5 forKey:*MEMORY[0x1E69C5528]];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self, "preferredTitleAlignment")}];
  [v4 encodeObject:v6 forKey:*MEMORY[0x1E69C5518]];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration preferredTitleLayout](self, "preferredTitleLayout")}];
  [v4 encodeObject:v7 forKey:*MEMORY[0x1E69C5520]];

  v8 = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = PRLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [PRPosterTitleStyleConfiguration encodeWithCoder:];
    }

    v9 = [PRPosterContentStyleSerialization dataForContentStyle:v8 error:0];
    [v4 encodeObject:v9 forKey:*MEMORY[0x1E69C5540]];
  }

  else if (v10)
  {
    [PRPosterTitleStyleConfiguration encodeWithCoder:];
  }

  v11 = [(PRPosterTitleStyleConfiguration *)self titleColor];
  [v4 encodeObject:v11 forKey:*MEMORY[0x1E69C5538]];

  v12 = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  [v4 encodeObject:v12 forKey:*MEMORY[0x1E69C5530]];

  v13 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v14 = [v13 numberWithDouble:?];
  [v4 encodeObject:v14 forKey:@"preferredTimeMaxY"];

  v15 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v16 = [v15 numberWithDouble:?];
  [v4 encodeObject:v16 forKey:@"preferredTimeMaxYLandscape"];

  v17 = MEMORY[0x1E696AD98];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v18 = [v17 numberWithDouble:?];
  [v4 encodeObject:v18 forKey:*MEMORY[0x1E69C54F0]];

  v19 = [(PRPosterTitleStyleConfiguration *)self groupName];
  [v4 encodeObject:v19 forKey:*MEMORY[0x1E69C54F8]];

  v20 = [(PRPosterTitleStyleConfiguration *)self isUserConfigured];
  [v4 encodeBool:v20 forKey:*MEMORY[0x1E69C5510]];
  v21 = [(PRPosterTitleStyleConfiguration *)self isAdaptiveTimeHeightUserConfigured];
  [v4 encodeBool:v21 forKey:*MEMORY[0x1E69C5500]];
  v22 = [(PRPosterTitleStyleConfiguration *)self isAlternateDateEnabled];
  [v4 encodeBool:v22 forKey:*MEMORY[0x1E69C5508]];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterTitleStyleConfiguration version](self, "version")}];
  [v4 encodeObject:v23 forKey:@"version"];
}

- (PRPosterTitleStyleConfiguration)initWithBSXPCCoder:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  v52 = [v4 decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C5528]];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C5540]];
  v51 = v6;
  if (v6)
  {
    v53 = 0;
    v7 = [PRPosterContentStyleSerialization contentStyleForData:v6 error:&v53];
    v8 = v53;
    if (v7)
    {
      goto LABEL_14;
    }

    v7 = [objc_opt_class() defaultTitleContentStyleForRole:@"PRPosterRoleLockScreen"];
    v9 = PRLogCommon();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v55 = v8;
      v56 = 2114;
      v57 = @"PRPosterRoleLockScreen";
      v58 = 2114;
      v59 = v7;
      _os_log_error_impl(&dword_1A8AA7000, &v9->super, OS_LOG_TYPE_ERROR, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle deserialization failed with error: %{public}@, falling back to defaultTitleContentStyle for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = *MEMORY[0x1E69C5538];
    v9 = [v4 decodeObjectOfClass:v10 forKey:*MEMORY[0x1E69C5538]];

    if (!v9)
    {
      v12 = objc_opt_self();
      v13 = [v4 decodeObjectOfClass:v12 forKey:v11];

      if (v13)
      {
        v9 = [[PRPosterColor alloc] initWithColor:v13];
      }

      else
      {
        v9 = 0;
      }
    }

    v7 = [(PRPosterColor *)v9 contentStyle];
    v14 = PRLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v7;
      _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "[PRPosterTitleStyleConfiguration initWithCoder:] titleContentStyle data was nil... so we got a title color and a style from it: %@", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_14:
  v15 = objc_opt_self();
  v16 = [v4 decodeObjectOfClass:v15 forKey:*MEMORY[0x1E69C5518]];

  if (v16)
  {
    v47 = [v16 unsignedIntegerValue];
  }

  else
  {
    v47 = 0;
  }

  v17 = objc_opt_self();
  v18 = [v4 decodeObjectOfClass:v17 forKey:*MEMORY[0x1E69C5520]];

  v49 = v16;
  if (v18)
  {
    v45 = [v18 unsignedIntegerValue];
  }

  else
  {
    v45 = 0;
  }

  v19 = objc_opt_self();
  v46 = [v4 decodeObjectOfClass:v19 forKey:*MEMORY[0x1E69C5530]];

  v44 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5510]];
  v43 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5500]];
  v20 = objc_opt_self();
  v21 = [v4 decodeObjectOfClass:v20 forKey:@"preferredTimeMaxY"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  v48 = v18;
  if (v21)
  {
    [v21 doubleValue];
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v4 decodeObjectOfClass:v24 forKey:@"preferredTimeMaxYLandscape"];

  [objc_opt_class() defaultPreferredTimeMaxY];
  v50 = v8;
  if (v25)
  {
    [v25 doubleValue];
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v4 decodeObjectOfClass:v28 forKey:*MEMORY[0x1E69C54F0]];

  [objc_opt_class() defaultContentsLuminance];
  if (v29)
  {
    [v29 doubleValue];
  }

  v31 = v30;
  v32 = [v4 decodeBoolForKey:*MEMORY[0x1E69C5508]];
  v33 = objc_opt_self();
  v34 = [v4 decodeObjectOfClass:v33 forKey:*MEMORY[0x1E69C54F8]];

  v35 = objc_opt_self();
  v36 = [v4 decodeObjectOfClass:v35 forKey:@"version"];

  if (v36)
  {
    v37 = [v36 unsignedIntegerValue];
  }

  else
  {
    v37 = 0;
  }

  LOBYTE(v42) = v43;
  BYTE1(v41) = v32;
  LOBYTE(v41) = v44;
  v38 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v52 preferredTitleAlignment:v47 preferredTitleLayout:v45 titleContentStyle:v7 titleColor:0 timeNumberingSystem:v46 userConfigured:v23 preferredTimeMaxYPortrait:v27 preferredTimeMaxYLandscape:v31 contentsLuminance:v41 alternateDateEnabled:v34 groupName:v42 adaptiveTimeHeightUserConfigured:v37 version:?];
  v39 = [PRPosterTitleStyleConfiguration performMigrationIfNecessary:v38];

  return v39;
}

+ (id)performMigrationIfNecessary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 version];
  if (v4 < +[PRPosterTitleStyleConfiguration currentVersion]&& PUIFeatureEnabled())
  {
    v5 = [v3 timeFontConfiguration];
    v6 = objc_opt_class();
    v7 = v5;
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
      v13 = [(PRPosterSystemTimeFontConfiguration *)v10 timeFontIdentifier];
      v14 = [v12 pr_fontWithTimeFontIdentifier:v13];

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
          v19 = [(PRPosterSystemTimeFontConfiguration *)v10 timeFontIdentifier];
          v11 = [(PRPosterSystemTimeFontConfiguration *)v18 initWithTimeFontIdentifier:v19 weight:[(PRPosterSystemTimeFontConfiguration *)v10 isSystemItem] systemItem:v17];

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
    v23 = [v3 preferredTitleAlignment];
    v24 = [v3 preferredTitleLayout];
    v25 = [v3 titleContentStyle];
    v26 = [v3 timeNumberingSystem];
    v27 = [v3 isUserConfigured];
    [v3 preferredTimeMaxYPortrait];
    v29 = v28;
    [v3 preferredTimeMaxYLandscape];
    v31 = v30;
    [v3 contentsLuminance];
    v33 = v32;
    v34 = [v3 isAlternateDateEnabled];
    v35 = [v3 groupName];
    LOBYTE(v39) = v34;
    v9 = [(PRPosterTitleStyleConfiguration *)v22 initWithTimeFontConfiguration:v11 preferredTitleAlignment:v23 preferredTitleLayout:v24 titleContentStyle:v25 timeNumberingSystem:v26 userConfigured:v27 preferredTimeMaxYPortrait:v29 preferredTimeMaxYLandscape:v31 contentsLuminance:v33 alternateDateEnabled:v39 groupName:v35];

    v36 = PRLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(PRPosterTitleStyleConfiguration *)v9 version];
      *buf = 134217984;
      v43 = v37;
      _os_log_impl(&dword_1A8AA7000, v36, OS_LOG_TYPE_DEFAULT, "Migrating titleStyleConfiguration to version: %lu", buf, 0xCu);
    }
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v17 = a3;
  v4 = [(PRPosterTitleStyleConfiguration *)self timeFontConfiguration];
  v5 = [v17 appendObject:v4 withName:@"timeFontConfiguration"];

  v6 = [v17 appendInteger:-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self withName:{"preferredTitleAlignment"), @"preferredTitleAlignment"}];
  v7 = [v17 appendInteger:-[PRPosterTitleStyleConfiguration preferredTitleLayout](self withName:{"preferredTitleLayout"), @"preferredTitleLayout"}];
  v8 = [(PRPosterTitleStyleConfiguration *)self titleContentStyle];
  v9 = [v17 appendObject:v8 withName:@"titleContentStyle"];

  v10 = [(PRPosterTitleStyleConfiguration *)self timeNumberingSystem];
  v11 = [v17 appendObject:v10 withName:@"timeNumberingSystem"];

  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYPortrait];
  v12 = [v17 appendDouble:@"preferredTimeMaxYPortrait" withName:5 decimalPrecision:?];
  [(PRPosterTitleStyleConfiguration *)self preferredTimeMaxYLandscape];
  v13 = [v17 appendDouble:@"preferredTimeMaxYLandscape" withName:5 decimalPrecision:?];
  [(PRPosterTitleStyleConfiguration *)self contentsLuminance];
  v14 = [v17 appendDouble:@"contentsLuminance" withName:5 decimalPrecision:?];
  v15 = [v17 appendBool:-[PRPosterTitleStyleConfiguration isUserConfigured](self withName:{"isUserConfigured"), @"userConfigured"}];
  v16 = [v17 appendBool:-[PRPosterTitleStyleConfiguration isAlternateDateEnabled](self withName:{"isAlternateDateEnabled"), @"isAlternateDateEnabled"}];
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  [objc_opt_class() defaultContentsLuminance];
  LOBYTE(v10) = 0;
  v8 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v7 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:v6 timeNumberingSystem:0 userConfigured:0 contentsLuminance:v10 alternateDateEnabled:0 groupName:?];

  return v8;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 titleColor:(id)a4 timeNumberingSystem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
  LOBYTE(v13) = 0;
  v11 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v10 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:v9 timeNumberingSystem:v8 userConfigured:0 contentsLuminance:v13 alternateDateEnabled:0 groupName:?];

  return v11;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleColor:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 contentsLuminance:(double)a9 alternateDateEnabled:(BOOL)a10 groupName:(id)a11
{
  v11 = a8;
  v18 = a11;
  v19 = a7;
  v20 = a6;
  v21 = a3;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOBYTE(v24) = a10;
  v22 = [PRPosterTitleStyleConfiguration initWithTimeFontConfiguration:"initWithTimeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleColor:timeNumberingSystem:userConfigured:preferredTimeMaxY:contentsLuminance:alternateDateEnabled:groupName:" preferredTitleAlignment:v21 preferredTitleLayout:a4 titleColor:a5 timeNumberingSystem:v20 userConfigured:v19 preferredTimeMaxY:v11 contentsLuminance:v24 alternateDateEnabled:v18 groupName:?];

  return v22;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleColor:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxY:(double)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12
{
  v21 = a12;
  v22 = a7;
  v23 = a6;
  v24 = a3;
  v25 = [v23 contentStyle];
  BYTE1(v28) = a11;
  LOBYTE(v28) = a8;
  v26 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v24 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v25 titleColor:v23 timeNumberingSystem:v22 userConfigured:a9 preferredTimeMaxY:a10 contentsLuminance:v28 alternateDateEnabled:v21 groupName:?];

  return v26;
}

- (PRPosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 timeNumberingSystem:(id)a7 userConfigured:(BOOL)a8 preferredTimeMaxY:(double)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12
{
  v21 = a12;
  v22 = a7;
  v23 = a6;
  v24 = a3;
  v25 = [objc_opt_class() titleColorForTitleContentStyle:v23];
  BYTE1(v28) = a11;
  LOBYTE(v28) = a8;
  v26 = [(PRPosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:v24 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v23 titleColor:v25 timeNumberingSystem:v22 userConfigured:a9 preferredTimeMaxY:a10 contentsLuminance:v28 alternateDateEnabled:v21 groupName:?];

  return v26;
}

- (PRPosterColor)effectiveTitleColor
{
  v3 = [(PRPosterTitleStyleConfiguration *)self titleColor];
  if (!v3)
  {
    if (([(PRPosterTitleStyleConfiguration *)self isUserConfigured]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_opt_class() defaultTitleColor];
    }
  }

  return v3;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3
{
  v4 = [a3 bundleURL];
  v5 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v4];

  return v5;
}

- (id)vibrancyConfigurationWithExtensionBundle:(id)a3 luminanceReduced:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 bundleURL];
  v7 = [(PRPosterTitleStyleConfiguration *)self vibrancyConfigurationWithExtensionBundleURL:v6 luminanceReduced:v4];

  return v7;
}

- (id)vibrancyConfigurationWithExtensionBundleURL:(id)a3 luminanceReduced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v7 = PRLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [PRPosterTitleStyleConfiguration vibrancyConfigurationWithExtensionBundleURL:v7 luminanceReduced:? forRole:?];
    }
  }

  v8 = [(PRPosterTitleStyleConfiguration *)self _vibrancyConfigurationWithExtensionBundleURL:v6 luminanceReduced:v4 role:@"PRPosterRoleLockScreen"];

  return v8;
}

+ (void)performClassReplacementForKeyedUnarchiver:(id)a3
{
  sub_1A8BDDB44();
  v4 = a3;
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