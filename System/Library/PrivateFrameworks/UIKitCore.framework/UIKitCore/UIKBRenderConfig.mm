@interface UIKBRenderConfig
+ (id)animatedConfigDark;
+ (id)animatedConfigLight;
+ (id)clearConfigDarkKeys;
+ (id)clearConfigLightKeys;
+ (id)clearConfigWithLightKeys:(BOOL)keys;
+ (id)colorAdaptiveConfigDark;
+ (id)colorAdaptiveConfigLight;
+ (id)configForAnimatedBackgroundWithLightKeys:(BOOL)keys;
+ (id)configForAppearance:(int64_t)appearance inputMode:(id)mode traitEnvironment:(id)environment;
+ (id)darkConfig;
+ (id)defaultConfig;
+ (id)defaultEmojiConfig;
+ (id)lowQualityDarkConfig;
+ (int64_t)_graphicsQuality;
+ (int64_t)backdropStyleForStyle:(int64_t)style quality:(int64_t)quality;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageNameForType:(int)type;
- (int64_t)backdropStyle;
- (int64_t)blurEffectStyle;
- (int64_t)keyBackdropStyle;
- (int64_t)variantSelectorBackdropStyle;
- (void)overrideKeycapWithSymbol:(id)symbol forDisplayType:(int)type;
@end

@implementation UIKBRenderConfig

+ (id)colorAdaptiveConfigDark
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIKBRenderConfig_colorAdaptiveConfigDark__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2BD8 != -1)
  {
    dispatch_once(&qword_1ED4A2BD8, block);
  }

  v2 = qword_1ED4A2BD0;

  return v2;
}

uint64_t __43__UIKBRenderConfig_colorAdaptiveConfigDark__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) darkConfig];
  v2 = [v1 copy];
  v3 = qword_1ED4A2BD0;
  qword_1ED4A2BD0 = v2;

  [qword_1ED4A2BD0 setControlKeyBackgroundName:@"UIKBColorWhite"];
  [qword_1ED4A2BD0 setColorAdaptiveBackground:1];
  [qword_1ED4A2BD0 setUsesCompactKeycapsFont:1];
  [qword_1ED4A2BD0 setActivatedKeyplaneSwitchControlKeyBackgroundName:@"UIKBColorWhite_Alpha40"];
  [qword_1ED4A2BD0 setKeycapOpacity:1.0];
  v4 = qword_1ED4A2BD0;

  return [v4 setLightKeycapOpacity:1.0];
}

+ (id)darkConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__UIKBRenderConfig_darkConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2B78 != -1)
  {
    dispatch_once(&qword_1ED4A2B78, block);
  }

  v2 = qword_1ED4A2B70;

  return v2;
}

uint64_t __30__UIKBRenderConfig_darkConfig__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UIKBRenderConfig);
  v3 = qword_1ED4A2B70;
  qword_1ED4A2B70 = v2;

  [qword_1ED4A2B70 setLightKeyboard:0];
  [qword_1ED4A2B70 setBlurRadius:20.0];
  [qword_1ED4A2B70 setBlurSaturation:0.5];
  [qword_1ED4A2B70 setKeycapOpacity:1.0];
  [qword_1ED4A2B70 setLightKeycapOpacity:1.0];
  [qword_1ED4A2B70 setControlKeyBackgroundName:@"UIKBColorKeyGrayKeyDarkBackground"];
  v4 = [objc_msgSend(*(a1 + 32) "preferredVisualProviderClass")];
  v5 = *(qword_1ED4A2B70 + 88);
  *(qword_1ED4A2B70 + 88) = v4;

  [qword_1ED4A2B70 setIsFloating:0];
  v6 = qword_1ED4A2B70;

  return [v6 setActivatedKeyplaneSwitchControlKeyBackgroundName:@"UIKBColorWhite_Alpha24"];
}

uint64_t __44__UIKBRenderConfig_colorAdaptiveConfigLight__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultConfig];
  v2 = [v1 copy];
  v3 = qword_1ED4A2BC0;
  qword_1ED4A2BC0 = v2;

  [qword_1ED4A2BC0 setControlKeyBackgroundName:@"UIKBColorWhite"];
  [qword_1ED4A2BC0 setColorAdaptiveBackground:1];
  [qword_1ED4A2BC0 setUsesCompactKeycapsFont:1];
  [qword_1ED4A2BC0 setActivatedKeyplaneSwitchControlKeyBackgroundName:@"UIKBColorBlack_Alpha15"];
  [qword_1ED4A2BC0 setKeycapOpacity:1.0];
  v4 = qword_1ED4A2BC0;

  return [v4 setLightKeycapOpacity:1.0];
}

