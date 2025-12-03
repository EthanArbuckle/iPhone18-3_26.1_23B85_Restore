@interface UITextHighlightView
+ (id)preferredPreviewParametersForTextLineRects:(id)rects;
- (UITextHighlightView)initWithPreviewProvider:(id)provider;
- (id)_fillEffect;
- (void)_updateWithPreviewParameters:(id)parameters;
- (void)animateWithCompletion:(id)completion;
- (void)fadeAwayWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setFillColor:(id)color;
- (void)setOverriddenPreviewParameters:(id)parameters;
@end

@implementation UITextHighlightView

+ (id)preferredPreviewParametersForTextLineRects:(id)rects
{
  v20 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = rectsCopy;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v15 + 1) + 8 * i) CGRectValue];
          v8 = v8 + CGRectGetHeight(v22);
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v10 = v8 / [v4 count];
  }

  else
  {
    v10 = 12.0;
  }

  v11 = v10 * 0.25;
  v12 = v10 * -0.2 * 0.5;
  v13 = [[UIPreviewParameters alloc] initWithTextLineRects:rectsCopy];
  [(UIPreviewParameters *)v13 _setTextPathCornerRadius:v11];
  [(UIPreviewParameters *)v13 _setTextPathInsets:v12, -4.0, v12, -4.0];

  return v13;
}

- (UITextHighlightView)initWithPreviewProvider:(id)provider
{
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = UITextHighlightView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(UIView *)&v25 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  if (v9)
  {
    v10 = _Block_copy(providerCopy);
    previewProvider = v9->_previewProvider;
    v9->_previewProvider = v10;

    v12 = [[_UITextHighlightBackgroundView alloc] initWithFrame:v5, v6, v7, v8];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v12;

    [(UIView *)v9 addSubview:v9->_backgroundView];
    layer = [MEMORY[0x1E69794A0] layer];
    contentClippingMaskLayer = v9->_contentClippingMaskLayer;
    v9->_contentClippingMaskLayer = layer;

    v16 = _UIGetTextHighlightFillColor();
    fillColor = v9->_fillColor;
    v9->_fillColor = v16;

    v18 = [UIVisualEffectView alloc];
    _fillEffect = [(UITextHighlightView *)v9 _fillEffect];
    v20 = [(UIVisualEffectView *)v18 initWithEffect:_fillEffect];
    contentClippingEffectView = v9->_contentClippingEffectView;
    v9->_contentClippingEffectView = v20;

    [(UIView *)v9->_contentClippingEffectView setClipsToBounds:1];
    v22 = v9->_contentClippingMaskLayer;
    layer2 = [(UIView *)v9->_contentClippingEffectView layer];
    [layer2 setMask:v22];

    [(UIView *)v9 addSubview:v9->_contentClippingEffectView];
  }

  return v9;
}

- (id)_fillEffect
{
  fillColor = [(UITextHighlightView *)self fillColor];
  v3 = [UIColorEffect colorEffectMonochromeTint:fillColor blendingAmount:1.0 brightnessAdjustment:0.25];

  return v3;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = _UIGetTextHighlightFillColor();
  }

  obj = colorCopy;
  if (![(UIColor *)self->_fillColor isEqual:colorCopy])
  {
    objc_storeStrong(&self->_fillColor, obj);
    v5 = obj;
    cGColor = [obj CGColor];
    highlightLayer = [(_UITextHighlightBackgroundView *)self->_backgroundView highlightLayer];
    [highlightLayer setFillColor:cGColor];

    _fillEffect = [(UITextHighlightView *)self _fillEffect];
    [(UIVisualEffectView *)self->_contentClippingEffectView setEffect:_fillEffect];
  }
}

