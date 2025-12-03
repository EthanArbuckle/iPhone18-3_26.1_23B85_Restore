@interface SBIconLabelViewSimpleFactory
+ (id)sharedInstance;
+ (void)configureLabelImageParametersBuilder:(id)builder;
- (BOOL)canUseIconLabelView:(id)view toDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)iconView;
- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view;
@end

@implementation SBIconLabelViewSimpleFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_82 != -1)
  {
    +[SBIconLabelViewSimpleFactory sharedInstance];
  }

  v3 = sharedInstance_simpleIconLabelViewFactory;

  return v3;
}

uint64_t __46__SBIconLabelViewSimpleFactory_sharedInstance__block_invoke()
{
  sharedInstance_simpleIconLabelViewFactory = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view
{
  viewCopy = view;
  parametersCopy = parameters;
  settingsCopy = settings;
  v10 = [[SBIconSimpleLabelView alloc] initWithSettings:settingsCopy];
  [(SBIconSimpleLabelView *)v10 setUserInteractionEnabled:0];
  [(SBIconSimpleLabelView *)v10 setIconView:viewCopy];

  [(SBIconSimpleLabelView *)v10 updateIconLabelWithSettings:settingsCopy imageParameters:parametersCopy];

  return v10;
}

- (BOOL)canUseIconLabelView:(id)view toDisplayLabelWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)iconView
{
  viewCopy = view;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)configureLabelImageParametersBuilder:(id)builder
{
  builderCopy = builder;
  legibilitySettings = [builderCopy legibilitySettings];
  primaryColor = [legibilitySettings primaryColor];
  [builderCopy setFallbackTextColor:primaryColor];
}

@end