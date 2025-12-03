@interface SBHWidgetIconStyleConfiguration
+ (id)_buildColorMatrixFilterForColor:(id)color;
+ (id)renderSchemeForFactors:(SBHWidgetRenderSchemeFactors)factors;
+ (id)tintedRenderSchemeForWidgetDescriptor:(id)descriptor family:(int64_t)family widgetExtensionProvider:(id)provider;
- (BOOL)_isCrystalLinked;
- (BOOL)_isDawnLinked;
- (BOOL)isAccented;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWidgetIconStyleConfiguration:(id)configuration;
- (CHSWidgetExtensionProvider)widgetExtensionProvider;
- (SBHWidgetIconStyleConfiguration)initWithContainingApplicationBundleIdentifier:(id)identifier imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)name;
- (SBHWidgetIconStyleConfiguration)initWithWidgetDataSource:(id)source gridSizeClass:(id)class widgetViewController:(id)controller widgetExtensionProvider:(id)provider imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)self0;
- (SBHWidgetIconStyleConfiguration)initWithWidgetExtension:(id)extension widgetDescriptor:(id)descriptor imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)name;
- (id)appropriateColorFilter;
- (id)appropriateWidgetRenderScheme;
- (id)appropriateWidgetTintParameters;
- (id)bundleRecord;
- (id)description;
- (unint64_t)hash;
- (void)_generateParameters;
- (void)_generateTintParametersForWidgetDescriptor:(id)descriptor;
@end

@implementation SBHWidgetIconStyleConfiguration

