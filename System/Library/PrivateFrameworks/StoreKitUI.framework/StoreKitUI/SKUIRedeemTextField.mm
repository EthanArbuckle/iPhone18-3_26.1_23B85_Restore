@interface SKUIRedeemTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (SKUIRedeemTextField)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackdropBackground:(BOOL)background;
- (void)setSuppressBorder:(BOOL)border;
@end

@implementation SKUIRedeemTextField

- (SKUIRedeemTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemTextField initWithFrame:];
  }

  v21.receiver = self;
  v21.super_class = SKUIRedeemTextField;
  height = [(SKUIRedeemTextField *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    backdropView = height->_backdropView;
    height->_backdropView = v9;

    [(UIView *)height->_backdropView setHidden:1];
    [(SKUIRedeemTextField *)height insertSubview:height->_backdropView atIndex:0];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = height->_bottomBorderView;
    height->_bottomBorderView = v11;

    v13 = height->_bottomBorderView;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v13 setBackgroundColor:v14];

    [(SKUIRedeemTextField *)height addSubview:height->_bottomBorderView];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = height->_topBorderView;
    height->_topBorderView = v15;

    v17 = height->_topBorderView;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v17 setBackgroundColor:v18];

    [(SKUIRedeemTextField *)height addSubview:height->_topBorderView];
    height->_backdropBackground = 0;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIRedeemTextField *)height setBackgroundColor:whiteColor];

    [(SKUIRedeemTextField *)height setOpaque:1];
  }

  return height;
}

- (void)setBackdropBackground:(BOOL)background
{
  if (self->_backdropBackground != background)
  {
    v13 = v5;
    v14 = v4;
    v15 = v3;
    backgroundCopy = background;
    self->_backdropBackground = background;
    backdropView = self->_backdropView;
    if (background)
    {
      [(UIView *)backdropView setHidden:0];
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(UIView *)backdropView setHidden:1];
      [MEMORY[0x277D75348] whiteColor];
    }
    v12 = ;
    [(SKUIRedeemTextField *)self setBackgroundColor:v12, v6, v13, v14, v15, v7];

    [(SKUIRedeemTextField *)self setOpaque:!backgroundCopy];
  }
}

- (void)setSuppressBorder:(BOOL)border
{
  borderCopy = border;
  self->_suppressBorder = border;
  [(UIView *)self->_bottomBorderView setHidden:?];
  topBorderView = self->_topBorderView;

  [(UIView *)topBorderView setHidden:borderCopy];
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 placeholderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (void)layoutSubviews
{
  [(SKUIRedeemTextField *)self bounds];
  v4 = v3;
  v6 = v5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = 1.0 / v8;

  [(UIView *)self->_bottomBorderView setFrame:0.0, v6 - v9, v4, v9];
  [(UIView *)self->_topBorderView setFrame:0.0, 0.0, v4, v9];
  v10.receiver = self;
  v10.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v10 layoutSubviews];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemTextField initWithFrame:]";
}

@end