@interface SBIconLabelViewDefaultFactory
+ (id)sharedInstance;
+ (void)configureLabelImageParametersBuilder:(id)builder;
- (BOOL)canUseIconLabelView:(id)view toDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)iconView;
- (BOOL)canUseIconSimpleLabelViewToDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view;
- (SBIconLabelViewDefaultFactory)initWithFactoryIdentifier:(id)identifier;
- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view;
- (void)prewarmForSettings:(id)settings maxSize:(CGSize)size minSize:(CGSize)minSize scale:(double)scale;
@end

@implementation SBIconLabelViewDefaultFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SBIconLabelViewDefaultFactory sharedInstance];
  }

  v3 = sharedInstance_defaultIconLabelViewFactory;

  return v3;
}

uint64_t __47__SBIconLabelViewDefaultFactory_sharedInstance__block_invoke()
{
  v0 = [[SBIconLabelViewDefaultFactory alloc] initWithFactoryIdentifier:@"Default SBIconLabelViewDefaultFactory"];
  v1 = sharedInstance_defaultIconLabelViewFactory;
  sharedInstance_defaultIconLabelViewFactory = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBIconLabelViewDefaultFactory)initWithFactoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SBIconLabelViewDefaultFactory;
  v5 = [(SBIconLabelViewDefaultFactory *)&v14 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"(SBIconLabelViewDefaultFactory no identifier specified!)";
    }

    objc_storeStrong(&v5->_factoryIdentifier, v8);

    v9 = objc_alloc(MEMORY[0x1E69D4580]);
    v10 = [identifierCopy stringByAppendingString:@"-LegibilityEngine"];
    v11 = [v9 initWithEngineIdentifier:v10];
    engine = v5->_engine;
    v5->_engine = v11;

    [(SBUILegibilityEngine *)v5->_engine setUseMinFillHeightForTemplateGeneration:1];
  }

  return v5;
}

- (void)prewarmForSettings:(id)settings maxSize:(CGSize)size minSize:(CGSize)minSize scale:(double)scale
{
  height = minSize.height;
  width = minSize.width;
  v9 = size.height;
  v10 = size.width;
  settingsCopy = settings;
  _UILegibilitySettings = [settingsCopy _UILegibilitySettings];
  if (_UILegibilitySettings)
  {
    v13 = _UILegibilitySettings;
    legibilityDescriptor = [settingsCopy legibilityDescriptor];

    if (!legibilityDescriptor)
    {
      engine = self->_engine;
      _UILegibilitySettings2 = [settingsCopy _UILegibilitySettings];
      [(SBUILegibilityEngine *)engine prewarmForSettings:_UILegibilitySettings2 maxSize:v10 minSize:v9 scale:width, height, scale];
    }
  }
}

- (BOOL)canUseIconSimpleLabelViewToDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view
{
  settingsCopy = settings;
  parametersCopy = parameters;
  if ([settingsCopy style] || +[SBHLegibilitySettings needsLegibilityImageForParameters:](SBHLegibilitySettings, "needsLegibilityImageForParameters:", parametersCopy))
  {
    v8 = 0;
  }

  else
  {
    legibilityDescriptor = [settingsCopy legibilityDescriptor];
    v8 = legibilityDescriptor == 0;
  }

  return v8;
}

- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view
{
  settingsCopy = settings;
  viewCopy = view;
  parametersCopy = parameters;
  if ([(SBIconLabelViewDefaultFactory *)self canUseIconSimpleLabelViewToDisplayLabelWithSettings:settingsCopy imageParameters:parametersCopy forIconView:viewCopy])
  {
    v11 = [[SBIconSimpleLabelView alloc] initWithSettings:settingsCopy];
LABEL_5:
    v13 = v11;
    goto LABEL_6;
  }

  legibilityDescriptor = [settingsCopy legibilityDescriptor];

  if (legibilityDescriptor)
  {
    v11 = objc_opt_new();
    goto LABEL_5;
  }

  v13 = [[SBIconLegibilityLabelView alloc] initWithSettings:settingsCopy legibilityEngine:self->_engine];
  [(SBUILegibilityView *)v13 setBackfillTemplateResults:1];
LABEL_6:
  [(SBIconLegibilityLabelView *)v13 setUserInteractionEnabled:0];
  [(SBIconLegibilityLabelView *)v13 setIconView:viewCopy];

  [(SBIconLegibilityLabelView *)v13 updateIconLabelWithSettings:settingsCopy imageParameters:parametersCopy];

  return v13;
}

- (BOOL)canUseIconLabelView:(id)view toDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)iconView
{
  viewCopy = view;
  settingsCopy = settings;
  parametersCopy = parameters;
  iconViewCopy = iconView;
  legibilityDescriptor = [settingsCopy legibilityDescriptor];

  if (!legibilityDescriptor)
  {
    [(SBIconLabelViewDefaultFactory *)self canUseIconSimpleLabelViewToDisplayLabelWithSettings:settingsCopy imageParameters:parametersCopy forIconView:iconViewCopy];
  }

  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)configureLabelImageParametersBuilder:(id)builder
{
  v3 = MEMORY[0x1E69DC888];
  builderCopy = builder;
  whiteColor = [v3 whiteColor];
  [builderCopy setFallbackTextColor:whiteColor];
}

@end