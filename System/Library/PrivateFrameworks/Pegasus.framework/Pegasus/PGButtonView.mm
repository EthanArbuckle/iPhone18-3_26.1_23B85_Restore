@interface PGButtonView
+ (id)buttonWithDelegate:(id)a3 wantsGlassBackground:(BOOL)a4;
- (BOOL)_shouldHitTest;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSString)text;
- (PGButtonViewDelegate)delegate;
- (UIColor)enabledTintColor;
- (UIFont)font;
- (UIPointerInteraction)pointerInteraction;
- (UIViewPropertyAnimator)highlightAnimator;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_handleTouchDown:(id)a3;
- (void)_handleTouchUpInside:(id)a3;
- (void)_handleTouchUpOrCancel:(id)a3;
- (void)_updateForCircularAppearanceIfNeeded;
- (void)_updateGlyphConfigurationIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessibilityIdentifier:(id)a3;
- (void)setCircular:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setGlyphSize:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setSystemImageName:(id)a3;
- (void)setText:(id)a3;
- (void)sizeToFit;
@end

@implementation PGButtonView

+ (id)buttonWithDelegate:(id)a3 wantsGlassBackground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithFrame:v4 wantsGlassBackground:{0.0, 0.0, 44.0, 44.0}];
  *(v7 + 440) = v4;
  if (v4)
  {
    v8 = [[PGCABackdropLayerView alloc] initWithFrame:1 wantsGlassBackground:0.0, 0.0, 44.0, 44.0];
    v9 = [v7 contentView];
    [v9 insertSubview:v8 atIndex:0];
  }

  v10 = [_PGButton buttonWithType:0 wantsGlassBackground:v4];
  v11 = *(v7 + 520);
  *(v7 + 520) = v10;

  [*(v7 + 520) setAdjustsImageWhenHighlighted:0];
  [*(v7 + 520) setButtonView:v7];
  v12 = [v7 contentView];
  [v12 addSubview:*(v7 + 520)];

  objc_storeWeak((v7 + 488), v6);
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchUpInside_ forControlEvents:64];
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchDown_ forControlEvents:1];
  [*(v7 + 520) addTarget:v7 action:sel__handleDragEnter_ forControlEvents:16];
  [*(v7 + 520) addTarget:v7 action:sel__handleDragExit_ forControlEvents:32];
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchUpOrCancel_ forControlEvents:448];
  [v7 setEnabled:1];
  v13 = [v7 actualButton];
  v14 = [v7 actualButton];
  [v14 contentEdgeInsets];
  [v6 buttonView:v7 contentEdgeInsetsForProposedInsets:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v13 setContentEdgeInsets:{v16, v18, v20, v22}];
  v23 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v7];
  [v7 setPointerInteraction:v23];
  [v7 addInteraction:v23];

  return v7;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_preventAutoHideOfControlsAssertion invalidate];
  v3.receiver = self;
  v3.super_class = PGButtonView;
  [(PGButtonView *)&v3 dealloc];
}

- (void)setAccessibilityIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(_PGButton *)self->_actualButton accessibilityIdentifier];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(_PGButton *)self->_actualButton setAccessibilityIdentifier:v6];
  }
}

- (NSString)text
{
  v2 = [(PGButtonView *)self actualButton];
  v3 = [v2 titleForState:0];

  return v3;
}

- (void)setText:(id)a3
{
  v15 = a3;
  v4 = [(PGButtonView *)self text];
  if (v4 == v15)
  {
  }

  else
  {
    v5 = [(PGButtonView *)self text];
    v6 = [v5 isEqualToString:v15];

    if ((v6 & 1) == 0)
    {
      v7 = [(PGButtonView *)self actualButton];
      [v7 setTitle:v15 forState:0];

      v8 = [(PGButtonView *)self actualButton];
      v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.75];
      [v8 setTitleColor:v9 forState:0];

      v10 = [(PGButtonView *)self actualButton];
      v11 = [(PGButtonView *)self delegate];
      v12 = [(PGButtonView *)self actualButton];
      [v12 contentEdgeInsets];
      [v11 buttonView:self contentEdgeInsetsForProposedInsets:?];
      [v10 setContentEdgeInsets:?];

      v13 = [(PGButtonView *)self actualButton];
      v14 = [v13 titleLabel];
      [v14 setLineBreakMode:4];

      [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
    }
  }
}

