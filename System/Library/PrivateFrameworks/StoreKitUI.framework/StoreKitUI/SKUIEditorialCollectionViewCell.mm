@interface SKUIEditorialCollectionViewCell
- (SKUIEditorialCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUIEditorialCollectionViewCell

- (SKUIEditorialCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIEditorialCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [[SKUIEditorialCellLayout alloc] initWithCollectionViewCell:v8];
    layout = v8->_layout;
    v8->_layout = v9;
  }

  return v8;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = SKUIEditorialCollectionViewCell;
  v4 = a3;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:v4];
  v5 = [(SKUIEditorialCollectionViewCell *)self layout:v7.receiver];
  v6 = [v4 backgroundColor];

  [v5 setBackgroundColor:v6];
}

- (void)prepareForReuse
{
  v3 = [(SKUIEditorialCollectionViewCell *)self layout];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = SKUIEditorialCollectionViewCell;
  [(SKUIEditorialCollectionViewCell *)&v4 prepareForReuse];
}

- (void)layoutSubviews
{
  v3 = [(SKUIEditorialCollectionViewCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SKUIEditorialCollectionViewCell;
  [(SKUICollectionViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([v3 frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    v11 = [(SKUIEditorialCollectionViewCell *)self layout];
    [v11 layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUIEditorialCollectionViewCell;
  v4 = a3;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v4];
  v5 = [(SKUIEditorialCollectionViewCell *)self layout:v6.receiver];
  [v5 setBackgroundColor:v4];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCollectionViewCell initWithFrame:]";
}

@end