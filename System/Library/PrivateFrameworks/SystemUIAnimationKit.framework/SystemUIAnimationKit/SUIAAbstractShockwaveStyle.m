@interface SUIAAbstractShockwaveStyle
- (BOOL)usesChromaticAberation;
- (BOOL)usesColorOverlay;
- (BOOL)usesEdgeLight;
- (BOOL)usesFillLight;
- (BOOL)usesMeshTransform;
- (CGRect)shockwaveBounds;
- (SUIAAbstractShockwaveStyle)initWithShockwaveViewBounds:(CGRect)a3;
- (double)recommendedPresentationDurationForState:(int64_t)a3;
- (id)_configurationForType:(int64_t)a3 state:(int64_t)a4;
- (id)_shockwaveSettings;
- (id)_stingSettings;
- (id)rootViewConfigurationForState:(int64_t)a3;
- (void)_setConfiguration:(id)a3 forType:(int64_t)a4 state:(int64_t)a5;
- (void)setShockwaveBounds:(CGRect)a3;
- (void)setUserInterfaceIdiom:(int64_t)a3;
- (void)setUsesIntelligentFillLight:(BOOL)a3;
@end

@implementation SUIAAbstractShockwaveStyle

- (SUIAAbstractShockwaveStyle)initWithShockwaveViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = SUIAAbstractShockwaveStyle;
  v7 = [(SUIAAbstractShockwaveStyle *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_shockwaveBounds.origin.x = x;
    v7->_shockwaveBounds.origin.y = y;
    v7->_shockwaveBounds.size.width = width;
    v7->_shockwaveBounds.size.height = height;
    v9 = [MEMORY[0x277D75418] currentDevice];
    v8->_userInterfaceIdiom = [v9 userInterfaceIdiom];

    v10 = [MEMORY[0x277CBEB38] dictionary];
    configurations = v8->_configurations;
    v8->_configurations = v10;

    v12 = [(SUIAAbstractShockwaveStyle *)v8 _shockwaveSettings];
    [v12 addKeyPathObserver:v8];
  }

  return v8;
}

- (id)_shockwaveSettings
{
  prototypeSettings = self->_prototypeSettings;
  if (!prototypeSettings)
  {
    v4 = +[SUIAnimationKitPrototypeSettingsDomain rootSettings];
    v5 = [v4 shockwaveSettings];
    v6 = self->_prototypeSettings;
    self->_prototypeSettings = v5;

    prototypeSettings = self->_prototypeSettings;
  }

  return prototypeSettings;
}

- (id)_stingSettings
{
  stingPrototypeSettings = self->_stingPrototypeSettings;
  if (!stingPrototypeSettings)
  {
    v4 = +[SUIAnimationKitPrototypeSettingsDomain rootSettings];
    v5 = [v4 stingSettings];
    v6 = self->_stingPrototypeSettings;
    self->_stingPrototypeSettings = v5;

    stingPrototypeSettings = self->_stingPrototypeSettings;
  }

  return stingPrototypeSettings;
}

- (void)setShockwaveBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_shockwaveBounds))
  {
    self->_shockwaveBounds.origin.x = x;
    self->_shockwaveBounds.origin.y = y;
    self->_shockwaveBounds.size.width = width;
    self->_shockwaveBounds.size.height = height;
    configurations = self->_configurations;

    [(NSMutableDictionary *)configurations removeAllObjects];
  }
}

- (void)setUserInterfaceIdiom:(int64_t)a3
{
  if (self->_userInterfaceIdiom != a3)
  {
    self->_userInterfaceIdiom = a3;
    [(NSMutableDictionary *)self->_configurations removeAllObjects];
  }
}

- (void)setUsesIntelligentFillLight:(BOOL)a3
{
  if (self->_usesIntelligentFillLight != a3)
  {
    self->_usesIntelligentFillLight = a3;
    [(NSMutableDictionary *)self->_configurations removeAllObjects];
  }
}

- (double)recommendedPresentationDurationForState:(int64_t)a3
{
  v3 = 0.0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
LABEL_9:
      v4 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
      [v4 maximumHintDuration];
      goto LABEL_10;
    }

    if (a3 != 2)
    {
LABEL_11:
      UIAnimationDragCoefficient();
      return v3 * v6;
    }

LABEL_8:
    v4 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
    [v4 totalDuration];
LABEL_10:
    v3 = v5;

    goto LABEL_11;
  }

  if (a3 != 3)
  {
    if (a3 != 5)
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return 1.79769313e308;
}

- (BOOL)usesChromaticAberation
{
  v2 = [(SUIAAbstractShockwaveStyle *)self chromaticAberrationConfigurationForState:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)usesMeshTransform
{
  v2 = [(SUIAAbstractShockwaveStyle *)self meshConfigurationForState:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)usesFillLight
{
  v2 = [(SUIAAbstractShockwaveStyle *)self fillLightConfigurationForState:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)usesEdgeLight
{
  v2 = [(SUIAAbstractShockwaveStyle *)self edgeLightOverlayConfigurationForState:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)usesColorOverlay
{
  v2 = [(SUIAAbstractShockwaveStyle *)self colorOverlayConfigurationForState:0];
  v3 = v2 != 0;

  return v3;
}

- (id)rootViewConfigurationForState:(int64_t)a3
{
  v5 = +[_SUIAShockwaveRootViewConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v5 state:a3];
  if (!v6)
  {
    v6 = objc_alloc_init(_SUIAShockwaveRootViewConfiguration);
    [(_SUIAShockwaveRootViewConfiguration *)v6 _setHidden:a3 == 3];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v5 state:a3];
  }

  return v6;
}

- (id)_configurationForType:(int64_t)a3 state:(int64_t)a4
{
  configurations = self->_configurations;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)configurations objectForKey:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (void)_setConfiguration:(id)a3 forType:(int64_t)a4 state:(int64_t)a5
{
  configurations = self->_configurations;
  v9 = MEMORY[0x277CCABB0];
  v10 = a3;
  v11 = [v9 numberWithInteger:a4];
  v15 = [(NSMutableDictionary *)configurations objectForKey:v11];

  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v12 = self->_configurations;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setObject:v15 forKey:v13];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v15 setObject:v10 forKey:v14];
}

- (CGRect)shockwaveBounds
{
  x = self->_shockwaveBounds.origin.x;
  y = self->_shockwaveBounds.origin.y;
  width = self->_shockwaveBounds.size.width;
  height = self->_shockwaveBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end