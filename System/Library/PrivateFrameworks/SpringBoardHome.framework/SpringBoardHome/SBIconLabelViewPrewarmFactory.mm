@interface SBIconLabelViewPrewarmFactory
+ (id)sharedInstance;
- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5;
@end

@implementation SBIconLabelViewPrewarmFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_91 != -1)
  {
    +[SBIconLabelViewPrewarmFactory sharedInstance];
  }

  v3 = sharedInstance_simpleIconLabelViewFactory_90;

  return v3;
}

uint64_t __47__SBIconLabelViewPrewarmFactory_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_simpleIconLabelViewFactory_90;
  sharedInstance_simpleIconLabelViewFactory_90 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)iconLabelViewWithSettings:(id)a3 imageParameters:(id)a4 forIconView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  prewarmSimpleLabelView = self->_prewarmSimpleLabelView;
  if (!prewarmSimpleLabelView)
  {
    v12 = [[SBIconSimpleLabelView alloc] initWithSettings:v8];
    v13 = self->_prewarmSimpleLabelView;
    self->_prewarmSimpleLabelView = v12;

    [(SBIconSimpleLabelView *)self->_prewarmSimpleLabelView setUserInteractionEnabled:0];
    prewarmSimpleLabelView = self->_prewarmSimpleLabelView;
  }

  [(SBIconSimpleLabelView *)prewarmSimpleLabelView setIconView:v10];
  [(SBIconSimpleLabelView *)self->_prewarmSimpleLabelView updateIconLabelWithSettings:v8 imageParameters:v9];
  v14 = self->_prewarmSimpleLabelView;
  v15 = v14;

  return v14;
}

@end