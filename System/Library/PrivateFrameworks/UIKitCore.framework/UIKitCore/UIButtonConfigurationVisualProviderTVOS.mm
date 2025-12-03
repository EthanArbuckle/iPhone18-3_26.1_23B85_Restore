@interface UIButtonConfigurationVisualProviderTVOS
- (BOOL)_hasRemovedPlatterForState:(unint64_t)state;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (id)_floatingContentView;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)effectiveContentView;
- (void)_layoutFloatingContentView;
- (void)_updateBackgroundViewWithConfiguration:(id)configuration;
- (void)_updateContentBackdropView;
- (void)cleanupForVisualProvider:(id)provider;
- (void)contextMenuInteraction:(id)interaction updateStyleForMenuWithConfiguration:(id)configuration style:(id)style;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected;
@end

@implementation UIButtonConfigurationVisualProviderTVOS

- (void)cleanupForVisualProvider:(id)provider
{
  v4.receiver = self;
  v4.super_class = UIButtonConfigurationVisualProviderTVOS;
  [(UIButtonConfigurationVisualProvider *)&v4 cleanupForVisualProvider:provider];
  [(UIView *)self->_floatingContentView removeFromSuperview];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIButtonConfigurationVisualProviderTVOS;
  [(UIButtonConfigurationVisualProvider *)&v3 layoutSubviews];
  [(UIButtonConfigurationVisualProviderTVOS *)self _layoutFloatingContentView];
  [(UIButtonConfigurationVisualProviderTVOS *)self _updateContentBackdropView];
}

- (id)effectiveContentView
{
  _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
  contentView = [_floatingContentView contentView];

  return contentView;
}

- (id)_floatingContentView
{
  floatingContentView = self->_floatingContentView;
  if (!floatingContentView)
  {
    v4 = [_UIFloatingContentView alloc];
    v5 = [(_UIFloatingContentView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_floatingContentView;
    self->_floatingContentView = v5;

    [(_UIFloatingContentView *)self->_floatingContentView setFloatingContentDelegate:self];
    if (_UISolariumMetricsEnabled())
    {
      [(_UIFloatingContentView *)self->_floatingContentView setAsymmetricFocusedSizeIncrease:8.0, 8.0];
      v7 = [_UIFloatingMotionConfiguration configurationWithRotationOnAxis:3];
      v8 = [_UIFloatingMotionConfiguration configurationWithLargeTranslationOnAxis:3];
      v9 = self->_floatingContentView;
      [v7 rotation];
      v11 = v10;
      v13 = v12;
      [v8 translation];
      [(_UIFloatingContentView *)v9 setContentMotionRotation:v11 translation:v13, v14, v15];
    }

    if (!_UIDeviceHasExternalTouchInput())
    {
      [(UIView *)self->_floatingContentView setUserInteractionEnabled:0];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__UIButtonConfigurationVisualProviderTVOS__floatingContentView__block_invoke;
    v18[3] = &unk_1E70F3590;
    v18[4] = self;
    [UIView _performSystemAppearanceModifications:v18];
    button = [(UIButtonConfigurationVisualProvider *)self button];
    [button addSubview:self->_floatingContentView];

    floatingContentView = self->_floatingContentView;
  }

  return floatingContentView;
}

uint64_t __63__UIButtonConfigurationVisualProviderTVOS__floatingContentView__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 320);
  v3 = [_UIFocusAnimationConfiguration configurationWithStyle:1];
  [v2 setFocusAnimationConfiguration:v3];

  [*(*(a1 + 32) + 320) setShadowOpacity:0.2];
  [*(*(a1 + 32) + 320) setShadowRadius:16.0];
  [*(*(a1 + 32) + 320) setShadowVerticalOffset:25.0];
  v4 = *(*(a1 + 32) + 320);

  return [v4 setUseShadowImage:0];
}

- (void)_updateBackgroundViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  background = [configurationCopy background];
  [background cornerRadius];
  v7 = v6;
  cornerStyle = [configurationCopy cornerStyle];

  if (cornerStyle <= 1)
  {
    if (!cornerStyle)
    {
      button2 = +[UIFontMetrics defaultMetrics];
      button = [(UIButtonConfigurationVisualProvider *)self button];
      traitCollection = [button traitCollection];
      [button2 scaledValueForValue:traitCollection compatibleWithTraitCollection:v7];
      [background setCornerRadius:?];

      goto LABEL_14;
    }

    if (cornerStyle != 1)
    {
      goto LABEL_15;
    }

    button2 = [(UIButtonConfigurationVisualProvider *)self button];
    [button2 bounds];
    v11 = 0.25;
    goto LABEL_10;
  }

  switch(cornerStyle)
  {
    case 2:
      button2 = [(UIButtonConfigurationVisualProvider *)self button];
      [button2 bounds];
      v11 = 0.35;
LABEL_10:
      v12 = v10 * v11 * 0.5;
LABEL_12:
      [background setCornerRadius:v12];
LABEL_14:

      break;
    case 3:
      button2 = [(UIButtonConfigurationVisualProvider *)self button];
      [button2 bounds];
      v12 = v13 * 0.5 * 0.5;
      goto LABEL_12;
    case 4:
      [background setCornerRadius:1.79769313e308];
      break;
  }

LABEL_15:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__UIButtonConfigurationVisualProviderTVOS__updateBackgroundViewWithConfiguration___block_invoke;
  aBlock[3] = &unk_1E712BDF8;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  if (self->super._backgroundView)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__UIButtonConfigurationVisualProviderTVOS__updateBackgroundViewWithConfiguration___block_invoke_2;
    v19[3] = &unk_1E70FCE28;
    v19[4] = self;
    v20 = background;
    v21 = v16;
    [UIView performWithoutAnimation:v19];
  }

  else
  {
    v17 = [[_UISystemBackgroundView alloc] initWithConfiguration:background];
    backgroundView = self->super._backgroundView;
    self->super._backgroundView = v17;

    [(UIView *)self->super._backgroundView setUserInteractionEnabled:0];
    (*(v16 + 2))(v16, background, self->super._backgroundView);
  }
}

