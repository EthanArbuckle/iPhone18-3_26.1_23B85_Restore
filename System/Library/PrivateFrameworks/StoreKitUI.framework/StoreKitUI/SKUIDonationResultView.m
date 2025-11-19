@interface SKUIDonationResultView
- (NSString)message;
- (NSString)title;
- (UIImage)image;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setMessage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIDonationResultView

- (UIImage)image
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDonationResultView *)v3 image:v4];
      }
    }
  }

  v11 = [(UIImageView *)self->_imageView image];

  return v11;
}

- (NSString)message
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDonationResultView *)v3 message:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_messageLabel text];

  return v11;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDonationResultView *)v5 setImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(UIImageView *)self->_imageView image];

  if (v13 != v4)
  {
    imageView = self->_imageView;
    if (v4)
    {
      if (!imageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_imageView;
        self->_imageView = v15;

        v17 = self->_imageView;
        v18 = [(SKUIDonationResultView *)self backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:v18];

        [(SKUIDonationResultView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:v4];
      [(UIImageView *)self->_imageView sizeToFit];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v19 = self->_imageView;
      self->_imageView = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDonationResultView *)v5 setMessage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIDonationResultView *)self message];
  if (v13 != v4 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (v4)
    {
      if (!messageLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_messageLabel;
        self->_messageLabel = v15;

        v17 = self->_messageLabel;
        v18 = [(SKUIDonationResultView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_messageLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v19 setFont:v20];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v21 = self->_messageLabel;
        v22 = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v21 setTextColor:v22];

        [(SKUIDonationResultView *)self addSubview:self->_messageLabel];
        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:v4];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v23 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
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
        [(SKUIDonationResultView *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIDonationResultView *)self title];
  if (v13 != v4 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v4)
    {
      if (!titleLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_titleLabel;
        self->_titleLabel = v15;

        v17 = self->_titleLabel;
        v18 = [(SKUIDonationResultView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_titleLabel;
        v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v19 setFont:v20];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v21 = self->_titleLabel;
        v22 = [MEMORY[0x277D75348] _labelColor];
        [(UILabel *)v21 setTextColor:v22];

        [(SKUIDonationResultView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v4];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v23 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
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
        [(SKUIDonationResultView *)v3 title:v4];
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
        [(SKUIDonationResultView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIDonationResultView *)self bounds];
  v12 = v11;
  v43 = v13;
  v14 = v11 + -60.0;
  [(UIImageView *)self->_imageView frame];
  v16 = v15;
  v18 = v17;
  v19 = (v12 - v15) * 0.5;
  v20 = floorf(v19);
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v14, 1.79769313e308];
  v22 = v21;
  [(UILabel *)self->_messageLabel frame];
  [(UILabel *)self->_messageLabel sizeThatFits:v14, 1.79769313e308];
  v24 = v23;
  v25 = [MEMORY[0x277D75418] currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v27 = 8.0;
  if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v27 = 46.0;
  }

  v28 = v22 + v18 + v27;
  v29 = [MEMORY[0x277D75418] currentDevice];
  v30 = [v29 userInterfaceIdiom];

  v31 = 12.0;
  if ((v30 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v31 = 10.0;
  }

  v32 = (v43 - (v24 + v28 + v31)) * 0.5;
  v33 = floorf(v32);
  [(UIImageView *)self->_imageView setFrame:v20, v33, v16, v18];
  v44.origin.x = v20;
  v44.origin.y = v33;
  v44.size.width = v16;
  v44.size.height = v18;
  MaxY = CGRectGetMaxY(v44);
  v35 = [MEMORY[0x277D75418] currentDevice];
  v36 = [v35 userInterfaceIdiom];

  v37 = 8.0;
  if ((v36 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v37 = 46.0;
  }

  v38 = MaxY + v37;
  [(UILabel *)self->_titleLabel setFrame:30.0, v38, v14, v22];
  v45.origin.x = 30.0;
  v45.origin.y = v38;
  v45.size.width = v14;
  v45.size.height = v22;
  v39 = CGRectGetMaxY(v45);
  v40 = [MEMORY[0x277D75418] currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v42 = 10.0;
  if ((v41 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v42 = 12.0;
  }

  [(UILabel *)self->_messageLabel setFrame:30.0, v39 + v42, v14, v24];
}

@end