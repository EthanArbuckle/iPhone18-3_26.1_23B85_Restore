@interface _UIImageContentRenditionContext
+ (id)contextWithRenderEnvironment:(void *)a3 source:;
- (BOOL)_shouldResolveHierarchicalColors;
- (BOOL)_shouldResolveNamedColorStyles;
- (BOOL)_shouldResolvePaletteColors;
- (BOOL)_shouldResolveTemplateColor:(id *)a1;
- (double)variableValue;
- (id)_renderingEffectsWithSize:(double)a3;
- (id)_renditionWithContentProvider:(void *)a3 effects:(double)a4 size:(double)a5;
- (id)_resolvedColorForNamedStyle:(id *)a1;
- (id)_resolvedHierarchicalColorForLayerLevel:(id *)a1;
- (id)_resolvedPaletteColors;
- (id)traitCollectionForResolvingDynamicColors;
- (id)vectorGlyph;
@end

@implementation _UIImageContentRenditionContext

- (id)traitCollectionForResolvingDynamicColors
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
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
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = objc_loadWeakRetained((a1 + 24));
  v4 = v3;
  v5 = 0;
  if (v3 && WeakRetained)
  {
    if ([v3 _isMultiColorSymbolImage] && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v4, *(a1 + 8)) == 1)
    {
      v6 = [v4 _colorForFlattening];
      v5 = v6 == 0;
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
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 2);
  v3 = objc_loadWeakRetained(a1 + 3);
  v4 = 0;
  if (v3 && WeakRetained)
  {
    if ([a1[1] _hasSpecifiedHierarchicalColors] && objc_msgSend(v3, "_isHierarchicalColorSymbolImage") && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v3, a1[1]) == 2)
    {
      v5 = [v3 _colorForFlattening];
      v4 = v5 == 0;
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
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 2);
  v3 = objc_loadWeakRetained(a1 + 3);
  v4 = 0;
  if (v3 && WeakRetained)
  {
    if ([a1[1] _hasSpecifiedPaletteColors])
    {
      v5 = [a1[1] _colors];
      if ([v5 count] >= 2 && objc_msgSend(v3, "_isPaletteColorSymbolImage") && objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v3, a1[1]) == 2)
      {
        v6 = [v3 _colorForFlattening];
        v4 = v6 == 0;
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
  if (a1)
  {
    a1 = [a1[1] _paletteColorsWithRenditionContext:a1 resolveDynamicColors:1];
    v1 = vars8;
  }

  return a1;
}

+ (id)contextWithRenderEnvironment:(void *)a3 source:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  objc_storeWeak((v6 + 16), v5);
  objc_storeWeak((v6 + 24), v4);
  v7 = [v5 _symbolConfigurationForSource:v4];

  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  return v6;
}

- (id)_renderingEffectsWithSize:(double)a3
{
  v3 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v7 = objc_loadWeakRetained(v3 + 3);
    if (v7 && WeakRetained)
    {
      v8 = [WeakRetained _effectsForRenderingSource:v7 size:v3[1] symbolConfiguration:v3 renditionContext:{a2, a3}];
    }

    else
    {
      v8 = [_UIImageContentRenditionEffects effectsWithTintColor:0 visualEffects:0 drawMode:0 bold:?];
    }

    v3 = v8;
  }

  return v3;
}

- (id)_renditionWithContentProvider:(void *)a3 effects:(double)a4 size:(double)a5
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v12 = objc_loadWeakRetained((a1 + 24));
    if (v12 && WeakRetained)
    {
      v13 = [WeakRetained _renditionForSource:v12 effects:v10 size:*(a1 + 8) symbolConfiguration:v9 withContentProvider:{a4, a5}];
    }

    else
    {
      v13 = [_UIImageContentRendition renditionWithContentProvider:v9];
    }

    a1 = v13;
  }

  return a1;
}

- (id)vectorGlyph
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v2 = WeakRetained;
    if (WeakRetained)
    {
      v3 = [WeakRetained content];
      v4 = [v3 vectorGlyph];
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

  return v4;
}

- (double)variableValue
{
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
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

- (id)_resolvedColorForNamedStyle:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] _colorForNamedStyle:a2 renditionContext:a1 resolveDynamicColors:1];
    v2 = vars8;
  }

  return a1;
}

- (id)_resolvedHierarchicalColorForLayerLevel:(id *)a1
{
  if (a1)
  {
    a1 = [a1[1] _hierarchicalColorForLayerLevel:a2 renditionContext:a1 resolveDynamicColors:1];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)_shouldResolveTemplateColor:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 2);
  v5 = objc_loadWeakRetained(a1 + 3);
  v6 = v5;
  v7 = 0;
  if (a2 && v5 && WeakRetained)
  {
    if (-[_UIImageContentRenditionContext _shouldResolveNamedColorStyles](a1) || -[_UIImageContentRenditionContext _shouldResolveHierarchicalColors](a1) || -[_UIImageContentRenditionContext _shouldResolvePaletteColors](a1) || [a1[1] colorRenderingMode] != 2 || !objc_msgSend(v6, "_isMonochromeColorSymbolImage") || objc_msgSend(WeakRetained, "_effectiveRenderingModeForSource:symbolConfiguration:", v6, a1[1]) != 2)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v6 _colorForFlattening];
      v7 = v8 == 0;
    }
  }

  return v7;
}

@end