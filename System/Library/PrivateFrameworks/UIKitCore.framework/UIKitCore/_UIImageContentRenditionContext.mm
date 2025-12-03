@interface _UIImageContentRenditionContext
+ (id)contextWithRenderEnvironment:(void *)environment source:;
- (BOOL)_shouldResolveHierarchicalColors;
- (BOOL)_shouldResolveNamedColorStyles;
- (BOOL)_shouldResolvePaletteColors;
- (BOOL)_shouldResolveTemplateColor:(id *)color;
- (double)variableValue;
- (id)_renderingEffectsWithSize:(double)size;
- (id)_renditionWithContentProvider:(void *)provider effects:(double)effects size:(double)size;
- (id)_resolvedColorForNamedStyle:(id *)style;
- (id)_resolvedHierarchicalColorForLayerLevel:(id *)level;
- (id)_resolvedPaletteColors;
- (id)traitCollectionForResolvingDynamicColors;
- (id)vectorGlyph;
@end

@implementation _UIImageContentRenditionContext

- (id)traitCollectionForResolvingDynamicColors
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    v2 = WeakRetained;
    if (!WeakRetained || ([WeakRetained traitCollection], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = +[UITraitCollection currentTraitCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldResolveNamedColorStyles
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 16));
  v3 = objc_loadWeakRetained((self + 24));
  v4 = v3;
  v5 = 0;
  if (v3 && WeakRetained)
  {
    if ([v3 _isMultiColorSymbolImage] && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v4, *(self + 8)) == 1)
    {
      _colorForFlattening = [v4 _colorForFlattening];
      v5 = _colorForFlattening == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_shouldResolveHierarchicalColors
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(self + 2);
  v3 = objc_loadWeakRetained(self + 3);
  v4 = 0;
  if (v3 && WeakRetained)
  {
    if ([self[1] _hasSpecifiedHierarchicalColors] && objc_msgSend(v3, "_isHierarchicalColorSymbolImage") && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v3, self[1]) == 2)
    {
      _colorForFlattening = [v3 _colorForFlattening];
      v4 = _colorForFlattening == 0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_shouldResolvePaletteColors
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(self + 2);
  v3 = objc_loadWeakRetained(self + 3);
  v4 = 0;
  if (v3 && WeakRetained)
  {
    if ([self[1] _hasSpecifiedPaletteColors])
    {
      _colors = [self[1] _colors];
      if ([_colors count] >= 2 && objc_msgSend(v3, "_isPaletteColorSymbolImage") && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v3, self[1]) == 2)
      {
        _colorForFlattening = [v3 _colorForFlattening];
        v4 = _colorForFlattening == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_resolvedPaletteColors
{
  if (self)
  {
    self = [self[1] _paletteColorsWithRenditionContext:self resolveDynamicColors:1];
    v1 = vars8;
  }

  return self;
}

+ (id)contextWithRenderEnvironment:(void *)environment source:
{
  environmentCopy = environment;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  objc_storeWeak((v6 + 16), v5);
  objc_storeWeak((v6 + 24), environmentCopy);
  v7 = [v5 _symbolConfigurationForSource:environmentCopy];

  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  return v6;
}

- (id)_renderingEffectsWithSize:(double)size
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 2);
    v7 = objc_loadWeakRetained(selfCopy + 3);
    if (v7 && WeakRetained)
    {
      v8 = [WeakRetained _effectsForRenderingSource:v7 size:selfCopy[1] symbolConfiguration:selfCopy renditionContext:{a2, size}];
    }

    else
    {
      v8 = [_UIImageContentRenditionEffects effectsWithTintColor:0 visualEffects:0 drawMode:0 bold:?];
    }

    selfCopy = v8;
  }

  return selfCopy;
}

- (id)_renditionWithContentProvider:(void *)provider effects:(double)effects size:(double)size
{
  v9 = a2;
  providerCopy = provider;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    v12 = objc_loadWeakRetained((self + 24));
    if (v12 && WeakRetained)
    {
      v13 = [WeakRetained _renditionForSource:v12 effects:providerCopy size:*(self + 8) symbolConfiguration:v9 withContentProvider:{effects, size}];
    }

    else
    {
      v13 = [_UIImageContentRendition renditionWithContentProvider:v9];
    }

    self = v13;
  }

  return self;
}

- (id)vectorGlyph
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    v2 = WeakRetained;
    if (WeakRetained)
    {
      content = [WeakRetained content];
      vectorGlyph = [content vectorGlyph];
    }

    else
    {
      vectorGlyph = 0;
    }
  }

  else
  {
    vectorGlyph = 0;
  }

  return vectorGlyph;
}

- (double)variableValue
{
  if (!self)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((self + 24));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained variableValue];
    v4 = v3;
  }

  else
  {
    v4 = INFINITY;
  }

  return v4;
}

- (id)_resolvedColorForNamedStyle:(id *)style
{
  if (style)
  {
    style = [style[1] _colorForNamedStyle:a2 renditionContext:style resolveDynamicColors:1];
    v2 = vars8;
  }

  return style;
}

- (id)_resolvedHierarchicalColorForLayerLevel:(id *)level
{
  if (level)
  {
    level = [level[1] _hierarchicalColorForLayerLevel:a2 renditionContext:level resolveDynamicColors:1];
    v2 = vars8;
  }

  return level;
}

- (BOOL)_shouldResolveTemplateColor:(id *)color
{
  if (!color)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(color + 2);
  v5 = objc_loadWeakRetained(color + 3);
  v6 = v5;
  v7 = 0;
  if (a2 && v5 && WeakRetained)
  {
    if (-[_UIImageContentRenditionContext _shouldResolveNamedColorStyles](color) || -[_UIImageContentRenditionContext _shouldResolveHierarchicalColors](color) || -[_UIImageContentRenditionContext _shouldResolvePaletteColors](color) || [color[1] colorRenderingMode] != 2 || !objc_msgSend(v6, "_isMonochromeColorSymbolImage") || objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v6, color[1]) != 2)
    {
      v7 = 0;
    }

    else
    {
      _colorForFlattening = [v6 _colorForFlattening];
      v7 = _colorForFlattening == 0;
    }
  }

  return v7;
}

@end