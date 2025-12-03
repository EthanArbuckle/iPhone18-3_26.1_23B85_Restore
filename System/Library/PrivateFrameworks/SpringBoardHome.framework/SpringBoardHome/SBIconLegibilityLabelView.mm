@interface SBIconLegibilityLabelView
- (SBIconLegibilityLabelView)initWithSettings:(id)settings;
- (SBIconLegibilityLabelView)initWithSettings:(id)settings legibilityEngine:(id)engine;
- (SBIconView)iconView;
- (void)updateIconLabelWithSettings:(id)settings imageParameters:(id)parameters;
@end

@implementation SBIconLegibilityLabelView

- (SBIconLegibilityLabelView)initWithSettings:(id)settings
{
  v4 = MEMORY[0x1E69D4580];
  settingsCopy = settings;
  defaultEngine = [v4 defaultEngine];
  v7 = [(SBIconLegibilityLabelView *)self initWithSettings:settingsCopy legibilityEngine:defaultEngine];

  return v7;
}

- (SBIconLegibilityLabelView)initWithSettings:(id)settings legibilityEngine:(id)engine
{
  engineCopy = engine;
  v6 = [(SBIconLegibilityLabelView *)self init];
  v7 = v6;
  if (v6)
  {
    [(SBUILegibilityView *)v6 setLegibilityEngine:engineCopy];
  }

  return v7;
}

- (void)updateIconLabelWithSettings:(id)settings imageParameters:(id)parameters
{
  settingsCopy = settings;
  parametersCopy = parameters;
  imageParameters = [(SBIconLegibilityLabelView *)self imageParameters];
  v8 = imageParameters;
  if ((parametersCopy != 0) == (imageParameters != 0) && [imageParameters isEqual:parametersCopy] && (-[SBUILegibilityView image](self, "image"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    image = [(SBUILegibilityView *)self image];
  }

  else if (parametersCopy)
  {
    iconView = [(SBIconLegibilityLabelView *)self iconView];
    image = [iconView labelImageWithParameters:parametersCopy];
    if (!image)
    {
      image = [SBIconLabelImage imageWithParameters:parametersCopy];
    }

    [(SBIconLegibilityLabelView *)self setImageParameters:parametersCopy];
  }

  else
  {
    image = 0;
  }

  if ([parametersCopy containsEmoji])
  {
    style = [settingsCopy style];
    v13 = settingsCopy;
    v14 = 2 * (style != 2);
  }

  else
  {
    v14 = 2;
    v13 = settingsCopy;
  }

  +[SBHLegibilitySettings legibilityStrengthForLegibilityStyle:](SBHLegibilitySettings, "legibilityStrengthForLegibilityStyle:", [v13 style]);
  v16 = v15;
  v17 = SBLogLegibility();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  if (v18)
  {
    userInfo = [(SBUILegibilityView *)self userInfo];
    text = [parametersCopy text];
    v21 = text;
    if (text)
    {
      v22 = text;
    }

    else
    {
      v22 = @"(Undefined)";
    }

    [userInfo setObject:v22 forKey:@"underlyingText"];
  }

  _UILegibilitySettings = [settingsCopy _UILegibilitySettings];
  [(SBUILegibilityView *)self updateForChangedSettings:_UILegibilitySettings options:v14 image:image strength:v16];
}

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

@end