@interface SKUIStackedBarCell
- (CGSize)sizeThatFits:(CGSize)result;
- (SKUIStackedBarCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation SKUIStackedBarCell

- (SKUIStackedBarCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStackedBarCell initWithFrame:];
  }

  v27.receiver = self;
  v27.super_class = SKUIStackedBarCell;
  height = [(SKUIStackedBarCell *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = height->_separator;
    height->_separator = v9;

    v11 = height->_separator;
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(UIView *)v11 setBackgroundColor:v12];

    [(SKUIStackedBarCell *)height addSubview:height->_separator];
    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v13 imageNamed:@"AppStoreBrowseCategoryBackChevron" inBundle:v14];

    v16 = [MEMORY[0x277D75220] buttonWithType:1];
    backButton = height->_backButton;
    height->_backButton = v16;

    [(UIButton *)height->_backButton setImage:v15 forState:0];
    [(UIButton *)height->_backButton setTag:1398030659];
    [(SKUIStackedBarCell *)height addSubview:height->_backButton];
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    expandedLabel = height->_expandedLabel;
    height->_expandedLabel = v18;

    v20 = height->_expandedLabel;
    v21 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [(UILabel *)v20 setFont:v21];

    [(SKUIStackedBarCell *)height addSubview:height->_expandedLabel];
    tintColor = [(SKUIStackedBarCell *)height tintColor];
    [(SKUIStackedBarCell *)height setTitleColor:tintColor forState:0];

    titleLabel = [(SKUIStackedBarCell *)height titleLabel];
    v24 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [titleLabel setFont:v24];

    titleLabel2 = [(SKUIStackedBarCell *)height titleLabel];
    [titleLabel2 setTextAlignment:1];
  }

  return height;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (!self->_expanded)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8824 alpha:0.82];
    v6 = 0.25;
    if (!highlighted)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];

      v6 = 0.47;
      v5 = clearColor;
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

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  expandedLabel = self->_expandedLabel;
  if (expanded)
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
  titleLabel = [(SKUIStackedBarCell *)self titleLabel];
  [titleLabel setAlpha:v6];

  [(UIButton *)self->_backButton setAlpha:v5];
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = SKUIStackedBarCell;
  titleCopy = title;
  [(SKUIStackedBarCell *)&v7 setTitle:titleCopy forState:state];
  [(UILabel *)self->_expandedLabel setText:titleCopy, v7.receiver, v7.super_class];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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
  titleLabel = [(SKUIStackedBarCell *)self titleLabel];
  [titleLabel center];
  [(UILabel *)expandedLabel setCenter:?];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackedBarCell initWithFrame:]";
}

@end