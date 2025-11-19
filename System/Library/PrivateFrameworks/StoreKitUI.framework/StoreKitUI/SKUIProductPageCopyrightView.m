@interface SKUIProductPageCopyrightView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)copyrightString;
- (void)layoutSubviews;
- (void)setColorScheme:(id)a3;
- (void)setCopyrightString:(id)a3;
@end

@implementation SKUIProductPageCopyrightView

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageCopyrightView *)v6 setColorScheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_colorScheme != v5)
  {
    objc_storeStrong(&self->_colorScheme, a3);
    copyrightLabel = self->_copyrightLabel;
    v15 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v15)
    {
      v16 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
      v17 = SKUIColorWithAlpha(v16, 0.3);
      [(UILabel *)copyrightLabel setTextColor:v17];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
      [(UILabel *)copyrightLabel setTextColor:v16];
    }
  }
}

- (NSString)copyrightString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageCopyrightView *)v3 copyrightString:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_copyrightLabel text];

  return v11;
}

- (void)setCopyrightString:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageCopyrightView *)v5 setCopyrightString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(UILabel *)self->_copyrightLabel text];
  v14 = [v13 isEqualToString:v4];

  if ((v14 & 1) == 0)
  {
    copyrightLabel = self->_copyrightLabel;
    if (v4)
    {
      if (!copyrightLabel)
      {
        v16 = objc_alloc_init(MEMORY[0x277D756B8]);
        v17 = self->_copyrightLabel;
        self->_copyrightLabel = v16;

        v18 = self->_copyrightLabel;
        v19 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v18 setFont:v19];

        [(UILabel *)self->_copyrightLabel setNumberOfLines:0];
        v20 = self->_copyrightLabel;
        v21 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v21)
        {
          v22 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
          v23 = SKUIColorWithAlpha(v22, 0.3);
          [(UILabel *)v20 setTextColor:v23];
        }

        else
        {
          v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
          [(UILabel *)v20 setTextColor:v22];
        }

        [(SKUIProductPageCopyrightView *)self addSubview:self->_copyrightLabel];
        copyrightLabel = self->_copyrightLabel;
      }

      [(UILabel *)copyrightLabel setText:v4];
    }

    else
    {
      [(UILabel *)copyrightLabel removeFromSuperview];
      v24 = self->_copyrightLabel;
      self->_copyrightLabel = 0;
    }
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
        [(SKUIProductPageCopyrightView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIProductPageCopyrightView *)self bounds];
  copyrightLabel = self->_copyrightLabel;
  if (copyrightLabel)
  {
    v14 = v11;
    v15 = v12;
    [(UILabel *)copyrightLabel frame];
    v16 = v14 + -30.0;
    [(UILabel *)self->_copyrightLabel sizeThatFits:v16, v15];
    v18 = (v15 - v17) * 0.5;
    [(UILabel *)self->_copyrightLabel setFrame:15.0, roundf(v18), v16, v17];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageCopyrightView *)v6 sizeThatFits:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  [(UILabel *)self->_copyrightLabel sizeThatFits:width, height];
  v15 = v14 + 32.0;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

@end