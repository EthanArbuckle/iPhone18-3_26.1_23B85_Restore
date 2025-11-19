@interface SBHWidgetIconStyleConfiguration
+ (id)_buildColorMatrixFilterForColor:(id)a3;
+ (id)renderSchemeForFactors:(SBHWidgetRenderSchemeFactors)a3;
+ (id)tintedRenderSchemeForWidgetDescriptor:(id)a3 family:(int64_t)a4 widgetExtensionProvider:(id)a5;
- (BOOL)_isCrystalLinked;
- (BOOL)_isDawnLinked;
- (BOOL)isAccented;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWidgetIconStyleConfiguration:(id)a3;
- (CHSWidgetExtensionProvider)widgetExtensionProvider;
- (SBHWidgetIconStyleConfiguration)initWithContainingApplicationBundleIdentifier:(id)a3 imageAppearance:(id)a4 customDisplayConfiguration:(id)a5 boostsWhitePoint:(BOOL)a6 backdropGroupName:(id)a7;
- (SBHWidgetIconStyleConfiguration)initWithWidgetDataSource:(id)a3 gridSizeClass:(id)a4 widgetViewController:(id)a5 widgetExtensionProvider:(id)a6 imageAppearance:(id)a7 customDisplayConfiguration:(id)a8 boostsWhitePoint:(BOOL)a9 backdropGroupName:(id)a10;
- (SBHWidgetIconStyleConfiguration)initWithWidgetExtension:(id)a3 widgetDescriptor:(id)a4 imageAppearance:(id)a5 customDisplayConfiguration:(id)a6 boostsWhitePoint:(BOOL)a7 backdropGroupName:(id)a8;
- (id)appropriateColorFilter;
- (id)appropriateWidgetRenderScheme;
- (id)appropriateWidgetTintParameters;
- (id)bundleRecord;
- (id)description;
- (unint64_t)hash;
- (void)_generateParameters;
- (void)_generateTintParametersForWidgetDescriptor:(id)a3;
@end

@implementation SBHWidgetIconStyleConfiguration

