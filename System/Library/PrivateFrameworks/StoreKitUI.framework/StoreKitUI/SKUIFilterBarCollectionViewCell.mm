@interface SKUIFilterBarCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SKUIFilterBarCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIFilterBarCollectionViewCell

- (SKUIFilterBarCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFilterBarCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIFilterBarCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    contentView = [(SKUIFilterBarCollectionViewCell *)height contentView];
    v11 = [SKUIFilterBarView alloc];
    [contentView bounds];
    v12 = [(SKUIFilterBarView *)v11 initWithFrame:?];
    filterBarView = v9->_filterBarView;
    v9->_filterBarView = v12;

    [contentView addSubview:v9->_filterBarView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)attributes
{
  filterBarView = self->_filterBarView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)filterBarView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SKUIFilterBarView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SKUIFilterBarView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  filterBarView = self->_filterBarView;
  contentView = [(SKUIFilterBarCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUIFilterBarView *)filterBarView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  filterBarView = self->_filterBarView;
  colorCopy = color;
  [(SKUIViewReuseView *)filterBarView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFilterBarCollectionViewCell initWithFrame:]";
}

@end