- (void)animateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(UIView *)self setAlpha:1.0];
  CGAffineTransformMakeScale(&v10, 1.2, 1.2);
  v9 = v10;
  [(UIView *)self setTransform:&v9];
  v7 = completionCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__UITextHighlightView_animateWithCompletion___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__UITextHighlightView_animateWithCompletion___block_invoke_2;
  v6[3] = &unk_1E70F3608;
  v5 = completionCopy;
  [UIView animateWithDuration:2048 delay:v8 options:v6 animations:0.15 completion:0.0];
}

uint64_t __45__UITextHighlightView_animateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __45__UITextHighlightView_animateWithCompletion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)fadeAwayWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__UITextHighlightView_fadeAwayWithCompletion___block_invoke;
  v7[3] = &unk_1E70F3590;
  v7[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UITextHighlightView_fadeAwayWithCompletion___block_invoke_2;
  v5[3] = &unk_1E70F3608;
  v4 = completionCopy;
  [UIView animateWithDuration:0 delay:v7 options:v5 animations:0.2 completion:0.3];
}

uint64_t __46__UITextHighlightView_fadeAwayWithCompletion___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_updateWithPreviewParameters:(id)parameters
{
  p_padding = &self->_padding;
  parametersCopy = parameters;
  [parametersCopy _textPathInsets];
  p_padding->top = v6;
  p_padding->left = v7;
  p_padding->bottom = v8;
  p_padding->right = v9;
  visiblePath = [parametersCopy visiblePath];

  v11 = [visiblePath copy];
  [v11 bounds];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, -v12, -v13);
  v14 = v15;
  [v11 applyTransform:&v14];
  [(_UITextHighlightBackgroundView *)self->_backgroundView setVisiblePath:v11];
  -[CAShapeLayer setPath:](self->_contentClippingMaskLayer, "setPath:", [v11 CGPath]);
}

- (void)setOverriddenPreviewParameters:(id)parameters
{
  parametersCopy = parameters;
  if (![(UIPreviewParameters *)self->_overriddenPreviewParameters isEqual:?])
  {
    [(UITextHighlightView *)self invalidateContentView];
    objc_storeStrong(&self->_overriddenPreviewParameters, parameters);
    [(UITextHighlightView *)self _updateWithPreviewParameters:parametersCopy];
  }
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = UITextHighlightView;
  [(UIView *)&v30 layoutSubviews];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __37__UITextHighlightView_layoutSubviews__block_invoke;
  v29[3] = &unk_1E70F3590;
  v29[4] = self;
  [UIView performWithoutAnimation:v29];
  if (!self->_contentViewValid)
  {
    v3 = (*(self->_previewProvider + 2))();
    v4 = v3;
    if (v3)
    {
      if (!self->_overriddenPreviewParameters)
      {
        parameters = [v3 parameters];
        [(UITextHighlightView *)self _updateWithPreviewParameters:parameters];
      }

      [(UIView *)self->_contentView removeFromSuperview];
      view = [v4 view];
      contentView = self->_contentView;
      self->_contentView = view;

      contentView = [(UIVisualEffectView *)self->_contentClippingEffectView contentView];
      [contentView addSubview:self->_contentView];
      view2 = [v4 view];
      [view2 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      target = [v4 target];
      container = [target container];
      [contentView convertRect:container fromView:{v11, v13, v15, v17}];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __37__UITextHighlightView_layoutSubviews__block_invoke_2;
      v28[3] = &unk_1E70F3B20;
      v28[4] = self;
      v28[5] = v21;
      v28[6] = v23;
      v28[7] = v25;
      v28[8] = v27;
      [UIView performWithoutAnimation:v28];
    }

    else
    {
      [(UIView *)self->_contentView removeFromSuperview];
      contentView = self->_contentView;
      self->_contentView = 0;
    }

    self->_contentViewValid = 1;
  }
}

uint64_t __37__UITextHighlightView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 456) setFrame:?];
  [*(a1 + 32) bounds];
  v2 = *(*(a1 + 32) + 464);

  return [v2 setFrame:?];
}

@end