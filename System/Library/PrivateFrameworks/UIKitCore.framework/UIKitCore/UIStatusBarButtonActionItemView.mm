@interface UIStatusBarButtonActionItemView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_contentsImageFrame;
- (double)updateContentsAndWidth;
- (id)_createButton;
- (void)_doubleTapButton:(id)button;
- (void)_pressAndHoldButton:(id)button;
- (void)_triggerButtonWithAction:(int64_t)action;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setLayerHighlightImage:(id)image;
@end

@implementation UIStatusBarButtonActionItemView

- (id)_createButton
{
  v3 = [UIButton buttonWithType:0];
  [v3 addTarget:self action:sel__pressButton_ forControlEvents:64];
  [v3 setShowsTouchWhenHighlighted:{-[UIStatusBarButtonActionItemView showsTouchWhenHighlighted](self, "showsTouchWhenHighlighted")}];
  if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
  {
    LODWORD(v4) = -0.5;
    [v3 setCharge:v4];
  }

  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__pressButton_];
  [(UITapGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2D4F8];
  [(UIView *)self addGestureRecognizer:v5];
  [(UIView *)self addSubview:v3];
  if ([(UIStatusBarButtonActionItemView *)self usesAdvancedActions])
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__doubleTapButton_];
    [(UITapGestureRecognizer *)v6 setNumberOfTapsRequired:2];
    [(UIGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFE2D510];
    [v3 addGestureRecognizer:v6];
    v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__pressAndHoldButton_];
    [(UIGestureRecognizer *)v7 setAllowedTouchTypes:&unk_1EFE2D528];
    [v3 addGestureRecognizer:v7];
    v8 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__pressAndHoldButton_];
    [(UIGestureRecognizer *)v8 setAllowedPressTypes:&unk_1EFE2D540];
    [(UIView *)self addGestureRecognizer:v8];
  }

  return v3;
}

- (double)updateContentsAndWidth
{
  v20.receiver = self;
  v20.super_class = UIStatusBarButtonActionItemView;
  [(UIStatusBarItemView *)&v20 updateContentsAndWidth];
  v4 = v3;
  if (!self->_button)
  {
    if ([(UIStatusBarButtonActionItemView *)self allowsUserInteraction])
    {
      _createButton = [(UIStatusBarButtonActionItemView *)self _createButton];
      button = self->_button;
      self->_button = _createButton;

      if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
      {
        _createButton2 = [(UIStatusBarButtonActionItemView *)self _createButton];
        externalButton = self->_externalButton;
        self->_externalButton = _createButton2;

        layer = [(UIView *)self->_externalButton layer];
        [layer setHitTestsAsOpaque:1];
      }
    }
  }

  if ([(UIStatusBarButtonActionItemView *)self selected]&& [(UIStatusBarButtonActionItemView *)self showsTouchWhenHighlighted])
  {
    v10 = 0.6;
  }

  else
  {
    v10 = 1.0;
  }

  layer2 = [(UIView *)self layer];
  *&v12 = v10;
  [layer2 setOpacity:v12];

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    if ([(UIView *)self isFocused])
    {
      highlightImage = [(UIStatusBarButtonActionItemView *)self highlightImage];
      v16 = highlightImage;
      if (highlightImage)
      {
        image = [highlightImage image];

        if (image)
        {
          [(UIStatusBarButtonActionItemView *)self setLayerHighlightImage:v16];
        }
      }
    }

    else
    {
      ringLayer = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [ringLayer removeFromSuperlayer];

      [(UIStatusBarButtonActionItemView *)self setRingLayer:0];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIStatusBarButtonActionItemView;
  [(UIView *)&v5 layoutSubviews];
  [(UIView *)self bounds];
  [(UIButton *)self->_button setFrame:?];
  if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
  {
    [(UIView *)self _touchSloppinessFactor];
    v4 = v3;
    [(UIView *)self bounds];
    v7 = CGRectInset(v6, v4 * -10.0, 0.0);
    [(UIButton *)self->_externalButton setFrame:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
  }
}

- (void)_triggerButtonWithAction:(int64_t)action
{
  v10[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = 0x1EFB19190;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIStatusBarButtonActionItemView buttonType](self, "buttonType")}];
  v9[1] = 0x1EFB9C6B0;
  v10[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [defaultCenter postNotificationName:0x1EFB9C690 object:self userInfo:v8];
}

- (void)_doubleTapButton:(id)button
{
  if ([button state] == 3)
  {

    [(UIStatusBarButtonActionItemView *)self _triggerButtonWithAction:1];
  }
}

- (void)_pressAndHoldButton:(id)button
{
  if ([button state] == 1)
  {

    [(UIStatusBarButtonActionItemView *)self _triggerButtonWithAction:2];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = UIStatusBarButtonActionItemView;
  if ([(UIView *)&v11 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
  {
    externalButton = self->_externalButton;
    [(UIView *)externalButton convertPoint:self fromView:x, y];
    v8 = [(UIView *)externalButton pointInside:eventCopy withEvent:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  beganCopy = began;
  [(UIResponder *)&v7 pressesBegan:beganCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(beganCopy, 4);

  if (event)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:1, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  cancelledCopy = cancelled;
  [(UIResponder *)&v7 pressesChanged:cancelledCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(cancelledCopy, 4);

  if (event)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:0, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  endedCopy = ended;
  [(UIResponder *)&v7 pressesEnded:endedCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(endedCopy, 4);

  if (event)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:0, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (CGRect)_contentsImageFrame
{
  contentsImage = [(UIStatusBarItemView *)self contentsImage];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  image = [contentsImage image];
  [image size];
  v8 = v7;
  v10 = v9;

  [(UIView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle scale];
  UIRectCenteredXInRectScale(v4, v5, v8, v10, v12, v14, v16, v18, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)setLayerHighlightImage:(id)image
{
  imageCopy = image;
  if (![(UIStatusBarItemView *)self legibilityStyle])
  {
    ringLayer = [(UIStatusBarButtonActionItemView *)self ringLayer];

    if (!ringLayer)
    {
      layer = [MEMORY[0x1E6979398] layer];
      [(UIStatusBarButtonActionItemView *)self setRingLayer:layer];

      v6 = *MEMORY[0x1E695EFF8];
      v7 = *(MEMORY[0x1E695EFF8] + 8);
      image = [imageCopy image];
      [image size];
      v10 = v9;
      v12 = v11;

      [(UIStatusBarButtonActionItemView *)self _contentsImageFrame];
      v15 = v14 + v13 * 0.5;
      v18 = v17 + v16 * 0.5;
      foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
      [foregroundStyle scale];
      UIRectCenteredAboutPointScale(v6, v7, v10, v12, v15, v18, v20);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      ringLayer2 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [ringLayer2 setFrame:{v22, v24, v26, v28}];

      [(UIView *)self contentScaleFactor];
      v31 = v30;
      ringLayer3 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [ringLayer3 setContentsScale:v31];

      ringLayer4 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      image2 = [imageCopy image];
      v35 = [image2 imageWithRenderingMode:2];
      v36 = +[UIColor externalSystemTealColor];
      v37 = [v35 _flatImageWithColor:v36];
      [ringLayer4 setContents:{objc_msgSend(v37, "CGImage")}];

      layer2 = [(UIView *)self layer];
      ringLayer5 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [layer2 addSublayer:ringLayer5];
    }
  }
}

@end