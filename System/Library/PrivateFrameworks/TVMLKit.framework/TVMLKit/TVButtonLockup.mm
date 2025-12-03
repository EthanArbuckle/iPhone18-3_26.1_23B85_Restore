@interface TVButtonLockup
- (CGSize)sizeThatFits:(CGSize)fits;
- (TVButtonLockup)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style groupName:(id)name;
- (void)_updateForAccessibilityChange;
- (void)_updateForFocusStateChange;
- (void)_updateImageMask;
- (void)_updateShadowForLabel:(id)label inFocus:(BOOL)focus;
- (void)_updateTextForAccessibilityAndFocus;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setBackgroundColor:(id)color;
- (void)setDisabled:(BOOL)disabled;
- (void)setHighlightColor:(id)color;
- (void)setImageView:(id)view;
- (void)setText:(id)text minimumScale:(double)scale maxNumberOfLines:(unint64_t)lines;
- (void)setTitleView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TVButtonLockup

- (TVButtonLockup)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style groupName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = TVButtonLockup;
  height = [(TVButtonLockup *)&v34 initWithFrame:x, y, width, height];
  if (height)
  {
    v13 = objc_alloc(MEMORY[0x277D75F68]);
    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    v18 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], v15, v16, v17}];
    floatingView = height->_floatingView;
    height->_floatingView = v18;

    [(_UIFloatingContentView *)height->_floatingView setBackgroundColor:0 forState:8];
    [(_UIFloatingContentView *)height->_floatingView setBackgroundColor:0 forState:1];
    [(_UIFloatingContentView *)height->_floatingView setFocusedSizeIncrease:14.0];
    [(_UIFloatingContentView *)height->_floatingView setContentMotionRotation:0.0 translation:0.0, 8.0, 0.0];
    [(_UIFloatingContentView *)height->_floatingView setFocusScaleAnchorPoint:0.5, 1.0];
    [(_UIFloatingContentView *)height->_floatingView setShadowRadius:30.0];
    [(_UIFloatingContentView *)height->_floatingView setShadowVerticalOffset:15.0];
    [(_UIFloatingContentView *)height->_floatingView setShadowOpacity:0.25];
    [(_UIFloatingContentView *)height->_floatingView setCornerRadius:6.0];
    [(_UIFloatingContentView *)height->_floatingView setContinuousCornerEnabled:0];
    [(_UIFloatingContentView *)height->_floatingView setVisualEffectContainerViewScaleFactor:0.988];
    [(TVButtonLockup *)height addSubview:height->_floatingView];
    height->_backdropStyle = style;
    height->_vibrantLabelThemeOverride = 0;
    v20 = [_TVVisualEffectView alloc];
    v21 = [MEMORY[0x277D75210] effectWithStyle:height->_backdropStyle];
    v22 = [(_TVVisualEffectView *)v20 initWithEffect:v21];
    backdropView = height->_backdropView;
    height->_backdropView = v22;

    [(_TVVisualEffectView *)height->_backdropView _setCornerRadius:6.0];
    if ([nameCopy length])
    {
      [(_TVVisualEffectView *)height->_backdropView _setGroupName:nameCopy];
    }

    visualEffectContainerView = [(_UIFloatingContentView *)height->_floatingView visualEffectContainerView];
    [visualEffectContainerView addSubview:height->_backdropView];

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v15, v16, v17}];
    overlayView = height->_overlayView;
    height->_overlayView = v25;

    [(UIView *)height->_overlayView setUserInteractionEnabled:0];
    v27 = height->_overlayView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v27 setBackgroundColor:whiteColor];

    [(UIView *)height->_overlayView setAlpha:0.0];
    [(UIView *)height->_overlayView _setCornerRadius:6.0];
    contentView = [(_UIFloatingContentView *)height->_floatingView contentView];
    [contentView addSubview:height->_overlayView];

    v30 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:height action:sel__selectButtonAction_];
    [(TVButtonLockup *)height addGestureRecognizer:v30];
    v31 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:height action:sel__playButtonAction_];
    [v31 setAllowedPressTypes:&unk_287E487C8];
    [(TVButtonLockup *)height addGestureRecognizer:v31];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:height selector:sel__updateForAccessibilityChange name:*MEMORY[0x277D81CF8] object:0];
  }

  return height;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v4 dealloc];
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    backdropView = self->_backdropView;
    v4 = 1.0;
    if (disabled)
    {
      v4 = 0.5;
    }

    [(_TVVisualEffectView *)backdropView setAlpha:v4];
  }
}

