@interface SKUIRoundedRectButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIRoundedRectButton)initWithFrame:(CGRect)a3;
- (id)_basicAnimationWithKeyPath:(id)a3;
- (void)_reloadColors;
- (void)_reloadFonts;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSubtitleWithLabel:(id)a3;
- (void)setTitleEdgeInsets:(UIEdgeInsets)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIRoundedRectButton

- (SKUIRoundedRectButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRoundedRectButton initWithFrame:];
  }

  v21.receiver = self;
  v21.super_class = SKUIRoundedRectButton;
  v8 = [(SKUIRoundedRectButton *)&v21 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIRoundedRectButton *)v8 setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
    v10 = [(SKUIRoundedRectButton *)v9 titleLabel];
    [v10 setAdjustsFontSizeToFitWidth:1];

    v11 = [(SKUIRoundedRectButton *)v9 titleLabel];
    [v11 setMinimumScaleFactor:0.933333333];

    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v9->_borderView;
    v9->_borderView = v12;

    [(UIView *)v9->_borderView setAutoresizingMask:18];
    v14 = v9->_borderView;
    [(SKUIRoundedRectButton *)v9 bounds];
    [(UIView *)v14 setFrame:?];
    [(UIView *)v9->_borderView setUserInteractionEnabled:0];
    [(SKUIRoundedRectButton *)v9 addSubview:v9->_borderView];
    v15 = [(UIView *)v9->_borderView layer];
    v16 = [(SKUIRoundedRectButton *)v9 tintColor];
    [v15 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    [v15 setBorderWidth:1.0 / v18];

    [v15 setCornerRadius:7.0];
    [(SKUIRoundedRectButton *)v9 _reloadColors];
    [(SKUIRoundedRectButton *)v9 _reloadFonts];
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v9 selector:sel__reloadFonts name:*MEMORY[0x277D76810] object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v4 dealloc];
}

- (void)setSubtitleWithLabel:(id)a3
{
  v5 = a3;
  if (self->_subtitleLabel != v5)
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

    objc_storeStrong(&self->_subtitleLabel, a3);
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v6 setEnabled:?];
  v5 = 0.33;
  if (v3)
  {
    v5 = 1.0;
  }

  [(SKUIRoundedRectButton *)self setAlpha:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SKUIRoundedRectButton *)self isHighlighted]!= a3)
  {
    v5 = [(UIView *)self->_borderView layer];
    [v5 removeAnimationForKey:@"borderWidth"];
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v5 setCompositingFilter:v6];

    v7 = [(SKUIRoundedRectButton *)self _basicAnimationWithKeyPath:@"backgroundColor"];
    [v7 setDuration:0.12];
    if (v3)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
      [v7 setFromValue:{objc_msgSend(v8, "CGColor")}];

      [(SKUIRoundedRectButton *)self tintColor];
    }

    else
    {
      v9 = [(SKUIRoundedRectButton *)self tintColor];
      [v7 setFromValue:{objc_msgSend(v9, "CGColor")}];

      [MEMORY[0x277D75348] clearColor];
    }
    v10 = ;
    [v7 setToValue:{objc_msgSend(v10, "CGColor")}];

    [v7 setDelegate:self];
    [v5 addAnimation:v7 forKey:@"borderWidth"];
  }

  v11.receiver = self;
  v11.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v11 setHighlighted:v3];
}

- (void)setTitleEdgeInsets:(UIEdgeInsets)a3
{
  if (self->_subtitleLabel)
  {
    a3.top = a3.top + -14.0;
  }

  v3.receiver = self;
  v3.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v3 setTitleEdgeInsets:a3.top, a3.left, a3.bottom, a3.right];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = SKUIRoundedRectButton;
  [(SKUIRoundedRectButton *)&v5 sizeThatFits:a3.width, 45.0];
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(SKUIRoundedRectButton *)self isHighlighted:a3];
  v7 = [(UIView *)self->_borderView layer];
  if (v5)
  {
    v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v7 setCompositingFilter:v6];
  }

  else
  {
    [v7 setCompositingFilter:0];
  }
}

- (id)_basicAnimationWithKeyPath:(id)a3
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:a3];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (void)_reloadColors
{
  v5 = [(SKUIRoundedRectButton *)self tintColor];
  v3 = [(UIView *)self->_borderView layer];
  v4 = v5;
  [v3 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  [(UILabel *)self->_subtitleLabel setTextColor:v5];
  [(SKUIRoundedRectButton *)self setTitleColor:v5 forState:0];
}

- (void)_reloadFonts
{
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
  v3 = [(SKUIRoundedRectButton *)self titleLabel];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [v3 setFont:v4];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRoundedRectButton initWithFrame:]";
}

@end