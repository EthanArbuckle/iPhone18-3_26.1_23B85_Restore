@interface _UIBackdropViewSettings
+ (id)darkeningTintColor;
+ (id)settingsForStyle:(int64_t)style graphicsQuality:(int64_t)quality;
+ (id)settingsPreservingHintsFromSettings:(id)settings graphicsQuality:(int64_t)quality;
- (UIColor)combinedTintColor;
- (_UIBackdropViewSettings)initWithDefaultValuesForGraphicsQuality:(int64_t)quality;
- (id)description;
- (void)clearRunLoopObserver;
- (void)computeOutputSettingsUsingModel:(id)model;
- (void)dealloc;
- (void)restoreDefaultValues;
- (void)scheduleSettingsDidChangeIfNeeded;
- (void)setBlurQuality:(id)quality;
- (void)setBlursWithHardEdges:(BOOL)edges;
- (void)setColorBurnTintMaskImage:(id)image;
- (void)setColorTint:(id)tint;
- (void)setColorTintMaskImage:(id)image;
- (void)setDarkeningTintMaskImage:(id)image;
- (void)setDefaultValues;
- (void)setFilterMaskImage:(id)image;
- (void)setGrayscaleTintMaskImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLegibleColor:(id)color;
- (void)setRenderingHint:(int64_t)hint;
- (void)setSelected:(BOOL)selected;
- (void)setValuesFromModel:(id)model;
- (void)setZoomsBack:(BOOL)back;
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
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
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
    intValue = [v13 intValue];
  }

  else
  {
    intValue = 0;
  }

  self->_style = intValue;
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

+ (id)settingsPreservingHintsFromSettings:(id)settings graphicsQuality:(int64_t)quality
{
  settingsCopy = settings;
  v6 = +[_UIBackdropViewSettings settingsForStyle:graphicsQuality:](_UIBackdropViewSettings, "settingsForStyle:graphicsQuality:", [settingsCopy style], quality);
  [v6 setRenderingHint:{objc_msgSend(settingsCopy, "renderingHint")}];
  [v6 setStackingLevel:{objc_msgSend(settingsCopy, "stackingLevel")}];
  [v6 copyAdditionalSettingsFromSettings:settingsCopy];

  return v6;
}