- (void)setText:(id)text minimumScale:(double)scale maxNumberOfLines:(unint64_t)lines
{
  textCopy = text;
  attributedText = [(UILabel *)self->_textView attributedText];
  if ([attributedText isEqualToAttributedString:textCopy] && (-[UILabel minimumScaleFactor](self->_textView, "minimumScaleFactor"), v9 == scale))
  {
    numberOfLines = [(UILabel *)self->_textView numberOfLines];

    if (numberOfLines == lines)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (self->_imageView)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    [(_TVImageView *)self->_imageView removeFromSuperview];
    imageView = self->_imageView;
    self->_imageView = 0;

    [(CALayer *)self->_imageMask removeFromSuperlayer];
    imageMask = self->_imageMask;
    self->_imageMask = 0;
  }

  [(UILabel *)self->_textView removeFromSuperview];
  layer = [(UILabel *)self->_textMask layer];
  [layer removeFromSuperlayer];

  v15 = objc_alloc(MEMORY[0x277D756B8]);
  v16 = *MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *(MEMORY[0x277CBF3A0] + 24);
  v20 = [v15 initWithFrame:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
  textView = self->_textView;
  self->_textView = v20;

  [(UILabel *)self->_textView setAttributedText:textCopy];
  [(UILabel *)self->_textView setOpaque:0];
  [(UILabel *)self->_textView setBackgroundColor:0];
  [(UILabel *)self->_textView setNumberOfLines:lines];
  [(UILabel *)self->_textView setAdjustsFontForContentSizeCategory:1];
  contentView = [(_UIFloatingContentView *)self->_floatingView contentView];
  [contentView insertSubview:self->_textView above:self->_overlayView];

  v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v16, v17, v18, v19}];
  textMask = self->_textMask;
  self->_textMask = v23;

  v25 = [textCopy mutableCopy];
  v26 = *MEMORY[0x277D740C0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  string = [textCopy string];
  [v25 addAttribute:v26 value:whiteColor range:{0, objc_msgSend(string, "length")}];

  v29 = self->_textMask;
  v30 = [v25 copy];
  [(UILabel *)v29 setAttributedText:v30];

  [(UILabel *)self->_textMask setOpaque:0];
  [(UILabel *)self->_textMask setBackgroundColor:0];
  [(UILabel *)self->_textMask setNumberOfLines:lines];
  [(UILabel *)self->_textMask setAdjustsFontForContentSizeCategory:1];
  layer2 = [(UILabel *)self->_textMask layer];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    v32 = 0;
  }

  else
  {
    v32 = *MEMORY[0x277CDA310];
  }

  [layer2 setCompositingFilter:v32];

  layer3 = [(UIView *)self->_overlayView layer];
  layer4 = [(UILabel *)self->_textMask layer];
  [layer3 addSublayer:layer4];

  if (scale > 0.0 && scale < 1.0)
  {
    [(UILabel *)self->_textView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_textView setMinimumScaleFactor:scale];
    [(UILabel *)self->_textMask setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_textMask setMinimumScaleFactor:scale];
  }

  [(TVButtonLockup *)self setNeedsLayout];

LABEL_15:
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  v20 = viewCopy;
  if (imageView == viewCopy)
  {
    if (!viewCopy)
    {
      goto LABEL_10;
    }

    image = [(_TVImageView *)imageView image];

    if (image)
    {
      goto LABEL_9;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__updateImageMask name:@"TVMLImageViewImageDidLoadNotification" object:self->_imageView];
  }

  else
  {
    textView = self->_textView;
    if (textView)
    {
      [(UILabel *)textView removeFromSuperview];
      v8 = self->_textView;
      self->_textView = 0;

      layer = [(UILabel *)self->_textMask layer];
      [layer removeFromSuperlayer];

      textMask = self->_textMask;
      self->_textMask = 0;
    }

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

    [(_TVImageView *)self->_imageView removeFromSuperview];
    [(CALayer *)self->_imageMask removeFromSuperlayer];
    imageMask = self->_imageMask;
    self->_imageMask = 0;

    objc_storeStrong(&self->_imageView, view);
    if (self->_imageView)
    {
      contentView = [(_UIFloatingContentView *)self->_floatingView contentView];
      [contentView insertSubview:self->_imageView below:self->_overlayView];

      image2 = [(_TVImageView *)self->_imageView image];

      if (!image2)
      {
        defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter4 removeObserver:self name:@"TVMLImageViewImageDidLoadNotification" object:0];

        defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter5 addObserver:self selector:sel__updateImageMask name:@"TVMLImageViewImageDidLoadNotification" object:self->_imageView];

        goto LABEL_10;
      }

