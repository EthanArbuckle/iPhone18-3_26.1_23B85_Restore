@interface SUIAButtonEmanatingSiriShockwaveStyle
- (SUIAButtonEmanatingSiriShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)a3 shockwaveViewBounds:(CGRect)a4;
- (id)chromaticAberrationConfigurationForState:(int64_t)a3;
- (id)edgeLightOverlayConfigurationForState:(int64_t)a3;
- (id)fillLightConfigurationForState:(int64_t)a3;
- (id)meshConfigurationForState:(int64_t)a3;
@end

@implementation SUIAButtonEmanatingSiriShockwaveStyle

- (SUIAButtonEmanatingSiriShockwaveStyle)initWithNormalizedButtonEdgeLocation:(CGRect)a3 shockwaveViewBounds:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = SUIAButtonEmanatingSiriShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v9 initWithShockwaveViewBounds:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (result)
  {
    result->_normalizedButtonLocation.origin.x = x;
    result->_normalizedButtonLocation.origin.y = y;
    result->_normalizedButtonLocation.size.width = width;
    result->_normalizedButtonLocation.size.height = height;
  }

  return result;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 siriButtonChromaticAberrationEnabled])
  {
    v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveChromaticAberrationConfiguration chromaticAberrationConfigurationForState:a3 variant:1 buttonEmanating:1 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)meshConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 shouldBehaveLikeLargeScreenIdiom:{-[SUIAAbstractShockwaveStyle userInterfaceIdiom](self, "userInterfaceIdiom")}])
  {
    if (([v5 siriButtonMeshEnabledLargeScreen] & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_7;
    }
  }

  else if (![v5 siriButtonMeshEnabled])
  {
    goto LABEL_3;
  }

  v7 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v7 state:a3];
  if (!v6)
  {
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v6 = [_SUIAShockwaveMeshConfiguration meshConfigurationForState:a3 variant:1 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v7 state:a3];
  }

LABEL_7:

  return v6;
}

- (id)fillLightConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 siriButtonFillLightEnabled])
  {
    v6 = +[_SUIAShockwaveFillLightConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:a3 variant:1 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:self->_normalizedButtonLocation.origin.x usesIntelligentFillLight:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)edgeLightOverlayConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 siriButtonEdgeLightEnabled])
  {
    v6 = +[_SUIAShockwaveEdgeLightOverlayConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
    if (!v7)
    {
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveEdgeLightOverlayConfiguration edgeLightOverlayConfigurationForState:a3 variant:1 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:self->_normalizedButtonLocation.origin.x idiom:self->_normalizedButtonLocation.origin.y, self->_normalizedButtonLocation.size.width, self->_normalizedButtonLocation.size.height, v8, v9, v10, v11];
      [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end