@interface SKUIMediaCollectionViewCell
- (SKUIEmbeddedMediaView)mediaView;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIMediaCollectionViewCell

- (SKUIEmbeddedMediaView)mediaView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIMediaCollectionViewCell *)v3 mediaView:v4];
      }
    }
  }

  mediaView = self->_mediaView;
  if (!mediaView)
  {
    v12 = [(SKUIMediaCollectionViewCell *)self contentView];
    v13 = [SKUIEmbeddedMediaView alloc];
    [v12 bounds];
    v18 = [(SKUIEmbeddedMediaView *)v13 initWithFrame:v14 + self->_contentInset.left, v15 + self->_contentInset.top, v16 - (self->_contentInset.left + self->_contentInset.right), v17 - (self->_contentInset.top + self->_contentInset.bottom)];
    v19 = self->_mediaView;
    self->_mediaView = v18;

    v20 = self->_mediaView;
    v21 = [(SKUIMediaCollectionViewCell *)self backgroundColor];
    [(SKUIEmbeddedMediaView *)v20 setBackgroundColor:v21];

    [v12 addSubview:self->_mediaView];
    mediaView = self->_mediaView;
  }

  return mediaView;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIMediaCollectionViewCell *)v4 setContentInset:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v12), vceqq_f64(*&self->_contentInset.bottom, v13)))) & 1) == 0)
  {
    self->_contentInset.top = top;
    self->_contentInset.left = left;
    self->_contentInset.bottom = bottom;
    self->_contentInset.right = right;
    [(SKUIMediaCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIMediaCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIMediaCollectionViewCell;
  [(SKUICollectionViewCell *)&v17 layoutSubviews];
  mediaView = self->_mediaView;
  v12 = [(SKUIMediaCollectionViewCell *)self contentView];
  [v12 bounds];
  [(SKUIEmbeddedMediaView *)mediaView setFrame:v13 + self->_contentInset.left, v14 + self->_contentInset.top, v15 - (self->_contentInset.left + self->_contentInset.right), v16 - (self->_contentInset.top + self->_contentInset.bottom)];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMediaCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIEmbeddedMediaView *)self->_mediaView setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIMediaCollectionViewCell;
  [(SKUICollectionViewCell *)&v13 setBackgroundColor:v4];
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