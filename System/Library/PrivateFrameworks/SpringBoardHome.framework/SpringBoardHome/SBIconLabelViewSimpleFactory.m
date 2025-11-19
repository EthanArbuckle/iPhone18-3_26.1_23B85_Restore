@interface SBIconLabelViewSimpleFactory
+ (id)sharedInstance;
+ (void)configureLabelImageParametersBuilder:(id)a3;
- (BOOL)canUseIconLabelView:(id)a3 toDisplayLabelWithSettings:(id)a4 imageParameters:(id)a5 forIconView:(id)a6;
- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5;
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

- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SBIconSimpleLabelView alloc] initWithSettings:v9];
  [(SBIconSimpleLabelView *)v10 setUserInteractionEnabled:0];
  [(SBIconSimpleLabelView *)v10 setIconView:v7];

  [(SBIconSimpleLabelView *)v10 updateIconLabelWithSettings:v9 imageParameters:v8];

  return v10;
}

- (BOOL)canUseIconLabelView:(id)a3 toDisplayLabelWithSettings:(id)a4 imageParameters:(id)a5 forIconView:(id)a6
{
  v6 = a3;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)configureLabelImageParametersBuilder:(id)a3
{
  v3 = a3;
  v5 = [v3 legibilitySettings];
  v4 = [v5 primaryColor];
  [v3 setFallbackTextColor:v4];
}

@end