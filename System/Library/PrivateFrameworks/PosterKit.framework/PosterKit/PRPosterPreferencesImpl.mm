@interface PRPosterPreferencesImpl
- (CGRect)acceptableSalientContentRectangle;
- (CGRect)preferredSalientContentRectangle;
- (PRPosterPreferencesImpl)init;
- (id)_initFromPreferences:(id)preferences;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToClientSettings:(id)settings overridePreferredSalientRect:(CGRect)rect;
- (void)setDeviceMotionMode:(unint64_t)mode;
- (void)setInitialValuesFromSettings:(id)settings;
- (void)setNextWakeDate:(id)date;
- (void)setPreferredProminentColor:(id)color;
- (void)setRequestedRenderingEventTypes:(id)types;
- (void)setRequestedRenderingTransitionTypes:(id)types;
@end

@implementation PRPosterPreferencesImpl

- (PRPosterPreferencesImpl)init
{
  v11.receiver = self;
  v11.super_class = PRPosterPreferencesImpl;
  v2 = [(PRPosterPreferencesImpl *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_depthEffectEnabled = 256;
    v4 = objc_opt_new();
    requestedRenderingEventTypes = v3->_requestedRenderingEventTypes;
    v3->_requestedRenderingEventTypes = v4;

    v6 = objc_opt_new();
    requestedRenderingTransitionTypes = v3->_requestedRenderingTransitionTypes;
    v3->_requestedRenderingTransitionTypes = v6;

    v8 = *(MEMORY[0x1E695F040] + 16);
    v3->_preferredSalientContentRectangle.origin = *MEMORY[0x1E695F040];
    v3->_preferredSalientContentRectangle.size = v8;
    v9 = *(MEMORY[0x1E695F050] + 16);
    v3->_acceptableSalientContentRectangle.origin = *MEMORY[0x1E695F050];
    v3->_acceptableSalientContentRectangle.size = v9;
    v3->_maximumAdaptiveTimeHeight = 1.79769313e308;
    v3->_deviceMotionMode = 0;
    v3->_adaptiveTimeMode = 0;
    v3->_complicationRowMode = 0;
  }

  return v3;
}

- (id)_initFromPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = [(PRPosterPreferencesImpl *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_timeFont, *(preferencesCopy + 1));
    objc_storeStrong(&v6->_timeColor, *(preferencesCopy + 2));
    objc_storeStrong(&v6->_statusBarTintColor, *(preferencesCopy + 3));
    *&v6->_significantEventTime = *(preferencesCopy + 2);
    v6->_userTapEventsRequested = preferencesCopy[48];
    objc_storeStrong(&v6->_requestedRenderingEventTypes, *(preferencesCopy + 7));
    objc_storeStrong(&v6->_requestedRenderingTransitionTypes, *(preferencesCopy + 8));
    v6->_handlesWakeAnimation = preferencesCopy[72];
    v6->_supportedMotionEffectsMode = *(preferencesCopy + 10);
    v6->_deviceMotionEventsRequested = preferencesCopy[88];
    v6->_deviceMotionMode = *(preferencesCopy + 12);
    objc_storeStrong(&v6->_averageColor, *(preferencesCopy + 22));
    v6->_depthEffectEnabled = preferencesCopy[154];
    v6->_motionEffectsEnabled = preferencesCopy[155];
    v6->_hideChrome = preferencesCopy[105];
    v6->_hideDimmingLayer = preferencesCopy[106];
    objc_storeStrong(&v6->_desiredLegibilitySettings, *(preferencesCopy + 14));
    objc_storeStrong(&v6->_preferredProminentColor, *(preferencesCopy + 15));
    v7 = *(preferencesCopy + 184);
    v6->_preferredSalientContentRectangle.size = *(preferencesCopy + 200);
    v6->_preferredSalientContentRectangle.origin = v7;
    v6->_maximumAdaptiveTimeHeight = *(preferencesCopy + 20);
    v8 = *(preferencesCopy + 216);
    v6->_acceptableSalientContentRectangle.size = *(preferencesCopy + 232);
    v6->_acceptableSalientContentRectangle.origin = v8;
    v6->_salientContentRectangleUpdatesRequested = preferencesCopy[152];
    v6->_contentOcclusionRectangleUpdatesRequested = preferencesCopy[153];
    v6->_preferredDeviceMotionUpdateInterval = *(preferencesCopy + 21);
    v6->_adaptiveTimeMode = *(preferencesCopy + 16);
    v6->_complicationRowMode = *(preferencesCopy + 17);
    v6->_powerlogIdentifier = *(preferencesCopy + 18);
  }

  return v6;
}