LABEL_9:
      [(TVButtonLockup *)self _updateImageMask];
    }
  }

LABEL_10:
  [(TVButtonLockup *)self setNeedsLayout];
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  titleView = self->_titleView;
  v7 = viewCopy;
  if (titleView != viewCopy)
  {
    [(UILabel *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    if (self->_titleView)
    {
      [(TVButtonLockup *)self addSubview:?];
    }
  }

  [(TVButtonLockup *)self setNeedsLayout];
}

- (void)setBackgroundColor:(id)color
{
  v11.receiver = self;
  v11.super_class = TVButtonLockup;
  colorCopy = color;
  [(TVButtonLockup *)&v11 setBackgroundColor:colorCopy];
  v5 = [colorCopy copy];

  backgroundColor = self->__backgroundColor;
  self->__backgroundColor = v5;

  if (self->__backgroundColor)
  {
    [(_TVVisualEffectView *)self->_backdropView removeFromSuperview];
    contentView = [(_UIFloatingContentView *)self->_floatingView contentView];
    v8 = contentView;
    v9 = self->__backgroundColor;
  }

  else
  {
    visualEffectContainerView = [(_UIFloatingContentView *)self->_floatingView visualEffectContainerView];
    [visualEffectContainerView addSubview:self->_backdropView];

    contentView = [(_UIFloatingContentView *)self->_floatingView contentView];
    v8 = contentView;
    v9 = 0;
  }

  [contentView setBackgroundColor:v9];
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_highlightColor, color);
    overlayView = self->_overlayView;
    if (self->_highlightColor)
    {
      [(UIView *)self->_overlayView setBackgroundColor:?];
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UIView *)overlayView setBackgroundColor:whiteColor];
    }

    colorCopy = v8;
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = TVButtonLockup;
  coordinatorCopy = coordinator;
  [(TVButtonLockup *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinatorCopy];
  if ([(TVButtonLockup *)self isFocused:v8.receiver])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  [(_UIFloatingContentView *)self->_floatingView setControlState:v7 withAnimationCoordinator:coordinatorCopy];

  [(TVButtonLockup *)self _updateForFocusStateChange];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = TVButtonLockup;
  beganCopy = began;
  [(TVButtonLockup *)&v9 pressesBegan:beganCopy withEvent:event];
  anyObject = [beganCopy anyObject];

  type = [anyObject type];
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    if ([(TVButtonLockup *)self isFocused])
    {
      [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
    }
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 pressesCancelled:cancelled withEvent:event];
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

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 pressesEnded:ended withEvent:event];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesBegan:began withEvent:event];
  [(_UIFloatingContentView *)self->_floatingView setControlState:9 animated:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v20.receiver = self;
  v20.super_class = TVButtonLockup;
  movedCopy = moved;
  [(TVButtonLockup *)&v20 touchesMoved:movedCopy withEvent:event];
  [(TVButtonLockup *)self bounds:v20.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  anyObject = [movedCopy anyObject];

  [anyObject locationInView:self];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesEnded:ended withEvent:event];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:1];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v5 touchesCancelled:cancelled withEvent:event];
  if (([(_UIFloatingContentView *)self->_floatingView controlState]& 1) != 0)
  {
    [(_UIFloatingContentView *)self->_floatingView setControlState:0 animated:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self tv_itemWidth:fits.width];
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

  titleView = [(TVButtonLockup *)self titleView];
  [titleView tv_margin];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  titleView2 = [(TVButtonLockup *)self titleView];
  [titleView2 sizeThatFits:{v5 - (v12 + v16), 0.0}];
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

  titleView = [(TVButtonLockup *)self titleView];
  [titleView tv_margin];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v4 - (v11 + v13);
  titleView2 = [(TVButtonLockup *)self titleView];
  [titleView2 sizeThatFits:{v14, 0.0}];
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
    layer = [(UILabel *)self->_textMask layer];
    v34 = v32;
    v9 = v31;
    v17 = v30;
    v11 = v29;
    v14 = v44;
    [layer setFrame:{v28, v34, v25, v27}];
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

  titleView3 = [(TVButtonLockup *)self titleView];
  [titleView3 setFrame:{v11, v6 + v9 + -7.0, v14, v17 + 2.0 + 12.0}];

  [(TVButtonLockup *)self _updateForFocusStateChange];
  [(TVButtonLockup *)self bounds];
  [(TVButtonLockup *)self _setFocusableContentMargins:0.0, 0.0, CGRectGetHeight(v47) - v6, 0.0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    traitCollection = [(TVButtonLockup *)self traitCollection];
    if ([traitCollection userInterfaceStyle])
    {
      [changeCopy userInterfaceStyle];
      traitCollection2 = [(TVButtonLockup *)self traitCollection];
      [traitCollection2 userInterfaceStyle];
    }
  }

  v7.receiver = self;
  v7.super_class = TVButtonLockup;
  [(TVButtonLockup *)&v7 traitCollectionDidChange:changeCopy];
}

