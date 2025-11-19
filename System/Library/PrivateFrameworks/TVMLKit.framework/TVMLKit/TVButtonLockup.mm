@interface TVButtonLockup
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVButtonLockup)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 groupName:(id)a5;
- (void)_updateForAccessibilityChange;
- (void)_updateForFocusStateChange;
- (void)_updateImageMask;
- (void)_updateShadowForLabel:(id)a3 inFocus:(BOOL)a4;
- (void)_updateTextForAccessibilityAndFocus;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHighlightColor:(id)a3;
- (void)setImageView:(id)a3;
- (void)setText:(id)a3 minimumScale:(double)a4 maxNumberOfLines:(unint64_t)a5;
- (void)setTitleView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TVButtonLockup

- (TVButtonLockup)initWithFrame:(CGRect)a3 blurEffectStyle:(int64_t)a4 groupName:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = TVButtonLockup;
  v12 = [(TVButtonLockup *)&v34 initWithFrame:x, y, width, height];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D75F68]);
    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    v18 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], v15, v16, v17}];
    floatingView = v12->_floatingView;
    v12->_floatingView = v18;

    [(_UIFloatingContentView *)v12->_floatingView setBackgroundColor:0 forState:8];
    [(_UIFloatingContentView *)v12->_floatingView setBackgroundColor:0 forState:1];
    [(_UIFloatingContentView *)v12->_floatingView setFocusedSizeIncrease:14.0];
    [(_UIFloatingContentView *)v12->_floatingView setContentMotionRotation:0.0 translation:0.0, 8.0, 0.0];
    [(_UIFloatingContentView *)v12->_floatingView setFocusScaleAnchorPoint:0.5, 1.0];
    [(_UIFloatingContentView *)v12->_floatingView setShadowRadius:30.0];
    [(_UIFloatingContentView *)v12->_floatingView setShadowVerticalOffset:15.0];
    [(_UIFloatingContentView *)v12->_floatingView setShadowOpacity:0.25];
    [(_UIFloatingContentView *)v12->_floatingView setCornerRadius:6.0];
    [(_UIFloatingContentView *)v12->_floatingView setContinuousCornerEnabled:0];
    [(_UIFloatingContentView *)v12->_floatingView setVisualEffectContainerViewScaleFactor:0.988];
    [(TVButtonLockup *)v12 addSubview:v12->_floatingView];
    v12->_backdropStyle = a4;
    v12->_vibrantLabelThemeOverride = 0;
    v20 = [_TVVisualEffectView alloc];
    v21 = [MEMORY[0x277D75210] effectWithStyle:v12->_backdropStyle];
    v22 = [(_TVVisualEffectView *)v20 initWithEffect:v21];
    backdropView = v12->_backdropView;
    v12->_backdropView = v22;

    [(_TVVisualEffectView *)v12->_backdropView _setCornerRadius:6.0];
    if ([v11 length])
    {
      [(_TVVisualEffectView *)v12->_backdropView _setGroupName:v11];
    }

    v24 = [(_UIFloatingContentView *)v12->_floatingView visualEffectContainerView];
    [v24 addSubview:v12->_backdropView];

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v15, v16, v17}];
    overlayView = v12->_overlayView;
    v12->_overlayView = v25;

    [(UIView *)v12->_overlayView setUserInteractionEnabled:0];
    v27 = v12->_overlayView;
    v28 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v27 setBackgroundColor:v28];

    [(UIView *)v12->_overlayView setAlpha:0.0];
    [(UIView *)v12->_overlayView _setCornerRadius:6.0];
    v29 = [(_UIFloatingContentView *)v12->_floatingView contentView];
    [v29 addSubview:v12->_overlayView];

    v30 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__selectButtonAction_];
    [(TVButtonLockup *)v12 addGestureRecognizer:v30];
    v31 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__playButtonAction_];
    [v31 setAllowedPressTypes:&unk_287E487C8];
    [(TVButtonLockup *)v12 addGestureRecognizer:v31];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v12 selector:sel__updateForAccessibilityChange name:*MEMORY[0x277D81CF8] object:0];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v4 dealloc];
}

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    backdropView = self->_backdropView;
    v4 = 1.0;
    if (a3)
    {
      v4 = 0.5;
    }

    [(_TVVisualEffectView *)backdropView setAlpha:v4];
  }
}

