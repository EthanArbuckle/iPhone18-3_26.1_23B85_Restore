@interface SBIconLegibilityLabelView
- (SBIconLegibilityLabelView)initWithSettings:(id)a3;
- (SBIconLegibilityLabelView)initWithSettings:(id)a3 legibilityEngine:(id)a4;
- (SBIconView)iconView;
- (void)updateIconLabelWithSettings:(id)a3 imageParameters:(id)a4;
@end

@implementation SBIconLegibilityLabelView

- (SBIconLegibilityLabelView)initWithSettings:(id)a3
{
  v4 = MEMORY[0x1E69D4580];
  v5 = a3;
  v6 = [v4 defaultEngine];
  v7 = [(SBIconLegibilityLabelView *)self initWithSettings:v5 legibilityEngine:v6];

  return v7;
}

- (SBIconLegibilityLabelView)initWithSettings:(id)a3 legibilityEngine:(id)a4
{
  v5 = a4;
  v6 = [(SBIconLegibilityLabelView *)self init];
  v7 = v6;
  if (v6)
  {
    [(SBUILegibilityView *)v6 setLegibilityEngine:v5];
  }

  return v7;
}

- (void)updateIconLabelWithSettings:(id)a3 imageParameters:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(SBIconLegibilityLabelView *)self imageParameters];
  v8 = v7;
  if ((v6 != 0) == (v7 != 0) && [v7 isEqual:v6] && (-[SBUILegibilityView image](self, "image"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(SBUILegibilityView *)self image];
  }

  else if (v6)
  {
    v11 = [(SBIconLegibilityLabelView *)self iconView];
    v10 = [v11 labelImageWithParameters:v6];
    if (!v10)
    {
      v10 = [SBIconLabelImage imageWithParameters:v6];
    }

    [(SBIconLegibilityLabelView *)self setImageParameters:v6];
  }

  else
  {
    v10 = 0;
  }

  if ([v6 containsEmoji])
  {
    v12 = [v24 style];
    v13 = v24;
    v14 = 2 * (v12 != 2);
  }

  else
  {
    v14 = 2;
    v13 = v24;
  }

  +[SBHLegibilitySettings legibilityStrengthForLegibilityStyle:](SBHLegibilitySettings, "legibilityStrengthForLegibilityStyle:", [v13 style]);
  v16 = v15;
  v17 = SBLogLegibility();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  if (v18)
  {
    v19 = [(SBUILegibilityView *)self userInfo];
    v20 = [v6 text];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"(Undefined)";
    }

    [v19 setObject:v22 forKey:@"underlyingText"];
  }

  v23 = [v24 _UILegibilitySettings];
  [(SBUILegibilityView *)self updateForChangedSettings:v23 options:v14 image:v10 strength:v16];
}

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

@end