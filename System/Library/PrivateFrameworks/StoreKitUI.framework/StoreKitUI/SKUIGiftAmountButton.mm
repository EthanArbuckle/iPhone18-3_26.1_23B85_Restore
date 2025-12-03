@interface SKUIGiftAmountButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIGiftAmountButton)initWithFrame:(CGRect)frame;
- (void)_reloadBorderView;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SKUIGiftAmountButton

- (SKUIGiftAmountButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftAmountButton initWithFrame:];
  }

  v28.receiver = self;
  v28.super_class = SKUIGiftAmountButton;
  height = [(SKUIGiftAmountButton *)&v28 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = height->_borderView;
    height->_borderView = v9;

    [(UIView *)height->_borderView setAutoresizingMask:18];
    v11 = height->_borderView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIView *)v11 setBackgroundColor:_systemBackgroundColor];

    v13 = height->_borderView;
    [(SKUIGiftAmountButton *)height bounds];
    [(UIView *)v13 setFrame:?];
    [(UIView *)height->_borderView setUserInteractionEnabled:0];
    [(SKUIGiftAmountButton *)height addSubview:height->_borderView];
    layer = [(UIView *)height->_borderView layer];
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [layer setBorderColor:{objc_msgSend(_labelColor, "CGColor")}];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer setBorderWidth:1.0 / v17];

    [layer setCornerRadius:7.0];
    _labelColor2 = [MEMORY[0x277D75348] _labelColor];
    [(SKUIGiftAmountButton *)height setTitleColor:_labelColor2 forState:0];

    _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
    [(SKUIGiftAmountButton *)height setTitleColor:_secondaryLabelColor forState:1];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(SKUIGiftAmountButton *)height setTitleColor:systemWhiteColor forState:4];

    titleLabel = [(SKUIGiftAmountButton *)height titleLabel];
    v22 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v22];

    titleLabel2 = [(SKUIGiftAmountButton *)height titleLabel];
    [titleLabel2 setMinimumScaleFactor:0.5];

    titleLabel3 = [(SKUIGiftAmountButton *)height titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleLabel4 = [(SKUIGiftAmountButton *)height titleLabel];
    [titleLabel4 setNumberOfLines:1];

    titleLabel5 = [(SKUIGiftAmountButton *)height titleLabel];
    [titleLabel5 setLineBreakMode:2];

    [(SKUIGiftAmountButton *)height setTitleEdgeInsets:0.0, 5.0, 0.0, 5.0];
  }

  return height;
}

- (void)drawRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = SKUIGiftAmountButton;
  [(SKUIGiftAmountButton *)&v4 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(SKUIGiftAmountButton *)self _reloadBorderView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIGiftAmountButton;
  [(SKUIGiftAmountButton *)&v4 setHighlighted:highlighted];
  [(SKUIGiftAmountButton *)self _reloadBorderView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIGiftAmountButton;
  [(SKUIGiftAmountButton *)&v4 setSelected:selected];
  [(SKUIGiftAmountButton *)self _reloadBorderView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = SKUIGiftAmountButton;
  [(SKUIGiftAmountButton *)&v5 sizeThatFits:fits.width, fits.height];
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_reloadBorderView
{
  if (([(SKUIGiftAmountButton *)self isHighlighted]& 1) != 0 || [(SKUIGiftAmountButton *)self isSelected])
  {
    tintColor = [(SKUIGiftAmountButton *)self tintColor];
    [(UIView *)self->_borderView setBackgroundColor:tintColor];
    layer = [(UIView *)self->_borderView layer];
    layer2 = layer;
    v8 = tintColor;
  }

  else
  {
    borderView = self->_borderView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIView *)borderView setBackgroundColor:_systemBackgroundColor];

    layer2 = [(UIView *)self->_borderView layer];
    layer = [MEMORY[0x277D75348] _labelColor];
    tintColor = layer;
    v8 = layer2;
  }

  [layer2 setBorderColor:{objc_msgSend(tintColor, "CGColor")}];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftAmountButton initWithFrame:]";
}

@end