- (void)_generateParameters
{
  if (self->_didGenerate)
  {
    return;
  }

  widgetExtension = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  imageAppearance = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  customDisplayConfiguration = [(SBHWidgetIconStyleConfiguration *)self customDisplayConfiguration];
  if (SBHIconImageAppearanceTypeHasTintColor([imageAppearance appearanceType]))
  {
    tintColor = [imageAppearance tintColor];
  }

  else
  {
    tintColor = 0;
  }

  _isCrystalLinked = [(SBHWidgetIconStyleConfiguration *)self _isCrystalLinked];
  isAccented = [(SBHWidgetIconStyleConfiguration *)self isAccented];
  widgetDataSource = [(SBHWidgetIconStyleConfiguration *)self widgetDataSource];
  widgetViewController = [(SBHWidgetIconStyleConfiguration *)self widgetViewController];
  if (widgetDataSource)
  {
    v11 = [SBHWidgetStackViewController _shouldDrawSystemBackgroundMaterialForWidget:widgetDataSource widgetViewController:widgetViewController];
    if (customDisplayConfiguration)
    {
LABEL_7:
      self->_backgroundType = 0;
      renderScheme = [customDisplayConfiguration renderScheme];
      v13 = [renderScheme copy];
      appropriateWidgetRenderScheme = self->_appropriateWidgetRenderScheme;
      self->_appropriateWidgetRenderScheme = v13;

      tintParameters = [customDisplayConfiguration tintParameters];
      v16 = [(NSString *)tintParameters copy];
      appropriateWidgetTintParameters = self->_appropriateWidgetTintParameters;
      self->_appropriateWidgetTintParameters = v16;

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (customDisplayConfiguration)
    {
      goto LABEL_7;
    }
  }

  if (widgetExtension)
  {
    v38 = v11;
    v40 = tintColor;
    appropriateColorFilter = [(SBHWidgetIconStyleConfiguration *)self widgetDescriptor];
    v19 = objc_opt_class();
    v20 = widgetViewController;
    if (v19)
    {
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v25 = v21;

    if (v25)
    {
      v26 = isAccented;
    }

    else
    {
      v26 = 0;
    }

    v39 = v25;
    if (v26)
    {
      widget = [v25 widget];
      family = [widget family];

      v29 = objc_opt_class();
      WeakRetained = objc_loadWeakRetained(&self->_widgetExtensionProvider);
      v31 = [v29 tintedRenderSchemeForWidgetDescriptor:appropriateColorFilter family:family widgetExtensionProvider:WeakRetained];
    }

    else
    {
      v31 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:0 backgroundViewPolicy:0];
    }

    v32 = self->_appropriateWidgetRenderScheme;
    self->_appropriateWidgetRenderScheme = v31;
    v33 = v31;

    [(SBHWidgetIconStyleConfiguration *)self _generateTintParametersForWidgetDescriptor:appropriateColorFilter];
    backgroundViewPolicy = [(CHSWidgetRenderScheme *)self->_appropriateWidgetRenderScheme backgroundViewPolicy];

    if (backgroundViewPolicy == 2)
    {
      v37 = 0;
      v36 = 1;
      v35 = v39;
      tintColor = v40;
    }

    else
    {
      v35 = v39;
      tintColor = v40;
      v36 = 0;
      v37 = v38;
    }

    self->_isBackgroundRemovable = v36;
    self->_backgroundType = v37;

    goto LABEL_35;
  }

  if (v11 || !_isCrystalLinked || !isAccented)
  {
    v22 = 0;
    self->_backgroundType = v11;
  }

  else
  {
    self->_backgroundType = 2;
    v22 = 1;
  }

  self->_isBackgroundRemovable = v22;
  if (!tintColor)
  {
    goto LABEL_9;
  }

  tintParameters = self->_containingApplicationBundleIdentifier;
  if ([(NSString *)tintParameters isEqualToString:@"com.apple.DocumentsApp"])
  {
    goto LABEL_8;
  }

  v23 = [(NSString *)tintParameters isEqualToString:@"com.apple.shortcuts"];

  if (!v23)
  {
    v24 = [objc_opt_class() _buildColorMatrixFilterForColor:tintColor];
    appropriateColorFilter = self->_appropriateColorFilter;
    self->_appropriateColorFilter = v24;
    goto LABEL_35;
  }

LABEL_9:
  appropriateColorFilter = self->_appropriateColorFilter;
  self->_appropriateColorFilter = 0;
LABEL_35:

  self->_didGenerate = 1;
}

- (BOOL)_isCrystalLinked
{
  widgetExtension = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  v4 = widgetExtension;
  if (widgetExtension)
  {
    v5 = [widgetExtension isLinkedOnOrAfter:1];
  }

  else
  {
    bundleRecord = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];

    if (bundleRecord)
    {
      bundleRecord2 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];
      sDKVersion = [bundleRecord2 SDKVersion];

      v9 = [objc_alloc(MEMORY[0x1E698E638]) initWithString:sDKVersion];
      v5 = [v9 majorBuildNumber] == 18;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isAccented
{
  imageAppearance = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  appearanceType = [imageAppearance appearanceType];

  return (appearanceType - 2) < 5;
}

- (id)appropriateColorFilter
{
  [(SBHWidgetIconStyleConfiguration *)self _generateParameters];
  appropriateColorFilter = self->_appropriateColorFilter;

  return appropriateColorFilter;
}

- (id)appropriateWidgetRenderScheme
{
  [(SBHWidgetIconStyleConfiguration *)self _generateParameters];
  appropriateWidgetRenderScheme = self->_appropriateWidgetRenderScheme;
  if (appropriateWidgetRenderScheme)
  {
    v4 = appropriateWidgetRenderScheme;
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (id)appropriateWidgetTintParameters
{
  [(SBHWidgetIconStyleConfiguration *)self _generateParameters];
  appropriateWidgetTintParameters = self->_appropriateWidgetTintParameters;

  return appropriateWidgetTintParameters;
}

- (SBHWidgetIconStyleConfiguration)initWithWidgetExtension:(id)extension widgetDescriptor:(id)descriptor imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)name
{
  extensionCopy = extension;
  descriptorCopy = descriptor;
  appearanceCopy = appearance;
  configurationCopy = configuration;
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = SBHWidgetIconStyleConfiguration;
  v20 = [(SBHWidgetIconStyleConfiguration *)&v31 init];
  if (v20)
  {
    v21 = [appearanceCopy copy];
    imageAppearance = v20->_imageAppearance;
    v20->_imageAppearance = v21;

    objc_storeStrong(&v20->_widgetDescriptor, descriptor);
    objc_storeStrong(&v20->_widgetExtension, extension);
    identity = [extensionCopy identity];
    extensionBundleIdentifier = [identity extensionBundleIdentifier];
    widgetBundleIdentifier = v20->_widgetBundleIdentifier;
    v20->_widgetBundleIdentifier = extensionBundleIdentifier;

    v26 = [configurationCopy copy];
    customDisplayConfiguration = v20->_customDisplayConfiguration;
    v20->_customDisplayConfiguration = v26;

    v20->_shouldBoostWhitePoint = point;
    v28 = [nameCopy copy];
    backdropGroupName = v20->_backdropGroupName;
    v20->_backdropGroupName = v28;
  }

  return v20;
}

- (SBHWidgetIconStyleConfiguration)initWithWidgetDataSource:(id)source gridSizeClass:(id)class widgetViewController:(id)controller widgetExtensionProvider:(id)provider imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)self0
{
  sourceCopy = source;
  classCopy = class;
  controllerCopy = controller;
  controllerCopy2 = controller;
  providerCopy = provider;
  nameCopy = name;
  configurationCopy = configuration;
  appearanceCopy = appearance;
  v22 = objc_opt_self();
  LOBYTE(controller) = objc_opt_isKindOfClass();

  v32 = classCopy;
  if (controller)
  {
    v23 = sourceCopy;
    v24 = [v23 chsWidgetWithGridSizeClass:classCopy intent:0];
    v25 = [providerCopy sbh_extensionForWidget:v24];
    v26 = [providerCopy sbh_descriptorForWidgetIdentifiable:v23];

    v27 = [(SBHWidgetIconStyleConfiguration *)self initWithWidgetExtension:v25 widgetDescriptor:v26 imageAppearance:appearanceCopy customDisplayConfiguration:configurationCopy boostsWhitePoint:point backdropGroupName:nameCopy];
    nameCopy = appearanceCopy;
    configurationCopy = v26;
    appearanceCopy = v25;
  }

  else
  {
    v24 = SBHContainerBundleIdentifierForDataSource(sourceCopy);
    v27 = [(SBHWidgetIconStyleConfiguration *)self initWithContainingApplicationBundleIdentifier:v24 imageAppearance:appearanceCopy customDisplayConfiguration:configurationCopy boostsWhitePoint:point backdropGroupName:nameCopy];
  }

  if (v27)
  {
    objc_storeStrong(&v27->_widgetDataSource, source);
    objc_storeStrong(&v27->_widgetViewController, controllerCopy);
    objc_storeWeak(&v27->_widgetExtensionProvider, providerCopy);
  }

  return v27;
}

- (SBHWidgetIconStyleConfiguration)initWithContainingApplicationBundleIdentifier:(id)identifier imageAppearance:(id)appearance customDisplayConfiguration:(id)configuration boostsWhitePoint:(BOOL)point backdropGroupName:(id)name
{
  identifierCopy = identifier;
  appearanceCopy = appearance;
  configurationCopy = configuration;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = SBHWidgetIconStyleConfiguration;
  v16 = [(SBHWidgetIconStyleConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [appearanceCopy copy];
    imageAppearance = v16->_imageAppearance;
    v16->_imageAppearance = v17;

    v19 = [identifierCopy copy];
    containingApplicationBundleIdentifier = v16->_containingApplicationBundleIdentifier;
    v16->_containingApplicationBundleIdentifier = v19;

    v21 = [configurationCopy copy];
    customDisplayConfiguration = v16->_customDisplayConfiguration;
    v16->_customDisplayConfiguration = v21;

    v16->_shouldBoostWhitePoint = point;
    v23 = [nameCopy copy];
    backdropGroupName = v16->_backdropGroupName;
    v16->_backdropGroupName = v23;
  }

  return v16;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHWidgetIconStyleConfiguration *)self isEqualToWidgetIconStyleConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToWidgetIconStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    v41 = 1;
  }

  else
  {
    containingApplicationBundleIdentifier = [(SBHWidgetIconStyleConfiguration *)configurationCopy containingApplicationBundleIdentifier];
    containingApplicationBundleIdentifier2 = [(SBHWidgetIconStyleConfiguration *)self containingApplicationBundleIdentifier];
    v8 = BSEqualStrings();

    if (v8
      && ([(SBHWidgetIconStyleConfiguration *)v5 widgetBundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self widgetBundleIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualStrings(), v10, v9, v11)
      && ([(SBHWidgetIconStyleConfiguration *)v5 widgetDescriptor], v12 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self widgetDescriptor], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14)
      && ([(SBHWidgetIconStyleConfiguration *)v5 widgetExtension], v15 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self widgetExtension], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17)
      && ([(SBHWidgetIconStyleConfiguration *)v5 imageAppearance], v18 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self imageAppearance], v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v20)
      && ([(SBHWidgetIconStyleConfiguration *)v5 appropriateWidgetRenderScheme], v21 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self appropriateWidgetRenderScheme], v22 = objc_claimAutoreleasedReturnValue(), v23 = BSEqualObjects(), v22, v21, v23)
      && ([(SBHWidgetIconStyleConfiguration *)v5 appropriateWidgetTintParameters], v24 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self appropriateWidgetTintParameters], v25 = objc_claimAutoreleasedReturnValue(), v26 = BSEqualObjects(), v25, v24, v26)
      && ([(SBHWidgetIconStyleConfiguration *)v5 appropriateColorFilter], v27 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self appropriateColorFilter], v28 = objc_claimAutoreleasedReturnValue(), v29 = BSEqualObjects(), v28, v27, v29)
      && (v30 = [(SBHWidgetIconStyleConfiguration *)v5 isBackgroundRemovable], v30 == [(SBHWidgetIconStyleConfiguration *)self isBackgroundRemovable])
      && (v31 = [(SBHWidgetIconStyleConfiguration *)v5 backgroundType], v31 == [(SBHWidgetIconStyleConfiguration *)self backgroundType])
      && ([(SBHWidgetIconStyleConfiguration *)v5 widgetDataSource], v32 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self widgetDataSource], v33 = objc_claimAutoreleasedReturnValue(), v34 = BSEqualObjects(), v33, v32, v34)
      && ([(SBHWidgetIconStyleConfiguration *)v5 widgetViewController], v35 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self widgetViewController], v36 = objc_claimAutoreleasedReturnValue(), v37 = BSEqualObjects(), v36, v35, v37)
      && ([(SBHWidgetIconStyleConfiguration *)v5 customDisplayConfiguration], v38 = objc_claimAutoreleasedReturnValue(), [(SBHWidgetIconStyleConfiguration *)self customDisplayConfiguration], v39 = objc_claimAutoreleasedReturnValue(), v40 = BSEqualObjects(), v39, v38, v40))
    {
      [(SBHWidgetIconStyleConfiguration *)v5 shouldBoostWhitePoint];
      [(SBHWidgetIconStyleConfiguration *)self shouldBoostWhitePoint];
      v41 = BSEqualBools();
    }

    else
    {
      v41 = 0;
    }
  }

  return v41;
}