void __82__UIButtonConfigurationVisualProviderTVOS__updateBackgroundViewWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = *(*(a1 + 32) + 320);
  v6 = a3;
  [v5 bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v11 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  if (v11 < v12)
  {
    v12 = v11;
  }

  v13 = v12 * 0.5;
  [v17 cornerRadius];
  if (v14 != 1.79769313e308)
  {
    [v17 cornerRadius];
    if (v13 >= v15)
    {
      v13 = v15;
    }
  }

  [*(*(a1 + 32) + 320) setCornerRadius:v13];
  if (v6)
  {
    if (v6[464])
    {
      v16 = MEMORY[0x1E69796E8];
    }

    else
    {
      v16 = MEMORY[0x1E69796E0];
    }
  }

  else
  {
    v16 = MEMORY[0x1E69796E0];
  }

  [*(*(a1 + 32) + 320) setCornerCurve:*v16];
  [*(*(a1 + 32) + 320) setSecondaryBackdropView:v6];
}

uint64_t __82__UIButtonConfigurationVisualProviderTVOS__updateBackgroundViewWithConfiguration___block_invoke_2(void *a1)
{
  [*(a1[4] + 272) setConfiguration:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)_layoutFloatingContentView
{
  _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
  button = [(UIButtonConfigurationVisualProvider *)self button];
  [button bounds];
  [_floatingContentView setFrame:?];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    backgroundView = self->super._backgroundView;
    if (backgroundView)
    {
      currentlyAppliedCornerRadius = backgroundView->_currentlyAppliedCornerRadius;
    }

    else
    {
      currentlyAppliedCornerRadius = 0.0;
    }

    [(_UIFloatingContentView *)self->_floatingContentView setCornerRadius:currentlyAppliedCornerRadius];
    floatingContentView = self->_floatingContentView;
    v8 = self->super._backgroundView;
    if (v8)
    {
      if (*&v8->_systemBackgroundViewFlags)
      {
        v9 = MEMORY[0x1E69796E8];
      }

      else
      {
        v9 = MEMORY[0x1E69796E0];
      }
    }

    else
    {
      v9 = MEMORY[0x1E69796E0];
    }

    v10 = *v9;

    [(_UIFloatingContentView *)floatingContentView setCornerCurve:v10];
  }
}

- (BOOL)_hasRemovedPlatterForState:(unint64_t)state
{
  v5 = dyld_program_sdk_at_least();
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = qword_18A683D60[v6];
      _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
      v9 = [_floatingContentView backgroundColorForState:v7];

      v5 = (v7 & ~state) != 0 || v9 == 0;
    }

    while (v5 == 1 && v6++ != 2);
  }

  return v5;
}