- (void)setInitialValuesFromSettings:(id)settings
{
  settingsCopy = settings;
  self->_depthEffectEnabled = [settingsCopy pr_isDepthEffectDisabled] ^ 1;
  self->_motionEffectsEnabled = [settingsCopy pr_areMotionEffectsDisabled] ^ 1;
  pr_requestedRenderingEventTypes = [settingsCopy pr_requestedRenderingEventTypes];
  allObjects = [pr_requestedRenderingEventTypes allObjects];
  requestedRenderingEventTypes = self->_requestedRenderingEventTypes;
  self->_requestedRenderingEventTypes = allObjects;

  pr_requestedRenderingTransitionTypes = [settingsCopy pr_requestedRenderingTransitionTypes];
  allObjects2 = [pr_requestedRenderingTransitionTypes allObjects];
  requestedRenderingTransitionTypes = self->_requestedRenderingTransitionTypes;
  self->_requestedRenderingTransitionTypes = allObjects2;

  [settingsCopy pui_preferredSalientContentRectangle];
  self->_preferredSalientContentRectangle.origin.x = v11;
  self->_preferredSalientContentRectangle.origin.y = v12;
  self->_preferredSalientContentRectangle.size.width = v13;
  self->_preferredSalientContentRectangle.size.height = v14;
  [settingsCopy pui_acceptableSalientContentRectangle];
  self->_acceptableSalientContentRectangle.origin.x = v15;
  self->_acceptableSalientContentRectangle.origin.y = v16;
  self->_acceptableSalientContentRectangle.size.width = v17;
  self->_acceptableSalientContentRectangle.size.height = v18;
  self->_adaptiveTimeMode = [settingsCopy pui_adaptiveTimeMode];
  self->_complicationRowMode = [settingsCopy pr_complicationRowMode];
  pui_powerlogIdentifier = [settingsCopy pui_powerlogIdentifier];

  self->_powerlogIdentifier = pui_powerlogIdentifier;
}

- (void)applyToClientSettings:(id)settings overridePreferredSalientRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  settingsCopy = settings;
  v9 = objc_opt_new();
  [v9 setFont:self->_timeFont];
  [v9 setColor:self->_timeColor];
  [settingsCopy pr_setTimeDescriptor:v9];
  bSColor = [(UIColor *)self->_statusBarTintColor BSColor];
  [settingsCopy pr_setStatusBarTintColor:bSColor];

  [settingsCopy pui_setSignificantEventTime:self->_significantEventTime];
  [settingsCopy pui_setSignificantEventOptions:self->_significantEventOptions];
  [settingsCopy pui_setUserTapEventsRequested:self->_userTapEventsRequested];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:self->_requestedRenderingEventTypes];
  [settingsCopy pr_setRequestedRenderingEventTypes:v11];

  v12 = [MEMORY[0x1E695DFD8] setWithArray:self->_requestedRenderingTransitionTypes];
  [settingsCopy pr_setRequestedRenderingTransitionTypes:v12];

  [settingsCopy pr_setHandlesWakeAnimation:self->_handlesWakeAnimation];
  [settingsCopy pr_setSupportedMotionEffectsMode:self->_supportedMotionEffectsMode];
  [settingsCopy pr_setDeviceMotionEventsRequested:self->_deviceMotionEventsRequested];
  [settingsCopy pr_setDeviceMotionMode:self->_deviceMotionMode];
  [settingsCopy pr_setMotionEffectsDisabled:!self->_motionEffectsEnabled];
  bSColor2 = [(UIColor *)self->_averageColor BSColor];
  [settingsCopy pr_setAverageColor:bSColor2];

  bSColor3 = [(UIColor *)self->_preferredProminentColor BSColor];
  [settingsCopy pr_setPreferredProminentColor:bSColor3];

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectEqualToRect(v17, *MEMORY[0x1E695F050]))
  {
    [settingsCopy pui_setPreferredSalientContentRectangle:{self->_preferredSalientContentRectangle.origin.x, self->_preferredSalientContentRectangle.origin.y, self->_preferredSalientContentRectangle.size.width, self->_preferredSalientContentRectangle.size.height}];
    x = self->_acceptableSalientContentRectangle.origin.x;
    y = self->_acceptableSalientContentRectangle.origin.y;
    width = self->_acceptableSalientContentRectangle.size.width;
    height = self->_acceptableSalientContentRectangle.size.height;
  }

  else
  {
    [settingsCopy pui_setPreferredSalientContentRectangle:{x, y, width, height}];
  }

  [settingsCopy pui_setAcceptableSalientContentRectangle:{x, y, width, height}];
  [settingsCopy pui_setSalientContentRectangleUpdatesRequested:self->_salientContentRectangleUpdatesRequested];
  [settingsCopy pui_setContentOcclusionRectangleUpdatesRequested:self->_contentOcclusionRectangleUpdatesRequested];
  [settingsCopy pr_setPreferredDeviceMotionUpdateInterval:self->_preferredDeviceMotionUpdateInterval];
  [settingsCopy pr_setDepthEffectDisabled:!self->_depthEffectEnabled];
  [settingsCopy pr_setHideChrome:self->_hideChrome];
  [settingsCopy pr_setHideDimmingLayer:self->_hideDimmingLayer];
  [settingsCopy pr_setDesiredLegibilitySettings:self->_desiredLegibilitySettings];
  [settingsCopy pui_setAdaptiveTimeMode:self->_adaptiveTimeMode];
  [settingsCopy pr_setComplicationRowMode:self->_complicationRowMode];
  [settingsCopy pui_setPowerlogIdentifier:self->_powerlogIdentifier];
}

