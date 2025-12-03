@interface SUIAAbstractShockwaveStyle
- (BOOL)usesChromaticAberation;
- (BOOL)usesColorOverlay;
- (BOOL)usesEdgeLight;
- (BOOL)usesFillLight;
- (BOOL)usesMeshTransform;
- (CGRect)shockwaveBounds;
- (SUIAAbstractShockwaveStyle)initWithShockwaveViewBounds:(CGRect)bounds;
- (double)recommendedPresentationDurationForState:(int64_t)state;
- (id)_configurationForType:(int64_t)type state:(int64_t)state;
- (id)_shockwaveSettings;
- (id)_stingSettings;
- (id)rootViewConfigurationForState:(int64_t)state;
- (void)_setConfiguration:(id)configuration forType:(int64_t)type state:(int64_t)state;
- (void)setShockwaveBounds:(CGRect)bounds;
- (void)setUserInterfaceIdiom:(int64_t)idiom;
- (void)setUsesIntelligentFillLight:(BOOL)light;
@end

@implementation SUIAAbstractShockwaveStyle

- (SUIAAbstractShockwaveStyle)initWithShockwaveViewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v8->_userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    configurations = v8->_configurations;
    v8->_configurations = dictionary;

    _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)v8 _shockwaveSettings];
    [_shockwaveSettings addKeyPathObserver:v8];
  }

  return v8;
}

- (id)_shockwaveSettings
{
  prototypeSettings = self->_prototypeSettings;
  if (!prototypeSettings)
  {
    v4 = +[SUIAnimationKitPrototypeSettingsDomain rootSettings];
    shockwaveSettings = [v4 shockwaveSettings];
    v6 = self->_prototypeSettings;
    self->_prototypeSettings = shockwaveSettings;

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
    stingSettings = [v4 stingSettings];
    v6 = self->_stingPrototypeSettings;
    self->_stingPrototypeSettings = stingSettings;

    stingPrototypeSettings = self->_stingPrototypeSettings;
  }

  return stingPrototypeSettings;
}

- (void)setShockwaveBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(bounds, self->_shockwaveBounds))
  {
    self->_shockwaveBounds.origin.x = x;
    self->_shockwaveBounds.origin.y = y;
    self->_shockwaveBounds.size.width = width;
    self->_shockwaveBounds.size.height = height;
    configurations = self->_configurations;

    [(NSMutableDictionary *)configurations removeAllObjects];
  }
}

- (void)setUserInterfaceIdiom:(int64_t)idiom
{
  if (self->_userInterfaceIdiom != idiom)
  {
    self->_userInterfaceIdiom = idiom;
    [(NSMutableDictionary *)self->_configurations removeAllObjects];
  }
}

- (void)setUsesIntelligentFillLight:(BOOL)light
{
  if (self->_usesIntelligentFillLight != light)
  {
    self->_usesIntelligentFillLight = light;
    [(NSMutableDictionary *)self->_configurations removeAllObjects];
  }
}

- (double)recommendedPresentationDurationForState:(int64_t)state
{
  v3 = 0.0;
  if (state <= 2)
  {
    if (state == 1)
    {
LABEL_9:
      _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
      [_shockwaveSettings maximumHintDuration];
      goto LABEL_10;
    }

    if (state != 2)
    {
LABEL_11:
      UIAnimationDragCoefficient();
      return v3 * v6;
    }

LABEL_8:
    _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
    [_shockwaveSettings totalDuration];
LABEL_10:
    v3 = v5;

    goto LABEL_11;
  }

  if (state != 3)
  {
    if (state != 5)
    {
      if (state != 4)
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

- (id)rootViewConfigurationForState:(int64_t)state
{
  v5 = +[_SUIAShockwaveRootViewConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v5 state:state];
  if (!v6)
  {
    v6 = objc_alloc_init(_SUIAShockwaveRootViewConfiguration);
    [(_SUIAShockwaveRootViewConfiguration *)v6 _setHidden:state == 3];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v5 state:state];
  }

  return v6;
}

- (id)_configurationForType:(int64_t)type state:(int64_t)state
{
  configurations = self->_configurations;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)configurations objectForKey:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v9 = [v7 objectForKey:v8];

  return v9;
}

- (void)_setConfiguration:(id)configuration forType:(int64_t)type state:(int64_t)state
{
  configurations = self->_configurations;
  v9 = MEMORY[0x277CCABB0];
  configurationCopy = configuration;
  v11 = [v9 numberWithInteger:type];
  dictionary = [(NSMutableDictionary *)configurations objectForKey:v11];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = self->_configurations;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(NSMutableDictionary *)v12 setObject:dictionary forKey:v13];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [dictionary setObject:configurationCopy forKey:v14];
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