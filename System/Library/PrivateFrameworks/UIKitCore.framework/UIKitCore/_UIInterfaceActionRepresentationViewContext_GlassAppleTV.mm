@interface _UIInterfaceActionRepresentationViewContext_GlassAppleTV
- (BOOL)_useConcentricFocusIncrease;
- (CGSize)asymmetricalFocusSizeIncrease;
- (_UIInterfaceActionRepresentationViewContext_GlassAppleTV)initWithHighlightTransformTargetView:(id)view;
- (id)__actionContentView;
- (id)__backgroundHighlightView;
- (id)_targetBackgroundView;
- (id)_targetContentView;
- (void)_applyHighlightTransform;
@end

@implementation _UIInterfaceActionRepresentationViewContext_GlassAppleTV

- (_UIInterfaceActionRepresentationViewContext_GlassAppleTV)initWithHighlightTransformTargetView:(id)view
{
  v11.receiver = self;
  v11.super_class = _UIInterfaceActionRepresentationViewContext_GlassAppleTV;
  v3 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)&v11 initWithHighlightTransformTargetView:view];
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
      highlighted = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlighted];
      v5 = 0.2;
      if (highlighted)
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
  __backgroundHighlightView = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  if (__backgroundHighlightView && (v4 = __backgroundHighlightView, [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    __backgroundHighlightView2 = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  }

  else
  {
    __backgroundHighlightView2 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  }

  return __backgroundHighlightView2;
}

- (id)_targetContentView
{
  __backgroundHighlightView = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __backgroundHighlightView];
  if (__backgroundHighlightView)
  {
    v4 = __backgroundHighlightView;
    __actionContentView = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView];

    if (__actionContentView)
    {
      __backgroundHighlightView = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self __actionContentView];
    }

    else
    {
      __backgroundHighlightView = 0;
    }
  }

  return __backgroundHighlightView;
}

- (id)__backgroundHighlightView
{
  highlightTransformTargetView = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    highlightTransformTargetView2 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
    backgroundHighlightView = [highlightTransformTargetView2 backgroundHighlightView];
  }

  else
  {
    backgroundHighlightView = 0;
  }

  return backgroundHighlightView;
}

- (id)__actionContentView
{
  highlightTransformTargetView = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    highlightTransformTargetView2 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self highlightTransformTargetView];
    _actionContentView = [highlightTransformTargetView2 _actionContentView];
  }

  else
  {
    _actionContentView = 0;
  }

  return _actionContentView;
}

- (BOOL)_useConcentricFocusIncrease
{
  _targetContentView = [(_UIInterfaceActionRepresentationViewContext_GlassAppleTV *)self _targetContentView];
  v3 = _targetContentView != 0;

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