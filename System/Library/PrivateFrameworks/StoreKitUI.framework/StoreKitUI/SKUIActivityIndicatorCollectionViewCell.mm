@interface SKUIActivityIndicatorCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIActivityIndicatorCollectionViewCell

- (SKUIActivityIndicatorCollectionViewCell)initWithFrame:(CGRect)a3
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
        [(SKUIActivityIndicatorCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIActivityIndicatorCollectionViewCell;
  v16 = [(SKUICollectionViewCell *)&v21 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = objc_alloc_init(SKUIActivityIndicatorView);
    indicatorView = v16->_indicatorView;
    v16->_indicatorView = v17;

    v19 = [(SKUIActivityIndicatorCollectionViewCell *)v16 contentView];
    [v19 addSubview:v16->_indicatorView];
  }

  return v16;
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
        [(SKUIActivityIndicatorCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [SKUIActivityIndicatorView prefetchResourcesForViewElement:v7 reason:a4 context:v8];

  return v17;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIActivityIndicatorCollectionViewCell preferredSizeForViewElement:context:];
  }

  [SKUIActivityIndicatorView preferredSizeForViewElement:v5 context:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
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
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIActivityIndicatorCollectionViewCell *)v9 requestLayoutForViewElement:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIActivityIndicatorView requestLayoutForViewElement:v7 width:v8 context:a4];
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
        [(SKUIActivityIndicatorCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [SKUIActivityIndicatorView sizeThatFitsWidth:v7 viewElement:v8 context:a3];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SKUIActivityIndicatorCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  indicatorView = self->_indicatorView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SKUIViewReuseView *)indicatorView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v11 layoutSubviews];
  v3 = [(SKUIActivityIndicatorCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SKUIActivityIndicatorView *)self->_indicatorView sizeThatFits:v5, v7];
  v9 = v8;
  *&v8 = (v5 - v8) * 0.5;
  *&v10 = v7 * 0.5 - v10;
  [(SKUIActivityIndicatorView *)self->_indicatorView setFrame:floorf(*&v8), floorf(*&v10), v9];
}

- (void)setBackgroundColor:(id)a3
{
  indicatorView = self->_indicatorView;
  v5 = a3;
  [(SKUIViewReuseView *)indicatorView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIActivityIndicatorCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIActivityIndicatorCollectionViewCell preferredSizeForViewElement:context:]";
}

@end