+ (id)colorAdaptiveConfigLight
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIKBRenderConfig_colorAdaptiveConfigLight__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2BC8 != -1)
  {
    dispatch_once(&qword_1ED4A2BC8, block);
  }

  v2 = qword_1ED4A2BC0;

  return v2;
}

+ (id)defaultConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__UIKBRenderConfig_defaultConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2B58 != -1)
  {
    dispatch_once(&qword_1ED4A2B58, block);
  }

  v2 = _MergedGlobals_1386;

  return v2;
}

uint64_t __33__UIKBRenderConfig_defaultConfig__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UIKBRenderConfig);
  v3 = _MergedGlobals_1386;
  _MergedGlobals_1386 = v2;

  [_MergedGlobals_1386 setLightKeyboard:1];
  [_MergedGlobals_1386 setBlurRadius:30.0];
  [_MergedGlobals_1386 setBlurSaturation:0.9];
  [_MergedGlobals_1386 setKeycapOpacity:0.96];
  [_MergedGlobals_1386 setLightKeycapOpacity:1.0];
  v4 = [objc_msgSend(*(a1 + 32) "preferredVisualProviderClass")];
  v5 = *(_MergedGlobals_1386 + 88);
  *(_MergedGlobals_1386 + 88) = v4;

  [_MergedGlobals_1386 setIsFloating:0];
  [_MergedGlobals_1386 setActivatedKeyplaneSwitchControlKeyBackgroundName:@"UIKBColor10KeyLightActiveKeyplaneSwitch"];
  v6 = [*(a1 + 32) _graphicsQuality];
  v7 = UIKBColorGray_Percent55;
  if (v6 != 100)
  {
    v7 = UIKBColorKeyGrayKeyLightBackgroundMedium;
  }

  v8 = *v7;
  v9 = _MergedGlobals_1386;

  return [v9 setControlKeyBackgroundName:v8];
}

+ (int64_t)_graphicsQuality
{
  if (_graphicsQuality_onceToken != -1)
  {
    dispatch_once(&_graphicsQuality_onceToken, &__block_literal_global_696);
  }

  v2 = _AXSEnhanceBackgroundContrastEnabled();
  if (_graphicsQuality___quality != 100 || v2 == 0)
  {
    return _graphicsQuality___quality;
  }

  else
  {
    return 10;
  }
}

void __36__UIKBRenderConfig__graphicsQuality__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  _graphicsQuality___quality = [v0 _keyboardGraphicsQuality];
}