- (unint64_t)hash
{
  v3 = [(CHSWidgetDescriptor *)self->_widgetDescriptor hash];
  v4 = [(SBLeafIconDataSource *)self->_widgetDataSource hash]^ v3;
  v5 = [(CHSWidgetExtension *)self->_widgetExtension hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_containingApplicationBundleIdentifier hash];
  v7 = [(SBHIconImageAppearance *)self->_imageAppearance hash];
  v8 = v7 ^ [(CHSWidgetRenderScheme *)self->_appropriateWidgetRenderScheme hash];
  v9 = v6 ^ v8 ^ [(CHSWidgetTintParameters *)self->_appropriateWidgetTintParameters hash];
  v10 = [(CAFilter *)self->_appropriateColorFilter hash];
  v11 = v10 ^ [(UIViewController *)self->_widgetViewController hash];
  return v9 ^ v11 ^ [(SBHWidgetDisplayConfiguration *)self->_customDisplayConfiguration hash]^ self->_isBackgroundRemovable ^ self->_backgroundType;
}

- (id)description
{
  if (!self->_didGenerate)
  {
    [(SBHWidgetIconStyleConfiguration *)self _generateParameters];
  }

  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendPointer:self->_widgetDescriptor withName:@"_widgetDescriptor"];
  v5 = [v3 appendObject:self->_widgetDataSource withName:@"_widgetDataSource" skipIfNil:1];
  v6 = [v3 appendObject:self->_widgetExtension withName:@"_widgetExtension" skipIfNil:1];
  v7 = [v3 appendObject:self->_containingApplicationBundleIdentifier withName:@"_containingApplicationBundleIdentifier" skipIfNil:1];
  v8 = [v3 appendObject:self->_imageAppearance withName:@"_imageAppearance" skipIfNil:1];
  v9 = [v3 appendObject:self->_appropriateWidgetRenderScheme withName:@"_appropriateWidgetRenderScheme" skipIfNil:1];
  v10 = [v3 appendObject:self->_appropriateWidgetTintParameters withName:@"_appropriateWidgetTintParameters" skipIfNil:1];
  v11 = [v3 appendObject:self->_appropriateColorFilter withName:@"_appropriateColorFilter" skipIfNil:1];
  v12 = [v3 appendBool:self->_isBackgroundRemovable withName:@"_isBackgroundRemovable"];
  backgroundType = self->_backgroundType;
  if (backgroundType > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_1E8090988[backgroundType];
  }

  v15 = [v3 appendObject:v14 withName:@"_backgroundType"];
  v16 = [v3 appendObject:self->_widgetViewController withName:@"_widgetViewController" skipIfNil:1];
  v17 = [v3 appendObject:self->_customDisplayConfiguration withName:@"_customDisplayConfiguration" skipIfNil:1];
  v18 = [v3 appendBool:-[SBHWidgetIconStyleConfiguration _isCrystalLinked](self withName:{"_isCrystalLinked"), @"isCrystalLinked"}];
  v19 = [v3 appendBool:-[SBHWidgetIconStyleConfiguration _isDawnLinked](self withName:{"_isDawnLinked"), @"isDawnLinked"}];
  build = [v3 build];

  return build;
}

