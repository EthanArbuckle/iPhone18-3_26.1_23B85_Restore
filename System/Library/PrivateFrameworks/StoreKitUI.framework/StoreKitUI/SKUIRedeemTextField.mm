@interface SKUIRedeemTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (SKUIRedeemTextField)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackdropBackground:(BOOL)a3;
- (void)setSuppressBorder:(BOOL)a3;
@end

@implementation SKUIRedeemTextField

- (SKUIRedeemTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemTextField initWithFrame:];
  }

  v21.receiver = self;
  v21.super_class = SKUIRedeemTextField;
  v8 = [(SKUIRedeemTextField *)&v21 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    backdropView = v8->_backdropView;
    v8->_backdropView = v9;

    [(UIView *)v8->_backdropView setHidden:1];
    [(SKUIRedeemTextField *)v8 insertSubview:v8->_backdropView atIndex:0];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v8->_bottomBorderView;
    v8->_bottomBorderView = v11;

    v13 = v8->_bottomBorderView;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v13 setBackgroundColor:v14];

    [(SKUIRedeemTextField *)v8 addSubview:v8->_bottomBorderView];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v8->_topBorderView;
    v8->_topBorderView = v15;

    v17 = v8->_topBorderView;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v17 setBackgroundColor:v18];

    [(SKUIRedeemTextField *)v8 addSubview:v8->_topBorderView];
    v8->_backdropBackground = 0;
    v19 = [MEMORY[0x277D75348] whiteColor];
    [(SKUIRedeemTextField *)v8 setBackgroundColor:v19];

    [(SKUIRedeemTextField *)v8 setOpaque:1];
  }

  return v8;
}

- (void)setBackdropBackground:(BOOL)a3
{
  if (self->_backdropBackground != a3)
  {
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v9 = a3;
    self->_backdropBackground = a3;
    backdropView = self->_backdropView;
    if (a3)
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

    [(SKUIRedeemTextField *)self setOpaque:!v9];
  }
}

- (void)setSuppressBorder:(BOOL)a3
{
  v3 = a3;
  self->_suppressBorder = a3;
  [(UIView *)self->_bottomBorderView setHidden:?];
  topBorderView = self->_topBorderView;

  [(UIView *)topBorderView setHidden:v3];
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 placeholderRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = SKUIRedeemTextField;
  [(SKUIRedeemTextField *)&v8 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
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