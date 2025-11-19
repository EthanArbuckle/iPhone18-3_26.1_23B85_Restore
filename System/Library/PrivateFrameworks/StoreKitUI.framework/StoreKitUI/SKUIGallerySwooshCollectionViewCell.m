@interface SKUIGallerySwooshCollectionViewCell
- (NSString)title;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentChildView:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIGallerySwooshCollectionViewCell

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
        [(SKUIGallerySwooshCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 primaryTextColor];
  titleColor = self->_titleColor;
  if (titleColor != v13 && ([(UIColor *)titleColor isEqual:v13]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, v13);
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
        [(SKUIGallerySwooshCollectionViewCell *)v6 setContentChildView:v7, v8, v9, v10, v11, v12, v13];
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
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    v15 = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
    [v15 addSubview:self->_contentChildView];
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
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

  v13 = [(UILabel *)self->_titleLabel text];
  v14 = v13;
  if (v13 != v4 && ([v13 isEqualToString:v4] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v4)
    {
      if (!titleLabel)
      {
        v16 = objc_alloc_init(MEMORY[0x277D756B8]);
        v17 = self->_titleLabel;
        self->_titleLabel = v16;

        v18 = self->_titleLabel;
        v19 = [(SKUIGallerySwooshCollectionViewCell *)self backgroundColor];
        [(UILabel *)v18 setBackgroundColor:v19];

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

        v25 = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
        [v25 addSubview:self->_titleLabel];

        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v4];
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

  v11 = [(UILabel *)self->_titleLabel text];

  return v11;
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
  v11 = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
  [v11 bounds];
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