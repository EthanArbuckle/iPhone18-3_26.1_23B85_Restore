@interface _UIImageContentLayoutDrawingTarget
+ (id)targetWithSize:(double)a3 scale:;
- (CGRect)bounds;
- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)a3;
- (id)_effectsForRenderingSource:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5 renditionContext:(id)a6;
- (id)_renditionForSource:(id)a3 effects:(id)a4 size:(CGSize)a5 symbolConfiguration:(id)a6 withContentProvider:(id)a7;
@end

@implementation _UIImageContentLayoutDrawingTarget

+ (id)targetWithSize:(double)a3 scale:
{
  objc_opt_self();
  v6 = objc_opt_new();
  if (v6)
  {
    *(v6 + 16) = *MEMORY[0x1E695EFF8];
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    *(v6 + 8) = a3;
  }

  return v6;
}

- (UIEdgeInsets)_additionalAlignmentRectInsetsForRenderingSource:(id)a3
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

- (id)_effectsForRenderingSource:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5 renditionContext:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 _colorForFlattening];
  if (!v10)
  {
    if (-[_UIImageContentLayoutDrawingTarget _effectiveRenderingModeForSource:symbolConfiguration:](self, "_effectiveRenderingModeForSource:symbolConfiguration:", v8, v9) == 2 && (![v9 _hasSpecifiedHierarchicalColors] || (objc_msgSend(v8, "_isHierarchicalColorSymbolImage") & 1) == 0))
    {
      if ([v9 _hasSpecifiedPaletteColors])
      {
        v11 = [v9 _colors];
        if ([v11 count] > 1)
        {
          v12 = [v8 _isPaletteColorSymbolImage];

          v10 = 0;
          if (!v9 || (v12 & 1) != 0)
          {
            goto LABEL_15;
          }

          goto LABEL_12;
        }
      }

      if (v9)
      {
LABEL_12:
        if (v9[7])
        {
          v13 = [v9 _colors];
          v10 = [v13 firstObject];

          goto LABEL_15;
        }
      }
    }

    v10 = 0;
  }

LABEL_15:
  v14 = [_UIImageContentRenditionEffects effectsWithTintColor:v10 visualEffects:0 drawMode:0 bold:0];

  return v14;
}

- (id)_renditionForSource:(id)a3 effects:(id)a4 size:(CGSize)a5 symbolConfiguration:(id)a6 withContentProvider:(id)a7
{
  v8 = a7;
  if (a4)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [_UIImageContentRendition renditionWithContentProvider:v8 color:v10];

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