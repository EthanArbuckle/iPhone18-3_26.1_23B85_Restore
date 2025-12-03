@interface PGButtonView
+ (id)buttonWithDelegate:(id)delegate wantsGlassBackground:(BOOL)background;
- (BOOL)_shouldHitTest;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSString)text;
- (PGButtonViewDelegate)delegate;
- (UIColor)enabledTintColor;
- (UIFont)font;
- (UIPointerInteraction)pointerInteraction;
- (UIViewPropertyAnimator)highlightAnimator;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_handleTouchDown:(id)down;
- (void)_handleTouchUpInside:(id)inside;
- (void)_handleTouchUpOrCancel:(id)cancel;
- (void)_updateForCircularAppearanceIfNeeded;
- (void)_updateGlyphConfigurationIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessibilityIdentifier:(id)identifier;
- (void)setCircular:(BOOL)circular;
- (void)setEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setGlyphSize:(double)size;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setSystemImageName:(id)name;
- (void)setText:(id)text;
- (void)sizeToFit;
@end

@implementation PGButtonView

+ (id)buttonWithDelegate:(id)delegate wantsGlassBackground:(BOOL)background
{
  backgroundCopy = background;
  delegateCopy = delegate;
  v7 = [[self alloc] initWithFrame:backgroundCopy wantsGlassBackground:{0.0, 0.0, 44.0, 44.0}];
  *(v7 + 440) = backgroundCopy;
  if (backgroundCopy)
  {
    v8 = [[PGCABackdropLayerView alloc] initWithFrame:1 wantsGlassBackground:0.0, 0.0, 44.0, 44.0];
    contentView = [v7 contentView];
    [contentView insertSubview:v8 atIndex:0];
  }

  v10 = [_PGButton buttonWithType:0 wantsGlassBackground:backgroundCopy];
  v11 = *(v7 + 520);
  *(v7 + 520) = v10;

  [*(v7 + 520) setAdjustsImageWhenHighlighted:0];
  [*(v7 + 520) setButtonView:v7];
  contentView2 = [v7 contentView];
  [contentView2 addSubview:*(v7 + 520)];

  objc_storeWeak((v7 + 488), delegateCopy);
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchUpInside_ forControlEvents:64];
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchDown_ forControlEvents:1];
  [*(v7 + 520) addTarget:v7 action:sel__handleDragEnter_ forControlEvents:16];
  [*(v7 + 520) addTarget:v7 action:sel__handleDragExit_ forControlEvents:32];
  [*(v7 + 520) addTarget:v7 action:sel__handleTouchUpOrCancel_ forControlEvents:448];
  [v7 setEnabled:1];
  actualButton = [v7 actualButton];
  actualButton2 = [v7 actualButton];
  [actualButton2 contentEdgeInsets];
  [delegateCopy buttonView:v7 contentEdgeInsetsForProposedInsets:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [actualButton setContentEdgeInsets:{v16, v18, v20, v22}];
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

- (void)setAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessibilityIdentifier = [(_PGButton *)self->_actualButton accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:identifierCopy];

  if ((v5 & 1) == 0)
  {
    [(_PGButton *)self->_actualButton setAccessibilityIdentifier:identifierCopy];
  }
}

- (NSString)text
{
  actualButton = [(PGButtonView *)self actualButton];
  v3 = [actualButton titleForState:0];

  return v3;
}

- (void)setText:(id)text
{
  textCopy = text;
  text = [(PGButtonView *)self text];
  if (text == textCopy)
  {
  }

  else
  {
    text2 = [(PGButtonView *)self text];
    v6 = [text2 isEqualToString:textCopy];

    if ((v6 & 1) == 0)
    {
      actualButton = [(PGButtonView *)self actualButton];
      [actualButton setTitle:textCopy forState:0];

      actualButton2 = [(PGButtonView *)self actualButton];
      v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.75];
      [actualButton2 setTitleColor:v9 forState:0];

      actualButton3 = [(PGButtonView *)self actualButton];
      delegate = [(PGButtonView *)self delegate];
      actualButton4 = [(PGButtonView *)self actualButton];
      [actualButton4 contentEdgeInsets];
      [delegate buttonView:self contentEdgeInsetsForProposedInsets:?];
      [actualButton3 setContentEdgeInsets:?];

      actualButton5 = [(PGButtonView *)self actualButton];
      titleLabel = [actualButton5 titleLabel];
      [titleLabel setLineBreakMode:4];

      [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
    }
  }
}