- (void)setNextWakeDate:(id)date
{
  dateCopy = date;
  significantEventOptions = [(PRPosterPreferencesImpl *)self significantEventOptions];
  if (dateCopy)
  {
    [(PRPosterPreferencesImpl *)self setSignificantEventOptions:significantEventOptions | 1];
    [dateCopy timeIntervalSinceNow];
    v5 = BSDispatchTimeWithInterval();
  }

  else
  {
    [(PRPosterPreferencesImpl *)self setSignificantEventOptions:significantEventOptions & 0xFFFFFFFFFFFFFFFELL];
    v5 = -1;
  }

  [(PRPosterPreferencesImpl *)self setSignificantEventTime:v5];
}

- (void)setDeviceMotionMode:(unint64_t)mode
{
  if (self->_deviceMotionMode != mode)
  {
    self->_deviceMotionMode = mode;
    if (mode <= 2)
    {
      self->_deviceMotionEventsRequested = 0x10100u >> (8 * mode);
    }
  }
}

- (void)setPreferredProminentColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  preferredProminentColor = self->_preferredProminentColor;
  p_preferredProminentColor = &self->_preferredProminentColor;
  if (([(UIColor *)preferredProminentColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(p_preferredProminentColor, color);
    if (colorCopy)
    {
      [colorCopy alphaComponent];
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        v8 = PRLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = colorCopy;
          _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "new preferred prominent color %@ has alpha component that is not 1 - so this won't look good. This will default to white.", buf, 0xCu);
        }
      }

      v13 = 0;
      v14 = 0;
      v12 = 0;
      v9 = MEMORY[0x1E69DC888];
      discreteGradientVariatedColors = [MEMORY[0x1E69C5558] discreteGradientVariatedColors];
      [v9 pui_determineVarianceAndLuminanceForColor:colorCopy amongstColors:discreteGradientVariatedColors outVariance:&v13 outLuminance:&v14 outSaturation:&v12];

      if (BSFloatIsZero() && BSFloatIsZero())
      {
        v11 = PRLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = colorCopy;
          _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "new preferred prominent color %@ may not map cleanly into the style slider. We will try to clamp to a better value but... - please try a new color.  This may default to white.", buf, 0xCu);
        }
      }
    }
  }
}

- (void)setRequestedRenderingEventTypes:(id)types
{
  typesCopy = types;
  if (![(NSArray *)self->_requestedRenderingEventTypes isEqualToArray:?])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:typesCopy];
    v5 = PRValidRenderingEventTypes();
    [v4 intersectSet:v5];

    allObjects = [v4 allObjects];
    requestedRenderingEventTypes = self->_requestedRenderingEventTypes;
    self->_requestedRenderingEventTypes = allObjects;
  }
}

- (void)setRequestedRenderingTransitionTypes:(id)types
{
  typesCopy = types;
  if (![(NSArray *)self->_requestedRenderingTransitionTypes isEqualToArray:?])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:typesCopy];
    v5 = PRValidRenderingTransitionTypes();
    [v4 intersectSet:v5];

    allObjects = [v4 allObjects];
    requestedRenderingTransitionTypes = self->_requestedRenderingTransitionTypes;
    self->_requestedRenderingTransitionTypes = allObjects;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initFromPreferences:self];
}

- (CGRect)preferredSalientContentRectangle
{
  x = self->_preferredSalientContentRectangle.origin.x;
  y = self->_preferredSalientContentRectangle.origin.y;
  width = self->_preferredSalientContentRectangle.size.width;
  height = self->_preferredSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)acceptableSalientContentRectangle
{
  x = self->_acceptableSalientContentRectangle.origin.x;
  y = self->_acceptableSalientContentRectangle.origin.y;
  width = self->_acceptableSalientContentRectangle.size.width;
  height = self->_acceptableSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end