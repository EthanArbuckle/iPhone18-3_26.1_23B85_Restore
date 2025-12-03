@interface SKUIActivityIndicatorCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SKUIActivityIndicatorCollectionViewCell

- (SKUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)frame
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
        [(SKUIActivityIndicatorCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIActivityIndicatorCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = objc_alloc_init(SKUIActivityIndicatorView);
    indicatorView = height->_indicatorView;
    height->_indicatorView = v17;

    contentView = [(SKUIActivityIndicatorCollectionViewCell *)height contentView];
    [contentView addSubview:height->_indicatorView];
  }

  return height;
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
        [(SKUIActivityIndicatorCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIActivityIndicatorView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIActivityIndicatorCollectionViewCell preferredSizeForViewElement:context:];
  }

  [SKUIActivityIndicatorView preferredSizeForViewElement:elementCopy context:contextCopy];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
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
        [(SKUIActivityIndicatorCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIActivityIndicatorView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
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
        [(SKUIActivityIndicatorCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIActivityIndicatorView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIActivityIndicatorCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  indicatorView = self->_indicatorView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)indicatorView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v11 layoutSubviews];
  contentView = [(SKUIActivityIndicatorCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(SKUIActivityIndicatorView *)self->_indicatorView sizeThatFits:v5, v7];
  v9 = v8;
  *&v8 = (v5 - v8) * 0.5;
  *&v10 = v7 * 0.5 - v10;
  [(SKUIActivityIndicatorView *)self->_indicatorView setFrame:floorf(*&v8), floorf(*&v10), v9];
}

- (void)setBackgroundColor:(id)color
{
  indicatorView = self->_indicatorView;
  colorCopy = color;
  [(SKUIViewReuseView *)indicatorView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIActivityIndicatorCollectionViewCell preferredSizeForViewElement:context:]";
}

@end