- (int64_t)backdropStyle
{
  if ([(UIKBRenderConfig *)self animatedBackground])
  {
    v3 = 3904;
  }

  else if ([(UIKBRenderConfig *)self emptyBackground])
  {
    v3 = 3903;
  }

  else if ([(UIKBRenderConfig *)self colorAdaptiveBackground])
  {
    v3 = 3908;
  }

  else if ([(UIKBRenderConfig *)self lightKeyboard])
  {
    if (self->_useEmojiStyles)
    {
      v3 = 3902;
    }

    else
    {
      v3 = 3901;
    }
  }

  else
  {
    v3 = 2030;
  }

  forceQuality = [(UIKBRenderConfig *)self forceQuality];
  if (!forceQuality)
  {
    forceQuality = [objc_opt_class() _graphicsQuality];
  }

  v5 = objc_opt_class();

  return [v5 backdropStyleForStyle:v3 quality:forceQuality];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    lightKeyboard = [(UIKBRenderConfig *)self lightKeyboard];
    v21 = lightKeyboard == [v5 lightKeyboard] && (v7 = -[UIKBRenderConfig forceQuality](self, "forceQuality"), v7 == objc_msgSend(v5, "forceQuality")) && (-[UIKBRenderConfig blurRadius](self, "blurRadius"), v9 = v8, objc_msgSend(v5, "blurRadius"), v9 == v10) && (-[UIKBRenderConfig blurSaturation](self, "blurSaturation"), v12 = v11, objc_msgSend(v5, "blurSaturation"), v12 == v13) && (-[UIKBRenderConfig keycapOpacity](self, "keycapOpacity"), v15 = v14, objc_msgSend(v5, "keycapOpacity"), v15 == v16) && (-[UIKBRenderConfig lightKeycapOpacity](self, "lightKeycapOpacity"), v18 = v17, objc_msgSend(v5, "lightKeycapOpacity"), v18 == v19) && self->_useEmojiStyles == v5[8] && (v20 = -[UIKBRenderConfig isFloating](self, "isFloating"), v20 == objc_msgSend(v5, "isFloating")) && self->_controlKeyBackgroundName == *(v5 + 9) && self->_activatedKeyplaneSwitchControlKeyBackgroundName == *(v5 + 10) && self->_animatedBackground == v5[27] && self->_colorAdaptiveBackground == v5[28] && self->_usesCompactKeycapsFont == v5[29];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBRenderConfig allocWithZone:?]];
  v4->_lightKeyboard = self->_lightKeyboard;
  v4->_forceQuality = self->_forceQuality;
  v4->_blurRadius = self->_blurRadius;
  v4->_blurSaturation = self->_blurSaturation;
  v4->_keycapOpacity = self->_keycapOpacity;
  v4->_lightKeycapOpacity = self->_lightKeycapOpacity;
  v4->_useEmojiStyles = self->_useEmojiStyles;
  [(UIKBRenderConfig *)v4 setIsFloating:[(UIKBRenderConfig *)self isFloating]];
  v5 = [(NSString *)self->_controlKeyBackgroundName copy];
  controlKeyBackgroundName = v4->_controlKeyBackgroundName;
  v4->_controlKeyBackgroundName = v5;

  v7 = [(NSString *)self->_activatedKeyplaneSwitchControlKeyBackgroundName copy];
  activatedKeyplaneSwitchControlKeyBackgroundName = v4->_activatedKeyplaneSwitchControlKeyBackgroundName;
  v4->_activatedKeyplaneSwitchControlKeyBackgroundName = v7;

  v9 = [(_UIButtonBarButtonVisualProvider *)self->_buttonBarVisualProvider copy];
  buttonBarVisualProvider = v4->_buttonBarVisualProvider;
  v4->_buttonBarVisualProvider = v9;

  v4->_animatedBackground = self->_animatedBackground;
  v4->_colorAdaptiveBackground = self->_colorAdaptiveBackground;
  v4->_usesCompactKeycapsFont = self->_usesCompactKeycapsFont;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIKBRenderConfig;
  v4 = [(UIKBRenderConfig *)&v8 description];
  if ([(UIKBRenderConfig *)self lightKeyboard])
  {
    v5 = @"light";
  }

  else
  {
    v5 = @"dark";
  }

  v6 = [v3 stringWithFormat:@"%@: %@ keyboard backdropStyle = %ld, floating = %d", v4, v5, -[UIKBRenderConfig backdropStyle](self, "backdropStyle"), -[UIKBRenderConfig isFloating](self, "isFloating")];;

  return v6;
}

+ (id)defaultEmojiConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UIKBRenderConfig_defaultEmojiConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2B68 != -1)
  {
    dispatch_once(&qword_1ED4A2B68, block);
  }

  if (_UISolariumEnabled())
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];

    if (colorAdaptiveKeyboardEnabled)
    {
      [qword_1ED4A2B60 setColorAdaptiveBackground:1];
      [qword_1ED4A2B60 setUsesCompactKeycapsFont:1];
    }
  }

  v5 = qword_1ED4A2B60;

  return v5;
}

uint64_t __38__UIKBRenderConfig_defaultEmojiConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultConfig];
  v3 = [v2 copy];
  v4 = qword_1ED4A2B60;
  qword_1ED4A2B60 = v3;

  v5 = qword_1ED4A2B60;
  *(qword_1ED4A2B60 + 8) = 1;
  [v5 setActivatedKeyplaneSwitchControlKeyBackgroundName:@"UIKBColorWhite"];
  v6 = [*(a1 + 32) _graphicsQuality];
  v7 = UIKBColorGray_Percent37;
  if (v6 != 100)
  {
    v7 = UIKBColorGray_Percent80;
  }

  v8 = *v7;
  v9 = qword_1ED4A2B60;

  return [v9 setControlKeyBackgroundName:v8];
}

+ (id)clearConfigLightKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKBRenderConfig_clearConfigLightKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2B88 != -1)
  {
    dispatch_once(&qword_1ED4A2B88, block);
  }

  v2 = qword_1ED4A2B80;

  return v2;
}

uint64_t __40__UIKBRenderConfig_clearConfigLightKeys__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) colorAdaptiveConfigLight];
  v2 = [v1 copy];
  v3 = qword_1ED4A2B80;
  qword_1ED4A2B80 = v2;

  [qword_1ED4A2B80 setEmptyBackground:1];
  [qword_1ED4A2B80 setAnimatedBackground:0];
  v4 = qword_1ED4A2B80;

  return [v4 setBlurRadius:0.0];
}

+ (id)clearConfigDarkKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UIKBRenderConfig_clearConfigDarkKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2B98 != -1)
  {
    dispatch_once(&qword_1ED4A2B98, block);
  }

  v2 = qword_1ED4A2B90;

  return v2;
}

