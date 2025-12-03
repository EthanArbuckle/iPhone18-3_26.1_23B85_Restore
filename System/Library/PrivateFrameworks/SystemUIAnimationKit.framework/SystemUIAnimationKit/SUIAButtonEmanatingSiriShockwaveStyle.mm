@interface SUIAButtonEmanatingSiriShockwaveStyle
- (SUIAButtonEmanatingSiriShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)location shockwaveViewBounds:(CGRect)bounds;
- (id)chromaticAberrationConfigurationForState:(int64_t)state;
- (id)edgeLightOverlayConfigurationForState:(int64_t)state;
- (id)fillLightConfigurationForState:(int64_t)state;
- (id)meshConfigurationForState:(int64_t)state;
@end

@implementation SUIAButtonEmanatingSiriShockwaveStyle

- (SUIAButtonEmanatingSiriShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)location shockwaveViewBounds:(CGRect)bounds
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  v9.receiver = self;
  v9.super_class = SUIAButtonEmanatingSiriShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v9 initWithShockwaveViewBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_normalizedButtonLocation.origin.x = x;
    result->_normalizedButtonLocation.origin.y = y;
    result->_normalizedButtonLocation.size.width = width;
    result->_normalizedButtonLocation.size.height = height;
  }

  return result;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings siriButtonChromaticAberrationEnabled])
  {
    v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveChromaticAberrationConfiguration chromaticAberrationConfigurationForState:state variant:1 buttonEmanating:1 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)meshConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings shouldBehaveLikeLargeScreenIdiom:{-[SUIAAbstractShockwaveStyle userInterfaceIdiom](self, "userInterfaceIdiom")}])
  {
    if (([_shockwaveSettings siriButtonMeshEnabledLargeScreen] & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_7;
    }
  }

  else if (![_shockwaveSettings siriButtonMeshEnabled])
  {
    goto LABEL_3;
  }

  v7 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v7 state:state];
  if (!v6)
  {
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v6 = [_SUIAShockwaveMeshConfiguration meshConfigurationForState:state variant:1 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v7 state:state];
  }

LABEL_7:

  return v6;
}

- (id)fillLightConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings siriButtonFillLightEnabled])
  {
    v6 = +[_SUIAShockwaveFillLightConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:state variant:1 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)edgeLightOverlayConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings siriButtonEdgeLightEnabled])
  {
    v6 = +[_SUIAShockwaveEdgeLightOverlayConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveEdgeLightOverlayConfiguration edgeLightOverlayConfigurationForState:state variant:1 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:self->_normalizedButtonLocation.origin.x idiom:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end