- (void)_updateTextForAccessibilityAndFocus
{
  isFocused = [(TVButtonLockup *)self isFocused];
  textView = self->_textView;
  if (isFocused)
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
      blackColor = [MEMORY[0x277D75348] blackColor];
      goto LABEL_8;
    }
  }

  else
  {
    [(UILabel *)self->_textView setAlpha:1.0];
    v7 = self->_textView;
  }

  blackColor = [MEMORY[0x277D75348] whiteColor];
LABEL_8:
  v9 = blackColor;
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
  layer = [(UILabel *)self->_textMask layer];
  if (_AXSHighContrastFocusIndicatorsEnabled())
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  [layer setCompositingFilter:v8];

  [(TVButtonLockup *)self _updateTextForAccessibilityAndFocus];
}

- (void)_updateForFocusStateChange
{
  isFocused = [(TVButtonLockup *)self isFocused];
  if (isFocused)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (isFocused)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)self->_overlayView setAlpha:v4];
  [(_TVImageView *)self->_imageView setAlpha:v5];
  [(UILabel *)self->_titleView setHidden:isFocused ^ 1];
  [(CALayer *)self->_imageMask setAllowsEdgeAntialiasing:isFocused];
  [(TVButtonLockup *)self _updateShadowForLabel:self->_titleView inFocus:isFocused];

  [(TVButtonLockup *)self _updateTextForAccessibilityAndFocus];
}

- (void)_updateImageMask
{
  image = [(_TVImageView *)self->_imageView image];

  if (image)
  {
    image2 = [(_TVImageView *)self->_imageView image];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v13 = [image2 _flatImageWithColor:blackColor];

    [(CALayer *)self->_imageMask removeFromSuperlayer];
    layer = [MEMORY[0x277CD9ED0] layer];
    imageMask = self->_imageMask;
    self->_imageMask = layer;

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
    layer2 = [(UIView *)self->_overlayView layer];
    [layer2 addSublayer:self->_imageMask];

    v11 = self->_imageMask;
    v12 = v13;
    -[CALayer setContents:](v11, "setContents:", [v13 CGImage]);
    [(_TVImageView *)self->_imageView frame];
    [(CALayer *)self->_imageMask setFrame:?];
  }
}

- (void)_updateShadowForLabel:(id)label inFocus:(BOOL)focus
{
  focusCopy = focus;
  labelCopy = label;
  v11 = labelCopy;
  if (focusCopy)
  {
    if (!_updateShadowForLabel_inFocus____ShadowColor_0)
    {
      v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
      v7 = _updateShadowForLabel_inFocus____ShadowColor_0;
      _updateShadowForLabel_inFocus____ShadowColor_0 = v6;

      labelCopy = v11;
    }

    [labelCopy setShadowColor:?];
    v8 = 2.0;
    v9 = 0.0;
    v10 = 6.0;
  }

  else
  {
    [labelCopy setShadowColor:0];
    v9 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
    v10 = 0.0;
  }

  [v11 setShadowOffset:{v9, v8}];
  [v11 setShadowBlur:v10];
}

@end