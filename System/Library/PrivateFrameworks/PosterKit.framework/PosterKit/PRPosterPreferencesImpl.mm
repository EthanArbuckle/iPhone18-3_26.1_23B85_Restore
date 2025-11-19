@interface PRPosterPreferencesImpl
- (CGRect)acceptableSalientContentRectangle;
- (CGRect)preferredSalientContentRectangle;
- (PRPosterPreferencesImpl)init;
- (id)_initFromPreferences:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToClientSettings:(id)a3 overridePreferredSalientRect:(CGRect)a4;
- (void)setDeviceMotionMode:(unint64_t)a3;
- (void)setInitialValuesFromSettings:(id)a3;
- (void)setNextWakeDate:(id)a3;
- (void)setPreferredProminentColor:(id)a3;
- (void)setRequestedRenderingEventTypes:(id)a3;
- (void)setRequestedRenderingTransitionTypes:(id)a3;
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

- (id)_initFromPreferences:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterPreferencesImpl *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_timeFont, *(v4 + 1));
    objc_storeStrong(&v6->_timeColor, *(v4 + 2));
    objc_storeStrong(&v6->_statusBarTintColor, *(v4 + 3));
    *&v6->_significantEventTime = *(v4 + 2);
    v6->_userTapEventsRequested = v4[48];
    objc_storeStrong(&v6->_requestedRenderingEventTypes, *(v4 + 7));
    objc_storeStrong(&v6->_requestedRenderingTransitionTypes, *(v4 + 8));
    v6->_handlesWakeAnimation = v4[72];
    v6->_supportedMotionEffectsMode = *(v4 + 10);
    v6->_deviceMotionEventsRequested = v4[88];
    v6->_deviceMotionMode = *(v4 + 12);
    objc_storeStrong(&v6->_averageColor, *(v4 + 22));
    v6->_depthEffectEnabled = v4[154];
    v6->_motionEffectsEnabled = v4[155];
    v6->_hideChrome = v4[105];
    v6->_hideDimmingLayer = v4[106];
    objc_storeStrong(&v6->_desiredLegibilitySettings, *(v4 + 14));
    objc_storeStrong(&v6->_preferredProminentColor, *(v4 + 15));
    v7 = *(v4 + 184);
    v6->_preferredSalientContentRectangle.size = *(v4 + 200);
    v6->_preferredSalientContentRectangle.origin = v7;
    v6->_maximumAdaptiveTimeHeight = *(v4 + 20);
    v8 = *(v4 + 216);
    v6->_acceptableSalientContentRectangle.size = *(v4 + 232);
    v6->_acceptableSalientContentRectangle.origin = v8;
    v6->_salientContentRectangleUpdatesRequested = v4[152];
    v6->_contentOcclusionRectangleUpdatesRequested = v4[153];
    v6->_preferredDeviceMotionUpdateInterval = *(v4 + 21);
    v6->_adaptiveTimeMode = *(v4 + 16);
    v6->_complicationRowMode = *(v4 + 17);
    v6->_powerlogIdentifier = *(v4 + 18);
  }

  return v6;
}

- (void)setInitialValuesFromSettings:(id)a3
{
  v4 = a3;
  self->_depthEffectEnabled = [v4 pr_isDepthEffectDisabled] ^ 1;
  self->_motionEffectsEnabled = [v4 pr_areMotionEffectsDisabled] ^ 1;
  v5 = [v4 pr_requestedRenderingEventTypes];
  v6 = [v5 allObjects];
  requestedRenderingEventTypes = self->_requestedRenderingEventTypes;
  self->_requestedRenderingEventTypes = v6;

  v8 = [v4 pr_requestedRenderingTransitionTypes];
  v9 = [v8 allObjects];
  requestedRenderingTransitionTypes = self->_requestedRenderingTransitionTypes;
  self->_requestedRenderingTransitionTypes = v9;

  [v4 pui_preferredSalientContentRectangle];
  self->_preferredSalientContentRectangle.origin.x = v11;
  self->_preferredSalientContentRectangle.origin.y = v12;
  self->_preferredSalientContentRectangle.size.width = v13;
  self->_preferredSalientContentRectangle.size.height = v14;
  [v4 pui_acceptableSalientContentRectangle];
  self->_acceptableSalientContentRectangle.origin.x = v15;
  self->_acceptableSalientContentRectangle.origin.y = v16;
  self->_acceptableSalientContentRectangle.size.width = v17;
  self->_acceptableSalientContentRectangle.size.height = v18;
  self->_adaptiveTimeMode = [v4 pui_adaptiveTimeMode];
  self->_complicationRowMode = [v4 pr_complicationRowMode];
  v19 = [v4 pui_powerlogIdentifier];

  self->_powerlogIdentifier = v19;
}