- (UIFont)font
{
  v2 = [(PGButtonView *)self actualButton];
  v3 = [v2 titleLabel];
  v4 = [v3 font];

  return v4;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v6 = [(PGButtonView *)self actualButton];
  v5 = [v6 titleLabel];
  [v5 setFont:v4];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PGButtonView;
  [(PGMaterialView *)&v4 layoutSubviews];
  actualButton = self->_actualButton;
  [(PGButtonView *)self bounds];
  [(_PGButton *)actualButton setFrame:?];
  [(PGButtonView *)self _updateForCircularAppearanceIfNeeded];
}

- (BOOL)_shouldHitTest
{
  if (([(PGButtonView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  v4 = [(PGButtonView *)self alpha];

  return MEMORY[0x1EEDF00E0](v4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(PGButtonView *)self _shouldHitTest])
  {
    actualButton = self->_actualButton;
    [(PGButtonView *)self convertPoint:actualButton toView:x, y];
    v9 = [(_PGButton *)actualButton hitTest:v7 withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(PGButtonView *)self _shouldHitTest])
  {
    actualButton = self->_actualButton;
    [(PGButtonView *)self convertPoint:actualButton toView:x, y];
    v9 = [(_PGButton *)actualButton pointInside:v7 withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sizeToFit
{
  v3 = [(PGButtonView *)self actualButton];
  [v3 sizeToFit];

  [(PGButtonView *)self frame];
  v5 = v4;
  v7 = v6;
  v8 = [(PGButtonView *)self actualButton];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  [(PGButtonView *)self setFrame:v5, v7, v10, v12];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  [(_PGButton *)self->_actualButton setEnabled:?];
  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained setEnabled:v3];

  [(PGButtonView *)self setUserInteractionEnabled:v3];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
    v5 = v6;
  }
}

- (void)setSystemImageName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_systemImageName isEqualToString:?])
  {
    v4 = [v6 copy];
    systemImageName = self->_systemImageName;
    self->_systemImageName = v4;

    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
  }
}

- (void)setGlyphSize:(double)a3
{
  if (self->_glyphSize != a3)
  {
    self->_glyphSize = a3;
    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
  }
}

- (void)setCircular:(BOOL)a3
{
  if (self->_circular != a3)
  {
    self->_circular = a3;
    [(PGButtonView *)self _updateForCircularAppearanceIfNeeded];
  }
}

- (UIColor)enabledTintColor
{
  if ([(PGMaterialView *)self isBackdropHidden]|| self->_wantsGlassBackground)
  {
    v3 = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PGButtonView;
  [(PGButtonView *)&v3 didMoveToWindow];
  [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  if ([(PGMaterialView *)self isBackdropHidden]&& ([(PGMaterialView *)self backgroundColor], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = 0x1E69DCDA0;
  }

  else
  {
    v7 = 0x1E69DCDB8;
  }

  v8 = [*v7 effectWithPreview:v5];
  v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v8 shape:0];

  return v9;
}

- (void)_updateGlyphConfigurationIfNeeded
{
  v3 = [(PGButtonView *)self window];

  if (v3)
  {
    [(PGButtonView *)self glyphSize];
    UIRoundToViewScale();
    v5 = v4;
    currentGlyphSize = self->_currentGlyphSize;
    currentGlyphImageName = self->_currentGlyphImageName;
    v8 = [(PGButtonView *)self systemImageName];
    v9 = [(NSString *)currentGlyphImageName isEqualToString:v8];

    v10 = currentGlyphSize != v5 || !v9;
    if (v10 || self->_image != self->_currentCustomImage)
    {
      v12 = [(PGButtonView *)self systemImageName];
      v13 = [v12 copy];
      v14 = self->_currentGlyphImageName;
      self->_currentGlyphImageName = v13;

      self->_currentGlyphSize = v5;
      v15 = self->_image;
      if (self->_image)
      {
        v16 = v15;
        currentCustomImage = self->_currentCustomImage;
        v20 = v16;
        self->_currentCustomImage = v16;
      }

      else
      {
        v20 = v15;
        if (!self->_currentGlyphImageName)
        {
LABEL_15:
          [(_PGButton *)self->_actualButton setImage:v20 forState:0];
          [(PGButtonView *)self _updateForCircularAppearanceIfNeeded];

          return;
        }

        currentCustomImage = [MEMORY[0x1E69DB878] systemFontOfSize:v5 weight:*MEMORY[0x1E69DB970]];
        v18 = [MEMORY[0x1E69DCAD8] configurationWithFont:currentCustomImage];
        v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:self->_currentGlyphImageName withConfiguration:v18];

        v20 = v19;
      }

      goto LABEL_15;
    }
  }
}

- (void)_updateForCircularAppearanceIfNeeded
{
  if (self->_circular)
  {
    [(PGButtonView *)self bounds];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v7 = CGRectGetWidth(v12);
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v8 = CGRectGetHeight(v13);
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = v8 * 0.5;
    [(PGMaterialView *)self _cornerRadius];
    if (v10 != v9)
    {

      [(PGMaterialView *)self _setCornerRadius:v9];
    }
  }
}

- (void)_handleTouchDown:(id)a3
{
  v7 = a3;
  [(PGButtonView *)self setHighlighted:1];
  if (!self->_preventAutoHideOfControlsAssertion)
  {
    v4 = [v7 accessibilityIdentifier];
    v5 = [(UIView *)self PG_acquireAssertionToPreventAutoHideOfControlsWithReason:v4];
    preventAutoHideOfControlsAssertion = self->_preventAutoHideOfControlsAssertion;
    self->_preventAutoHideOfControlsAssertion = v5;
  }
}

- (void)_handleTouchUpOrCancel:(id)a3
{
  [(BSInvalidatable *)self->_preventAutoHideOfControlsAssertion invalidate];
  preventAutoHideOfControlsAssertion = self->_preventAutoHideOfControlsAssertion;
  self->_preventAutoHideOfControlsAssertion = 0;

  [(PGButtonView *)self setHighlighted:0];
}

- (void)_handleTouchUpInside:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buttonViewDidReceiveTouchUpInside:self];

  [(PGButtonView *)self setHighlighted:0];
}

