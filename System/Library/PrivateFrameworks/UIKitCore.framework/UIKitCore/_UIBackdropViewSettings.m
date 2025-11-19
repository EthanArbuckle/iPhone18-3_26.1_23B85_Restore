@interface _UIBackdropViewSettings
+ (id)darkeningTintColor;
+ (id)settingsForStyle:(int64_t)a3 graphicsQuality:(int64_t)a4;
+ (id)settingsPreservingHintsFromSettings:(id)a3 graphicsQuality:(int64_t)a4;
- (UIColor)combinedTintColor;
- (_UIBackdropViewSettings)initWithDefaultValuesForGraphicsQuality:(int64_t)a3;
- (id)description;
- (void)clearRunLoopObserver;
- (void)computeOutputSettingsUsingModel:(id)a3;
- (void)dealloc;
- (void)restoreDefaultValues;
- (void)scheduleSettingsDidChangeIfNeeded;
- (void)setBlurQuality:(id)a3;
- (void)setBlursWithHardEdges:(BOOL)a3;
- (void)setColorBurnTintMaskImage:(id)a3;
- (void)setColorTint:(id)a3;
- (void)setColorTintMaskImage:(id)a3;
- (void)setDarkeningTintMaskImage:(id)a3;
- (void)setDefaultValues;
- (void)setFilterMaskImage:(id)a3;
- (void)setGrayscaleTintMaskImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibleColor:(id)a3;
- (void)setRenderingHint:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setValuesFromModel:(id)a3;
- (void)setZoomsBack:(BOOL)a3;
@end

@implementation _UIBackdropViewSettings

- (void)setDefaultValues
{
  suppressSettingsDidChange = self->_suppressSettingsDidChange;
  if (suppressSettingsDidChange >= 0)
  {
    v4 = suppressSettingsDidChange + 1;
  }

  else
  {
    v4 = 1;
  }

  self->_suppressSettingsDidChange = v4;
  self->_version = 1;
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = ceil(v7 * 0.5);
  v9 = v8 + v8;
  if (v7 > 1.0)
  {
    v7 = v9;
  }

  v10 = objc_opt_class();
  if (qword_1ED499C30 != -1)
  {
    dispatch_once(&qword_1ED499C30, &__block_literal_global_521);
  }

  v11 = qword_1ED499C38;
  v12 = NSStringFromClass(v10);
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [v13 intValue];
  }

  else
  {
    v14 = 0;
  }

  self->_style = v14;
  *&self->_usesBackdropEffectView = 257;
  self->_usesColorTintView = 1;
  *&self->_usesContentView = 1;
  self->_usesColorOffset = 0;
  *&self->_highlighted = 16842752;
  graphicsQuality = self->_graphicsQuality;
  if (graphicsQuality == 100)
  {
    v16 = 0.25;
    v17 = 2.0;
  }

  else
  {
    if (graphicsQuality != 10)
    {
      goto LABEL_16;
    }

    self->_usesBackdropEffectView = 0;
    v16 = 1.0;
    v17 = 4.0;
  }

  self->_scale = 1.0 / (v7 * v17);
  self->_statisticsInterval = v16;