- (void)setText:(id)a3 minimumScale:(double)a4 maxNumberOfLines:(unint64_t)a5
{
  v35 = a3;
  v8 = [(UILabel *)self->_textView attributedText];
  if ([v8 isEqualToAttributedString:v35] && (-[UILabel minimumScaleFactor](self->_textView, "minimumScaleFactor"), v9 == a4))
  {
    v10 = [(UILabel *)self->_textView numberOfLines];

    if (v10 == a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (self->_imageView)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    [(_TVImageView *)self->_imageView removeFromSuperview];
    imageView = self->_imageView;
    self->_imageView = 0;

    [(CALayer *)self->_imageMask removeFromSuperlayer];
    imageMask = self->_imageMask;
    self->_imageMask = 0;
  }

  [(UILabel *)self->_textView removeFromSuperview];
  v14 = [(UILabel *)self->_textMask layer];
  [v14 removeFromSuperlayer];

  v15 = objc_alloc(MEMORY[0x277D756B8]);
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
  textView = self->_textView;
  self->_textView = v20;

  [(UILabel *)self->_textView setAttributedText:v35];
  [(UILabel *)self->_textView setOpaque:0];
  [(UILabel *)self->_textView setBackgroundColor:0];
  [(UILabel *)self->_textView setNumberOfLines:a5];
  [(UILabel *)self->_textView setAdjustsFontForContentSizeCategory:1];
  v22 = [(_UIFloatingContentView *)self->_floatingView contentView];
  [v22 insertSubview:self->_textView above:self->_overlayView];

  v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v16, v17, v18, v19}];
  textMask = self->_textMask;
  self->_textMask = v23;

  v25 = [v35 mutableCopy];
  v26 = *MEMORY[0x277D740C0];
  v27 = [MEMORY[0x277D75348] whiteColor];
  v28 = [v35 string];
  [v25 addAttribute:v26 value:v27 range:{0, objc_msgSend(v28, "length")}];

  v29 = self->_textMask;
  v30 = [v25 copy];
  [(UILabel *)v29 setAttributedText:v30];

  [(UILabel *)self->_textMask setOpaque:0];
  [(UILabel *)self->_textMask setBackgroundColor:0];
  [(UILabel *)self->_textMask setNumberOfLines:a5];
  [(UILabel *)self->_textMask setAdjustsFontForContentSizeCategory:1];
  v31 = [(UILabel *)self->_textMask layer];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    v32 = 0;
  }

  else
  {
    v32 = *MEMORY[0x277CDA310];
  }

  [v31 setCompositingFilter:v32];

  v33 = [(UIView *)self->_overlayView layer];
  v34 = [(UILabel *)self->_textMask layer];
  [v33 addSublayer:v34];

  if (a4 > 0.0 && a4 < 1.0)
  {
    [(UILabel *)self->_textView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_textView setMinimumScaleFactor:a4];
    [(UILabel *)self->_textMask setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_textMask setMinimumScaleFactor:a4];
  }

  [(TVButtonLockup *)self setNeedsLayout];