+ (id)settingsForStyle:(int64_t)style graphicsQuality:(int64_t)quality
{
  if (style > 3999)
  {
    if (style <= 10049)
    {
      switch(style)
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

    if (style > 10091)
    {
      if (style > 10119)
      {
        if (style <= 11059)
        {
          if (style != 10120)
          {
            if (style != 11050)
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

        if (style != 11060)
        {
          if (style != 11070)
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

      if (style == 10092)
      {
        v8 = objc_alloc_init(_UIBackdropViewSettingsColored);
        v9 = _UIBackdropViewSettingsColorCancelRed();
        goto LABEL_94;
      }

      if (style != 10100)
      {
        v7 = 10110;
LABEL_41:
        if (style != v7)
        {
          goto LABEL_104;
        }

        goto LABEL_69;
      }

LABEL_68:
      v6 = _UIBackdropViewSettingsLight;
      goto LABEL_105;
    }

    if (style <= 10079)
    {
      if (style != 10050 && style != 10060)
      {
        v7 = 10070;
        goto LABEL_41;
      }

LABEL_69:
      v6 = _UIBackdropViewSettingsUltraLight;
      goto LABEL_105;
    }

    switch(style)
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
    NSLog(&cfstr_WarningUsingUi.isa, a2, style);
    v6 = +[_UIBackdropView defaultSettingsClass];
    goto LABEL_105;
  }

  if (style <= 2028)
  {
    if (style <= 999)
    {
      if (style < 0)
      {
        if (style == -4)
        {
          v6 = _UIBackdropViewSettingsReplicator;
          goto LABEL_105;
        }

        if (style == -3)
        {
          v6 = _UIBackdropViewSettingsCombiner;
          goto LABEL_105;
        }

        if (style != -2)
        {
          goto LABEL_104;
        }

        v6 = _UIBackdropViewSettingsNone;
      }

      else
      {
        if (!style)
        {
          goto LABEL_68;
        }

        if (style == 1)
        {
          goto LABEL_65;
        }

        if (style != 2)
        {
          goto LABEL_104;
        }

        v6 = _UIBackdropViewSettingsBlur;
      }
    }

    else
    {
      if (style <= 1099)
      {
        if (style != 1000)
        {
          if (style == 1001)
          {
            goto LABEL_65;
          }

          if (style != 1003)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_68;
      }

      if (style > 2009)
      {
        if (style == 2010)
        {
          goto LABEL_69;
        }

        if (style == 2020)
        {
          goto LABEL_68;
        }

        goto LABEL_104;
      }

      if (style == 1100)
      {
        goto LABEL_65;
      }

      if (style != 2000)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsColorSample;
    }
  }

  else if (style > 2059)
  {
    if (style <= 2079)
    {
      if (style == 2060)
      {
        v6 = _UIBackdropViewSettingsAdaptiveLight;
        goto LABEL_105;
      }

      if (style == 2070)
      {
        v6 = _UIBackdropViewSettingsSemiLight;
        goto LABEL_105;
      }

      if (style != 2071)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsFlatSemiLight;
    }

    else
    {
      if (style > 3900)
      {
        if (style == 3901)
        {
          v6 = _UIBackdropViewSettingsLightKeyboard;
          goto LABEL_105;
        }

        if (style == 3902)
        {
          v6 = _UIBackdropViewSettingsLightEmojiKeyboard;
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      if (style == 2080)
      {
        v6 = _UIBackdropViewSettingsUltraColored;
        goto LABEL_105;
      }

      if (style != 3900)
      {
        goto LABEL_104;
      }

      v6 = _UIBackdropViewSettingsPasscodePaddle;
    }
  }

  else if (style <= 2031)
  {
    if (style == 2029)
    {
      v6 = _UIBackdropViewSettingsLightLow;
      goto LABEL_105;
    }

    if (style == 2030)
    {
      goto LABEL_65;
    }

    v6 = _UIBackdropViewSettingsDarkWithZoom;
  }

  else
  {
    if (style > 2039)
    {
      if (style == 2040)
      {
        v6 = _UIBackdropViewSettingsColored;
        goto LABEL_105;
      }

      if (style == 2050)
      {
        goto LABEL_72;
      }

      goto LABEL_104;
    }

    if (style == 2032)
    {
      v6 = _UIBackdropViewSettingsUltraDarkWithZoom;
      goto LABEL_105;
    }

    if (style != 2039)
    {
      goto LABEL_104;
    }

    v6 = _UIBackdropViewSettingsDarkLow;
  }

LABEL_105:
  v11 = [[v6 alloc] initWithDefaultValuesForGraphicsQuality:quality];
LABEL_106:
  v8 = v11;
LABEL_107:

  return v8;
}

- (_UIBackdropViewSettings)initWithDefaultValuesForGraphicsQuality:(int64_t)quality
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
    if (quality)
    {
      v4->_explicitlySetGraphicsQuality = 1;
    }

    else if (_AXSEnhanceBackgroundContrastEnabled())
    {
      quality = 10;
    }

    else
    {
      v8 = +[UIDevice currentDevice];
      quality = [v8 _graphicsQuality];
    }

    v5->_graphicsQuality = quality;
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

- (void)setValuesFromModel:(id)model
{
  modelCopy = model;
  if (self->_style)
  {
    v13 = modelCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    modelCopy = v13;
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

      modelCopy = v13;
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

- (void)setBlurQuality:(id)quality
{
  v4 = [quality copy];
  blurQuality = self->_blurQuality;
  self->_blurQuality = v4;

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setBlursWithHardEdges:(BOOL)edges
{
  if (edges)
  {
    v3 = 15;
  }

  else
  {
    v3 = 0;
  }

  [(_UIBackdropViewSettings *)self setBlurHardEdges:v3];
}

- (void)setColorTint:(id)tint
{
  objc_storeStrong(&self->_colorTint, tint);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setColorTintMaskImage:(id)image
{
  objc_storeStrong(&self->_colorTintMaskImage, image);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setColorBurnTintMaskImage:(id)image
{
  objc_storeStrong(&self->_colorBurnTintMaskImage, image);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setDarkeningTintMaskImage:(id)image
{
  objc_storeStrong(&self->_darkeningTintMaskImage, image);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setFilterMaskImage:(id)image
{
  objc_storeStrong(&self->_filterMaskImage, image);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setGrayscaleTintMaskImage:(id)image
{
  objc_storeStrong(&self->_grayscaleTintMaskImage, image);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setHighlighted:(BOOL)highlighted
{
  self->_highlighted = highlighted;
  if (highlighted)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setLegibleColor:(id)color
{
  objc_storeStrong(&self->_legibleColor, color);

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setRenderingHint:(int64_t)hint
{
  self->_renderingHint = hint;
  if (hint == 1)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:?];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setSelected:(BOOL)selected
{
  self->_selected = selected;
  if (selected)
  {
    [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
  }

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

- (void)setZoomsBack:(BOOL)back
{
  v3 = 0.05;
  if (back)
  {
    v3 = 0.0;
  }

  [(_UIBackdropViewSettings *)self setZoom:v3];
}

- (void)computeOutputSettingsUsingModel:(id)model
{
  [(_UIBackdropViewSettings *)self setValuesFromModel:model];

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
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@ : %p>\n", objc_opt_class(), self];
  [string appendFormat:@"    graphicsQuality:        %ld\n", -[_UIBackdropViewSettings graphicsQuality](self, "graphicsQuality")];
  isBackdropVisible = [(_UIBackdropViewSettings *)self isBackdropVisible];
  v5 = @"NO";
  if (isBackdropVisible)
  {
    v5 = @"YES";
  }

  [string appendFormat:@"    backdrop visible:       %@\n", v5];
  [(_UIBackdropViewSettings *)self grayscaleTintLevel];
  [string appendFormat:@"    grayscaleTintLevel:     %.2f\n", v6];
  [(_UIBackdropViewSettings *)self grayscaleTintAlpha];
  [string appendFormat:@"    grayscaleTintAlpha:     %.2f\n", v7];
  grayscaleTintMaskImage = [(_UIBackdropViewSettings *)self grayscaleTintMaskImage];
  [string appendFormat:@"    grayscaleTintMaskImage: %@\n", grayscaleTintMaskImage];

  [(_UIBackdropViewSettings *)self grayscaleTintMaskAlpha];
  [string appendFormat:@"    grayscaleTintMaskAlpha: %.2f\n", v9];
  colorTint = [(_UIBackdropViewSettings *)self colorTint];
  [string appendFormat:@"    colorTint:              %@\n", colorTint];

  [(_UIBackdropViewSettings *)self colorTintAlpha];
  [string appendFormat:@"    colorTintAlpha:         %.2f\n", v11];
  colorTintMaskImage = [(_UIBackdropViewSettings *)self colorTintMaskImage];
  [string appendFormat:@"    colorTintMaskImage:     %@\n", colorTintMaskImage];

  [(_UIBackdropViewSettings *)self colorTintMaskAlpha];
  [string appendFormat:@"    colorTintMaskAlpha:     %.2f\n", v13];
  [(_UIBackdropViewSettings *)self blurRadius];
  [string appendFormat:@"    blurRadius:             %.2f\n", v14];
  [(_UIBackdropViewSettings *)self saturationDeltaFactor];
  [string appendFormat:@"    saturationDeltaFactor:  %.2f\n", v15];
  filterMaskImage = [(_UIBackdropViewSettings *)self filterMaskImage];
  [string appendFormat:@"    filterMaskImage:        %@\n", filterMaskImage];

  [(_UIBackdropViewSettings *)self filterMaskAlpha];
  [string appendFormat:@"    filterMaskAlpha:        %.2f\n", v17];
  combinedTintColor = [(_UIBackdropViewSettings *)self combinedTintColor];
  [string appendFormat:@"    combinedTintColor:      %@\n", combinedTintColor];

  return string;
}

@end