- (void)setHighlighted:(BOOL)a3
{
  if (!self->_wantsGlassBackground && [(PGButtonView *)self isHighlighted]!= a3)
  {
    self->_highlighted = a3;
    WeakRetained = objc_loadWeakRetained(&self->_highlightAnimator);
    if ([WeakRetained isRunning])
    {
      if ([WeakRetained isInterruptible])
      {
        [WeakRetained stopAnimation:0];
        [WeakRetained finishAnimationAtPosition:2];
      }
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__4;
    v14 = __Block_byref_object_dispose__4;
    v6 = objc_alloc(MEMORY[0x1E69DD278]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__PGButtonView_setHighlighted___block_invoke;
    v9[3] = &unk_1E7F32530;
    v9[4] = self;
    v15 = [v6 initWithDuration:0 curve:v9 animations:0.2];
    objc_storeWeak(&self->_highlightAnimator, v11[5]);
    v7 = v11[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__PGButtonView_setHighlighted___block_invoke_2;
    v8[3] = &unk_1E7F33E50;
    v8[4] = &v10;
    [v7 addCompletion:v8];
    [v11[5] startAnimation];
    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __31__PGButtonView_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  v3 = *(a1 + 32);
  if (v2)
  {
    CGAffineTransformMakeScale(&v6, 0.85, 0.85);
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6.a = *MEMORY[0x1E695EFD0];
    *&v6.c = v4;
    *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  return [v3 setTransform:&v6];
}

void __31__PGButtonView_setHighlighted___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (PGButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewPropertyAnimator)highlightAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightAnimator);

  return WeakRetained;
}

- (UIPointerInteraction)pointerInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);

  return WeakRetained;
}

@end