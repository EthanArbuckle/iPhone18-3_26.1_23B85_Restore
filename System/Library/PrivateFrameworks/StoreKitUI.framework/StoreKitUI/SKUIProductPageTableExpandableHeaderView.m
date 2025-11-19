@interface SKUIProductPageTableExpandableHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)actionString;
- (NSString)title;
- (UIColor)bottomBorderColor;
- (UIColor)topBorderColor;
- (void)layoutSubviews;
- (void)setActionString:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBottomBorderColor:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTopBorderColor:(id)a3;
@end

@implementation SKUIProductPageTableExpandableHeaderView

- (NSString)actionString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 actionString:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_actionLabel text];

  return v11;
}

- (UIColor)bottomBorderColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 bottomBorderColor:v4];
      }
    }
  }

  v11 = [(UIView *)self->_bottomBorderView backgroundColor];

  return v11;
}

- (void)setActionString:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setActionString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIProductPageTableExpandableHeaderView *)self actionString];
  v14 = v13;
  if (v13 != v4 && ([v13 isEqualToString:v4] & 1) == 0)
  {
    v15 = [v4 length];
    actionLabel = self->_actionLabel;
    if (v15)
    {
      if (!actionLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_actionLabel;
        self->_actionLabel = v17;

        v19 = self->_actionLabel;
        v20 = [(SKUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:v20];

        v21 = self->_actionLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_actionLabel;
        v24 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v24)
        {
          [(UILabel *)v23 setTextColor:v24];
        }

        else
        {
          v26 = [(SKUIProductPageTableExpandableHeaderView *)self tintColor];
          [(UILabel *)v23 setTextColor:v26];
        }

        [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_actionLabel];
        actionLabel = self->_actionLabel;
      }

      [(UILabel *)actionLabel setText:v4];
      [(UILabel *)self->_actionLabel sizeToFit];
    }

    else
    {
      [(UILabel *)actionLabel removeFromSuperview];
      v25 = self->_actionLabel;
      self->_actionLabel = 0;
    }

    [(SKUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setBottomBorderColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setBottomBorderColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  bottomBorderView = self->_bottomBorderView;
  if (v4)
  {
    if (!bottomBorderView)
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      v15 = self->_bottomBorderView;
      self->_bottomBorderView = v14;

      [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_bottomBorderView];
      bottomBorderView = self->_bottomBorderView;
    }

    [(UIView *)bottomBorderView setBackgroundColor:v4];
  }

  else
  {
    [(UIView *)bottomBorderView removeFromSuperview];
    v16 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

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
        [(SKUIProductPageTableExpandableHeaderView *)v6 setColorScheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_colorScheme != v5)
  {
    objc_storeStrong(&self->_colorScheme, a3);
    actionLabel = self->_actionLabel;
    v15 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v15)
    {
      [(UILabel *)actionLabel setTextColor:v15];
    }

    else
    {
      v16 = [(SKUIProductPageTableExpandableHeaderView *)self tintColor];
      [(UILabel *)actionLabel setTextColor:v16];
    }

    titleLabel = self->_titleLabel;
    v18 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (v18)
    {
      [(UILabel *)titleLabel setTextColor:v18];
    }

    else
    {
      v19 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v19];
    }
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
        [(SKUIProductPageTableExpandableHeaderView *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIProductPageTableExpandableHeaderView *)self title];
  v14 = v13;
  if (v13 != v4 && ([v13 isEqualToString:v4] & 1) == 0)
  {
    v15 = [v4 length];
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_titleLabel;
        self->_titleLabel = v17;

        v19 = self->_titleLabel;
        v20 = [(SKUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:v20];

        v21 = self->_titleLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_titleLabel;
        v24 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (v24)
        {
          [(UILabel *)v23 setTextColor:v24];
        }

        else
        {
          v26 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v23 setTextColor:v26];
        }

        [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v4];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v25 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setTopBorderColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setTopBorderColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  topBorderView = self->_topBorderView;
  if (v4)
  {
    if (!topBorderView)
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      v15 = self->_topBorderView;
      self->_topBorderView = v14;

      [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_topBorderView];
      topBorderView = self->_topBorderView;
    }

    [(UIView *)topBorderView setBackgroundColor:v4];
  }

  else
  {
    [(UIView *)topBorderView removeFromSuperview];
    v16 = self->_topBorderView;
    self->_topBorderView = 0;
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
        [(SKUIProductPageTableExpandableHeaderView *)v3 title:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_titleLabel text];

  return v11;
}

- (UIColor)topBorderColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 topBorderColor:v4];
      }
    }
  }

  v11 = [(UIView *)self->_topBorderView backgroundColor];

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
        [(SKUIProductPageTableExpandableHeaderView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIProductPageTableExpandableHeaderView *)self bounds];
  v12 = v11;
  v14 = v13;
  bottomBorderView = self->_bottomBorderView;
  v16 = [MEMORY[0x277D759A0] mainScreen];
  [v16 scale];
  v18 = v14 - 1.0 / v17;
  v19 = v12 + -15.0;
  v20 = [MEMORY[0x277D759A0] mainScreen];
  [v20 scale];
  [(UIView *)bottomBorderView setFrame:15.0, v18, v19, 1.0 / v21];

  [(UIView *)self->_topBorderView setFrame:15.0, 0.0, v19, 1.0];
  actionLabel = self->_actionLabel;
  if (actionLabel)
  {
    [(UILabel *)actionLabel frame];
    v24 = v23;
    v26 = v25;
    v27 = v19 - v23;
    v28 = (v14 - v25) * 0.5;
    v29 = (floorf(v28) + 1.0);
    [(UILabel *)self->_actionLabel setFrame:v27, v29];
    v33.origin.x = v27;
    v33.origin.y = v29;
    v33.size.width = v24;
    v33.size.height = v26;
    v19 = CGRectGetMinX(v33) + -10.0;
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v32 = (v14 - v31) * 0.5;
    [(UILabel *)self->_titleLabel setFrame:15.0, floorf(v32), v19 + -15.0];
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
        [(SKUIProductPageTableExpandableHeaderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_actionLabel setBackgroundColor:v4];
  [(UILabel *)self->_titleLabel setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIProductPageTableExpandableHeaderView;
  [(SKUIProductPageTableExpandableHeaderView *)&v13 setBackgroundColor:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v4 sizeThatFits:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = 44.0;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

@end