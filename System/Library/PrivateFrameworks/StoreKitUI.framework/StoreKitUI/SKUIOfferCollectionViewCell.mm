@interface SKUIOfferCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIOfferCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUIOfferCollectionViewCell

- (SKUIOfferCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v16 = [(SKUICollectionViewCell *)&v23 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    v18 = [(SKUIOfferCollectionViewCell *)v16 contentView];
    v19 = [SKUIOfferView alloc];
    [v18 bounds];
    v20 = [(SKUIOfferView *)v19 initWithFrame:?];
    offerView = v17->_offerView;
    v17->_offerView = v20;

    [v18 addSubview:v17->_offerView];
  }

  return v17;
}

- (void)applyLayoutAttributes:(id)a3
{
  offerView = self->_offerView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SKUIViewReuseView *)offerView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUIOfferCollectionViewCell;
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIOfferCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIOfferView prefetchResourcesForViewElement:v7 reason:a4 context:v8];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  [SKUIOfferView preferredSizeForViewElement:v5 context:v6];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  [SKUIOfferView requestLayoutForViewElement:v7 width:v8 context:a4];
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
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

  [(SKUIOfferView *)self->_offerView reloadWithViewElement:v8 width:v9 context:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
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

  [SKUIOfferView sizeThatFitsWidth:v7 viewElement:v8 context:a3];
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
  v4 = [(SKUIOfferCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUIOfferView *)offerView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  offerView = self->_offerView;
  v5 = a3;
  [(SKUIViewReuseView *)offerView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIOfferCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

@end