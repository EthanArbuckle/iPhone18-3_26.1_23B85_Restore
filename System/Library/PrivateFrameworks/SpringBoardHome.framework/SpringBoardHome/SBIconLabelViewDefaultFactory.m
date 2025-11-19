@interface SBIconLabelViewDefaultFactory
+ (id)sharedInstance;
+ (void)configureLabelImageParametersBuilder:(id)a3;
- (BOOL)canUseIconLabelView:(id)a3 toDisplayLabelWithSettings:(id)a4 imageParameters:(id)a5 forIconView:(id)a6;
- (BOOL)canUseIconSimpleLabelViewToDisplayLabelWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5;
- (SBIconLabelViewDefaultFactory)initWithFactoryIdentifier:(id)a3;
- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5;
- (void)prewarmForSettings:(id)a3 maxSize:(CGSize)a4 minSize:(CGSize)a5 scale:(double)a6;
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

- (SBIconLabelViewDefaultFactory)initWithFactoryIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBIconLabelViewDefaultFactory;
  v5 = [(SBIconLabelViewDefaultFactory *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
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
    v10 = [v4 stringByAppendingString:@"-LegibilityEngine"];
    v11 = [v9 initWithEngineIdentifier:v10];
    engine = v5->_engine;
    v5->_engine = v11;

    [(SBUILegibilityEngine *)v5->_engine setUseMinFillHeightForTemplateGeneration:1];
  }

  return v5;
}

- (void)prewarmForSettings:(id)a3 maxSize:(CGSize)a4 minSize:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v17 = a3;
  v12 = [v17 _UILegibilitySettings];
  if (v12)
  {
    v13 = v12;
    v14 = [v17 legibilityDescriptor];

    if (!v14)
    {
      engine = self->_engine;
      v16 = [v17 _UILegibilitySettings];
      [(SBUILegibilityEngine *)engine prewarmForSettings:v16 maxSize:v10 minSize:v9 scale:width, height, a6];
    }
  }
}

- (BOOL)canUseIconSimpleLabelViewToDisplayLabelWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 style] || +[SBHLegibilitySettings needsLegibilityImageForParameters:](SBHLegibilitySettings, "needsLegibilityImageForParameters:", v7))
  {
    v8 = 0;
  }

  else
  {
    v10 = [v6 legibilityDescriptor];
    v8 = v10 == 0;
  }

  return v8;
}

- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([(SBIconLabelViewDefaultFactory *)self canUseIconSimpleLabelViewToDisplayLabelWithSettings:v8 imageParameters:v10 forIconView:v9])
  {
    v11 = [[SBIconSimpleLabelView alloc] initWithSettings:v8];
LABEL_5:
    v13 = v11;
    goto LABEL_6;
  }

  v12 = [v8 legibilityDescriptor];

  if (v12)
  {
    v11 = objc_opt_new();
    goto LABEL_5;
  }

  v13 = [[SBIconLegibilityLabelView alloc] initWithSettings:v8 legibilityEngine:self->_engine];
  [(SBUILegibilityView *)v13 setBackfillTemplateResults:1];
LABEL_6:
  [(SBIconLegibilityLabelView *)v13 setUserInteractionEnabled:0];
  [(SBIconLegibilityLabelView *)v13 setIconView:v9];

  [(SBIconLegibilityLabelView *)v13 updateIconLabelWithSettings:v8 imageParameters:v10];

  return v13;
}

- (BOOL)canUseIconLabelView:(id)a3 toDisplayLabelWithSettings:(id)a4 imageParameters:(id)a5 forIconView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 legibilityDescriptor];

  if (!v14)
  {
    [(SBIconLabelViewDefaultFactory *)self canUseIconSimpleLabelViewToDisplayLabelWithSettings:v11 imageParameters:v12 forIconView:v13];
  }

  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)configureLabelImageParametersBuilder:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 whiteColor];
  [v4 setFallbackTextColor:v5];
}

@end