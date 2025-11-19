@interface SKUIHorizontalListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SKUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUIHorizontalListCollectionViewCell

- (SKUIHorizontalListCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v16 = [(SKUICollectionViewCell *)&v22 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [SKUIHorizontalListView alloc];
    [(SKUIHorizontalListCollectionViewCell *)v16 bounds];
    v18 = [(SKUIHorizontalListView *)v17 initWithFrame:?];
    horizontalList = v16->_horizontalList;
    v16->_horizontalList = v18;

    v20 = [(SKUIHorizontalListCollectionViewCell *)v16 contentView];
    [v20 addSubview:v16->_horizontalList];
  }

  return v16;
}

- (void)applyLayoutAttributes:(id)a3
{
  horizontalList = self->_horizontalList;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SKUIViewReuseView *)horizontalList setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUIHorizontalListCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  v17 = [SKUIHorizontalListView prefetchResourcesForViewElement:v7 reason:a4 context:v8];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 defaultItemWidthForViewElement:v7];
  [a1 sizeThatFitsWidth:v7 viewElement:v6 context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [SKUIHorizontalListView sizeThatFitsWidth:v7 viewElement:v8 context:a3];
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
  v4 = [(SKUIHorizontalListCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUIHorizontalListView *)horizontalList setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  horizontalList = self->_horizontalList;
  v5 = a3;
  [(SKUIViewReuseView *)horizontalList setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIHorizontalListCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
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