- (void)_generateParameters
{
  if (self->_didGenerate)
  {
    return;
  }

  v41 = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  v4 = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  v5 = [(SBHWidgetIconStyleConfiguration *)self customDisplayConfiguration];
  if (SBHIconImageAppearanceTypeHasTintColor([v4 appearanceType]))
  {
    v6 = [v4 tintColor];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SBHWidgetIconStyleConfiguration *)self _isCrystalLinked];
  v8 = [(SBHWidgetIconStyleConfiguration *)self isAccented];
  v9 = [(SBHWidgetIconStyleConfiguration *)self widgetDataSource];
  v10 = [(SBHWidgetIconStyleConfiguration *)self widgetViewController];
  if (v9)
  {
    v11 = [SBHWidgetStackViewController _shouldDrawSystemBackgroundMaterialForWidget:v9 widgetViewController:v10];
    if (v5)
    {
LABEL_7:
      self->_backgroundType = 0;
      v12 = [v5 renderScheme];
      v13 = [v12 copy];
      appropriateWidgetRenderScheme = self->_appropriateWidgetRenderScheme;
      self->_appropriateWidgetRenderScheme = v13;

      v15 = [v5 tintParameters];
      v16 = [(NSString *)v15 copy];
      appropriateWidgetTintParameters = self->_appropriateWidgetTintParameters;
      self->_appropriateWidgetTintParameters = v16;

LABEL_8:
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v41)
  {
    v38 = v11;
    v40 = v6;
    appropriateColorFilter = [(SBHWidgetIconStyleConfiguration *)self widgetDescriptor];
    v19 = objc_opt_class();
    v20 = v10;
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
      v26 = v8;
    }

    else
    {
      v26 = 0;
    }

    v39 = v25;
    if (v26)
    {
      v27 = [v25 widget];
      v28 = [v27 family];

      v29 = objc_opt_class();
      WeakRetained = objc_loadWeakRetained(&self->_widgetExtensionProvider);
      v31 = [v29 tintedRenderSchemeForWidgetDescriptor:appropriateColorFilter family:v28 widgetExtensionProvider:WeakRetained];
    }

    else
    {
      v31 = [objc_alloc(MEMORY[0x1E6994420]) initWithRenderingMode:0 backgroundViewPolicy:0];
    }

    v32 = self->_appropriateWidgetRenderScheme;
    self->_appropriateWidgetRenderScheme = v31;
    v33 = v31;

    [(SBHWidgetIconStyleConfiguration *)self _generateTintParametersForWidgetDescriptor:appropriateColorFilter];
    v34 = [(CHSWidgetRenderScheme *)self->_appropriateWidgetRenderScheme backgroundViewPolicy];

    if (v34 == 2)
    {
      v37 = 0;
      v36 = 1;
      v35 = v39;
      v6 = v40;
    }

    else
    {
      v35 = v39;
      v6 = v40;
      v36 = 0;
      v37 = v38;
    }

    self->_isBackgroundRemovable = v36;
    self->_backgroundType = v37;

    goto LABEL_35;
  }

  if (v11 || !v7 || !v8)
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
  if (!v6)
  {
    goto LABEL_9;
  }

  v15 = self->_containingApplicationBundleIdentifier;
  if ([(NSString *)v15 isEqualToString:@"com.apple.DocumentsApp"])
  {
    goto LABEL_8;
  }

  v23 = [(NSString *)v15 isEqualToString:@"com.apple.shortcuts"];

  if (!v23)
  {
    v24 = [objc_opt_class() _buildColorMatrixFilterForColor:v6];
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
  v3 = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isLinkedOnOrAfter:1];
  }

  else
  {
    v6 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];

    if (v6)
    {
      v7 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];
      v8 = [v7 SDKVersion];

      v9 = [objc_alloc(MEMORY[0x1E698E638]) initWithString:v8];
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
  v2 = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  v3 = [v2 appearanceType];

  return (v3 - 2) < 5;
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

- (SBHWidgetIconStyleConfiguration)initWithWidgetExtension:(id)a3 widgetDescriptor:(id)a4 imageAppearance:(id)a5 customDisplayConfiguration:(id)a6 boostsWhitePoint:(BOOL)a7 backdropGroupName:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = SBHWidgetIconStyleConfiguration;
  v20 = [(SBHWidgetIconStyleConfiguration *)&v31 init];
  if (v20)
  {
    v21 = [v17 copy];
    imageAppearance = v20->_imageAppearance;
    v20->_imageAppearance = v21;

    objc_storeStrong(&v20->_widgetDescriptor, a4);
    objc_storeStrong(&v20->_widgetExtension, a3);
    v23 = [v15 identity];
    v24 = [v23 extensionBundleIdentifier];
    widgetBundleIdentifier = v20->_widgetBundleIdentifier;
    v20->_widgetBundleIdentifier = v24;

    v26 = [v18 copy];
    customDisplayConfiguration = v20->_customDisplayConfiguration;
    v20->_customDisplayConfiguration = v26;

    v20->_shouldBoostWhitePoint = a7;
    v28 = [v19 copy];
    backdropGroupName = v20->_backdropGroupName;
    v20->_backdropGroupName = v28;
  }

  return v20;
}

