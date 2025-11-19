@interface _UISidebarPlatformMetrics
- (NSDirectionalEdgeInsets)platterInsets;
- (_UISidebarPlatformMetrics)init;
- (_UISidebarWidths)inspectorWidthMetrics;
- (_UISidebarWidths)narrowWidthMetrics;
- (_UISidebarWidths)wideWidthMetrics;
@end

@implementation _UISidebarPlatformMetrics

- (_UISidebarPlatformMetrics)init
{
  v5.receiver = self;
  v5.super_class = _UISidebarPlatformMetrics;
  v2 = [(_UISidebarPlatformMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UISidebarPlatformMetrics *)v2 setFallbackCornerRadius:0.0];
    [(_UISidebarPlatformMetrics *)v3 setPlatterInsets:0.0, 0.0, 0.0, 0.0];
    [(_UISidebarPlatformMetrics *)v3 setNarrowWidthMetrics:320.0, 320.0, 320.0];
    [(_UISidebarPlatformMetrics *)v3 setWideWidthMetrics:320.0, 320.0, 320.0];
    [(_UISidebarPlatformMetrics *)v3 setInspectorWidthMetrics:320.0, 320.0, 320.0];
  }

  return v3;
}

- (NSDirectionalEdgeInsets)platterInsets
{
  top = self->_platterInsets.top;
  leading = self->_platterInsets.leading;
  bottom = self->_platterInsets.bottom;
  trailing = self->_platterInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (_UISidebarWidths)narrowWidthMetrics
{
  minimum = self->_narrowWidthMetrics.minimum;
  preferred = self->_narrowWidthMetrics.preferred;
  maximum = self->_narrowWidthMetrics.maximum;
  result.maximum = maximum;
  result.preferred = preferred;
  result.minimum = minimum;
  return result;
}

- (_UISidebarWidths)wideWidthMetrics
{
  minimum = self->_wideWidthMetrics.minimum;
  preferred = self->_wideWidthMetrics.preferred;
  maximum = self->_wideWidthMetrics.maximum;
  result.maximum = maximum;
  result.preferred = preferred;
  result.minimum = minimum;
  return result;
}

- (_UISidebarWidths)inspectorWidthMetrics
{
  minimum = self->_inspectorWidthMetrics.minimum;
  preferred = self->_inspectorWidthMetrics.preferred;
  maximum = self->_inspectorWidthMetrics.maximum;
  result.maximum = maximum;
  result.preferred = preferred;
  result.minimum = minimum;
  return result;
}

@end