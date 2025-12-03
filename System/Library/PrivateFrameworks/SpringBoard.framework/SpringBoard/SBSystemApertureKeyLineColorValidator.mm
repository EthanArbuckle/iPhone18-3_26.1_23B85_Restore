@interface SBSystemApertureKeyLineColorValidator
- (SBSystemApertureKeyLineColorValidator)init;
- (id)validateKeyLineColor:(id)color;
- (void)dealloc;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBSystemApertureKeyLineColorValidator

- (SBSystemApertureKeyLineColorValidator)init
{
  v6.receiver = self;
  v6.super_class = SBSystemApertureKeyLineColorValidator;
  v2 = [(SBSystemApertureKeyLineColorValidator *)&v6 init];
  if (v2)
  {
    v3 = +[SBSystemApertureDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBSystemApertureKeyLineColorValidator *)v2 _applySettingsValues];
    v2->_labColorSpace = CGColorSpaceCreateWithName(*MEMORY[0x277CBF450]);
    v2->_colorTransformToLAB = MEMORY[0x223D6BC40]();
    v2->_rgbColorSpace = CGColorSpaceCreateDeviceRGB();
    v2->_colorTransformToRGB = MEMORY[0x223D6BC40]();
  }

  return v2;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_labColorSpace);
  CGColorTransformRelease();
  CGColorSpaceRelease(self->_rgbColorSpace);
  CGColorTransformRelease();
  v3.receiver = self;
  v3.super_class = SBSystemApertureKeyLineColorValidator;
  [(SBSystemApertureKeyLineColorValidator *)&v3 dealloc];
}

- (id)validateKeyLineColor:(id)color
{
  components[4] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v5 = [MEMORY[0x277D75348] colorWithWhite:0.916 alpha:1.0];
  if (colorCopy)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    if ([colorCopy isEqual:clearColor])
    {
    }

    else
    {
      activityKeyLineColorEnabled = [(SBSystemApertureSettings *)self->_settings activityKeyLineColorEnabled];

      if (activityKeyLineColorEnabled)
      {
        v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
        v9 = [colorCopy resolvedColorWithTraitCollection:v8];

        v10 = [v9 colorWithAlphaComponent:1.0];
        [v10 CGColor];
        v11 = CGColorTransformConvertColor();
        v12 = CGColorGetComponents(v11);
        if (CGColorGetNumberOfComponents(v11) != 4)
        {
          goto LABEL_17;
        }

        v13 = 0;
        v14 = 0;
        do
        {
          if (v13 * 8)
          {
            *&components[v13] = v12[v13];
          }

          else
          {
            if (BSFloatEqualToFloat())
            {
              goto LABEL_12;
            }

            *&components[0] = SBSystemApertureKeyLineFixedLstar;
            v14 = 1;
          }

          ++v13;
        }

        while (v13 != 4);
        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        v15 = CGColorCreate(self->_labColorSpace, components);
        v16 = CGColorTransformConvertColor();
        CGColorRelease(v15);
        v17 = SBLogSystemApertureController();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(SBSystemApertureKeyLineColorValidator *)v12 validateKeyLineColor:v17];
        }

        if (v16)
        {
          v18 = [MEMORY[0x277D75348] colorWithCGColor:v16];
        }

        else
        {
LABEL_17:
          v18 = v10;
          v16 = 0;
        }

        CGColorRelease(v16);
        CGColorRelease(v11);

        v5 = v18;
      }
    }
  }

  return v5;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key containsString:@"keyLineColorFixedLstar"])
  {

    [(SBSystemApertureKeyLineColorValidator *)self _applySettingsValues];
  }
}

- (void)validateKeyLineColor:(os_log_t)log .cold.1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "Key Line Lightness Adjusted from %f to %f.", &v5, 0x16u);
}

@end