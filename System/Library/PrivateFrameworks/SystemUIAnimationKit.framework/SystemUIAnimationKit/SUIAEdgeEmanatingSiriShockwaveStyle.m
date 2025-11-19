@interface SUIAEdgeEmanatingSiriShockwaveStyle
- (SUIAEdgeEmanatingSiriShockwaveStyle)initWithEdge:(unint64_t)a3 shockwaveViewBounds:(CGRect)a4;
- (id)chromaticAberrationConfigurationForState:(int64_t)a3;
- (id)fillLightConfigurationForState:(int64_t)a3;
- (id)meshConfigurationForState:(int64_t)a3;
@end

@implementation SUIAEdgeEmanatingSiriShockwaveStyle

- (SUIAEdgeEmanatingSiriShockwaveStyle)initWithEdge:(unint64_t)a3 shockwaveViewBounds:(CGRect)a4
{
  v6.receiver = self;
  v6.super_class = SUIAEdgeEmanatingSiriShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v6 initWithShockwaveViewBounds:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (result)
  {
    result->_edge = a3;
  }

  return result;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 siriEdgeChromaticAberrationEnabled])
  {
    v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
    if (!v7)
    {
      v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveChromaticAberrationConfiguration chromaticAberrationConfigurationForState:a3 variant:2 buttonEmanating:0 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
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
    if (([v5 siriEdgeMeshEnabledLargeScreen] & 1) == 0)
    {
LABEL_3:
      v6 = 0;
      goto LABEL_7;
    }
  }

  else if (![v5 siriEdgeMeshEnabled])
  {
    goto LABEL_3;
  }

  v7 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v7 state:a3];
  if (!v6)
  {
    v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v6 = [_SUIAShockwaveMeshConfiguration meshConfigurationForState:a3 variant:2 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v7 state:a3];
  }

LABEL_7:

  return v6;
}

- (id)fillLightConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _shockwaveSettings];
  if ([v5 siriEdgeFillLightEnabled])
  {
    v6 = +[_SUIAShockwaveFillLightConfiguration configurationType];
    v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
    if (!v7)
    {
      v8 = SUIANormalizedRectSpanningRectEdge(self->_edge);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
      v7 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:a3 variant:2 normalizedStartLocation:v5 settings:[(SUIAAbstractShockwaveStyle *)self userInterfaceIdiom] bounds:[(SUIAAbstractShockwaveStyle *)self usesIntelligentFillLight] idiom:v8 usesIntelligentFillLight:v10, v12, v14, v15, v16, v17, v18];
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