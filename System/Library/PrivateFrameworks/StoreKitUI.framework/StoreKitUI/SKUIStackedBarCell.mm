@interface SKUIStackedBarCell
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUIStackedBarCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation SKUIStackedBarCell

- (SKUIStackedBarCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStackedBarCell initWithFrame:];
  }

  v27.receiver = self;
  v27.super_class = SKUIStackedBarCell;
  v8 = [(SKUIStackedBarCell *)&v27 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v8->_separator;
    v8->_separator = v9;

    v11 = v8->_separator;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SKUIStackedBarCell *)v8 addSubview:v8->_separator];
    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v13 imageNamed:@"AppStoreBrowseCategoryBackChevron" inBundle:v14];

    v16 = [MEMORY[0x277D75220] buttonWithType:1];
    backButton = v8->_backButton;
    v8->_backButton = v16;

    [(UIButton *)v8->_backButton setImage:v15 forState:0];
    [(UIButton *)v8->_backButton setTag:1398030659];
    [(SKUIStackedBarCell *)v8 addSubview:v8->_backButton];
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    expandedLabel = v8->_expandedLabel;
    v8->_expandedLabel = v18;

    v20 = v8->_expandedLabel;
    v21 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [(UILabel *)v20 setFont:v21];

    [(SKUIStackedBarCell *)v8 addSubview:v8->_expandedLabel];
    v22 = [(SKUIStackedBarCell *)v8 tintColor];
    [(SKUIStackedBarCell *)v8 setTitleColor:v22 forState:0];

    v23 = [(SKUIStackedBarCell *)v8 titleLabel];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [v23 setFont:v24];

    v25 = [(SKUIStackedBarCell *)v8 titleLabel];
    [v25 setTextAlignment:1];
  }

  return v8;
}

- (void)setHighlighted:(BOOL)a3
{
  if (!self->_expanded)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8824 alpha:0.82];
    v6 = 0.25;
    if (!a3)
    {
      v7 = [MEMORY[0x277D75348] clearColor];

      v6 = 0.47;
      v5 = v7;
    }

    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SKUIStackedBarCell_setHighlighted___block_invoke;
    v10[3] = &unk_2781F80C8;
    v10[4] = self;
    v11 = v5;
    v9 = v5;
    [v8 animateWithDuration:v10 animations:0 completion:v6];
  }
}

- (void)setExpanded:(BOOL)a3
{
  self->_expanded = a3;
  expandedLabel = self->_expandedLabel;
  if (a3)
  {
    v5 = 1.0;
    CGAffineTransformMakeScale(&v8, 1.0, 1.0);
    [(UILabel *)expandedLabel setTransform:&v8];
    v6 = 0.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 0.705882353, 0.705882353);
    [(UILabel *)expandedLabel setTransform:&v8];
    v6 = 1.0;
    v5 = 0.0;
  }

  [(UILabel *)self->_expandedLabel setAlpha:v5];
  v7 = [(SKUIStackedBarCell *)self titleLabel];
  [v7 setAlpha:v6];

  [(UIButton *)self->_backButton setAlpha:v5];
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SKUIStackedBarCell;
  v6 = a3;
  [(SKUIStackedBarCell *)&v7 setTitle:v6 forState:a4];
  [(UILabel *)self->_expandedLabel setText:v6, v7.receiver, v7.super_class];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  if (!self->_expanded)
  {
    v3 = 25.0;
  }

  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIStackedBarCell;
  [(SKUIStackedBarCell *)&v22 layoutSubviews];
  [(SKUIStackedBarCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  [(SKUIStackedBarCell *)self bounds];
  Width = CGRectGetWidth(v23);
  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  [(SKUIStackedBarCell *)self bounds];
  Height = CGRectGetHeight(v24);
  v25.origin.x = 0.0;
  v25.origin.y = v11;
  v25.size.width = Width;
  v25.size.height = v15;
  v17 = CGRectGetHeight(v25);
  separator = self->_separator;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, Height - v17, Width, v15, v4, v6, v8, v10);
  [(UIView *)separator setFrame:?];
  backButton = self->_backButton;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, 0.0, 47.0, 42.0, v4, v6, v8, v10);
  [(UIButton *)backButton setFrame:?];
  [(UILabel *)self->_expandedLabel sizeToFit];
  expandedLabel = self->_expandedLabel;
  v21 = [(SKUIStackedBarCell *)self titleLabel];
  [v21 center];
  [(UILabel *)expandedLabel setCenter:?];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackedBarCell initWithFrame:]";
}

@end