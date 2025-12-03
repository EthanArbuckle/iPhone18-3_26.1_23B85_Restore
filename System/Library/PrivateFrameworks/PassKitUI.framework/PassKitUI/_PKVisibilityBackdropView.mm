@interface _PKVisibilityBackdropView
- (_PKVisibilityBackdropView)initWithFrame:(CGRect)frame privateStyle:(int64_t)style;
- (_PKVisibilityBackdropViewDelegate)delegate;
- (int64_t)pkui_preferredBackdropStyle;
- (void)_pkui_setVisibility:(double)visibility animated:(BOOL)animated;
- (void)_updateStyleIfNecessary;
- (void)dealloc;
- (void)pkui_commitBackdropSettings;
- (void)pkui_setVisibility:(double)visibility animated:(BOOL)animated;
- (void)pkui_updateBackdropSettings;
- (void)setDelegate:(id)delegate;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _PKVisibilityBackdropView

- (_PKVisibilityBackdropView)initWithFrame:(CGRect)frame privateStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = _PKVisibilityBackdropView;
  v5 = [(_UIBackdropView *)&v9 initWithFrame:frame.origin.x privateStyle:frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_pkui_accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD8A8] object:0];
    [defaultCenter addObserver:v6 selector:sel_pkui_accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    [(_PKVisibilityBackdropView *)v6 pkui_commitBackdropSettings];
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_updatingBackdropSettings)
  {
    [(_UIBackdropView *)self transitionComplete];
  }

  v3.receiver = self;
  v3.super_class = _PKVisibilityBackdropView;
  [(_UIBackdropView *)&v3 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _PKVisibilityBackdropView;
  [(_PKVisibilityBackdropView *)&v4 traitCollectionDidChange:change];
  [(_PKVisibilityBackdropView *)self _updateStyleIfNecessary];
}

- (void)pkui_setVisibility:(double)visibility animated:(BOOL)animated
{
  if (self->_visibility != fmax(fmin(visibility, 1.0), 0.0))
  {
    [(_PKVisibilityBackdropView *)self _pkui_setVisibility:animated animated:?];
  }
}

- (void)_pkui_setVisibility:(double)visibility animated:(BOOL)animated
{
  self->_visibility = visibility;
  if (!self->_updatingBackdropSettings)
  {
    animationCounter = self->_animationCounter;
    if (animationCounter)
    {
      if (vabdd_f64(visibility, self->_visibilityAnimationTarget) >= 0.05 || animated)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (animated)
      {
LABEL_7:
        self->_animationCounter = animationCounter + 1;
        self->_visibilityAnimationTarget = visibility;
        objc_initWeak(&location, self);
        styleToken = self->_styleToken;
        v7 = MEMORY[0x1E69DD250];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke;
        v12[3] = &unk_1E8010970;
        v12[4] = self;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_2;
        v9[3] = &unk_1E8025918;
        objc_copyWeak(&v10, &location);
        v11 = styleToken;
        [v7 pkui_animateUsingOptions:6 animations:v12 completion:v9];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
        return;
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58___PKVisibilityBackdropView__pkui_setVisibility_animated___block_invoke_5;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    }
  }
}

- (int64_t)pkui_preferredBackdropStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    traitCollection = [(_PKVisibilityBackdropView *)self traitCollection];
    style = [WeakRetained visibilityBackdropView:self preferredStyleForTraitCollection:traitCollection];
  }

  else
  {
    style = self->_style;
  }

  return style;
}

- (void)pkui_updateBackdropSettings
{
  if (!self->_updatingBackdropSettings)
  {
    self->_updatingBackdropSettings = 1;
    [(_UIBackdropView *)self transitionComplete];

    [(_PKVisibilityBackdropView *)self pkui_commitBackdropSettings];
  }
}

- (void)pkui_commitBackdropSettings
{
  self->_updatingBackdropSettings = 0;
  v3 = MEMORY[0x1E69DD378];
  v4 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:self->_style];
  v5 = [v3 pkui_createTransparentSettingsFromSettings:v4];

  [(_UIBackdropView *)self transitionToSettings:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___PKVisibilityBackdropView_pkui_commitBackdropSettings__block_invoke;
  v10[3] = &unk_1E8010970;
  v10[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  visibility = self->_visibility;
  self->_visibilityAnimationTarget = 0.0;
  self->_visibility = 0.0;
  self->_animationCounter = 0;
  ++self->_styleToken;
  isHidden = [(_PKVisibilityBackdropView *)self isHidden];
  v8 = 0;
  if ((isHidden & 1) == 0)
  {
    [(_PKVisibilityBackdropView *)self alpha];
    v8 = v9 > 0.0 && visibility > 0.0;
  }

  [(_PKVisibilityBackdropView *)self _pkui_setVisibility:v8 animated:visibility];
}

- (void)_updateStyleIfNecessary
{
  pkui_preferredBackdropStyle = [(_PKVisibilityBackdropView *)self pkui_preferredBackdropStyle];
  if (self->_style != pkui_preferredBackdropStyle)
  {
    self->_style = pkui_preferredBackdropStyle;

    [(_PKVisibilityBackdropView *)self pkui_updateBackdropSettings];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(&self->_delegate, delegateCopy);

  if (WeakRetained != delegateCopy || delegateCopy == 0 || WeakRetained == 0)
  {
    [(_PKVisibilityBackdropView *)self _updateStyleIfNecessary];
  }
}

- (_PKVisibilityBackdropViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end