+ (id)renderSchemeForFactors:(SBHWidgetRenderSchemeFactors)factors
{
  v3 = *&factors.var0;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    v6 = 2;
    if ((~v3 & 0x101000000) != 0)
    {
      v6 = 3;
    }

    v7 = 2;
    if ((v3 & 0x100) == 0)
    {
      v7 = 3;
    }

    if ((v3 & 0x10000) != 0)
    {
      v8 = (v3 & 0x100) >> 7;
    }

    else
    {
      v8 = 0;
    }

    if ((v3 & 0x10000) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    [v4 setRenderingMode:v8];
    [v5 setBackgroundViewPolicy:v9];
  }

  else
  {
    [v4 setRenderingMode:0];
  }

  return v5;
}

+ (id)tintedRenderSchemeForWidgetDescriptor:(id)descriptor family:(int64_t)family widgetExtensionProvider:(id)provider
{
  providerCopy = provider;
  descriptorCopy = descriptor;
  supportsAccentedContent = [descriptorCopy supportsAccentedContent];
  v10 = [providerCopy sbh_extensionForWidgetIdentifiable:descriptorCopy];

  v11 = [v10 isLinkedOnOrAfter:1];
  v12 = [v10 isLinkedOnOrAfter:1];
  isBackgroundRemovable = [descriptorCopy isBackgroundRemovable];
  LODWORD(family) = [descriptorCopy wantsMaterialBackgroundForFamily:family];

  v14 = 0x10000000000;
  if (!family)
  {
    v14 = 0;
  }

  v15 = 0x100000000;
  if (!isBackgroundRemovable)
  {
    v15 = 0;
  }

  v16 = 0x1000000;
  if (!v12)
  {
    v16 = 0;
  }

  v17 = 0x10000;
  if (!v11)
  {
    v17 = 0;
  }

  v18 = 257;
  if (!supportsAccentedContent)
  {
    v18 = 1;
  }

  v19 = [SBHWidgetIconStyleConfiguration renderSchemeForFactors:v17 | v18 | v16 | v15 | v14];

  return v19;
}