- (void)applyToClientSettings:(id)a3 overridePreferredSalientRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  v9 = objc_opt_new();
  [v9 setFont:self->_timeFont];
  [v9 setColor:self->_timeColor];
  [v15 pr_setTimeDescriptor:v9];
  v10 = [(UIColor *)self->_statusBarTintColor BSColor];
  [v15 pr_setStatusBarTintColor:v10];

  [v15 pui_setSignificantEventTime:self->_significantEventTime];
  [v15 pui_setSignificantEventOptions:self->_significantEventOptions];
  [v15 pui_setUserTapEventsRequested:self->_userTapEventsRequested];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:self->_requestedRenderingEventTypes];
  [v15 pr_setRequestedRenderingEventTypes:v11];

  v12 = [MEMORY[0x1E695DFD8] setWithArray:self->_requestedRenderingTransitionTypes];
  [v15 pr_setRequestedRenderingTransitionTypes:v12];

  [v15 pr_setHandlesWakeAnimation:self->_handlesWakeAnimation];
  [v15 pr_setSupportedMotionEffectsMode:self->_supportedMotionEffectsMode];
  [v15 pr_setDeviceMotionEventsRequested:self->_deviceMotionEventsRequested];
  [v15 pr_setDeviceMotionMode:self->_deviceMotionMode];
  [v15 pr_setMotionEffectsDisabled:!self->_motionEffectsEnabled];
  v13 = [(UIColor *)self->_averageColor BSColor];
  [v15 pr_setAverageColor:v13];

  v14 = [(UIColor *)self->_preferredProminentColor BSColor];
  [v15 pr_setPreferredProminentColor:v14];

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectEqualToRect(v17, *MEMORY[0x1E695F050]))
  {
    [v15 pui_setPreferredSalientContentRectangle:{self->_preferredSalientContentRectangle.origin.x, self->_preferredSalientContentRectangle.origin.y, self->_preferredSalientContentRectangle.size.width, self->_preferredSalientContentRectangle.size.height}];
    x = self->_acceptableSalientContentRectangle.origin.x;
    y = self->_acceptableSalientContentRectangle.origin.y;
    width = self->_acceptableSalientContentRectangle.size.width;
    height = self->_acceptableSalientContentRectangle.size.height;
  }

  else
  {
    [v15 pui_setPreferredSalientContentRectangle:{x, y, width, height}];
  }

  [v15 pui_setAcceptableSalientContentRectangle:{x, y, width, height}];
  [v15 pui_setSalientContentRectangleUpdatesRequested:self->_salientContentRectangleUpdatesRequested];
  [v15 pui_setContentOcclusionRectangleUpdatesRequested:self->_contentOcclusionRectangleUpdatesRequested];
  [v15 pr_setPreferredDeviceMotionUpdateInterval:self->_preferredDeviceMotionUpdateInterval];
  [v15 pr_setDepthEffectDisabled:!self->_depthEffectEnabled];
  [v15 pr_setHideChrome:self->_hideChrome];
  [v15 pr_setHideDimmingLayer:self->_hideDimmingLayer];
  [v15 pr_setDesiredLegibilitySettings:self->_desiredLegibilitySettings];
  [v15 pui_setAdaptiveTimeMode:self->_adaptiveTimeMode];
  [v15 pr_setComplicationRowMode:self->_complicationRowMode];
  [v15 pui_setPowerlogIdentifier:self->_powerlogIdentifier];
}

- (void)setNextWakeDate:(id)a3
{
  v6 = a3;
  v4 = [(PRPosterPreferencesImpl *)self significantEventOptions];
  if (v6)
  {
    [(PRPosterPreferencesImpl *)self setSignificantEventOptions:v4 | 1];
    [v6 timeIntervalSinceNow];
    v5 = BSDispatchTimeWithInterval();
  }

  else
  {
    [(PRPosterPreferencesImpl *)self setSignificantEventOptions:v4 & 0xFFFFFFFFFFFFFFFELL];
    v5 = -1;
  }

  [(PRPosterPreferencesImpl *)self setSignificantEventTime:v5];
}

- (void)setDeviceMotionMode:(unint64_t)a3
{
  if (self->_deviceMotionMode != a3)
  {
    self->_deviceMotionMode = a3;
    if (a3 <= 2)
    {
      self->_deviceMotionEventsRequested = 0x10100u >> (8 * a3);
    }
  }
}

- (void)setPreferredProminentColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  preferredProminentColor = self->_preferredProminentColor;
  p_preferredProminentColor = &self->_preferredProminentColor;
  if (([(UIColor *)preferredProminentColor isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(p_preferredProminentColor, a3);
    if (v5)
    {
      [v5 alphaComponent];
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        v8 = PRLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "new preferred prominent color %@ has alpha component that is not 1 - so this won't look good. This will default to white.", buf, 0xCu);
        }
      }

      v13 = 0;
      v14 = 0;
      v12 = 0;
      v9 = MEMORY[0x1E69DC888];
      v10 = [MEMORY[0x1E69C5558] discreteGradientVariatedColors];
      [v9 pui_determineVarianceAndLuminanceForColor:v5 amongstColors:v10 outVariance:&v13 outLuminance:&v14 outSaturation:&v12];

      if (BSFloatIsZero() && BSFloatIsZero())
      {
        v11 = PRLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1A8AA7000, v11, OS_LOG_TYPE_DEFAULT, "new preferred prominent color %@ may not map cleanly into the style slider. We will try to clamp to a better value but... - please try a new color.  This may default to white.", buf, 0xCu);
        }
      }
    }
  }
}

- (void)setRequestedRenderingEventTypes:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_requestedRenderingEventTypes isEqualToArray:?])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:v8];
    v5 = PRValidRenderingEventTypes();
    [v4 intersectSet:v5];

    v6 = [v4 allObjects];
    requestedRenderingEventTypes = self->_requestedRenderingEventTypes;
    self->_requestedRenderingEventTypes = v6;
  }
}

- (void)setRequestedRenderingTransitionTypes:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_requestedRenderingTransitionTypes isEqualToArray:?])
  {
    v4 = [MEMORY[0x1E695DFA8] setWithArray:v8];
    v5 = PRValidRenderingTransitionTypes();
    [v4 intersectSet:v5];

    v6 = [v4 allObjects];
    requestedRenderingTransitionTypes = self->_requestedRenderingTransitionTypes;
    self->_requestedRenderingTransitionTypes = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
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