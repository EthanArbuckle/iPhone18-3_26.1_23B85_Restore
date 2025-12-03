@interface SKUISectionHeaderCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SKUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUISectionHeaderCollectionViewCell

- (SKUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISectionHeaderCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUISectionHeaderCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    contentView = [(SKUISectionHeaderCollectionViewCell *)height contentView];
    v11 = [SKUISectionHeaderView alloc];
    [contentView bounds];
    v12 = [(SKUISectionHeaderView *)v11 initWithFrame:?];
    headerView = v9->_headerView;
    v9->_headerView = v12;

    [contentView addSubview:v9->_headerView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)attributes
{
  headerView = self->_headerView;
  v5 = MEMORY[0x277D75348];
  attributesCopy = attributes;
  clearColor = [v5 clearColor];
  [(SKUIViewReuseView *)headerView setBackgroundColor:clearColor];

  v8.receiver = self;
  v8.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v8 applyLayoutAttributes:attributesCopy];
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  [SKUISectionHeaderView preferredSizeForViewElement:element context:context];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  [SKUISectionHeaderView sizeThatFitsWidth:element viewElement:context context:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  headerView = self->_headerView;
  contentView = [(SKUISectionHeaderCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUISectionHeaderView *)headerView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  headerView = self->_headerView;
  colorCopy = color;
  [(SKUIViewReuseView *)headerView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISectionHeaderCollectionViewCell initWithFrame:]";
}

@end