@interface SKUIBrickGridCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (UIImage)brickImage;
- (void)applyEditorialLayout:(id)a3 orientation:(int64_t)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBrickImage:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
@end

@implementation SKUIBrickGridCollectionViewCell

- (void)applyEditorialLayout:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIBrickGridCollectionViewCell *)v7 applyEditorialLayout:v8 orientation:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  editorialContainerView = self->_editorialContainerView;
  if (v6)
  {
    if (!editorialContainerView)
    {
      v16 = objc_alloc_init(MEMORY[0x277D75D18]);
      v17 = self->_editorialContainerView;
      self->_editorialContainerView = v16;

      v18 = self->_editorialContainerView;
      v19 = [(SKUIBrickGridCollectionViewCell *)self backgroundColor];
      [(UIView *)v18 setBackgroundColor:v19];

      v20 = [(SKUIBrickGridCollectionViewCell *)self contentView];
      [v20 addSubview:self->_editorialContainerView];

      [(SKUIBrickGridCollectionViewCell *)self setNeedsLayout];
    }

    if (!self->_editorialCellLayout)
    {
      v21 = [[SKUIEditorialCellLayout alloc] initWithParentView:self->_editorialContainerView];
      editorialCellLayout = self->_editorialCellLayout;
      self->_editorialCellLayout = v21;

      [(SKUIEditorialCellLayout *)self->_editorialCellLayout setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    }

    [(UIView *)self->_editorialContainerView setHidden:0];
  }

  else
  {
    [(UIView *)editorialContainerView setHidden:1];
  }

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout applyEditorialLayout:v6 withOrientation:a4 expanded:1];
}

- (UIImage)brickImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIBrickGridCollectionViewCell *)v3 brickImage:v4];
      }
    }
  }

  v11 = [(UIImageView *)self->_brickImageView image];

  return v11;
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickGridCollectionViewCell *)v5 setAccessibilityLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_accessibilityLabel != v4)
  {
    v13 = [(NSString *)v4 copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v13;

    [(UIImageView *)self->_brickImageView setAccessibilityLabel:v4];
  }
}

- (void)setBrickImage:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickGridCollectionViewCell *)v5 setBrickImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIBrickGridCollectionViewCell *)self brickImage];

  if (v13 != v4)
  {
    brickImageView = self->_brickImageView;
    if (v4)
    {
      if (!brickImageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_brickImageView;
        self->_brickImageView = v15;

        [(UIImageView *)self->_brickImageView setAccessibilityLabel:self->_accessibilityLabel];
        v17 = self->_brickImageView;
        v18 = [(SKUIBrickGridCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:v18];

        v19 = [(SKUIBrickGridCollectionViewCell *)self contentView];
        [v19 addSubview:self->_brickImageView];

        [(SKUIBrickGridCollectionViewCell *)self setNeedsLayout];
        brickImageView = self->_brickImageView;
      }

      [(UIImageView *)brickImageView setImage:v4];
      [(UIImageView *)self->_brickImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)brickImageView removeFromSuperview];
      v20 = self->_brickImageView;
      self->_brickImageView = 0;
    }
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickGridCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setColoringWithColorScheme:v4];
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
        [(SKUIBrickGridCollectionViewCell *)v4 setContentInsets:v5, v6, v7, v8, v9, v10, v11];
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
    [(SKUIBrickGridCollectionViewCell *)self setNeedsLayout];
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
        [(SKUIBrickGridCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIBrickGridCollectionViewCell;
  [(SKUIBrickGridCollectionViewCell *)&v24 layoutSubviews];
  v11 = [(SKUIBrickGridCollectionViewCell *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  top = self->_contentInsets.top;
  brickImageView = self->_brickImageView;
  if (brickImageView)
  {
    [(UIImageView *)brickImageView frame];
    v19 = v18;
    v21 = v20;
    left = self->_contentInsets.left;
    [(UIImageView *)self->_brickImageView setFrame:left, top];
    v25.origin.x = left;
    v25.origin.y = top;
    v25.size.width = v19;
    v25.size.height = v21;
    top = CGRectGetMaxY(v25);
  }

  editorialContainerView = self->_editorialContainerView;
  if (editorialContainerView)
  {
    [(UIView *)editorialContainerView frame];
    [(UIView *)self->_editorialContainerView setFrame:self->_contentInsets.left, top + 10.0, v13 - self->_contentInsets.right - self->_contentInsets.left, v15 - self->_contentInsets.bottom - (top + 10.0)];
    [(SKUIEditorialCellLayout *)self->_editorialCellLayout layoutSubviews];
  }
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
        [(SKUIBrickGridCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIImageView *)self->_brickImageView setBackgroundColor:v4];
  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setBackgroundColor:v4];
  [(UIView *)self->_editorialContainerView setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIBrickGridCollectionViewCell;
  [(SKUIBrickGridCollectionViewCell *)&v13 setBackgroundColor:v4];
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