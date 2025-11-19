@interface SKUISimpleCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentChildView:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
@end

@implementation SKUISimpleCollectionViewCell

- (void)setContentChildView:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISimpleCollectionViewCell *)v6 setContentChildView:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  contentChildView = self->_contentChildView;
  if (contentChildView != v5)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, a3);
    [(SKUISimpleCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    v15 = [(SKUISimpleCollectionViewCell *)self contentView];
    v16 = self->_contentChildView;
    v17 = [(SKUISimpleCollectionViewCell *)self backgroundColor];
    [(UIView *)v16 setBackgroundColor:v17];

    [v15 addSubview:self->_contentChildView];
    [(SKUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
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
        [(SKUISimpleCollectionViewCell *)v4 setContentInsets:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v12), vceqq_f64(*&self->_contentInsets.bottom, v13)))) & 1) == 0)
  {
    self->_contentInsets.top = top;
    self->_contentInsets.left = left;
    self->_contentInsets.bottom = bottom;
    self->_contentInsets.right = right;
    [(SKUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISimpleCollectionViewCell *)v5 applyLayoutAttributes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 backgroundColor];
  [(SKUISimpleCollectionViewCell *)self setBackgroundColor:v13];

  v14.receiver = self;
  v14.super_class = SKUISimpleCollectionViewCell;
  [(SKUISimpleCollectionViewCell *)&v14 applyLayoutAttributes:v4];
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
        [(SKUISimpleCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUISimpleCollectionViewCell;
  [(SKUISimpleCollectionViewCell *)&v20 layoutSubviews];
  v11 = [(SKUISimpleCollectionViewCell *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(UIView *)self->_contentChildView setFrame:v13 + self->_contentInsets.left, v15 + self->_contentInsets.top, v17 - (self->_contentInsets.left + self->_contentInsets.right), v19 - (self->_contentInsets.top + self->_contentInsets.bottom)];
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
        [(SKUISimpleCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIView *)self->_contentChildView setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUISimpleCollectionViewCell;
  [(SKUISimpleCollectionViewCell *)&v13 setBackgroundColor:v4];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end