@interface UIStatusBarButtonActionItemView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_contentsImageFrame;
- (double)updateContentsAndWidth;
- (id)_createButton;
- (void)_doubleTapButton:(id)a3;
- (void)_pressAndHoldButton:(id)a3;
- (void)_triggerButtonWithAction:(int64_t)a3;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setLayerHighlightImage:(id)a3;
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
      v5 = [(UIStatusBarButtonActionItemView *)self _createButton];
      button = self->_button;
      self->_button = v5;

      if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
      {
        v7 = [(UIStatusBarButtonActionItemView *)self _createButton];
        externalButton = self->_externalButton;
        self->_externalButton = v7;

        v9 = [(UIView *)self->_externalButton layer];
        [v9 setHitTestsAsOpaque:1];
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

  v11 = [(UIView *)self layer];
  *&v12 = v10;
  [v11 setOpacity:v12];

  v13 = [(UIView *)self traitCollection];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 3)
  {
    if ([(UIView *)self isFocused])
    {
      v15 = [(UIStatusBarButtonActionItemView *)self highlightImage];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 image];

        if (v17)
        {
          [(UIStatusBarButtonActionItemView *)self setLayerHighlightImage:v16];
        }
      }
    }

    else
    {
      v18 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [v18 removeFromSuperlayer];

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

- (void)_triggerButtonWithAction:(int64_t)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = 0x1EFB19190;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIStatusBarButtonActionItemView buttonType](self, "buttonType")}];
  v9[1] = 0x1EFB9C6B0;
  v10[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v5 postNotificationName:0x1EFB9C690 object:self userInfo:v8];
}

- (void)_doubleTapButton:(id)a3
{
  if ([a3 state] == 3)
  {

    [(UIStatusBarButtonActionItemView *)self _triggerButtonWithAction:1];
  }
}

- (void)_pressAndHoldButton:(id)a3
{
  if ([a3 state] == 1)
  {

    [(UIStatusBarButtonActionItemView *)self _triggerButtonWithAction:2];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIStatusBarButtonActionItemView;
  if ([(UIView *)&v11 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else if ([(UIStatusBarButtonActionItemView *)self extendsHitTestingFrame])
  {
    externalButton = self->_externalButton;
    [(UIView *)externalButton convertPoint:self fromView:x, y];
    v8 = [(UIView *)externalButton pointInside:v7 withEvent:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  v6 = a3;
  [(UIResponder *)&v7 pressesBegan:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:1, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  v6 = a3;
  [(UIResponder *)&v7 pressesChanged:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:0, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIStatusBarButtonActionItemView;
  v6 = a3;
  [(UIResponder *)&v7 pressesEnded:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    [(UIStatusBarButtonActionItemView *)self setSelected:0, v7.receiver, v7.super_class];
    [(UIStatusBarButtonActionItemView *)self updateContentsAndWidth];
  }
}

- (CGRect)_contentsImageFrame
{
  v3 = [(UIStatusBarItemView *)self contentsImage];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v6 = [v3 image];
  [v6 size];
  v8 = v7;
  v10 = v9;

  [(UIView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIStatusBarItemView *)self foregroundStyle];
  [v19 scale];
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

- (void)setLayerHighlightImage:(id)a3
{
  v40 = a3;
  if (![(UIStatusBarItemView *)self legibilityStyle])
  {
    v4 = [(UIStatusBarButtonActionItemView *)self ringLayer];

    if (!v4)
    {
      v5 = [MEMORY[0x1E6979398] layer];
      [(UIStatusBarButtonActionItemView *)self setRingLayer:v5];

      v6 = *MEMORY[0x1E695EFF8];
      v7 = *(MEMORY[0x1E695EFF8] + 8);
      v8 = [v40 image];
      [v8 size];
      v10 = v9;
      v12 = v11;

      [(UIStatusBarButtonActionItemView *)self _contentsImageFrame];
      v15 = v14 + v13 * 0.5;
      v18 = v17 + v16 * 0.5;
      v19 = [(UIStatusBarItemView *)self foregroundStyle];
      [v19 scale];
      UIRectCenteredAboutPointScale(v6, v7, v10, v12, v15, v18, v20);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [v29 setFrame:{v22, v24, v26, v28}];

      [(UIView *)self contentScaleFactor];
      v31 = v30;
      v32 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [v32 setContentsScale:v31];

      v33 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      v34 = [v40 image];
      v35 = [v34 imageWithRenderingMode:2];
      v36 = +[UIColor externalSystemTealColor];
      v37 = [v35 _flatImageWithColor:v36];
      [v33 setContents:{objc_msgSend(v37, "CGImage")}];

      v38 = [(UIView *)self layer];
      v39 = [(UIStatusBarButtonActionItemView *)self ringLayer];
      [v38 addSublayer:v39];
    }
  }
}

@end