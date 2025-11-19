@interface SKUIGiftTableSectionHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)label;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setLabel:(id)a3;
@end

@implementation SKUIGiftTableSectionHeaderView

- (NSString)label
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftTableSectionHeaderView *)v3 label:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_label text];

  return v11;
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
        [(SKUIGiftTableSectionHeaderView *)v4 setContentInsets:v5, v6, v7, v8, v9, v10, v11];
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
    [(SKUIGiftTableSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGiftTableSectionHeaderView *)v5 setLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIGiftTableSectionHeaderView *)self label];
  if (v13 != v4 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    label = self->_label;
    if (v4)
    {
      if (!label)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_label;
        self->_label = v15;

        v17 = self->_label;
        v18 = [(SKUIGiftTableSectionHeaderView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_label;
        v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
        [(UILabel *)v19 setFont:v20];

        v21 = self->_label;
        v22 = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v21 setTextColor:v22];

        [(UILabel *)self->_label setTextAlignment:4];
        [(SKUIGiftTableSectionHeaderView *)self addSubview:self->_label];
        label = self->_label;
      }

      [(UILabel *)label setText:v4];
      [(UILabel *)self->_label sizeToFit];
    }

    else
    {
      [(UILabel *)label removeFromSuperview];
      v23 = self->_label;
      self->_label = 0;
    }

    [(SKUIGiftTableSectionHeaderView *)self setNeedsLayout];
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
        [(SKUIGiftTableSectionHeaderView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIGiftTableSectionHeaderView *)self bounds];
  v12 = v11;
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label setFrame:self->_contentInsets.left + 15.0, self->_contentInsets.top + 0.0, v12 + -15.0 - self->_contentInsets.right - (self->_contentInsets.left + 15.0)];
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
        [(SKUIGiftTableSectionHeaderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_label setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIGiftTableSectionHeaderView;
  [(SKUIGiftTableSectionHeaderView *)&v13 setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGiftTableSectionHeaderView *)v5 sizeThatFits:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = 22.0;
  if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = 24.0;
  }

  v16 = v15 + self->_contentInsets.top + self->_contentInsets.bottom;
  v17 = width;
  result.height = v16;
  result.width = v17;
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