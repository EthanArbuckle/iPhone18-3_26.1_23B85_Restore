@interface SUIAButtonEmanatingCaptureShockwaveStyle
- (SUIAButtonEmanatingCaptureShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)location shockwaveViewBounds:(CGRect)bounds;
- (id)chromaticAberrationConfigurationForState:(int64_t)state;
- (id)fillLightConfigurationForState:(int64_t)state;
- (id)meshConfigurationForState:(int64_t)state;
@end

@implementation SUIAButtonEmanatingCaptureShockwaveStyle

- (SUIAButtonEmanatingCaptureShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)location shockwaveViewBounds:(CGRect)bounds
{
  height = location.size.height;
  width = location.size.width;
  y = location.origin.y;
  x = location.origin.x;
  v9.receiver = self;
  v9.super_class = SUIAButtonEmanatingCaptureShockwaveStyle;
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
  captureChromaticAberrationEnabled = [_shockwaveSettings captureChromaticAberrationEnabled];

  if (captureChromaticAberrationEnabled)
  {
    v7 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
    v8 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v7 state:state];
    if (!v8)
    {
      _shockwaveSettings2 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v8 = [_SUIAShockwaveChromaticAberrationConfiguration chromaticAberrationConfigurationForState:state variant:0 buttonEmanating:1 normalizedStartLocation:_shockwaveSettings2 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v10, v11, v12, v13];

      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v8 forType:v7 state:state];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)meshConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings captureMeshEnabled])
  {
    v6 = +[_SUIAShockwaveMeshConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveMeshConfiguration meshConfigurationForState:state variant:0 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fillLightConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  v6 = +[_SUIAShockwaveFillLightConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
  if (!v7)
  {
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v7 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:state variant:0 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
  }

  return v7;
}

@end