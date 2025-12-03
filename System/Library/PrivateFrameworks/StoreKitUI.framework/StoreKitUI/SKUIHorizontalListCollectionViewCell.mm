@interface SKUIHorizontalListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SKUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIHorizontalListCollectionViewCell

- (SKUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIHorizontalListCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIHorizontalListCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v22 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [SKUIHorizontalListView alloc];
    [(SKUIHorizontalListCollectionViewCell *)height bounds];
    v18 = [(SKUIHorizontalListView *)v17 initWithFrame:?];
    horizontalList = height->_horizontalList;
    height->_horizontalList = v18;

    contentView = [(SKUIHorizontalListCollectionViewCell *)height contentView];
    [contentView addSubview:height->_horizontalList];
  }

  return height;
}

- (void)applyLayoutAttributes:(id)attributes
{
  horizontalList = self->_horizontalList;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)horizontalList setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SKUIHorizontalListCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalListCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIHorizontalListView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIHorizontalListCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIHorizontalListView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIHorizontalListCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  horizontalList = self->_horizontalList;
  contentView = [(SKUIHorizontalListCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUIHorizontalListView *)horizontalList setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  horizontalList = self->_horizontalList;
  colorCopy = color;
  [(SKUIViewReuseView *)horizontalList setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIHorizontalListCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end