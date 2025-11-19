@interface SKUIProductPageTableHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)title;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIProductPageTableHeaderView

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
        [(SKUIProductPageTableHeaderView *)v4 setContentInsets:v5, v6, v7, v8, v9, v10, v11];
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
    [(SKUIProductPageTableHeaderView *)self setNeedsLayout];
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
        [(SKUIProductPageTableHeaderView *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIProductPageTableHeaderView *)self title];
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
        v19 = [(SKUIProductPageTableHeaderView *)self backgroundColor];
        [(UILabel *)v18 setBackgroundColor:v19];

        v20 = self->_titleLabel;
        v21 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v20 setFont:v21];

        v22 = self->_titleLabel;
        v23 = [MEMORY[0x277D75348] blackColor];
        [(UILabel *)v22 setTextColor:v23];

        [(SKUIProductPageTableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setHidden:0];
      [(UILabel *)self->_titleLabel setText:v4];
      [(UILabel *)self->_titleLabel sizeToFit];
      [(SKUIProductPageTableHeaderView *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)titleLabel setHidden:1];
    }
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
        [(SKUIProductPageTableHeaderView *)v3 title:v4];
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
        [(SKUIProductPageTableHeaderView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIProductPageTableHeaderView *)self bounds];
  v12 = v11;
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel setFrame:self->_contentInsets.left, self->_contentInsets.top, v12 - self->_contentInsets.right - self->_contentInsets.left];
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
        [(SKUIProductPageTableHeaderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_titleLabel setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIProductPageTableHeaderView;
  [(SKUIProductPageTableHeaderView *)&v13 setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProductPageTableHeaderView *)v4 sizeThatFits:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [(UILabel *)self->_titleLabel frame];
  v13 = v12 + self->_contentInsets.bottom + self->_contentInsets.top;
  v15 = v14 + self->_contentInsets.left + self->_contentInsets.right;
  result.height = v13;
  result.width = v15;
  return result;
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