- (void)_generateTintParametersForWidgetDescriptor:(id)descriptor
{
  appropriateWidgetTintParameters = self->_appropriateWidgetTintParameters;
  self->_appropriateWidgetTintParameters = 0;
  descriptorCopy = descriptor;

  imageAppearance = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  tintColor = [imageAppearance tintColor];
  _isCrystalLinked = [(SBHWidgetIconStyleConfiguration *)self _isCrystalLinked];
  isAccented = [(SBHWidgetIconStyleConfiguration *)self isAccented];
  supportsAccentedContent = [descriptorCopy supportsAccentedContent];

  bSColor = [tintColor BSColor];
  v11 = 0;
  if (isAccented)
  {
    if (_isCrystalLinked & supportsAccentedContent)
    {
      v12 = objc_alloc_init(MEMORY[0x1E6994328]);
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      bSColor2 = [whiteColor BSColor];

      [v12 setPrimaryTintColor:bSColor];
      [v12 setSecondaryTintColor:bSColor2];
      [v12 setFilterStyle:0];
      [v12 setFraction:1.0];

      v11 = 0;
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = [objc_opt_class() _buildColorMatrixFilterForColor:tintColor];
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E6994328]);
LABEL_7:
  appearanceType = [imageAppearance appearanceType];
  if (appearanceType > 3)
  {
    if (appearanceType != 4)
    {
      if (appearanceType == 5)
      {
        v18 = v12;
        v19 = 6;
        goto LABEL_20;
      }

      if (appearanceType != 6)
      {
        goto LABEL_22;
      }
    }

    v18 = v12;
    v19 = 5;
LABEL_20:
    [v18 setFilterStyle:v19];
    [v12 setPrimaryTintColor:bSColor];
    goto LABEL_21;
  }

  if (appearanceType < 2)
  {
    v16 = v12;
    v17 = 7;
    goto LABEL_18;
  }

  if (appearanceType == 2)
  {
    v16 = v12;
    v17 = 3;
    goto LABEL_18;
  }

  if (appearanceType == 3)
  {
    v16 = v12;
    v17 = 4;
LABEL_18:
    [v16 setFilterStyle:v17];
LABEL_21:

    v11 = 0;
  }

LABEL_22:
  v20 = objc_alloc_init(MEMORY[0x1E69942F8]);
  if (SBHPerformanceFlagEnabled(2) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v20 setWantsHighlightsDisplayAngle:0];
  }

  if (isAccented && [(SBHWidgetIconStyleConfiguration *)self shouldBoostWhitePoint])
  {
    [v20 setWantsWhitePointBoost:1];
  }

  backdropGroupName = [(SBHWidgetIconStyleConfiguration *)self backdropGroupName];
  [v20 setBackdropGroupName:backdropGroupName];

  [v12 setGlassOptions:v20];
  appropriateColorFilter = self->_appropriateColorFilter;
  self->_appropriateColorFilter = v11;
  v23 = v11;

  v24 = [v12 copy];
  v25 = self->_appropriateWidgetTintParameters;
  self->_appropriateWidgetTintParameters = v24;
}