LABEL_16:
  self->_requiresColorStatistics = 0;
  self->_appliesTintAndBlurSettings = 1;
  self->_stackingLevel = 0;
  self->_grayscaleTintLevel = 0.0;
  self->_grayscaleTintAlpha = 0.0;
  grayscaleTintMaskImage = self->_grayscaleTintMaskImage;
  self->_grayscaleTintMaskAlpha = 1.0;
  self->_grayscaleTintMaskImage = 0;

  colorTint = self->_colorTint;
  self->_colorTint = 0;

  *&self->_colorTintAlpha = xmmword_18A64B720;
  colorTintMaskImage = self->_colorTintMaskImage;
  self->_colorTintMaskImage = 0;

  *&self->_darkeningTintAlpha = xmmword_18A678020;
  *&self->_darkeningTintSaturation = xmmword_18A678030;
  darkeningTintMaskImage = self->_darkeningTintMaskImage;
  self->_darkeningTintMaskImage = 0;

  blurQuality = self->_blurQuality;
  self->_blurRadius = 0.0;
  self->_blurQuality = @"default";

  __asm { FMOV            V0.2D, #1.0 }

  *&self->_saturationDeltaFactor = _Q0;
  filterMaskImage = self->_filterMaskImage;
  self->_filterMaskImage = 0;

  v29 = +[UIColor whiteColor];
  legibleColor = self->_legibleColor;
  self->_legibleColor = v29;

  v31 = self->_suppressSettingsDidChange;
  v32 = v31 <= 1;
  v33 = v31 - 1;
  if (v32)
  {
    v33 = 0;
  }

  self->_suppressSettingsDidChange = v33;

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)scheduleSettingsDidChangeIfNeeded
{
  if (!self->_runLoopObserver && self->_suppressSettingsDidChange <= 0)
  {
    if (self->_backdrop)
    {
      objc_initWeak(&location, self);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __60___UIBackdropViewSettings_scheduleSettingsDidChangeIfNeeded__block_invoke;
      v4[3] = &unk_1E70F6870;
      objc_copyWeak(&v5, &location);
      self->_runLoopObserver = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, v4);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddObserver(Current, self->_runLoopObserver, *MEMORY[0x1E695E8D0]);
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

- (void)dealloc
{
  [(_UIBackdropViewSettings *)self clearRunLoopObserver];
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettings;
  [(_UIBackdropViewSettings *)&v3 dealloc];
}

- (void)clearRunLoopObserver
{
  runLoopObserver = self->_runLoopObserver;
  if (runLoopObserver)
  {
    CFRunLoopObserverInvalidate(runLoopObserver);
    CFRelease(self->_runLoopObserver);
    self->_runLoopObserver = 0;
  }
}

+ (id)settingsPreservingHintsFromSettings:(id)a3 graphicsQuality:(int64_t)a4
{
  v5 = a3;
  v6 = +[_UIBackdropViewSettings settingsForStyle:graphicsQuality:](_UIBackdropViewSettings, "settingsForStyle:graphicsQuality:", [v5 style], a4);
  [v6 setRenderingHint:{objc_msgSend(v5, "renderingHint")}];
  [v6 setStackingLevel:{objc_msgSend(v5, "stackingLevel")}];
  [v6 copyAdditionalSettingsFromSettings:v5];

  return v6;
}

+ (id)settingsForStyle:(int64_t)a3 graphicsQuality:(int64_t)a4
{
  if (a3 > 3999)
  {
    if (a3 <= 10049)
    {
      switch(a3)
      {
        case 4000:
          v5 = _UIBackdropViewSettingsATVSemiLight;
          break;
        case 4001:
          v5 = _UIBackdropViewSettingsATVMediumLight;
          break;
        case 4002:
          v5 = _UIBackdropViewSettingsATVLight;
          break;
        case 4003:
          v5 = _UIBackdropViewSettingsATVUltraLight;
          break;
        case 4004:
          v5 = _UIBackdropViewSettingsATVMenuLight;
          break;
        case 4005:
          v5 = _UIBackdropViewSettingsATVSemiDark;
          break;
        case 4006:
          v5 = _UIBackdropViewSettingsATVMediumDark;
          break;
        case 4007:
          v5 = _UIBackdropViewSettingsATVDark;
          break;
        case 4008:
          v5 = _UIBackdropViewSettingsATVUltraDark;
          break;
        case 4009:
          v5 = _UIBackdropViewSettingsATVMenuDark;
          break;
        case 4010:
          v5 = _UIBackdropViewSettingsATVAdaptive;
          break;
        case 4011:
          v5 = _UIBackdropViewSettingsATVAdaptiveLighten;
          break;
        case 4012:
          v5 = _UIBackdropViewSettingsATVAccessoryLight;
          break;
        case 4013:
          v5 = _UIBackdropViewSettingsATVAccessoryDark;
          break;
        case 4014:
          v5 = _UIBackdropViewSettingsATVTabBarLight;
          break;
        case 4015:
          v5 = _UIBackdropViewSettingsATVTabBarDark;
          break;
        default:
          goto LABEL_104;
      }

      v11 = objc_alloc_init(v5);
      goto LABEL_106;
    }

    if (a3 > 10091)
    {
      if (a3 > 10119)
      {
        if (a3 <= 11059)
        {
          if (a3 != 10120)
          {
            if (a3 != 11050)
            {
              goto LABEL_104;
            }

            goto LABEL_65;
          }

          v8 = objc_alloc_init(_UIBackdropViewSettingsColored);
          v9 = [[UIColor alloc] initWithRed:0.031372549 green:0.262745098 blue:0.560784314 alpha:1.0];
LABEL_94:
          v10 = v9;
          [(_UIBackdropViewSettings *)v8 setColorTint:v9];

          goto LABEL_107;
        }

        if (a3 != 11060)
        {
          if (a3 != 11070)
          {
            goto LABEL_104;
          }

LABEL_72:
          v6 = _UIBackdropViewSettingsUltraDark;
          goto LABEL_105;
        }

LABEL_65:
        v6 = _UIBackdropViewSettingsDark;
        goto LABEL_105;
      }

      if (a3 == 10092)
      {
        v8 = objc_alloc_init(_UIBackdropViewSettingsColored);
        v9 = _UIBackdropViewSettingsColorCancelRed();
        goto LABEL_94;
      }

      if (a3 != 10100)
      {
        v7 = 10110;
LABEL_41:
        if (a3 != v7)
        {
          goto LABEL_104;
        }

        goto LABEL_69;
      }

LABEL_68:
      v6 = _UIBackdropViewSettingsLight;
      goto LABEL_105;
    }

    if (a3 <= 10079)
    {
      if (a3 != 10050 && a3 != 10060)
      {
        v7 = 10070;
        goto LABEL_41;
      }

LABEL_69:
      v6 = _UIBackdropViewSettingsUltraLight;
      goto LABEL_105;
    }

    switch(a3)
    {
      case 10080:
        goto LABEL_69;
      case 10090:
        goto LABEL_68;
      case 10091:
        v8 = objc_alloc_init(_UIBackdropViewSettingsColored);
        v9 = _UIBackdropViewSettingsColorAcceptGreen();
        goto LABEL_94;
    }

LABEL_104:
    NSLog(&cfstr_WarningUsingUi.isa, a2, a3);
    v6 = +[_UIBackdropView defaultSettingsClass];
    goto LABEL_105;
  }

  if (a3 <= 2028)
  {
    if (a3 <= 999)
    {
      if (a3 < 0)
      {
        if (a3 == -4)
        {
          v6 = _UIBackdropViewSettingsReplicator;
          goto LABEL_105;
        }

        if (a3 == -3)
        {
          v6 = _UIBackdropViewSettingsCombiner;
          goto LABEL_105;
        }

        if (a3 != -2)
        {
          goto LABEL_104;
        }

        v6 = _UIBackdropViewSettingsNone;
      }

      else
      {
        if (!a3)
        {
          goto LABEL_68;
        }

        if (a3 == 1)
        {
          goto LABEL_65;
        }

        if (a3 != 2)
        {
          goto LABEL_104;
        }

        v6 = _UIBackdropViewSettingsBlur;
      }
    }

    else
    {
      if (a3 <= 1099)
      {
        if (a3 != 1000)
        {
          if (a3 == 1001)
          {
            goto LABEL_65;
          }

          if (a3 != 1003)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_68;
      }

      if (a3 > 2009)
      {
        if (a3 == 2010)
        {
          goto LABEL_69;
        }

        if (a3 == 2020)
        {
          goto LABEL_68;
        }

        goto LABEL_104;
      }

      if (a3 == 1100)
      {
        goto LABEL_65;
      }

      if (a3 != 2000)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsColorSample;
    }
  }

  else if (a3 > 2059)
  {
    if (a3 <= 2079)
    {
      if (a3 == 2060)
      {
        v6 = _UIBackdropViewSettingsAdaptiveLight;
        goto LABEL_105;
      }

      if (a3 == 2070)
      {
        v6 = _UIBackdropViewSettingsSemiLight;
        goto LABEL_105;
      }

      if (a3 != 2071)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsFlatSemiLight;
    }

    else
    {
      if (a3 > 3900)
      {
        if (a3 == 3901)
        {
          v6 = _UIBackdropViewSettingsLightKeyboard;
          goto LABEL_105;
        }

        if (a3 == 3902)
        {
          v6 = _UIBackdropViewSettingsLightEmojiKeyboard;
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      if (a3 == 2080)
      {
        v6 = _UIBackdropViewSettingsUltraColored;
        goto LABEL_105;
      }

      if (a3 != 3900)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsPasscodePaddle;
    }
  }

  else if (a3 <= 2031)
  {
    if (a3 == 2029)
    {
      v6 = _UIBackdropViewSettingsLightLow;
      goto LABEL_105;
    }

    if (a3 == 2030)
    {
      goto LABEL_65;
    }

    v6 = _UIBackdropViewSettingsDarkWithZoom;
  }

  else
  {
    if (a3 > 2039)
    {
      if (a3 == 2040)
      {
        v6 = _UIBackdropViewSettingsColored;
        goto LABEL_105;
      }

      if (a3 == 2050)
      {
        goto LABEL_72;
      }

      goto LABEL_104;
    }

    if (a3 == 2032)
    {
      v6 = _UIBackdropViewSettingsUltraDarkWithZoom;
      goto LABEL_105;
    }

    if (a3 != 2039)
    {
      goto LABEL_104;
    }

    v6 = _UIBackdropViewSettingsDarkLow;
  }

LABEL_105:
  v11 = [[v6 alloc] initWithDefaultValuesForGraphicsQuality:a4];
LABEL_106:
  v8 = v11;
LABEL_107:

  return v8;
}

- (_UIBackdropViewSettings)initWithDefaultValuesForGraphicsQuality:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = _UIBackdropViewSettings;
  v4 = [(_UIBackdropViewSettings *)&v16 init];
  v5 = v4;
  if (v4)
  {
    suppressSettingsDidChange = v4->_suppressSettingsDidChange;
    if (suppressSettingsDidChange >= 0)
    {
      v7 = suppressSettingsDidChange + 1;
    }

    else
    {
      v7 = 1;
    }

    v4->_suppressSettingsDidChange = v7;
    if (a3)
    {
      v4->_explicitlySetGraphicsQuality = 1;
    }

    else if (_AXSEnhanceBackgroundContrastEnabled())
    {
      a3 = 10;
    }

    else
    {
      v8 = +[UIDevice currentDevice];
      a3 = [v8 _graphicsQuality];
    }

    v5->_graphicsQuality = a3;
    [(_UIBackdropViewSettings *)v5 setDefaultValues];
    v9 = objc_alloc_init(_UIBackdropColorSettings);
    colorSettings = v5->_colorSettings;
    v5->_colorSettings = v9;

    [(_UIBackdropColorSettings *)v5->_colorSettings setParentSettings:v5];
    v11 = v5->_suppressSettingsDidChange;
    v12 = v11 <= 1;
    v13 = v11 - 1;
    if (v12)
    {
      v13 = 0;
    }

    v5->_suppressSettingsDidChange = v13;
    v14 = v5;
  }

  return v5;
}

- (void)restoreDefaultValues
{
  [(_UIBackdropViewSettings *)self setDefaultValues];

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setValuesFromModel:(id)a3
{
  v4 = a3;
  if (self->_style)
  {
    v13 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v13;
    if (isKindOfClass)
    {
      v6 = v13;
      v7 = v6;
      if (*(v6 + 3))
      {
        suppressSettingsDidChange = self->_suppressSettingsDidChange;
        if (suppressSettingsDidChange >= 0)
        {
          v9 = suppressSettingsDidChange + 1;
        }

        else
        {
          v9 = 1;
        }

        self->_suppressSettingsDidChange = v9;
        self->_appliesTintAndBlurSettings = *(v6 + 328);
        self->_backdropVisible = *(v6 + 75);
        objc_storeStrong(&self->_blurQuality, *(v6 + 30));
        self->_blurRadius = *(v7 + 29);
        objc_storeStrong(&self->_colorTint, *(v7 + 16));
        self->_colorTintAlpha = *(v7 + 17);
        self->_colorTintMaskAlpha = *(v7 + 18);
        objc_storeStrong(&self->_colorTintMaskImage, *(v7 + 19));
        self->_colorBurnTintLevel = *(v7 + 20);
        self->_colorBurnTintAlpha = *(v7 + 21);
        objc_storeStrong(&self->_colorBurnTintMaskImage, *(v7 + 22));
        self->_darkeningTintAlpha = *(v7 + 23);
        self->_darkeningTintHue = *(v7 + 24);
        self->_darkeningTintSaturation = *(v7 + 25);
        self->_darkeningTintBrightness = *(v7 + 26);
        objc_storeStrong(&self->_darkeningTintMaskImage, *(v7 + 27));
        self->_darkenWithSourceOver = *(v7 + 224);
        self->_enabled = *(v7 + 74);
        self->_explicitlySetGraphicsQuality = *(v7 + 40);
        self->_filterMaskAlpha = *(v7 + 32);
        objc_storeStrong(&self->_filterMaskImage, *(v7 + 33));
        self->_graphicsQuality = *(v7 + 4);
        self->_grayscaleTintAlpha = *(v7 + 12);
        self->_grayscaleTintLevel = *(v7 + 11);
        self->_grayscaleTintMaskAlpha = *(v7 + 13);
        objc_storeStrong(&self->_grayscaleTintMaskImage, *(v7 + 14));
        self->_lightenGrayscaleWithSourceOver = *(v7 + 120);
        self->_highlighted = *(v7 + 72);
        objc_storeStrong(&self->_legibleColor, *(v7 + 34));
        self->_renderingHint = *(v7 + 7);
        self->_requiresColorStatistics = *(v7 + 41);
        self->_saturationDeltaFactor = *(v7 + 31);
        self->_scale = *(v7 + 36);
        self->_selected = *(v7 + 73);
        self->_stackingLevel = *(v7 + 8);
        self->_statisticsInterval = *(v7 + 37);
        self->_style = *(v7 + 3);
        self->_usesBackdropEffectView = *(v7 + 304);
        self->_usesColorTintView = *(v7 + 306);
        self->_usesColorOffset = *(v7 + 310);
        self->_usesContentView = *(v7 + 308);
        self->_usesGrayscaleTintView = *(v7 + 305);
        self->_version = *(v7 + 45);
        self->_zoom = *(v7 + 10);
        self->_shouldDoRasterizationAndAlphaHack = *(v7 + 76);
        [(_UIBackdropColorSettings *)self->_colorSettings setValuesFromModel:*(v7 + 6)];
        v10 = self->_suppressSettingsDidChange;
        v11 = v10 <= 1;
        v12 = v10 - 1;
        if (v11)
        {
          v12 = 0;
        }

        self->_suppressSettingsDidChange = v12;
        [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
      }

      v4 = v13;
    }
  }
}

+ (id)darkeningTintColor
{
  if (qword_1ED499C20 != -1)
  {
    dispatch_once(&qword_1ED499C20, &__block_literal_global_52);
  }

  v3 = qword_1ED499C28;

  return v3;
}

- (void)setBlurQuality:(id)a3
{
  v4 = [a3 copy];
  blurQuality = self->_blurQuality;
  self->_blurQuality = v4;

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setBlursWithHardEdges:(BOOL)a3
{
  if (a3)
  {
    v3 = 15;
  }

  else
  {
    v3 = 0;
  }

  [(_UIBackdropViewSettings *)self setBlurHardEdges:v3];
}

- (void)setColorTint:(id)a3
{
  objc_storeStrong(&self->_colorTint, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setColorTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_colorTintMaskImage, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setColorBurnTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_colorBurnTintMaskImage, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setDarkeningTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_darkeningTintMaskImage, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setFilterMaskImage:(id)a3
{
  objc_storeStrong(&self->_filterMaskImage, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setGrayscaleTintMaskImage:(id)a3
{
  objc_storeStrong(&self->_grayscaleTintMaskImage, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setHighlighted:(BOOL)a3
{
  self->_highlighted = a3;
  if (a3)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setLegibleColor:(id)a3
{
  objc_storeStrong(&self->_legibleColor, a3);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setRenderingHint:(int64_t)a3
{
  self->_renderingHint = a3;
  if (a3 == 1)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:?];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setSelected:(BOOL)a3
{
  self->_selected = a3;
  if (a3)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setZoomsBack:(BOOL)a3
{
  v3 = 0.05;
  if (a3)
  {
    v3 = 0.0;
  }

  [(_UIBackdropViewSettings *)self setZoom:v3];
}

- (void)computeOutputSettingsUsingModel:(id)a3
{
  [(_UIBackdropViewSettings *)self setValuesFromModel:a3];

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (UIColor)combinedTintColor
{
  grayscaleTintLevel = self->_grayscaleTintLevel;
  grayscaleTintAlpha = self->_grayscaleTintAlpha;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v4 = self->_colorTint;
  v5 = v4;
  if (v4)
  {
    [(UIColor *)v4 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
    v6 = v10;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = 1.0 - (1.0 - grayscaleTintAlpha) * (1.0 - v6);
  if (v7 >= 0.00000011920929)
  {
    [UIColor colorWithRed:grayscaleTintLevel * grayscaleTintAlpha * (1.0 - v6) / v7 + v6 * v13 / v7 green:grayscaleTintLevel * grayscaleTintAlpha * (1.0 - v6) / v7 + v6 * v12 / v7 blue:grayscaleTintLevel * grayscaleTintAlpha * (1.0 - v6) / v7 + v6 * v11 / v7 alpha:?];
  }

  else
  {
    +[UIColor clearColor];
  }
  v8 = ;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%@ : %p>\n", objc_opt_class(), self];
  [v3 appendFormat:@"    graphicsQuality:        %ld\n", -[_UIBackdropViewSettings graphicsQuality](self, "graphicsQuality")];
  v4 = [(_UIBackdropViewSettings *)self isBackdropVisible];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    backdrop visible:       %@\n", v5];
  [(_UIBackdropViewSettings *)self grayscaleTintLevel];
  [v3 appendFormat:@"    grayscaleTintLevel:     %.2f\n", v6];
  [(_UIBackdropViewSettings *)self grayscaleTintAlpha];
  [v3 appendFormat:@"    grayscaleTintAlpha:     %.2f\n", v7];
  v8 = [(_UIBackdropViewSettings *)self grayscaleTintMaskImage];
  [v3 appendFormat:@"    grayscaleTintMaskImage: %@\n", v8];

  [(_UIBackdropViewSettings *)self grayscaleTintMaskAlpha];
  [v3 appendFormat:@"    grayscaleTintMaskAlpha: %.2f\n", v9];
  v10 = [(_UIBackdropViewSettings *)self colorTint];
  [v3 appendFormat:@"    colorTint:              %@\n", v10];

  [(_UIBackdropViewSettings *)self colorTintAlpha];
  [v3 appendFormat:@"    colorTintAlpha:         %.2f\n", v11];
  v12 = [(_UIBackdropViewSettings *)self colorTintMaskImage];
  [v3 appendFormat:@"    colorTintMaskImage:     %@\n", v12];

  [(_UIBackdropViewSettings *)self colorTintMaskAlpha];
  [v3 appendFormat:@"    colorTintMaskAlpha:     %.2f\n", v13];
  [(_UIBackdropViewSettings *)self blurRadius];
  [v3 appendFormat:@"    blurRadius:             %.2f\n", v14];
  [(_UIBackdropViewSettings *)self saturationDeltaFactor];
  [v3 appendFormat:@"    saturationDeltaFactor:  %.2f\n", v15];
  v16 = [(_UIBackdropViewSettings *)self filterMaskImage];
  [v3 appendFormat:@"    filterMaskImage:        %@\n", v16];

  [(_UIBackdropViewSettings *)self filterMaskAlpha];
  [v3 appendFormat:@"    filterMaskAlpha:        %.2f\n", v17];
  v18 = [(_UIBackdropViewSettings *)self combinedTintColor];
  [v3 appendFormat:@"    combinedTintColor:      %@\n", v18];

  return v3;
}

@end