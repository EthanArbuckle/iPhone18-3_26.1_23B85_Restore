@interface SKUIContentUnavailableCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SKUIContentUnavailableCollectionViewCell

- (SKUIContentUnavailableCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIContentUnavailableCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIContentUnavailableCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = objc_alloc_init(SKUIContentUnavailableView);
    contentUnavailableView = height->_contentUnavailableView;
    height->_contentUnavailableView = v17;

    contentView = [(SKUIContentUnavailableCollectionViewCell *)height contentView];
    [contentView addSubview:height->_contentUnavailableView];
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIContentUnavailableCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIContentUnavailableView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIContentUnavailableCollectionViewCell *)v7 preferredSizeForViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  [SKUIContentUnavailableView preferredSizeForViewElement:elementCopy context:contextCopy];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIContentUnavailableCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIContentUnavailableView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIContentUnavailableCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIContentUnavailableView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
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
    [(SKUIContentUnavailableCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  contentUnavailableView = self->_contentUnavailableView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)contentUnavailableView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SKUIContentUnavailableCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SKUIContentUnavailableCollectionViewCell;
  [(SKUICollectionViewCell *)&v9 layoutSubviews];
  contentUnavailableView = self->_contentUnavailableView;
  contentView = [(SKUIContentUnavailableCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUIContentUnavailableView *)contentUnavailableView setFrame:v5 + self->_contentInset.left, v6 + self->_contentInset.top, v7 - (self->_contentInset.left + self->_contentInset.right), v8 - (self->_contentInset.top + self->_contentInset.bottom)];
}

- (void)setBackgroundColor:(id)color
{
  contentUnavailableView = self->_contentUnavailableView;
  colorCopy = color;
  [(SKUIViewReuseView *)contentUnavailableView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIContentUnavailableCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end