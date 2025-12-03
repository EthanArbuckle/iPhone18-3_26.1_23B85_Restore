@interface SBLockOverlayStyleProperties
- (SBLockOverlayStyleProperties)initWithStyle:(unint64_t)style quality:(int64_t)quality;
- (id)_settingsForStyle;
- (id)_stringForQuality;
- (id)_stringForStyle;
- (id)description;
- (void)_configure;
@end

@implementation SBLockOverlayStyleProperties

- (SBLockOverlayStyleProperties)initWithStyle:(unint64_t)style quality:(int64_t)quality
{
  v9.receiver = self;
  v9.super_class = SBLockOverlayStyleProperties;
  v6 = [(SBLockOverlayStyleProperties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_style = style;
    v6->_quality = quality;
    [(SBLockOverlayStyleProperties *)v6 _configure];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  _stringForStyle = [(SBLockOverlayStyleProperties *)self _stringForStyle];
  _stringForQuality = [(SBLockOverlayStyleProperties *)self _stringForQuality];
  v7 = [v3 stringWithFormat:@"<%@:%p>             style: %@, quality: %@, tintColor: %@, tintAlpha: %f, blurRadius: %f             settings: %@", v4, self, _stringForStyle, _stringForQuality, self->_tintColor, *&self->_tintAlpha, *&self->_blurRadius, self->_settings];

  return v7;
}

- (void)_configure
{
  _settingsForStyle = [(SBLockOverlayStyleProperties *)self _settingsForStyle];
  settings = self->_settings;
  self->_settings = _settingsForStyle;

  combinedTintColor = [(_UIBackdropViewSettings *)self->_settings combinedTintColor];
  [combinedTintColor alphaComponent];
  self->_tintAlpha = v6;

  combinedTintColor2 = [(_UIBackdropViewSettings *)self->_settings combinedTintColor];
  v8 = [combinedTintColor2 colorWithAlphaComponent:1.0];
  tintColor = self->_tintColor;
  self->_tintColor = v8;

  [(_UIBackdropViewSettings *)self->_settings blurRadius];
  self->_blurRadius = v10;
}

- (id)_settingsForStyle
{
  style = self->_style;
  if (style <= 2)
  {
    if (!style)
    {
      quality = self->_quality;
      v4 = MEMORY[0x1E69DD378];
      v5 = -2;
      goto LABEL_10;
    }

    if (style == 2)
    {
      quality = self->_quality;
      v4 = MEMORY[0x1E69DD378];
      v5 = 11070;
LABEL_10:
      v7 = [v4 settingsForPrivateStyle:v5 graphicsQuality:quality];
      goto LABEL_13;
    }

LABEL_8:
    quality = self->_quality;
    v4 = MEMORY[0x1E69DD378];
    v5 = 11050;
    goto LABEL_10;
  }

  if (style == 3)
  {
    v6 = SBBlackBackdropSettings;
  }

  else
  {
    if (style != 4)
    {
      goto LABEL_8;
    }

    v6 = SBWhiteBackdropSettings;
  }

  v7 = objc_alloc_init(v6);
LABEL_13:

  return v7;
}

- (id)_stringForQuality
{
  if (self->_quality == 10)
  {
    return @"UIDeviceGraphicsQualityLow";
  }

  else
  {
    return @"UIDeviceGraphicsQualityHigh";
  }
}

- (id)_stringForStyle
{
  v2 = self->_style - 2;
  if (v2 > 2)
  {
    return @"SBLockOverlayStyleMedium";
  }

  else
  {
    return off_1E789FA30[v2];
  }
}

@end