LABEL_15:
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  imageView = self->_imageView;
  v20 = v5;
  if (imageView == v5)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v17 = [(_TVImageView *)imageView image];

    if (v17)
    {
      goto LABEL_9;
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:self selector:sel__updateImageMask name:@"TVMLImageViewImageDidLoadNotification" object:self->_imageView];
  }

  else
  {
    textView = self->_textView;
    if (textView)
    {
      [(UILabel *)textView removeFromSuperview];
      v8 = self->_textView;
      self->_textView = 0;

      v9 = [(UILabel *)self->_textMask layer];
      [v9 removeFromSuperlayer];

      textMask = self->_textMask;
      self->_textMask = 0;
    }

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    [(_TVImageView *)self->_imageView removeFromSuperview];
    [(CALayer *)self->_imageMask removeFromSuperlayer];
    imageMask = self->_imageMask;
    self->_imageMask = 0;

    objc_storeStrong(&self->_imageView, a3);
    if (self->_imageView)
    {
      v13 = [(_UIFloatingContentView *)self->_floatingView contentView];
      [v13 insertSubview:self->_imageView below:self->_overlayView];

      v14 = [(_TVImageView *)self->_imageView image];

      if (!v14)
      {
        v15 = [MEMORY[0x277CCAB98] defaultCenter];
        [v15 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

        v16 = [MEMORY[0x277CCAB98] defaultCenter];
        [v16 addObserver:self selector:sel__updateImageMask name:@"TVMLImageViewImageDidLoadNotification" object:self->_imageView];

        goto LABEL_10;
      }

LABEL_9:
      [(TVButtonLockup *)self _updateImageMask];
    }
  }

LABEL_10:
  [(TVButtonLockup *)self setNeedsLayout];
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  titleView = self->_titleView;
  v7 = v5;
  if (titleView != v5)
  {
    [(UILabel *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, a3);
    if (self->_titleView)
    {
      [(TVButtonLockup *)self addSubview:?];
    }
  }

  [(TVButtonLockup *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)a3
{
  v11.receiver = self;
  v11.super_class = TVButtonLockup;
  v4 = a3;
  [(TVButtonLockup *)&v11 setBackgroundColor:v4];
  v5 = [v4 copy];

  backgroundColor = self->__backgroundColor;
  self->__backgroundColor = v5;

  if (self->__backgroundColor)
  {
    [(_TVVisualEffectView *)self->_backdropView removeFromSuperview];
    v7 = [(_UIFloatingContentView *)self->_floatingView contentView];
    v8 = v7;
    v9 = self->__backgroundColor;
  }

  else
  {
    v10 = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
    [v10 addSubview:self->_backdropView];

    v7 = [(_UIFloatingContentView *)self->_floatingView contentView];
    v8 = v7;
    v9 = 0;
  }

  [v7 setBackgroundColor:v9];
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  if (self->_highlightColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_highlightColor, a3);
    overlayView = self->_overlayView;
    if (self->_highlightColor)
    {
      [(UIView *)self->_overlayView setBackgroundColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
      [(UIView *)overlayView setBackgroundColor:v7];
    }

    v5 = v8;
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = TVButtonLockup;
  v6 = a4;
  [(TVButtonLockup *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:v6];
  if ([(TVButtonLockup *)self isFocused:v8.receiver])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [(_UIFloatingContentView *)self->_floatingView setControlState:v7 withAnimationCoordinator:v6];

  [(TVButtonLockup *)self _updateForFocusStateChange];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = TVButtonLockup;
  v6 = a3;
  [(TVButtonLockup *)&v9 pressesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  v8 = [v7 type];
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    if ([(TVButtonLockup *)self isFocused])
    {
      [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
    }
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 pressesCancelled:a3 withEvent:a4];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    floatingView = self->_floatingView;
    if ([(TVButtonLockup *)self isFocused])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    [(_UIFloatingContentView *)floatingView setControlState:v6 animated:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 pressesEnded:a3 withEvent:a4];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    floatingView = self->_floatingView;
    if ([(TVButtonLockup *)self isFocused])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    [(_UIFloatingContentView *)floatingView setControlState:v6 animated:1];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesBegan:a3 withEvent:a4];
  [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v20.receiver = self;
  v20.super_class = TVButtonLockup;
  v6 = a3;
  [(TVButtonLockup *)&v20 touchesMoved:v6 withEvent:a4];
  [(TVButtonLockup *)self bounds:v20.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 anyObject];

  [v15 locationInView:self];
  v21.x = v16;
  v21.y = v17;
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v18 = CGRectContainsPoint(v22, v21);

  if (v18)
  {
    v19 = 9;
  }

  else
  {
    v19 = 0;
  }

  [(_UIFloatingContentView *)self->_floatingView setControlState:v19 animated:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesEnded:a3 withEvent:a4];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:1];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesCancelled:a3 withEvent:a4];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self tv_itemWidth:a3.width];
  if (v4 == 0.0)
  {
    v5 = 142.0;
  }

  else
  {
    v5 = v4;
  }

  [(UIView *)self tv_itemHeight];
  if (v6 == 0.0)
  {
    v7 = 80.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(TVButtonLockup *)self titleView];
  [v8 tv_margin];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(TVButtonLockup *)self titleView];
  [v17 sizeThatFits:{v5 - (v12 + v16), 0.0}];
  v19 = v18;

  v20 = v14 + v7 + v10 + v19;
  v21 = v5;
  result.height = v20;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v46 layoutSubviews];
  [(UIView *)self tv_itemWidth];
  if (v3 == 0.0)
  {
    v4 = 142.0;
  }

  else
  {
    v4 = v3;
  }

  [(UIView *)self tv_itemHeight];
  if (v5 == 0.0)
  {
    v6 = 80.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(TVButtonLockup *)self titleView];
  [v7 tv_margin];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v4 - (v11 + v13);
  v15 = [(TVButtonLockup *)self titleView];
  [v15 sizeThatFits:{v14, 0.0}];
  v17 = v16;

  [(_UIFloatingContentView *)self->_floatingView setFrame:0.0, 0.0, v4, v6];
  [(_TVVisualEffectView *)self->_backdropView setFrame:0.0, 0.0, v4, v6];
  [(UIView *)self->_overlayView setFrame:0.0, 0.0, v4, v6];
  if (self->_textView)
  {
    [(UIView *)self tv_padding];
    v19 = v18;
    v21 = v20;
    [(UILabel *)self->_textView tv_margin];
    [(UILabel *)self->_textView tv_textSizeForWidth:v4 - (v21 + v23 + v19 + v22)];
    v25 = v24;
    v27 = v26;
    v28 = floor((v4 - v24) * 0.5);
    v44 = v14;
    v29 = v11;
    v30 = v17;
    v31 = v9;
    v32 = floor((v6 - v26) * 0.5);
    [(UILabel *)self->_textView setFrame:v28, v32, v24, v26];
    v33 = [(UILabel *)self->_textMask layer];
    v34 = v32;
    v9 = v31;
    v17 = v30;
    v11 = v29;
    v14 = v44;
    [v33 setFrame:{v28, v34, v25, v27}];
  }

  else
  {
    imageView = self->_imageView;
    if (imageView)
    {
      [(_TVImageView *)imageView sizeThatFits:v4, v6];
      v45 = v9;
      v37 = v36;
      v39 = v38;
      v40 = floor((v4 - v36) * 0.5);
      v41 = floor((v6 - v38) * 0.5);
      [(_TVImageView *)self->_imageView setFrame:v40, v41, v36, v38];
      v42 = v37;
      v9 = v45;
      [(CALayer *)self->_imageMask setFrame:v40, v41, v42, v39];
    }
  }

  v43 = [(TVButtonLockup *)self titleView];
  [v43 setFrame:{v11, v6 + v9 + -7.0, v14, v17 + 2.0 + 12.0}];

  [(TVButtonLockup *)self _updateForFocusStateChange];
  [(TVButtonLockup *)self bounds];
  [(TVButtonLockup *)self _setFocusableContentMargins:0.0, 0.0, CGRectGetHeight(v47) - v6, 0.0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TVButtonLockup *)self traitCollection];
    if ([v5 userInterfaceStyle])
    {
      [v4 userInterfaceStyle];
      v6 = [(TVButtonLockup *)self traitCollection];
      [v6 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 traitCollectionDidChange:v4];
}

- (void)_updateTextForAccessibilityAndFocus
{
  v3 = [(TVButtonLockup *)self isFocused];
  textView = self->_textView;
  if (v3)
  {
    v5 = _AXSHighContrastFocusIndicatorsEnabled();
    v6 = 1.0;
    if (!v5)
    {
      v6 = 0.0;
    }

    [(UILabel *)textView setAlpha:v6];
    v7 = self->_textView;
    if (_AXSHighContrastFocusIndicatorsEnabled())
    {
      v8 = [MEMORY[0x277D75348] blackColor];
      goto LABEL_8;
    }
  }

  else
  {
    [(UILabel *)self->_textView setAlpha:1.0];
    v7 = self->_textView;
  }

  v8 = [MEMORY[0x277D75348] whiteColor];
LABEL_8:
  v9 = v8;
  [(UILabel *)v7 setColor:?];
}

- (void)_updateForAccessibilityChange
{
  imageMask = self->_imageMask;
  v4 = _AXSHighContrastFocusIndicatorsEnabled();
  v5 = *MEMORY[0x277CDA310];
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x277CDA310];
  }

  [(CALayer *)imageMask setCompositingFilter:v6];
  v7 = [(UILabel *)self->_textMask layer];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  [v7 setCompositingFilter:v8];

  [(TVButtonLockup *)self _updateTextForAccessibilityAndFocus];
}

