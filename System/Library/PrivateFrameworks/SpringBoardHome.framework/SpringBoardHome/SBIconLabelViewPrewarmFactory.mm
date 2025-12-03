@interface SBIconLabelViewPrewarmFactory
+ (id)sharedInstance;
- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view;
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

- (id)iconLabelViewWithSettings:(id)settings imageParameters:(id)parameters forIconView:(id)view
{
  settingsCopy = settings;
  parametersCopy = parameters;
  viewCopy = view;
  prewarmSimpleLabelView = self->_prewarmSimpleLabelView;
  if (!prewarmSimpleLabelView)
  {
    v12 = [[SBIconSimpleLabelView alloc] initWithSettings:settingsCopy];
    v13 = self->_prewarmSimpleLabelView;
    self->_prewarmSimpleLabelView = v12;

    [(SBIconSimpleLabelView *)self->_prewarmSimpleLabelView setUserInteractionEnabled:0];
    prewarmSimpleLabelView = self->_prewarmSimpleLabelView;
  }

  [(SBIconSimpleLabelView *)prewarmSimpleLabelView setIconView:viewCopy];
  [(SBIconSimpleLabelView *)self->_prewarmSimpleLabelView updateIconLabelWithSettings:settingsCopy imageParameters:parametersCopy];
  v14 = self->_prewarmSimpleLabelView;
  v15 = v14;

  return v14;
}

@end