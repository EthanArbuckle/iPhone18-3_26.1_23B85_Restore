@interface UIDictationGlowEffect
- (UIDictationGlowEffect)initWithView:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setTintColor:(id)a3 animated:(BOOL)a4 duration:(double)a5 autoreverses:(BOOL)a6 repeatCount:(double)a7;
- (void)updateColorWithUserInterfaceStyleChange;
@end

@implementation UIDictationGlowEffect

- (void)updateColorWithUserInterfaceStyleChange
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_glowEffectView);
  v4 = [WeakRetained traitCollection];
  v5 = [v4 userInterfaceStyle];
  v6 = v5;
  v8 = v5 == 2 || v5 == 1000;

  if (self->_cachedDarkMode != v8)
  {
    self->_cachedDarkMode = v8;
    v9 = +[_UIDictationSettingsDomain rootSettings];
    v10 = v9;
    if (v6 == 1000 || v6 == 2)
    {
      v11 = [v9 darkModeCompositingFiler];
    }

    else
    {
      v11 = [v9 lightModeCompositingFiler];
    }

    v12 = v11;
    v13 = [(TUIGlowEffect *)self->_glowEffect layer];
    [v13 setCompositingFilter:v12];

    if (self->_cachedTintColor && !self->_cachedDarkMode)
    {
      [(UIDictationGlowEffect *)self setTintColor:?];
      v14 = _UIDictationGlowEffectLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        cachedTintColor = self->_cachedTintColor;
        v17 = 138412290;
        v18 = cachedTintColor;
        _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "reset dark-mode-tint-color with cached value %@", &v17, 0xCu);
      }

      v15 = self->_cachedTintColor;
      self->_cachedTintColor = 0;
    }
  }
}

- (UIDictationGlowEffect)initWithView:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled](UIKeyboard, "isInlineDictationGlowEffectEnabled") && !+[UIKeyboard isKeyboardProcess])
  {
    v29.receiver = self;
    v29.super_class = UIDictationGlowEffect;
    v6 = [(UIDictationGlowEffect *)&v29 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_glowEffectView, v4);
      v8 = objc_alloc(getTUIGlowEffectClass());
      WeakRetained = objc_loadWeakRetained(&v7->_glowEffectView);
      v10 = [WeakRetained layer];
      v11 = [v8 initWithLayer:v10];
      glowEffect = v7->_glowEffect;
      v7->_glowEffect = v11;

      [(TUIGlowEffect *)v7->_glowEffect setPulsing:0];
      v13 = v7->_glowEffect;
      v14 = +[_UIDictationSettingsDomain rootSettings];
      [v14 minimumRadius];
      [(TUIGlowEffect *)v13 setMinimumRadius:?];

      v15 = objc_loadWeakRetained(&v7->_glowEffectView);
      v30[0] = 0x1EFE323B0;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v17 = [v15 _registerForTraitTokenChanges:v16 withTarget:v7 action:sel_updateColorWithUserInterfaceStyleChange];

      v18 = objc_loadWeakRetained(&v7->_glowEffectView);
      v19 = [v18 traitCollection];
      v20 = [v19 userInterfaceStyle];
      v22 = v20 == 2 || v20 == 1000;
      v7->_cachedDarkMode = v22;

      cachedDarkMode = v7->_cachedDarkMode;
      v24 = +[_UIDictationSettingsDomain rootSettings];
      v25 = v24;
      if (cachedDarkMode)
      {
        [v24 darkModeCompositingFiler];
      }

      else
      {
        [v24 lightModeCompositingFiler];
      }
      v26 = ;
      v27 = [(TUIGlowEffect *)v7->_glowEffect layer];
      [v27 setCompositingFilter:v26];
    }

    self = v7;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTintColor:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (self->_cachedDarkMode)
    {
      v16 = 0.0;
      v17 = 0;
      TUIGlowEffectClass = getTUIGlowEffectClass();
      cachedDarkMode = self->_cachedDarkMode;
      v8 = [v5 CGColor];
      [v5 alphaComponent];
      if ([TUIGlowEffectClass adjustVisibilityForDarkMode:cachedDarkMode tintColor:v8 alpha:&v17 outTintColor:&v16 outAlpha:?])
      {
        v9 = [v5 copy];
        cachedTintColor = self->_cachedTintColor;
        self->_cachedTintColor = v9;

        v11 = _UIDictationGlowEffectLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = self->_cachedTintColor;
          *buf = 138412290;
          v19 = *&v15;
          _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "cache tintColor %@", buf, 0xCu);
        }

        v12 = [UIColor colorWithCGColor:v17];
        v13 = [v12 colorWithAlphaComponent:v16];

        v14 = _UIDictationGlowEffectLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v19 = v16;
          v20 = 2112;
          v21 = v13;
          _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "setTintColor: with dark-mode-adjusted opacity %f and color %@", buf, 0x16u);
        }

        v5 = v13;
      }
    }

    -[TUIGlowEffect setTintColor:](self->_glowEffect, "setTintColor:", [v5 CGColor]);
  }
}

- (void)setTintColor:(id)a3 animated:(BOOL)a4 duration:(double)a5 autoreverses:(BOOL)a6 repeatCount:(double)a7
{
  v8 = a6;
  v10 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (self->_cachedDarkMode)
    {
      v19 = 0.0;
      v20 = 0;
      TUIGlowEffectClass = getTUIGlowEffectClass();
      cachedDarkMode = self->_cachedDarkMode;
      v15 = [v12 CGColor];
      [v12 alphaComponent];
      if ([TUIGlowEffectClass adjustVisibilityForDarkMode:cachedDarkMode tintColor:v15 alpha:&v20 outTintColor:&v19 outAlpha:?])
      {
        v16 = [UIColor colorWithCGColor:v20];
        v17 = [v16 colorWithAlphaComponent:v19];

        v18 = _UIDictationGlowEffectLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v22 = v19;
          v23 = 2112;
          v24 = v17;
          _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, "setTintColor: with dark-mode-adjusted opacity %f and color %@", buf, 0x16u);
        }

        v12 = v17;
      }
    }

    -[TUIGlowEffect setTintColor:animated:duration:autoreverses:repeatCount:](self->_glowEffect, "setTintColor:animated:duration:autoreverses:repeatCount:", [v12 CGColor], v10, v8, a5, a7);
  }
}

@end