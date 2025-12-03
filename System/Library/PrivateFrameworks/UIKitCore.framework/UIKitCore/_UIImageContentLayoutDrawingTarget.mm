@interface _UIImageContentLayoutDrawingTarget
+ (id)targetWithSize:(double)size scale:;
- (CGRect)bounds;
- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)source;
- (id)_effectsForRenderingSource:(id)source size:(CGSize)size symbolConfiguration:(id)configuration renditionContext:(id)context;
- (id)_renditionForSource:(id)source effects:(id)effects size:(CGSize)size symbolConfiguration:(id)configuration withContentProvider:(id)provider;
@end

@implementation _UIImageContentLayoutDrawingTarget

+ (id)targetWithSize:(double)size scale:
{
  objc_opt_self();
  v6 = objc_opt_new();
  if (v6)
  {
    *(v6 + 16) = *MEMORY[0x1E695EFF8];
    *(v6 + 32) = self;
    *(v6 + 40) = a2;
    *(v6 + 8) = size;
  }

  return v6;
}

- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)source
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_effectsForRenderingSource:(id)source size:(CGSize)size symbolConfiguration:(id)configuration renditionContext:(id)context
{
  sourceCopy = source;
  configurationCopy = configuration;
  _colorForFlattening = [sourceCopy _colorForFlattening];
  if (!_colorForFlattening)
  {
    if (-[_UIImageContentLayoutDrawingTarget _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", sourceCopy, configurationCopy) == 2 && (![configurationCopy _hasSpecifiedHierarchicalColors] || (objc_msgSend(sourceCopy, "_isHierarchicalColorSymbolImage") & 1) == 0))
    {
      if ([configurationCopy _hasSpecifiedPaletteColors])
      {
        _colors = [configurationCopy _colors];
        if ([_colors count] > 1)
        {
          _isPaletteColorSymbolImage = [sourceCopy _isPaletteColorSymbolImage];

          _colorForFlattening = 0;
          if (!configurationCopy || (_isPaletteColorSymbolImage & 1) != 0)
          {
            goto LABEL_15;
          }

          goto LABEL_12;
        }
      }

      if (configurationCopy)
      {
LABEL_12:
        if (configurationCopy[7])
        {
          _colors2 = [configurationCopy _colors];
          _colorForFlattening = [_colors2 firstObject];

          goto LABEL_15;
        }
      }
    }

    _colorForFlattening = 0;
  }

LABEL_15:
  v14 = [_UIImageContentRenditionEffects effectsWithTintColor:_colorForFlattening visualEffects:0 drawMode:0 bold:0];

  return v14;
}

- (id)_renditionForSource:(id)source effects:(id)effects size:(CGSize)size symbolConfiguration:(id)configuration withContentProvider:(id)provider
{
  providerCopy = provider;
  if (effects)
  {
    v9 = *(effects + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [_UIImageContentRendition renditionWithContentProvider:providerCopy color:v10];

  return v11;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end