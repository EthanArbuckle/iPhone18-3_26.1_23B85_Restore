@interface SKUISimpleCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setContentChildView:(id)view;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation SKUISimpleCollectionViewCell

- (void)setContentChildView:(id)view
{
  viewCopy = view;
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
  if (contentChildView != viewCopy)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, view);
    [(SKUISimpleCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    contentView = [(SKUISimpleCollectionViewCell *)self contentView];
    v16 = self->_contentChildView;
    backgroundColor = [(SKUISimpleCollectionViewCell *)self backgroundColor];
    [(UIView *)v16 setBackgroundColor:backgroundColor];

    [contentView addSubview:self->_contentChildView];
    [(SKUISimpleCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  bottom = insets.bottom;
  top = insets.top;
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

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
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

  backgroundColor = [attributesCopy backgroundColor];
  [(SKUISimpleCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v14.receiver = self;
  v14.super_class = SKUISimpleCollectionViewCell;
  [(SKUISimpleCollectionViewCell *)&v14 applyLayoutAttributes:attributesCopy];
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
  contentView = [(SKUISimpleCollectionViewCell *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(UIView *)self->_contentChildView setFrame:v13 + self->_contentInsets.left, v15 + self->_contentInsets.top, v17 - (self->_contentInsets.left + self->_contentInsets.right), v19 - (self->_contentInsets.top + self->_contentInsets.bottom)];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
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

  [(UIView *)self->_contentChildView setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUISimpleCollectionViewCell;
  [(SKUISimpleCollectionViewCell *)&v13 setBackgroundColor:colorCopy];
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