uint64_t __39__UIKBRenderConfig_clearConfigDarkKeys__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) colorAdaptiveConfigDark];
  v2 = [v1 copy];
  v3 = qword_1ED4A2B90;
  qword_1ED4A2B90 = v2;

  [qword_1ED4A2B90 setEmptyBackground:1];
  [qword_1ED4A2B90 setAnimatedBackground:0];
  v4 = qword_1ED4A2B90;

  return [v4 setBlurRadius:0.0];
}

+ (id)clearConfigWithLightKeys:(BOOL)keys
{
  if (keys)
  {
    +[UIKBRenderConfig clearConfigLightKeys];
  }

  else
  {
    +[UIKBRenderConfig clearConfigDarkKeys];
  }
  v3 = ;

  return v3;
}

+ (id)animatedConfigLight
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UIKBRenderConfig_animatedConfigLight__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2BA8 != -1)
  {
    dispatch_once(&qword_1ED4A2BA8, block);
  }

  if (_UISolariumEnabled())
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];

    if (colorAdaptiveKeyboardEnabled)
    {
      [qword_1ED4A2BA0 setColorAdaptiveBackground:1];
      [qword_1ED4A2BA0 setUsesCompactKeycapsFont:1];
    }
  }

  v5 = qword_1ED4A2BA0;

  return v5;
}

uint64_t __39__UIKBRenderConfig_animatedConfigLight__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clearConfigLightKeys];
  v2 = [v1 copy];
  v3 = qword_1ED4A2BA0;
  qword_1ED4A2BA0 = v2;

  [qword_1ED4A2BA0 setLightKeyboard:1];
  [qword_1ED4A2BA0 setEmptyBackground:0];
  [qword_1ED4A2BA0 setAnimatedBackground:1];
  [qword_1ED4A2BA0 setKeycapOpacity:0.85];
  [qword_1ED4A2BA0 setLightKeycapOpacity:0.85];
  v4 = qword_1ED4A2BA0;

  return [v4 setControlKeyBackgroundName:@"UIKBColorWhite_Alpha75"];
}

+ (id)animatedConfigDark
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__UIKBRenderConfig_animatedConfigDark__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2BB8 != -1)
  {
    dispatch_once(&qword_1ED4A2BB8, block);
  }

  if (_UISolariumEnabled())
  {
    v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v2 preferencesActions];
    colorAdaptiveKeyboardEnabled = [preferencesActions colorAdaptiveKeyboardEnabled];

    if (colorAdaptiveKeyboardEnabled)
    {
      [qword_1ED4A2BB0 setColorAdaptiveBackground:1];
      [qword_1ED4A2BB0 setUsesCompactKeycapsFont:1];
    }
  }

  v5 = qword_1ED4A2BB0;

  return v5;
}

uint64_t __38__UIKBRenderConfig_animatedConfigDark__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clearConfigDarkKeys];
  v2 = [v1 copy];
  v3 = qword_1ED4A2BB0;
  qword_1ED4A2BB0 = v2;

  [qword_1ED4A2BB0 setLightKeyboard:0];
  [qword_1ED4A2BB0 setEmptyBackground:0];
  [qword_1ED4A2BB0 setAnimatedBackground:1];
  [qword_1ED4A2BB0 setKeycapOpacity:0.85];
  [qword_1ED4A2BB0 setLightKeycapOpacity:0.85];
  v4 = qword_1ED4A2BB0;

  return [v4 setControlKeyBackgroundName:@"UIKBColorWhite_Alpha75"];
}

+ (id)configForAnimatedBackgroundWithLightKeys:(BOOL)keys
{
  if (keys)
  {
    +[UIKBRenderConfig animatedConfigLight];
  }

  else
  {
    +[UIKBRenderConfig animatedConfigDark];
  }
  v3 = ;

  return v3;
}

+ (id)lowQualityDarkConfig
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKBRenderConfig_lowQualityDarkConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED4A2BE8 != -1)
  {
    dispatch_once(&qword_1ED4A2BE8, block);
  }

  v2 = qword_1ED4A2BE0;

  return v2;
}

uint64_t __40__UIKBRenderConfig_lowQualityDarkConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) darkConfig];
  v2 = [v1 copy];
  v3 = qword_1ED4A2BE0;
  qword_1ED4A2BE0 = v2;

  v4 = qword_1ED4A2BE0;

  return [v4 setForceQuality:10];
}

