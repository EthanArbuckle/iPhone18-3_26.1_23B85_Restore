@interface _UIInterfaceActionRepresentationViewContext_GlassAppleTV
- (BOOL)_useConcentricFocusIncrease;
- (CGSize)asymmetricalFocusSizeIncrease;
- (_UIInterfaceActionRepresentationViewContext_GlassAppleTV)initWithHighlightTransformTargetView:(id)a3;
- (id)__actionContentView;
- (id)__backgroundHighlightView;
- (id)_targetBackgroundView;
- (id)_targetContentView;
- (void)_applyHighlightTransform;
@end

@implementation _UIInterfaceActionRepresentationViewContext_GlassAppleTV

- (_UIInterfaceActionRepresentationViewContext_GlassAppleTV)initWithHighlightTransformTargetView:(id)a3
{
  v11.receiver = self;
  v11.super_class = _UIInterfaceActionRepresentationViewContext_GlassAppleTV;
  v3 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)&v11 initWithHighlightTransformTargetView:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIInterfaceActionRepresentationViewContext_AppleTV *)v3 setFocusedSizeIncrease:30.0];
    __asm { FMOV            V0.2D, #8.0 }

    v4->_asymmetricalFocusSizeIncrease = _Q0;
  }

  return v4;
}

- (void)_applyHighlightTransform
{
  if ([(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self _useConcentricFocusIncrease])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84___UIInterfaceActionRepresentationViewContext_GlassAppleTV__applyHighlightTransform__block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    if (+[UIView _isInAnimationBlock])
    {
      v3[2](v3);
    }

    else
    {
      v4 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlighted];
      v5 = 0.2;
      if (v4)
      {
        v5 = 0.1;
      }

      [UIView animateWithDuration:6 delay:v3 options:0 animations:v5 completion:0.0];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIInterfaceActionRepresentationViewContext_GlassAppleTV;
    [(_UIInterfaceActionRepresentationViewContext_AppleTV *)&v6 _applyHighlightTransform];
  }
}

- (id)_targetBackgroundView
{
  v3 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  if (v3 && (v4 = v3, [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  }

  else
  {
    v6 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  }

  return v6;
}

- (id)_targetContentView
{
  v3 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView];

    if (v5)
    {
      v3 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)__backgroundHighlightView
{
  v3 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
    v6 = [v5 backgroundHighlightView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)__actionContentView
{
  v3 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
    v6 = [v5 _actionContentView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_useConcentricFocusIncrease
{
  v2 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self _targetContentView];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)asymmetricalFocusSizeIncrease
{
  width = self->_asymmetricalFocusSizeIncrease.width;
  height = self->_asymmetricalFocusSizeIncrease.height;
  result.height = height;
  result.width = width;
  return result;
}

@end