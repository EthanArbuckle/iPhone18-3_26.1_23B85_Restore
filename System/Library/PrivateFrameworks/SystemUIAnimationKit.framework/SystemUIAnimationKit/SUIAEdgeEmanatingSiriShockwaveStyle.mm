@interface SUIAEdgeEmanatingSiriShockwaveStyle
- (SUIAEdgeEmanatingSiriShockwaveStyle)initWithEdge:(unint64_t)edge shockwaveViewBounds:(CGRect)bounds;
- (id)chromaticAberrationConfigurationForState:(int64_t)state;
- (id)fillLightConfigurationForState:(int64_t)state;
- (id)meshConfigurationForState:(int64_t)state;
@end

@implementation SUIAEdgeEmanatingSiriShockwaveStyle

- (SUIAEdgeEmanatingSiriShockwaveStyle)initWithEdge:(unint64_t)edge shockwaveViewBounds:(CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = SUIAEdgeEmanatingSiriShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v6 initWithShockwaveViewBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_edge = edge;
  }

  return result;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings siriEdgeChromaticAberrationEnabled])
  {
    v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveChromaticAberrationConfiguration chromaticAberrationConfigurationForState:state variant:2 buttonEmanating:0 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
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
    if (([_shockwaveSettings siriEdgeMeshEnabledLargeScreen] & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_7;
    }
  }

  else if (![_shockwaveSettings siriEdgeMeshEnabled])
  {
    goto LABEL_3;
  }

  v7 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v7 state:state];
  if (!v6)
  {
    v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v6 = [_SUIAShockwaveMeshConfiguration meshConfigurationForState:state variant:2 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v7 state:state];
  }

LABEL_7:

  return v6;
}

- (id)fillLightConfigurationForState:(int64_t)state
{
  _shockwaveSettings = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([_shockwaveSettings siriEdgeFillLightEnabled])
  {
    v6 = +[_SUIAShockwaveFillLightConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
    if (!v7)
    {
      v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:state variant:2 normalizedStartLocation:_shockwaveSettings settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
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