- (void)_updateContentBackdropView
{
  v19[2] = *MEMORY[0x1E69E9840];
  button = [(UIButtonConfigurationVisualProvider *)self button];
  state = [button state];

  if (state)
  {
    if (state == 2)
    {
      v5 = 0.5;
    }

    else
    {
      button2 = [(UIButtonConfigurationVisualProvider *)self button];
      if (-[UIButtonConfigurationVisualProviderTVOS _hasRemovedPlatterForState:](self, "_hasRemovedPlatterForState:", [button2 state]))
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }
    }
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)self->super._backgroundView alpha];
  v8 = v7;
  +[UIView inheritedAnimationDuration];
  v10 = v9;
  v11 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v11 setValues:v14];

  v18[0] = &unk_1EFE34018;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10 * 0.99];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v11 setKeyTimes:v16];

  [v11 setDuration:v10];
  [v11 setAdditive:1];
  layer = [(UIView *)self->super._backgroundView layer];
  [layer addAnimation:v11 forKey:@"opacity"];

  [(UIView *)self->super._backgroundView setAlpha:v5];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  button = [(UIButtonConfigurationVisualProvider *)self button];
  nextFocusedView = [contextCopy nextFocusedView];

  if (button != nextFocusedView)
  {
    button2 = [(UIButtonConfigurationVisualProvider *)self button];
    [button2 _setHighlightedWithoutUpdatingState:0];
  }

  _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
  button3 = [(UIButtonConfigurationVisualProvider *)self button];
  [_floatingContentView setControlState:objc_msgSend(button3 withAnimationCoordinator:{"_stateForFocusUpdateContext:", contextCopy), coordinatorCopy}];

  button4 = [(UIButtonConfigurationVisualProvider *)self button];
  [button4 setNeedsUpdateConfiguration];
}

- (void)setSelected:(BOOL)selected
{
  v6.receiver = self;
  v6.super_class = UIButtonConfigurationVisualProviderTVOS;
  [(UIButtonConfigurationVisualProvider *)&v6 setSelected:selected];
  _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
  button = [(UIButtonConfigurationVisualProvider *)self button];
  [_floatingContentView setControlState:objc_msgSend(button animated:{"state"), +[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock")}];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = UIButtonConfigurationVisualProviderTVOS;
  [(UIButtonConfigurationVisualProvider *)&v8 setHighlighted:highlighted animated:?];
  _floatingContentView = [(UIButtonConfigurationVisualProviderTVOS *)self _floatingContentView];
  button = [(UIButtonConfigurationVisualProvider *)self button];
  [_floatingContentView setControlState:objc_msgSend(button animated:{"state"), animatedCopy}];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  button = [(UIButtonConfigurationVisualProvider *)self button];
  v6 = _UIControlMenuSupportTargetedPreviewOverViews(button, 0, 0);

  target = [v6 target];
  container = [target container];

  view = [v6 view];
  [view bounds];
  v11 = v10;
  v13 = v12;
  target2 = [v6 target];
  [target2 center];
  v16 = round(v15 - v13 * 0.5);
  v18 = round(v17 - v11 * 0.5);
  _window = [container _window];
  [container convertRect:_window toView:{v18, v16, v11, v13}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  LODWORD(view) = [configurationCopy prefersHorizontalAttachment];
  _window2 = [container _window];
  v29 = _window2;
  if (view)
  {
    v30 = _UIControlMenuAttachmentPointForRectInContainerForHorizontalAttachment(_window2, v21, v23, v25, v27);
  }

  else
  {
    v30 = _UIControlMenuAttachmentPointForRectInContainer(_window2, v21, v23, v25, v27);
  }

  v32 = v30;
  v33 = v31;

  v34 = v32;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

- (void)contextMenuInteraction:(id)interaction updateStyleForMenuWithConfiguration:(id)configuration style:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    v17 = styleCopy;
    configurationCopy = configuration;
    button = [(UIButtonConfigurationVisualProvider *)self button];
    v10 = _UIControlMenuSupportTargetedPreviewOverViews(button, 0, 0);

    button2 = [(UIButtonConfigurationVisualProvider *)self button];
    [button2 menuAttachmentPointForConfiguration:configurationCopy];
    v13 = v12;
    v15 = v14;

    LODWORD(button2) = [configurationCopy prefersHorizontalAttachment];
    button3 = [(UIButtonConfigurationVisualProvider *)self button];
    if (button2)
    {
      _UIControlMenuSupportUpdateStyleWithHorizontalPreference(v17, button3, v10, v13, v15);
    }

    else
    {
      _UIControlMenuSupportUpdateStyle(v17, button3, v10, v13, v15);
    }

    styleCopy = v17;
  }
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v4 = [(UIButtonConfigurationVisualProvider *)self button:interaction];
  v5 = _UIControlMenuSupportTargetedPreviewOverViews(v4, 0, 0);

  return v5;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  v4 = [(UIButtonConfigurationVisualProvider *)self button:interaction];
  v5 = _UIControlMenuSupportTargetedPreviewOverViews(v4, 0, 0);

  return v5;
}

@end