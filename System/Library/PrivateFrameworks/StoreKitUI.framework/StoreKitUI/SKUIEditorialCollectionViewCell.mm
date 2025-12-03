@interface SKUIEditorialCollectionViewCell
- (SKUIEditorialCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIEditorialCollectionViewCell

- (SKUIEditorialCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIEditorialCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [[SKUIEditorialCellLayout alloc] initWithCollectionViewCell:height];
    layout = height->_layout;
    height->_layout = v9;
  }

  return height;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SKUIEditorialCollectionViewCell;
  attributesCopy = attributes;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  v5 = [(SKUIEditorialCollectionViewCell *)self layout:v7.receiver];
  backgroundColor = [attributesCopy backgroundColor];

  [v5 setBackgroundColor:backgroundColor];
}

- (void)prepareForReuse
{
  layout = [(SKUIEditorialCollectionViewCell *)self layout];
  [layout prepareForReuse];

  v4.receiver = self;
  v4.super_class = SKUIEditorialCollectionViewCell;
  [(SKUIEditorialCollectionViewCell *)&v4 prepareForReuse];
}

- (void)layoutSubviews
{
  contentView = [(SKUIEditorialCollectionViewCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v12.receiver = self;
  v12.super_class = SKUIEditorialCollectionViewCell;
  [(SKUICollectionViewCell *)&v12 layoutSubviews];
  if (self->_layoutNeedsLayout || (([contentView frame], v9 == v5) ? (v10 = v8 == v7) : (v10 = 0), !v10))
  {
    layout = [(SKUIEditorialCollectionViewCell *)self layout];
    [layout layoutSubviews];
  }

  self->_layoutNeedsLayout = 0;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SKUIEditorialCollectionViewCell;
  colorCopy = color;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
  v5 = [(SKUIEditorialCollectionViewCell *)self layout:v6.receiver];
  [v5 setBackgroundColor:colorCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialCollectionViewCell initWithFrame:]";
}

@end