+ (id)_buildColorMatrixFilterForColor:(id)color
{
  v3 = MEMORY[0x1E6979378];
  v4 = *MEMORY[0x1E6979880];
  colorCopy = color;
  v6 = [v3 filterWithType:v4];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [colorCopy getRed:&v12 green:&v11 blue:&v10 alpha:0];

  CAColorMatrixMakeMultiplyColor();
  memset(v9, 0, sizeof(v9));
  v7 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v9];
  [v6 setValue:v7 forKey:*MEMORY[0x1E6979AC0]];

  [v6 setName:@"widgetIconStyleConfigurationColorFilter"];

  return v6;
}

- (BOOL)_isDawnLinked
{
  widgetExtension = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  v4 = widgetExtension;
  if (widgetExtension)
  {
    v5 = [widgetExtension isLinkedOnOrAfter:0];
  }

  else
  {
    bundleRecord = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];

    if (bundleRecord)
    {
      bundleRecord2 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];
      sDKVersion = [bundleRecord2 SDKVersion];

      v9 = [objc_alloc(MEMORY[0x1E698E638]) initWithString:sDKVersion];
      v5 = [v9 majorBuildNumber] == 17;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)bundleRecord
{
  bundleRecord = self->_bundleRecord;
  if (!bundleRecord)
  {
    widgetExtension = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];

    if (widgetExtension)
    {
      v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:self->_widgetBundleIdentifier error:0];
      containingApplicationBundleIdentifier = self->_bundleRecord;
      self->_bundleRecord = v5;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69635F8]);
      containingApplicationBundleIdentifier = [(SBHWidgetIconStyleConfiguration *)self containingApplicationBundleIdentifier];
      v8 = [v7 initWithBundleIdentifier:containingApplicationBundleIdentifier allowPlaceholder:0 error:0];
      v9 = self->_bundleRecord;
      self->_bundleRecord = v8;
    }

    bundleRecord = self->_bundleRecord;
  }

  v10 = bundleRecord;

  return v10;
}

- (CHSWidgetExtensionProvider)widgetExtensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetExtensionProvider);

  return WeakRetained;
}

@end