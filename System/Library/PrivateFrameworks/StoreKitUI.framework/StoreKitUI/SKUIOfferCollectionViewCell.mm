@interface SKUIOfferCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SKUIOfferCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIOfferCollectionViewCell

- (SKUIOfferCollectionViewCell)initWithFrame:(CGRect)frame
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
        [(SKUIOfferCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIOfferCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v23 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    contentView = [(SKUIOfferCollectionViewCell *)height contentView];
    v19 = [SKUIOfferView alloc];
    [contentView bounds];
    v20 = [(SKUIOfferView *)v19 initWithFrame:?];
    offerView = v17->_offerView;
    v17->_offerView = v20;

    [contentView addSubview:v17->_offerView];
  }

  return v17;
}

- (void)applyLayoutAttributes:(id)attributes
{
  offerView = self->_offerView;
  attributesCopy = attributes;
  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIViewReuseView *)offerView setBackgroundColor:backgroundColor];

  v7.receiver = self;
  v7.super_class = SKUIOfferCollectionViewCell;
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIOfferCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIOfferView prefetchResourcesForViewElement:elementCopy reason:reason context:contextCopy];

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
        [(SKUIOfferCollectionViewCell *)v7 preferredSizeForViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  [SKUIOfferView preferredSizeForViewElement:elementCopy context:contextCopy];
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
        [(SKUIOfferCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIOfferView requestLayoutForViewElement:elementCopy width:contextCopy context:width];
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIOfferCollectionViewCell *)v10 reloadWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  [(SKUIOfferView *)self->_offerView reloadWithViewElement:elementCopy width:contextCopy context:width];
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
        [(SKUIOfferCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIOfferView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
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
  v5.super_class = SKUIOfferCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  offerView = self->_offerView;
  contentView = [(SKUIOfferCollectionViewCell *)self contentView];
  [contentView bounds];
  [(SKUIOfferView *)offerView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  offerView = self->_offerView;
  colorCopy = color;
  [(SKUIViewReuseView *)offerView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIOfferCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:colorCopy];
}

@end