+ (id)configForAppearance:(int64_t)appearance inputMode:(id)mode traitEnvironment:(id)environment
{
  modeCopy = mode;
  environmentCopy = environment;
  v10 = environmentCopy;
  if ((appearance & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([modeCopy identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasPrefix:", @"emoji"), v12, v13))
    {
      defaultEmojiConfig = [self defaultEmojiConfig];
    }

    else if (_UISolariumEnabled() && (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 preferencesActions], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "colorAdaptiveKeyboardEnabled"), v15, v14, v16))
    {
      defaultEmojiConfig = [self colorAdaptiveConfigLight];
    }

    else
    {
      defaultEmojiConfig = [self defaultConfig];
    }

    goto LABEL_20;
  }

  if (appearance == 13)
  {
    traitCollection = [environmentCopy traitCollection];
    v18 = [self configForAnimatedBackgroundWithLightKeys:{objc_msgSend(traitCollection, "userInterfaceStyle") != 2}];

    traitCollection2 = [v10 traitCollection];
    accessibilityContrast = [traitCollection2 accessibilityContrast];

    if (accessibilityContrast == 1)
    {
      [v18 setKeycapOpacity:0.93];
      [v18 setLightKeycapOpacity:0.93];
    }
  }

  else
  {
    if (appearance != 12)
    {
      if (appearance == 9)
      {
        defaultEmojiConfig = [self lowQualityDarkConfig];
      }

      else if (_UISolariumEnabled() && (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v22 = objc_claimAutoreleasedReturnValue(), [v22 preferencesActions], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "colorAdaptiveKeyboardEnabled"), v23, v22, v24))
      {
        defaultEmojiConfig = [self colorAdaptiveConfigDark];
      }

      else
      {
        defaultEmojiConfig = [self darkConfig];
      }

LABEL_20:
      v18 = defaultEmojiConfig;
      goto LABEL_21;
    }

    traitCollection3 = [environmentCopy traitCollection];
    v18 = [self clearConfigWithLightKeys:{objc_msgSend(traitCollection3, "userInterfaceStyle") == 1}];
  }

LABEL_21:
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    if (objc_opt_respondsToSelector())
    {
      insertionPointColor = [v10 insertionPointColor];
      buttonBarVisualProvider = [v18 buttonBarVisualProvider];
      [buttonBarVisualProvider setTintColor:insertionPointColor];
    }

    else
    {
      insertionPointColor = [v18 buttonBarVisualProvider];
      [insertionPointColor setTintColor:0];
    }
  }

  v27 = [UIKBRenderConfigPlatformAdapter resolvedRenderConfig:v18];

  return v27;
}

+ (int64_t)backdropStyleForStyle:(int64_t)style quality:(int64_t)quality
{
  if (quality == 10 && style == 2030)
  {
    return 2039;
  }

  else
  {
    return style;
  }
}

- (int64_t)keyBackdropStyle
{
  if ([(UIKBRenderConfig *)self animatedBackground])
  {
    return 3905;
  }

  if ([(UIKBRenderConfig *)self colorAdaptiveBackground])
  {
    return 3909;
  }

  return [(UIKBRenderConfig *)self backdropStyle];
}

- (int64_t)variantSelectorBackdropStyle
{
  if ([(UIKBRenderConfig *)self colorAdaptiveBackground])
  {
    return 3909;
  }

  return [(UIKBRenderConfig *)self keyBackdropStyle];
}

- (int64_t)blurEffectStyle
{
  backdropStyle = [(UIKBRenderConfig *)self backdropStyle];
  v3 = 1000;
  if (backdropStyle == 3902)
  {
    v3 = 502;
  }

  if (backdropStyle == 3901)
  {
    return 501;
  }

  else
  {
    return v3;
  }
}

- (void)overrideKeycapWithSymbol:(id)symbol forDisplayType:(int)type
{
  v4 = *&type;
  symbolCopy = symbol;
  customSymbolImages = self->_customSymbolImages;
  v11 = symbolCopy;
  if (symbolCopy)
  {
    if (!customSymbolImages)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v9 = self->_customSymbolImages;
      self->_customSymbolImages = dictionary;

      customSymbolImages = self->_customSymbolImages;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    [(NSMutableDictionary *)customSymbolImages setObject:v11 forKey:v10];
  }

  else
  {
    if (!customSymbolImages)
    {
      goto LABEL_8;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    [(NSMutableDictionary *)customSymbolImages removeObjectForKey:v10];
  }

LABEL_8:
}

- (id)imageNameForType:(int)type
{
  customSymbolImages = self->_customSymbolImages;
  if (customSymbolImages)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
    customSymbolImages = [customSymbolImages objectForKey:v4];
  }

  return customSymbolImages;
}

@end