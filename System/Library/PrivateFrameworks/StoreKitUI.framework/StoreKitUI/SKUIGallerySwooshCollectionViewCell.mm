@interface SKUIGallerySwooshCollectionViewCell
- (NSString)title;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentChildView:(id)view;
- (void)setTitle:(id)title;
@end

@implementation SKUIGallerySwooshCollectionViewCell

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
        [(SKUIGallerySwooshCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  primaryTextColor = [schemeCopy primaryTextColor];
  titleColor = self->_titleColor;
  if (titleColor != primaryTextColor && ([(UIColor *)titleColor isEqual:primaryTextColor]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, primaryTextColor);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
      [(UILabel *)titleLabel setTextColor:v16];
    }
  }
}

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
        [(SKUIGallerySwooshCollectionViewCell *)v6 setContentChildView:v7, v8, v9, v10, v11, v12, v13];
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
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    contentView = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
    [contentView addSubview:self->_contentChildView];
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];
  v14 = text;
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v16 = objc_alloc_init(MEMORY[0x277D756B8]);
        v17 = self->_titleLabel;
        self->_titleLabel = v16;

        v18 = self->_titleLabel;
        backgroundColor = [(SKUIGallerySwooshCollectionViewCell *)self backgroundColor];
        [(UILabel *)v18 setBackgroundColor:backgroundColor];

        v20 = self->_titleLabel;
        v21 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v20 setFont:v21];

        v22 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v24 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
          [(UILabel *)v22 setTextColor:v24];
        }

        contentView = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
        [contentView addSubview:self->_titleLabel];

        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v23 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (NSString)title
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v3 title:v4];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];

  return text;
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
        [(SKUIGallerySwooshCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUIGallerySwooshCollectionViewCell;
  [(SKUIGallerySwooshCollectionViewCell *)&v27 layoutSubviews];
  contentView = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v17;
  v28.size.height = v19;
  MaxY = CGRectGetMaxY(v28);
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v23 = v22;
    v24 = MaxY - v22;
    [(UILabel *)self->_titleLabel setFrame:0.0, v24, v17];
    v29.origin.x = 0.0;
    v29.origin.y = v24;
    v29.size.width = v17;
    v29.size.height = v23;
    MaxY = CGRectGetMinY(v29) + -6.0;
  }

  contentChildView = self->_contentChildView;
  if (contentChildView)
  {
    [(UIView *)contentChildView frame];
    [(UIView *)self->_contentChildView setFrame:0.0, MaxY - v26];
  }
}

@end