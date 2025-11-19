@interface SKUIGiftFooterLabelTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)footerLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFooterLabel:(id)a3;
@end

@implementation SKUIGiftFooterLabelTableViewCell

- (NSString)footerLabel
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftFooterLabelTableViewCell *)v3 footerLabel:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_footerLabel text];

  return v11;
}

- (void)setFooterLabel:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGiftFooterLabelTableViewCell *)v5 setFooterLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIGiftFooterLabelTableViewCell *)self footerLabel];
  if (v13 != v4 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    footerLabel = self->_footerLabel;
    if (v4)
    {
      if (!footerLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_footerLabel;
        self->_footerLabel = v15;

        v17 = self->_footerLabel;
        v18 = [(SKUIGiftFooterLabelTableViewCell *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_footerLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
        [(UILabel *)v19 setFont:v20];

        [(UILabel *)self->_footerLabel setNumberOfLines:2];
        [(UILabel *)self->_footerLabel setTextAlignment:1];
        v21 = self->_footerLabel;
        v22 = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v21 setTextColor:v22];

        v23 = [(SKUIGiftFooterLabelTableViewCell *)self contentView];
        [v23 addSubview:self->_footerLabel];

        footerLabel = self->_footerLabel;
      }

      [(UILabel *)footerLabel setText:v4];
    }

    else
    {
      [(UILabel *)footerLabel removeFromSuperview];
      v24 = self->_footerLabel;
      self->_footerLabel = 0;
    }

    [(SKUIGiftFooterLabelTableViewCell *)self setNeedsLayout];
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
        [(SKUIGiftFooterLabelTableViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIGiftFooterLabelTableViewCell;
  [(SKUIGiftFooterLabelTableViewCell *)&v16 layoutSubviews];
  v11 = [(SKUIGiftFooterLabelTableViewCell *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  [(UILabel *)self->_footerLabel setFrame:15.0, 6.0, v13 + -30.0, v15 + -6.0];
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
        [(SKUIGiftFooterLabelTableViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_footerLabel setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIGiftFooterLabelTableViewCell;
  [(SKUIGiftFooterLabelTableViewCell *)&v13 setBackgroundColor:v4];
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
        [(SKUIGiftFooterLabelTableViewCell *)v5 sizeThatFits:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_footerLabel sizeThatFits:width + -30.0, 1.79769313e308];
  v15 = v14 + 6.0;
  result.height = v15;
  result.width = v13;
  return result;
}

@end