- (void)_updateForFocusStateChange
{
  v3 = [(TVButtonLockup *)self isFocused];
  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)self->_overlayView setAlpha:v4];
  [(_TVImageView *)self->_imageView setAlpha:v5];
  [(UILabel *)self->_titleView setHidden:v3 ^ 1];
  [(CALayer *)self->_imageMask setAllowsEdgeAntialiasing:v3];
  [(TVButtonLockup *)self _updateShadowForLabel:self->_titleView inFocus:v3];

  [(TVButtonLockup *)self _updateTextForAccessibilityAndFocus];
}

- (void)_updateImageMask
{
  v3 = [(_TVImageView *)self->_imageView image];

  if (v3)
  {
    v4 = [(_TVImageView *)self->_imageView image];
    v5 = [MEMORY[0x277D75348] blackColor];
    v13 = [v4 _flatImageWithColor:v5];

    [(CALayer *)self->_imageMask removeFromSuperlayer];
    v6 = [MEMORY[0x277CD9ED0] layer];
    imageMask = self->_imageMask;
    self->_imageMask = v6;

    v8 = self->_imageMask;
    if (_AXSHighContrastFocusIndicatorsEnabled())
    {
      v9 = 0;
    }

    else
    {
      v9 = *MEMORY[0x277CDA310];
    }

    [(CALayer *)v8 setCompositingFilter:v9];
    v10 = [(UIView *)self->_overlayView layer];
    [v10 addSublayer:self->_imageMask];

    v11 = self->_imageMask;
    v12 = v13;
    -[CALayer setContents:](v11, "setContents:", [v13 CGImage]);
    [(_TVImageView *)self->_imageView frame];
    [(CALayer *)self->_imageMask setFrame:?];
  }
}

- (void)_updateShadowForLabel:(id)a3 inFocus:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = v5;
  if (v4)
  {
    if (!_updateShadowForLabel_inFocus____ShadowColor_0)
    {
      v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
      v7 = _updateShadowForLabel_inFocus____ShadowColor_0;
      _updateShadowForLabel_inFocus____ShadowColor_0 = v6;

      v5 = v11;
    }

    [v5 setShadowColor:?];
    v8 = 2.0;
    v9 = 0.0;
    v10 = 6.0;
  }

  else
  {
    [v5 setShadowColor:0];
    v9 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
    v10 = 0.0;
  }

  [v11 setShadowOffset:{v9, v8}];
  [v11 setShadowBlur:v10];
}

@end