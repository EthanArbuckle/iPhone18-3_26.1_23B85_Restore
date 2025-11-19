@interface SKUIGroupedHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIGroupedHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SKUIGroupedHeaderView

- (SKUIGroupedHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGroupedHeaderView initWithFrame:];
  }

  v25.receiver = self;
  v25.super_class = SKUIGroupedHeaderView;
  v8 = [(SKUIGroupedHeaderView *)&v25 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [(SKUIGroupedHeaderView *)v8 setBackgroundColor:v9];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v10;

    v12 = v8->_titleLabel;
    v13 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v12 setFont:v13];

    v14 = v8->_titleLabel;
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.43 alpha:1.0];
    [(UILabel *)v14 setTextColor:v15];

    [(SKUIGroupedHeaderView *)v8 addSubview:v8->_titleLabel];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorder = v8->_topBorder;
    v8->_topBorder = v16;

    v18 = v8->_topBorder;
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v18 setBackgroundColor:v19];

    [(SKUIGroupedHeaderView *)v8 addSubview:v8->_topBorder];
    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    botBorder = v8->_botBorder;
    v8->_botBorder = v20;

    v22 = v8->_botBorder;
    v23 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v22 setBackgroundColor:v23];

    [(SKUIGroupedHeaderView *)v8 addSubview:v8->_botBorder];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UILabel *)self->_titleLabel text];
  v6 = [v5 length];

  v7 = 35.0;
  if (v6)
  {
    v7 = width;
  }

  v8 = 56.0;
  if (!v6)
  {
    v8 = height;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIGroupedHeaderView;
  [(SKUIGroupedHeaderView *)&v22 layoutSubviews];
  [(SKUIGroupedHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  MaxY = CGRectGetMaxY(v23);
  titleLabel = self->_titleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4 + 15.0, MaxY - v12 + -5.0, v8 + 30.0, v12, v4, v6, v8, v10);
  [(UILabel *)titleLabel setFrame:?];
  if (storeShouldReverseLayoutDirection())
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v15];
  v16 = [MEMORY[0x277D759A0] mainScreen];
  [v16 scale];
  v18 = 1.0 / v17;

  [(UIView *)self->_topBorder setFrame:v4, v6, v8, v18];
  v19 = [MEMORY[0x277D759A0] mainScreen];
  [v19 scale];
  v21 = 1.0 / v20;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(UIView *)self->_botBorder setFrame:v4, CGRectGetMaxY(v24) - v21, v8, v21];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGroupedHeaderView initWithFrame:]";
}

@end