- (SBHWidgetIconStyleConfiguration)initWithWidgetDataSource:(id)a3 gridSizeClass:(id)a4 widgetViewController:(id)a5 widgetExtensionProvider:(id)a6 imageAppearance:(id)a7 customDisplayConfiguration:(id)a8 boostsWhitePoint:(BOOL)a9 backdropGroupName:(id)a10
{
  v16 = a3;
  v17 = a4;
  v30 = a5;
  v31 = a5;
  v18 = a6;
  v19 = a10;
  v20 = a8;
  v21 = a7;
  v22 = objc_opt_self();
  LOBYTE(a5) = objc_opt_isKindOfClass();

  v32 = v17;
  if (a5)
  {
    v23 = v16;
    v24 = [v23 chsWidgetWithGridSizeClass:v17 intent:0];
    v25 = [v18 sbh_extensionForWidget:v24];
    v26 = [v18 sbh_descriptorForWidgetIdentifiable:v23];

    v27 = [(SBHWidgetIconStyleConfiguration *)self initWithWidgetExtension:v25 widgetDescriptor:v26 imageAppearance:v21 customDisplayConfiguration:v20 boostsWhitePoint:a9 backdropGroupName:v19];
    v19 = v21;
    v20 = v26;
    v21 = v25;
  }

  else
  {
    v24 = SBHContainerBundleIdentifierForDataSource(v16);
    v27 = [(SBHWidgetIconStyleConfiguration *)self initWithContainingApplicationBundleIdentifier:v24 imageAppearance:v21 customDisplayConfiguration:v20 boostsWhitePoint:a9 backdropGroupName:v19];
  }

  if (v27)
  {
    objc_storeStrong(&v27->_widgetDataSource, a3);
    objc_storeStrong(&v27->_widgetViewController, v30);
    objc_storeWeak(&v27->_widgetExtensionProvider, v18);
  }

  return v27;
}

- (SBHWidgetIconStyleConfiguration)initWithContainingApplicationBundleIdentifier:(id)a3 imageAppearance:(id)a4 customDisplayConfiguration:(id)a5 boostsWhitePoint:(BOOL)a6 backdropGroupName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = SBHWidgetIconStyleConfiguration;
  v16 = [(SBHWidgetIconStyleConfiguration *)&v26 init];
  if (v16)
  {
    v17 = [v13 copy];
    imageAppearance = v16->_imageAppearance;
    v16->_imageAppearance = v17;

    v19 = [v12 copy];
    containingApplicationBundleIdentifier = v16->_containingApplicationBundleIdentifier;
    v16->_containingApplicationBundleIdentifier = v19;

    v21 = [v14 copy];
    customDisplayConfiguration = v16->_customDisplayConfiguration;
    v16->_customDisplayConfiguration = v21;

    v16->_shouldBoostWhitePoint = a6;
    v23 = [v15 copy];
    backdropGroupName = v16->_backdropGroupName;
    v16->_backdropGroupName = v23;
  }

  return v16;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHWidgetIconStyleConfiguration *)self isEqualToWidgetIconStyleConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToWidgetIconStyleConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v41 = 1;
  }

  else
  {
    v6 = [(SBHWidgetIconStyleConfiguration *)v4 containingApplicationBundleIdentifier];
    v7 = [(SBHWidgetIconStyleConfiguration *)self containingApplicationBundleIdentifier];
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
  v20 = [v3 build];

  return v20;
}

+ (id)renderSchemeForFactors:(SBHWidgetRenderSchemeFactors)a3
{
  v3 = *&a3.var0;
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

+ (id)tintedRenderSchemeForWidgetDescriptor:(id)a3 family:(int64_t)a4 widgetExtensionProvider:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 supportsAccentedContent];
  v10 = [v7 sbh_extensionForWidgetIdentifiable:v8];

  v11 = [v10 isLinkedOnOrAfter:1];
  v12 = [v10 isLinkedOnOrAfter:1];
  v13 = [v8 isBackgroundRemovable];
  LODWORD(a4) = [v8 wantsMaterialBackgroundForFamily:a4];

  v14 = 0x10000000000;
  if (!a4)
  {
    v14 = 0;
  }

  v15 = 0x100000000;
  if (!v13)
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
  if (!v9)
  {
    v18 = 1;
  }

  v19 = [SBHWidgetIconStyleConfiguration renderSchemeForFactors:v17 | v18 | v16 | v15 | v14];

  return v19;
}

