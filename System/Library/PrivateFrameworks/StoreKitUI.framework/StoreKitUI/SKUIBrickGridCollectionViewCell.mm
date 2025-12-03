@interface SKUIBrickGridCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (UIImage)brickImage;
- (void)applyEditorialLayout:(id)layout orientation:(int64_t)orientation;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setBackgroundColor:(id)color;
- (void)setBrickImage:(id)image;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation SKUIBrickGridCollectionViewCell

- (void)applyEditorialLayout:(id)layout orientation:(int64_t)orientation
{
  layoutCopy = layout;
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
  if (layoutCopy)
  {
    if (!editorialContainerView)
    {
      v16 = objc_alloc_init(MEMORY[0x277D75D18]);
      v17 = self->_editorialContainerView;
      self->_editorialContainerView = v16;

      v18 = self->_editorialContainerView;
      backgroundColor = [(SKUIBrickGridCollectionViewCell *)self backgroundColor];
      [(UIView *)v18 setBackgroundColor:backgroundColor];

      contentView = [(SKUIBrickGridCollectionViewCell *)self contentView];
      [contentView addSubview:self->_editorialContainerView];

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

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout applyEditorialLayout:layoutCopy withOrientation:orientation expanded:1];
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

  image = [(UIImageView *)self->_brickImageView image];

  return image;
}

- (void)setAccessibilityLabel:(id)label
{
  labelCopy = label;
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

  if (self->_accessibilityLabel != labelCopy)
  {
    v13 = [(NSString *)labelCopy copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v13;

    [(UIImageView *)self->_brickImageView setAccessibilityLabel:labelCopy];
  }
}

- (void)setBrickImage:(id)image
{
  imageCopy = image;
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

  brickImage = [(SKUIBrickGridCollectionViewCell *)self brickImage];

  if (brickImage != imageCopy)
  {
    brickImageView = self->_brickImageView;
    if (imageCopy)
    {
      if (!brickImageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_brickImageView;
        self->_brickImageView = v15;

        [(UIImageView *)self->_brickImageView setAccessibilityLabel:self->_accessibilityLabel];
        v17 = self->_brickImageView;
        backgroundColor = [(SKUIBrickGridCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:backgroundColor];

        contentView = [(SKUIBrickGridCollectionViewCell *)self contentView];
        [contentView addSubview:self->_brickImageView];

        [(SKUIBrickGridCollectionViewCell *)self setNeedsLayout];
        brickImageView = self->_brickImageView;
      }

      [(UIImageView *)brickImageView setImage:imageCopy];
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

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
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

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setColoringWithColorScheme:schemeCopy];
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
  contentView = [(SKUIBrickGridCollectionViewCell *)self contentView];
  [contentView bounds];
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
        [(SKUIBrickGridCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIImageView *)self->_brickImageView setBackgroundColor:colorCopy];
  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setBackgroundColor:colorCopy];
  [(UIView *)self->_editorialContainerView setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIBrickGridCollectionViewCell;
  [(SKUIBrickGridCollectionViewCell *)&v13 setBackgroundColor:colorCopy];
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