- (UIFont)font
{
  actualButton = [(PGButtonView *)self actualButton];
  titleLabel = [actualButton titleLabel];
  font = [titleLabel font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  actualButton = [(PGButtonView *)self actualButton];
  titleLabel = [actualButton titleLabel];
  [titleLabel setFont:fontCopy];
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

  alpha = [(PGButtonView *)self alpha];

  return MEMORY[0x1EEDF00E0](alpha);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(PGButtonView *)self _shouldHitTest])
  {
    actualButton = self->_actualButton;
    [(PGButtonView *)self convertPoint:actualButton toView:x, y];
    v9 = [(_PGButton *)actualButton hitTest:eventCopy withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(PGButtonView *)self _shouldHitTest])
  {
    actualButton = self->_actualButton;
    [(PGButtonView *)self convertPoint:actualButton toView:x, y];
    v9 = [(_PGButton *)actualButton pointInside:eventCopy withEvent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sizeToFit
{
  actualButton = [(PGButtonView *)self actualButton];
  [actualButton sizeToFit];

  [(PGButtonView *)self frame];
  v5 = v4;
  v7 = v6;
  actualButton2 = [(PGButtonView *)self actualButton];
  [actualButton2 frame];
  v10 = v9;
  v12 = v11;

  [(PGButtonView *)self setFrame:v5, v7, v10, v12];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(_PGButton *)self->_actualButton setEnabled:?];
  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained setEnabled:enabledCopy];

  [(PGButtonView *)self setUserInteractionEnabled:enabledCopy];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
    imageCopy = v6;
  }
}

- (void)setSystemImageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_systemImageName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    systemImageName = self->_systemImageName;
    self->_systemImageName = v4;

    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
  }
}

- (void)setGlyphSize:(double)size
{
  if (self->_glyphSize != size)
  {
    self->_glyphSize = size;
    [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
  }
}

- (void)setCircular:(BOOL)circular
{
  if (self->_circular != circular)
  {
    self->_circular = circular;
    [(PGButtonView *)self _updateForCircularAppearanceIfNeeded];
  }
}

- (UIColor)enabledTintColor
{
  if ([(PGMaterialView *)self isBackdropHidden]|| self->_wantsGlassBackground)
  {
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    systemWhiteColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  return systemWhiteColor;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PGButtonView;
  [(PGButtonView *)&v3 didMoveToWindow];
  [(PGButtonView *)self _updateGlyphConfigurationIfNeeded];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
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
  window = [(PGButtonView *)self window];

  if (window)
  {
    [(PGButtonView *)self glyphSize];
    UIRoundToViewScale();
    v5 = v4;
    currentGlyphSize = self->_currentGlyphSize;
    currentGlyphImageName = self->_currentGlyphImageName;
    systemImageName = [(PGButtonView *)self systemImageName];
    v9 = [(NSString *)currentGlyphImageName isEqualToString:systemImageName];

    v10 = currentGlyphSize != v5 || !v9;
    if (v10 || self->_image != self->_currentCustomImage)
    {
      systemImageName2 = [(PGButtonView *)self systemImageName];
      v13 = [systemImageName2 copy];
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

- (void)_handleTouchDown:(id)down
{
  downCopy = down;
  [(PGButtonView *)self setHighlighted:1];
  if (!self->_preventAutoHideOfControlsAssertion)
  {
    accessibilityIdentifier = [downCopy accessibilityIdentifier];
    v5 = [(UIView *)self PG_acquireAssertionToPreventAutoHideOfControlsWithReason:accessibilityIdentifier];
    preventAutoHideOfControlsAssertion = self->_preventAutoHideOfControlsAssertion;
    self->_preventAutoHideOfControlsAssertion = v5;
  }
}

- (void)_handleTouchUpOrCancel:(id)cancel
{
  [(BSInvalidatable *)self->_preventAutoHideOfControlsAssertion invalidate];
  preventAutoHideOfControlsAssertion = self->_preventAutoHideOfControlsAssertion;
  self->_preventAutoHideOfControlsAssertion = 0;

  [(PGButtonView *)self setHighlighted:0];
}

- (void)_handleTouchUpInside:(id)inside
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained buttonViewDidReceiveTouchUpInside:self];

  [(PGButtonView *)self setHighlighted:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (!self->_wantsGlassBackground && [(PGButtonView *)self isHighlighted]!= highlighted)
  {
    self->_highlighted = highlighted;
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