- (void)_generateTintParametersForWidgetDescriptor:(id)a3
{
  appropriateWidgetTintParameters = self->_appropriateWidgetTintParameters;
  self->_appropriateWidgetTintParameters = 0;
  v5 = a3;

  v26 = [(SBHWidgetIconStyleConfiguration *)self imageAppearance];
  v6 = [v26 tintColor];
  v7 = [(SBHWidgetIconStyleConfiguration *)self _isCrystalLinked];
  v8 = [(SBHWidgetIconStyleConfiguration *)self isAccented];
  v9 = [v5 supportsAccentedContent];

  v10 = [v6 BSColor];
  v11 = 0;
  if (v8)
  {
    if (v7 & v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E6994328]);
      v13 = [MEMORY[0x1E69DC888] whiteColor];
      v14 = [v13 BSColor];

      [v12 setPrimaryTintColor:v10];
      [v12 setSecondaryTintColor:v14];
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
      v11 = [objc_opt_class() _buildColorMatrixFilterForColor:v6];
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E6994328]);
LABEL_7:
  v15 = [v26 appearanceType];
  if (v15 > 3)
  {
    if (v15 != 4)
    {
      if (v15 == 5)
      {
        v18 = v12;
        v19 = 6;
        goto LABEL_20;
      }

      if (v15 != 6)
      {
        goto LABEL_22;
      }
    }

    v18 = v12;
    v19 = 5;
LABEL_20:
    [v18 setFilterStyle:v19];
    [v12 setPrimaryTintColor:v10];
    goto LABEL_21;
  }

  if (v15 < 2)
  {
    v16 = v12;
    v17 = 7;
    goto LABEL_18;
  }

  if (v15 == 2)
  {
    v16 = v12;
    v17 = 3;
    goto LABEL_18;
  }

  if (v15 == 3)
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

  if (v8 && [(SBHWidgetIconStyleConfiguration *)self shouldBoostWhitePoint])
  {
    [v20 setWantsWhitePointBoost:1];
  }

  v21 = [(SBHWidgetIconStyleConfiguration *)self backdropGroupName];
  [v20 setBackdropGroupName:v21];

  [v12 setGlassOptions:v20];
  appropriateColorFilter = self->_appropriateColorFilter;
  self->_appropriateColorFilter = v11;
  v23 = v11;

  v24 = [v12 copy];
  v25 = self->_appropriateWidgetTintParameters;
  self->_appropriateWidgetTintParameters = v24;
}

+ (id)_buildColorMatrixFilterForColor:(id)a3
{
  v3 = MEMORY[0x1E6979378];
  v4 = *MEMORY[0x1E6979880];
  v5 = a3;
  v6 = [v3 filterWithType:v4];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  [v5 getRed:&v12 green:&v11 blue:&v10 alpha:0];

  CAColorMatrixMakeMultiplyColor();
  memset(v9, 0, sizeof(v9));
  v7 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v9];
  [v6 setValue:v7 forKey:*MEMORY[0x1E6979AC0]];

  [v6 setName:@"widgetIconStyleConfigurationColorFilter"];

  return v6;
}

- (BOOL)_isDawnLinked
{
  v3 = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isLinkedOnOrAfter:0];
  }

  else
  {
    v6 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];

    if (v6)
    {
      v7 = [(SBHWidgetIconStyleConfiguration *)self bundleRecord];
      v8 = [v7 SDKVersion];

      v9 = [objc_alloc(MEMORY[0x1E698E638]) initWithString:v8];
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
    v4 = [(SBHWidgetIconStyleConfiguration *)self widgetExtension];

    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:self->_widgetBundleIdentifier error:0];
      v6 = self->_bundleRecord;
      self->_bundleRecord = v5;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69635F8]);
      v6 = [(SBHWidgetIconStyleConfiguration *)self containingApplicationBundleIdentifier];
      v8 = [v7 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
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