@interface SKUIRoundedRectButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIRoundedRectButton)initWithFrame:(CGRect)frame;
- (id)_basicAnimationWithKeyPath:(id)path;
- (void)_reloadColors;
- (void)_reloadFonts;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSubtitleWithLabel:(id)label;
- (void)setTitleEdgeInsets:(UIEdgeInsets)insets;
- (void)tintColorDidChange;
@end

@implementation SKUIRoundedRectButton

- (SKUIRoundedRectButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRoundedRectButton initWithFrame:];
  }

  v21.receiver = self;
  v21.super_class = SKUIRoundedRectButton;
  height = [(SKUIRoundedRectButton *)&v21 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(SKUIRoundedRectButton *)height setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
    titleLabel = [(SKUIRoundedRectButton *)v9 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    titleLabel2 = [(SKUIRoundedRectButton *)v9 titleLabel];
    [titleLabel2 setMinimumScaleFactor:0.933333333];

    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v9->_borderView;
    v9->_borderView = v12;

    [(UIView *)v9->_borderView setAutoresizingMask:18];
    v14 = v9->_borderView;
    [(SKUIRoundedRectButton *)v9 bounds];
    [(UIView *)v14 setFrame:?];
    [(UIView *)v9->_borderView setUserInteractionEnabled:0];
    [(SKUIRoundedRectButton *)v9 addSubview:v9->_borderView];
    layer = [(UIView *)v9->_borderView layer];
    tintColor = [(SKUIRoundedRectButton *)v9 tintColor];
    [layer setBorderColor:{objc_msgSend(tintColor, "CGColor")}];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer setBorderWidth:1.0 / v18];

    [layer setCornerRadius:7.0];
    [(SKUIRoundedRectButton *)v9 _reloadColors];
    [(SKUIRoundedRectButton *)v9 _reloadFonts];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__reloadFonts name:*MEMORY[0x277D76810] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v4 dealloc];
}

- (void)setSubtitleWithLabel:(id)label
{
  labelCopy = label;
  if (self->_subtitleLabel != labelCopy)
  {
    [(SKUIRoundedRectButton *)self titleEdgeInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ([(UILabel *)self->_subtitleLabel isDescendantOfView:self])
    {
      [(UILabel *)self->_subtitleLabel removeFromSuperview];
      v7 = v7 + 14.0;
    }

    objc_storeStrong(&self->_subtitleLabel, label);
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      [(SKUIRoundedRectButton *)self insertSubview:subtitleLabel belowSubview:self->_borderView];
      [(SKUIRoundedRectButton *)self _reloadColors];
      v7 = v7 + -14.0;
    }

    v15.receiver = self;
    v15.super_class = SKUIRoundedRectButton;
    [(SKUIRoundedRectButton *)&v15 setTitleEdgeInsets:v7, v9, v11, v13];
  }
}

- (void)layoutSubviews
{
  if (self->_subtitleLabel)
  {
    [(SKUIRoundedRectButton *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UILabel *)self->_subtitleLabel frame];
    v12 = v11;
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    [(UILabel *)self->_subtitleLabel setFrame:0.0, CGRectGetMaxY(v14) - v12 + -5.0, v8, v12];
  }

  v13.receiver = self;
  v13.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v13 layoutSubviews];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v6 setEnabled:?];
  v5 = 0.33;
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  [(SKUIRoundedRectButton *)self setAlpha:v5];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(SKUIRoundedRectButton *)self isHighlighted]!= highlighted)
  {
    layer = [(UIView *)self->_borderView layer];
    [layer removeAnimationForKey:@"borderWidth"];
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [layer setCompositingFilter:v6];

    v7 = [(SKUIRoundedRectButton *)self _basicAnimationWithKeyPath:@"backgroundColor"];
    [v7 setDuration:0.12];
    if (highlightedCopy)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v7 setFromValue:{objc_msgSend(clearColor, "CGColor")}];

      [(SKUIRoundedRectButton *)self tintColor];
    }

    else
    {
      tintColor = [(SKUIRoundedRectButton *)self tintColor];
      [v7 setFromValue:{objc_msgSend(tintColor, "CGColor")}];

      [MEMORY[0x277D75348] clearColor];
    }
    v10 = ;
    [v7 setToValue:{objc_msgSend(v10, "CGColor")}];

    [v7 setDelegate:self];
    [layer addAnimation:v7 forKey:@"borderWidth"];
  }

  v11.receiver = self;
  v11.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v11 setHighlighted:highlightedCopy];
}

- (void)setTitleEdgeInsets:(UIEdgeInsets)insets
{
  if (self->_subtitleLabel)
  {
    insets.top = insets.top + -14.0;
  }

  v3.receiver = self;
  v3.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v3 setTitleEdgeInsets:insets.top, insets.left, insets.bottom, insets.right];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v5 sizeThatFits:fits.width, 45.0];
  v4 = 45.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  [(SKUIRoundedRectButton *)self _reloadColors];
  v3.receiver = self;
  v3.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v3 tintColorDidChange];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(SKUIRoundedRectButton *)self isHighlighted:stop];
  layer = [(UIView *)self->_borderView layer];
  if (v5)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [layer setCompositingFilter:v6];
  }

  else
  {
    [layer setCompositingFilter:0];
  }
}

- (id)_basicAnimationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:path];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (void)_reloadColors
{
  tintColor = [(SKUIRoundedRectButton *)self tintColor];
  layer = [(UIView *)self->_borderView layer];
  v4 = tintColor;
  [layer setBorderColor:{objc_msgSend(tintColor, "CGColor")}];

  [(UILabel *)self->_subtitleLabel setTextColor:tintColor];
  [(SKUIRoundedRectButton *)self setTitleColor:tintColor forState:0];
}

- (void)_reloadFonts
{
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
  titleLabel = [(SKUIRoundedRectButton *)self titleLabel];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [titleLabel setFont:v4];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRoundedRectButton initWithFrame:]";
}

@end